using System.Security.Cryptography;
using System.Text;

namespace USCF.Backend.Services;

// Simple PBKDF2 hasher for passwords. Not using ASP.NET Identity to keep the project lightweight.
public class PasswordHasher : IPasswordHasher
{
    private const int SaltSize = 16;
    private const int KeySize = 32;
    private const int Iterations = 100_000;

    public string HashPassword(string password)
    {
        using var rng = RandomNumberGenerator.Create();
        var salt = new byte[SaltSize];
        rng.GetBytes(salt);

        using var pbkdf2 = new Rfc2898DeriveBytes(password, salt, Iterations, HashAlgorithmName.SHA256);
        var key = pbkdf2.GetBytes(KeySize);

        var saltedHash = new byte[SaltSize + KeySize];
        Buffer.BlockCopy(salt, 0, saltedHash, 0, SaltSize);
        Buffer.BlockCopy(key, 0, saltedHash, SaltSize, KeySize);

        return Convert.ToBase64String(saltedHash);
    }

    public bool Verify(string password, string hashedPassword)
    {
        if (string.IsNullOrEmpty(hashedPassword)) return false;
        var saltedHash = Convert.FromBase64String(hashedPassword);
        if (saltedHash.Length != SaltSize + KeySize) return false;

        var salt = new byte[SaltSize];
        Buffer.BlockCopy(saltedHash, 0, salt, 0, SaltSize);

        using var pbkdf2 = new Rfc2898DeriveBytes(password, salt, Iterations, HashAlgorithmName.SHA256);
        var key = pbkdf2.GetBytes(KeySize);

        for (int i = 0; i < KeySize; i++)
        {
            if (saltedHash[SaltSize + i] != key[i]) return false;
        }

        return true;
    }
}
