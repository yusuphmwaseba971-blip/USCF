namespace USCF.Backend.Services.Identity;

public sealed class FirebaseTokenVerificationException : Exception
{
    public FirebaseTokenVerificationException(string message, Exception? innerException = null)
        : base(message, innerException)
    {
    }
}
