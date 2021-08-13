package com.example.camoncrime;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileUtils {

    public static void copyMediaToFile(byte[] media, File file)
            throws IOException {
        System.out.println(file.getAbsolutePath());
        if(file.exists()) {
            Files.delete(Path.of(file.getPath()));
        } else {
            Files.createDirectories(Path.of(file.getAbsoluteFile().getParent()));
        }

        Files.write(Path.of(file.getPath()), media);

    }
}
