#include <stdio.h> 
#include <stdlib.h> 
#include <string.h> 
#include <errno.h> 

const char* boot0_path = "/sys/block/mmcblk0boot0/force_ro";
const char* boot1_path = "/sys/block/mmcblk0boot1/force_ro";

int set_force_ro(const char* path, int value) {
    FILE* fp = fopen(path, "w");
    if (fp == NULL) {
        fprintf(stderr, "Error opening %s: %s\n", path, strerror(errno));
        return 0;
    }
    if (fprintf(fp, "%d", value) < 0) {
        fprintf(stderr, "Error writing to %s: %s\n", path, strerror(errno));
        fclose(fp);
        return 0;
    }
    fclose(fp);
    return 1;
}

int main() {
    if (!set_force_ro(boot0_path, 0)) {
        fprintf(stderr, "Failed to unlock mmcblk0boot0\n");
        exit(1);
    }
    if (!set_force_ro(boot1_path, 0)) {
        fprintf(stderr, "Failed to unlock mmcblk0boot1\n");
        exit(1);
    }
    fprintf(stdout, "Successfully unlocked mmcblk0boot0 and mmcblk0boot1\n");
    return 0;
}
