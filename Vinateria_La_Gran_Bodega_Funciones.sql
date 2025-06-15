-- ****************************************************
-- Funciones
-- ****************************************************

-- -----------------------------------------------------
-- Funcion "ObtenerFormatoFecha"
-- -----------------------------------------------------
DROP FUNCTION IF EXISTS ObtenerFormatoFecha;

DELIMITER $$

CREATE FUNCTION ObtenerFormatoFecha(date_str VARCHAR(20))
RETURNS DATE
DETERMINISTIC
BEGIN
    RETURN STR_TO_DATE(date_str, '%d/%m/%Y');
END$$

DELIMITER ;

-- -----------------------------------------------------
-- Funcion "ObtenerNombreCompleto"
-- -----------------------------------------------------
DROP FUNCTION IF EXISTS ObtenerNombreCompleto;

DELIMITER $$

CREATE FUNCTION ObtenerNombreCompleto(nombre_str VARCHAR(45), apellido_str VARCHAR(45))
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    RETURN CONCAT(nombre_str, ' ', apellido_str);
END$$

DELIMITER ;