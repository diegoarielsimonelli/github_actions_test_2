
from src.main import Calculator  


def test_calculator_sum():
    # Instanciar la clase
    calc = Calculator()

    # Validar una suma estándar
    assert calc.sum(2, 3) == 5

    # Validar con números negativos
    assert calc.sum(-1, 1) == 0
    assert calc.sum(-2, -3) == -5

    # Validar con cero
    assert calc.sum(0, 0) == 0
