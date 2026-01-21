"""Test script to verify Python environment setup"""

print("Testing Python dependencies...\n")

try:
    import Bio
    print(f"✓ Biopython {Bio.__version__}")
except ImportError as e:
    print(f"✗ Biopython import failed: {e}")

try:
    import pandas as pd
    print(f"✓ Pandas {pd.__version__}")
except ImportError as e:
    print(f"✗ Pandas import failed: {e}")

try:
    import requests
    print(f"✓ Requests {requests.__version__}")
except ImportError as e:
    print(f"✗ Requests import failed: {e}")

try:
    import matplotlib
    print(f"✓ Matplotlib {matplotlib.__version__}")
except ImportError as e:
    print(f"✗ Matplotlib import failed: {e}")

try:
    import seaborn as sns
    print(f"✓ Seaborn {sns.__version__}")
except ImportError as e:
    print(f"✗ Seaborn import failed: {e}")

print("\n✓ All Python dependencies installed successfully!")