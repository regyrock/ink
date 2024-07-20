"""Test ink."""

import ink


def test_import() -> None:
    """Test that the app can be imported."""
    assert isinstance(ink.__name__, str)
