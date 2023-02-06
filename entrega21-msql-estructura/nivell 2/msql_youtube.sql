CREATE TABLE IF NOT EXISTS `youtube`.`COMENTARIS` (
  `comentari_id` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `text` VARCHAR(45) NOT NULL,
  `video_comentat` INT NOT NULL,
  `comentari_usuari` INT NOT NULL,
  PRIMARY KEY (`comentari_id`),
  INDEX `video_coemntat_idx` (`video_comentat` ASC) VISIBLE,
  INDEX `comentari_usuari_idx` (`comentari_usuari` ASC) VISIBLE,
 
    FOREIGN KEY (`video_comentat`)
    REFERENCES `youtube`.`VIDEO` (`video_id`)
   ,
  
    FOREIGN KEY (`comentari_usuari`)
    REFERENCES `youtube`.`USUARIS` (`usuari_id`)
    )





