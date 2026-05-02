import os
name = os.getenv("NAME", "python_example")
run_tests = os.getenv("RUN_TESTS", "false").lower() == "true"
log_level = os.getenv("LOG_LEVEL", "info")
target_environment = os.getenv("TARGET_ENVIRONMENT", "dev")
repeat_count = int(os.getenv("REPEAT_COUNT", "1"))

print("Python script started")
print(f"Name: {name}")
print(f"Run tests: {run_tests}")
print(f"Repeat count: {repeat_count}")
print(f"Log level: {log_level}")
print(f"Target environment: {target_environment}")

for i in range(repeat_count):
    print(f"{i + 1}. Hello, {name}!")