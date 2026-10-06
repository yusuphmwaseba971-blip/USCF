# Bible implementation freeze

The Bible page, its runtime service, and the SQLite Bible corpus are locked against accidental or unrelated edits:

- `Pages/BiblePage.xaml`
- `Pages/BiblePage.xaml.cs`
- `Services/BibleService.cs`
- `Resources/Raw/bible.sqlite`

The `Bible freeze` workflow checks their SHA-256 digests on pushes and pull requests. A mismatch fails the check; do not update `bible-freeze.sha256` as part of unrelated work. `.github/CODEOWNERS` also assigns these files and the freeze guard to the repository owner.

To enforce this as a merge barrier, configure the repository's protected branches to require the **Verify frozen Bible files** status check and require code-owner review. The check is intended to stay green for changes outside the locked files. Any intentional Bible change requires a separate, explicit review and approval to revise the lock.

Community Bible-post DTOs are not locked because they are shared with Community functionality and are not the Bible page or Bible reading runtime.
