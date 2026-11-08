# language: es
Característica: Pedir prestado un libro

  Escenario: Un socio estándar pide prestado un libro disponible
    Dado un libro con un ejemplar disponible
    Y un socio estándar activo sin préstamos activos
    Cuando el socio pide prestado el libro el 2026-09-01
    Entonces el préstamo se acepta
    Y su fecha de devolución es el 2026-09-15
    Y el libro no tiene ejemplares disponibles
    Y el socio tiene un préstamo activo

  Escenario: Un socio suspendido intenta pedir prestado un libro
    Dado un libro con un ejemplar disponible
    Y un socio suspendido
    Cuando el socio intenta pedir prestado el libro
    Entonces el préstamo se rechaza porque el socio está suspendido

  Escenario: Un libro no tiene ejemplares disponibles
    Dado un libro sin ejemplares disponibles
    Y un socio activo por debajo del límite de préstamos
    Cuando el socio intenta pedir prestado el libro
    Entonces el préstamo se rechaza porque el libro no está disponible