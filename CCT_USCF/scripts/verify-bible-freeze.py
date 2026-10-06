import hashlib
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LOCK_FILE = ROOT / "bible-freeze.sha256"
PROTECTED_FILES = {
    "Pages/BiblePage.xaml",
    "Pages/BiblePage.xaml.cs",
    "Services/BibleService.cs",
    "Resources/Raw/bible.sqlite",
}


def main() -> int:
    expected = {}
    for line_number, line in enumerate(LOCK_FILE.read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        try:
            digest, relative_path = line.split(maxsplit=1)
        except ValueError:
            print(f"Invalid lock entry at {LOCK_FILE.name}:{line_number}", file=sys.stderr)
            return 1
        relative_path = relative_path.lstrip("* ")
        if relative_path in expected:
            print(f"Duplicate lock entry: {relative_path}", file=sys.stderr)
            return 1
        expected[relative_path] = digest.lower()

    if set(expected) != PROTECTED_FILES:
        missing = sorted(PROTECTED_FILES - set(expected))
        unexpected = sorted(set(expected) - PROTECTED_FILES)
        if missing:
            print(f"Missing protected file entries: {', '.join(missing)}", file=sys.stderr)
        if unexpected:
            print(f"Unexpected lock entries: {', '.join(unexpected)}", file=sys.stderr)
        return 1

    changed = []
    for relative_path, expected_digest in expected.items():
        path = ROOT / Path(relative_path)
        if not path.is_file():
            changed.append(f"{relative_path} (missing)")
            continue
        contents = path.read_bytes()
        if path.suffix.lower() != ".sqlite":
            contents = contents.replace(b"\r\n", b"\n").replace(b"\r", b"\n")
        actual_digest = hashlib.sha256(contents).hexdigest()
        if actual_digest != expected_digest:
            changed.append(relative_path)

    if changed:
        print("Bible freeze check failed. Locked Bible files changed:", file=sys.stderr)
        for relative_path in changed:
            print(f"  {relative_path}", file=sys.stderr)
        print(
            "Do not update the lock as part of unrelated work. Bible file changes require an explicit, separately reviewed decision.",
            file=sys.stderr,
        )
        return 1

    print("Bible freeze check passed: all locked Bible files match their approved baseline.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
