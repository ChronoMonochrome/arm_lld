#include <syscall.h>
#include <fcntl.h>
#include <mylib.h>

int main() {
    char *msg = "MyOS 0.0.0.2 Initializing...\n";

    sleep_sec(1);

    str_print(msg);

    sleep_sec(1);

    return 0;
}
