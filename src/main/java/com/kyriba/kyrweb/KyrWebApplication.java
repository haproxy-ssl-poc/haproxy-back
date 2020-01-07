package com.kyriba.kyrweb;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class KyrWebApplication {

  @Value("id")
  String id;

  public static final Logger logger = LoggerFactory.getLogger(KyrWebApplication.class);

  public static void main(String[] args) {
		SpringApplication.run(KyrWebApplication.class, args);
	}

	@GetMapping("/hello")
  public ResponseEntity<String> get() {
    logger.info("Hey ! " + System.nanoTime());
	  return ResponseEntity.ok("Hello (" + id + "), here's time in nano" + System.nanoTime());
  }

}
