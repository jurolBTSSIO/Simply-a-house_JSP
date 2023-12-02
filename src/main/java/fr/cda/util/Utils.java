package fr.cda.util;



import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class Utils {


    public static String get_SHA_512_SecurePassword(String passwordToHash,
                                                     String salt) {
        String generatedPassword = null;
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-512");
            md.update(salt.getBytes());
            byte[] bytes = md.digest(passwordToHash.getBytes());
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < bytes.length; i++) {
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16)
                        .substring(1));
            }
            generatedPassword = sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return generatedPassword;
    }

    // Add salt
    private static String getSalt() throws NoSuchAlgorithmException {
        SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
        byte[] salt = new byte[16];
        sr.nextBytes(salt);
        return salt.toString();
    }

    public static String getPwdHashBrcypt(String p) throws NoSuchAlgorithmException {


        //générer un salt
        //System.out.println(BCrypt.gensalt(12));
        //cryptage du pwd
        String generatedSecuredPasswordHash = BCrypt.hashpw(p, Constantes.SALT);
        System.out.println(generatedSecuredPasswordHash);

        boolean matched = BCrypt.checkpw(p, generatedSecuredPasswordHash);
        System.out.println(matched);
        return generatedSecuredPasswordHash;
    }
}

