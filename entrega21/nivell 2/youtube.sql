CREATE TABLE IF NOT EXISTS `youtube`.`LIKES_DISLIKES` (
  `like_dislike_id` INT NOT NULL AUTO_INCREMENT,
  `usuari_id` INT NOT NULL,
  `video_id` INT NOT NULL,
  `tipus` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`like_dislike_id`),
  INDEX `usuari_id_idx` (`usuari_id` ASC) VISIBLE,
  INDEX `video_id_idx` (`video_id` ASC) VISIBLE,
  CONSTRAINT `usuari_id`
    FOREIGN KEY (`usuari_id`)
    REFERENCES `youtube`.`USUARIS` (`usuari_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `video_id`
    FOREIGN KEY (`video_id`)
    REFERENCES `youtube`.`VIDEO` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB