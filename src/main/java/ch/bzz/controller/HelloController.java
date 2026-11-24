package ch.bzz.controller;

import ch.bzz.generated.api.HelloApi;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController implements HelloApi {

    @Override
    public ResponseEntity<String> getRoot() {
        return ResponseEntity.ok("Club Accounting API is running. Try /api/hello");
    }

    @Override
    public ResponseEntity<String> getHello() {
        return ResponseEntity.ok("Hello World!");
    }
}
