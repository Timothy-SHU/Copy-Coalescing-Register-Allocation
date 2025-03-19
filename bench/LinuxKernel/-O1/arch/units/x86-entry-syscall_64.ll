; ModuleID = 'arch/x86/entry/syscall_64.c'
source_filename = "arch/x86/entry/syscall_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sys_call_table = hidden constant [454 x ptr] [ptr @__x64_sys_read, ptr @__x64_sys_write, ptr @__x64_sys_open, ptr @__x64_sys_close, ptr @__x64_sys_newstat, ptr @__x64_sys_newfstat, ptr @__x64_sys_newlstat, ptr @__x64_sys_poll, ptr @__x64_sys_lseek, ptr @__x64_sys_mmap, ptr @__x64_sys_mprotect, ptr @__x64_sys_munmap, ptr @__x64_sys_brk, ptr @__x64_sys_rt_sigaction, ptr @__x64_sys_rt_sigprocmask, ptr @__x64_sys_rt_sigreturn, ptr @__x64_sys_ioctl, ptr @__x64_sys_pread64, ptr @__x64_sys_pwrite64, ptr @__x64_sys_readv, ptr @__x64_sys_writev, ptr @__x64_sys_access, ptr @__x64_sys_pipe, ptr @__x64_sys_select, ptr @__x64_sys_sched_yield, ptr @__x64_sys_mremap, ptr @__x64_sys_msync, ptr @__x64_sys_mincore, ptr @__x64_sys_madvise, ptr @__x64_sys_shmget, ptr @__x64_sys_shmat, ptr @__x64_sys_shmctl, ptr @__x64_sys_dup, ptr @__x64_sys_dup2, ptr @__x64_sys_pause, ptr @__x64_sys_nanosleep, ptr @__x64_sys_getitimer, ptr @__x64_sys_alarm, ptr @__x64_sys_setitimer, ptr @__x64_sys_getpid, ptr @__x64_sys_sendfile64, ptr @__x64_sys_socket, ptr @__x64_sys_connect, ptr @__x64_sys_accept, ptr @__x64_sys_sendto, ptr @__x64_sys_recvfrom, ptr @__x64_sys_sendmsg, ptr @__x64_sys_recvmsg, ptr @__x64_sys_shutdown, ptr @__x64_sys_bind, ptr @__x64_sys_listen, ptr @__x64_sys_getsockname, ptr @__x64_sys_getpeername, ptr @__x64_sys_socketpair, ptr @__x64_sys_setsockopt, ptr @__x64_sys_getsockopt, ptr @__x64_sys_clone, ptr @__x64_sys_fork, ptr @__x64_sys_vfork, ptr @__x64_sys_execve, ptr @__x64_sys_exit, ptr @__x64_sys_wait4, ptr @__x64_sys_kill, ptr @__x64_sys_newuname, ptr @__x64_sys_semget, ptr @__x64_sys_semop, ptr @__x64_sys_semctl, ptr @__x64_sys_shmdt, ptr @__x64_sys_msgget, ptr @__x64_sys_msgsnd, ptr @__x64_sys_msgrcv, ptr @__x64_sys_msgctl, ptr @__x64_sys_fcntl, ptr @__x64_sys_flock, ptr @__x64_sys_fsync, ptr @__x64_sys_fdatasync, ptr @__x64_sys_truncate, ptr @__x64_sys_ftruncate, ptr @__x64_sys_getdents, ptr @__x64_sys_getcwd, ptr @__x64_sys_chdir, ptr @__x64_sys_fchdir, ptr @__x64_sys_rename, ptr @__x64_sys_mkdir, ptr @__x64_sys_rmdir, ptr @__x64_sys_creat, ptr @__x64_sys_link, ptr @__x64_sys_unlink, ptr @__x64_sys_symlink, ptr @__x64_sys_readlink, ptr @__x64_sys_chmod, ptr @__x64_sys_fchmod, ptr @__x64_sys_chown, ptr @__x64_sys_fchown, ptr @__x64_sys_lchown, ptr @__x64_sys_umask, ptr @__x64_sys_gettimeofday, ptr @__x64_sys_getrlimit, ptr @__x64_sys_getrusage, ptr @__x64_sys_sysinfo, ptr @__x64_sys_times, ptr @__x64_sys_ptrace, ptr @__x64_sys_getuid, ptr @__x64_sys_syslog, ptr @__x64_sys_getgid, ptr @__x64_sys_setuid, ptr @__x64_sys_setgid, ptr @__x64_sys_geteuid, ptr @__x64_sys_getegid, ptr @__x64_sys_setpgid, ptr @__x64_sys_getppid, ptr @__x64_sys_getpgrp, ptr @__x64_sys_setsid, ptr @__x64_sys_setreuid, ptr @__x64_sys_setregid, ptr @__x64_sys_getgroups, ptr @__x64_sys_setgroups, ptr @__x64_sys_setresuid, ptr @__x64_sys_getresuid, ptr @__x64_sys_setresgid, ptr @__x64_sys_getresgid, ptr @__x64_sys_getpgid, ptr @__x64_sys_setfsuid, ptr @__x64_sys_setfsgid, ptr @__x64_sys_getsid, ptr @__x64_sys_capget, ptr @__x64_sys_capset, ptr @__x64_sys_rt_sigpending, ptr @__x64_sys_rt_sigtimedwait, ptr @__x64_sys_rt_sigqueueinfo, ptr @__x64_sys_rt_sigsuspend, ptr @__x64_sys_sigaltstack, ptr @__x64_sys_utime, ptr @__x64_sys_mknod, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_personality, ptr @__x64_sys_ustat, ptr @__x64_sys_statfs, ptr @__x64_sys_fstatfs, ptr @__x64_sys_sysfs, ptr @__x64_sys_getpriority, ptr @__x64_sys_setpriority, ptr @__x64_sys_sched_setparam, ptr @__x64_sys_sched_getparam, ptr @__x64_sys_sched_setscheduler, ptr @__x64_sys_sched_getscheduler, ptr @__x64_sys_sched_get_priority_max, ptr @__x64_sys_sched_get_priority_min, ptr @__x64_sys_sched_rr_get_interval, ptr @__x64_sys_mlock, ptr @__x64_sys_munlock, ptr @__x64_sys_mlockall, ptr @__x64_sys_munlockall, ptr @__x64_sys_vhangup, ptr @__x64_sys_modify_ldt, ptr @__x64_sys_pivot_root, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_prctl, ptr @__x64_sys_arch_prctl, ptr @__x64_sys_adjtimex, ptr @__x64_sys_setrlimit, ptr @__x64_sys_chroot, ptr @__x64_sys_sync, ptr @__x64_sys_acct, ptr @__x64_sys_settimeofday, ptr @__x64_sys_mount, ptr @__x64_sys_umount, ptr @__x64_sys_swapon, ptr @__x64_sys_swapoff, ptr @__x64_sys_reboot, ptr @__x64_sys_sethostname, ptr @__x64_sys_setdomainname, ptr @__x64_sys_iopl, ptr @__x64_sys_ioperm, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_init_module, ptr @__x64_sys_delete_module, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_quotactl, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_gettid, ptr @__x64_sys_readahead, ptr @__x64_sys_setxattr, ptr @__x64_sys_lsetxattr, ptr @__x64_sys_fsetxattr, ptr @__x64_sys_getxattr, ptr @__x64_sys_lgetxattr, ptr @__x64_sys_fgetxattr, ptr @__x64_sys_listxattr, ptr @__x64_sys_llistxattr, ptr @__x64_sys_flistxattr, ptr @__x64_sys_removexattr, ptr @__x64_sys_lremovexattr, ptr @__x64_sys_fremovexattr, ptr @__x64_sys_tkill, ptr @__x64_sys_time, ptr @__x64_sys_futex, ptr @__x64_sys_sched_setaffinity, ptr @__x64_sys_sched_getaffinity, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_io_setup, ptr @__x64_sys_io_destroy, ptr @__x64_sys_io_getevents, ptr @__x64_sys_io_submit, ptr @__x64_sys_io_cancel, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_lookup_dcookie, ptr @__x64_sys_epoll_create, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_remap_file_pages, ptr @__x64_sys_getdents64, ptr @__x64_sys_set_tid_address, ptr @__x64_sys_restart_syscall, ptr @__x64_sys_semtimedop, ptr @__x64_sys_fadvise64, ptr @__x64_sys_timer_create, ptr @__x64_sys_timer_settime, ptr @__x64_sys_timer_gettime, ptr @__x64_sys_timer_getoverrun, ptr @__x64_sys_timer_delete, ptr @__x64_sys_clock_settime, ptr @__x64_sys_clock_gettime, ptr @__x64_sys_clock_getres, ptr @__x64_sys_clock_nanosleep, ptr @__x64_sys_exit_group, ptr @__x64_sys_epoll_wait, ptr @__x64_sys_epoll_ctl, ptr @__x64_sys_tgkill, ptr @__x64_sys_utimes, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_mbind, ptr @__x64_sys_set_mempolicy, ptr @__x64_sys_get_mempolicy, ptr @__x64_sys_mq_open, ptr @__x64_sys_mq_unlink, ptr @__x64_sys_mq_timedsend, ptr @__x64_sys_mq_timedreceive, ptr @__x64_sys_mq_notify, ptr @__x64_sys_mq_getsetattr, ptr @__x64_sys_kexec_load, ptr @__x64_sys_waitid, ptr @__x64_sys_add_key, ptr @__x64_sys_request_key, ptr @__x64_sys_keyctl, ptr @__x64_sys_ioprio_set, ptr @__x64_sys_ioprio_get, ptr @__x64_sys_inotify_init, ptr @__x64_sys_inotify_add_watch, ptr @__x64_sys_inotify_rm_watch, ptr @__x64_sys_migrate_pages, ptr @__x64_sys_openat, ptr @__x64_sys_mkdirat, ptr @__x64_sys_mknodat, ptr @__x64_sys_fchownat, ptr @__x64_sys_futimesat, ptr @__x64_sys_newfstatat, ptr @__x64_sys_unlinkat, ptr @__x64_sys_renameat, ptr @__x64_sys_linkat, ptr @__x64_sys_symlinkat, ptr @__x64_sys_readlinkat, ptr @__x64_sys_fchmodat, ptr @__x64_sys_faccessat, ptr @__x64_sys_pselect6, ptr @__x64_sys_ppoll, ptr @__x64_sys_unshare, ptr @__x64_sys_set_robust_list, ptr @__x64_sys_get_robust_list, ptr @__x64_sys_splice, ptr @__x64_sys_tee, ptr @__x64_sys_sync_file_range, ptr @__x64_sys_vmsplice, ptr @__x64_sys_move_pages, ptr @__x64_sys_utimensat, ptr @__x64_sys_epoll_pwait, ptr @__x64_sys_signalfd, ptr @__x64_sys_timerfd_create, ptr @__x64_sys_eventfd, ptr @__x64_sys_fallocate, ptr @__x64_sys_timerfd_settime, ptr @__x64_sys_timerfd_gettime, ptr @__x64_sys_accept4, ptr @__x64_sys_signalfd4, ptr @__x64_sys_eventfd2, ptr @__x64_sys_epoll_create1, ptr @__x64_sys_dup3, ptr @__x64_sys_pipe2, ptr @__x64_sys_inotify_init1, ptr @__x64_sys_preadv, ptr @__x64_sys_pwritev, ptr @__x64_sys_rt_tgsigqueueinfo, ptr @__x64_sys_perf_event_open, ptr @__x64_sys_recvmmsg, ptr @__x64_sys_fanotify_init, ptr @__x64_sys_fanotify_mark, ptr @__x64_sys_prlimit64, ptr @__x64_sys_name_to_handle_at, ptr @__x64_sys_open_by_handle_at, ptr @__x64_sys_clock_adjtime, ptr @__x64_sys_syncfs, ptr @__x64_sys_sendmmsg, ptr @__x64_sys_setns, ptr @__x64_sys_getcpu, ptr @__x64_sys_process_vm_readv, ptr @__x64_sys_process_vm_writev, ptr @__x64_sys_kcmp, ptr @__x64_sys_finit_module, ptr @__x64_sys_sched_setattr, ptr @__x64_sys_sched_getattr, ptr @__x64_sys_renameat2, ptr @__x64_sys_seccomp, ptr @__x64_sys_getrandom, ptr @__x64_sys_memfd_create, ptr @__x64_sys_kexec_file_load, ptr @__x64_sys_bpf, ptr @__x64_sys_execveat, ptr @__x64_sys_userfaultfd, ptr @__x64_sys_membarrier, ptr @__x64_sys_mlock2, ptr @__x64_sys_copy_file_range, ptr @__x64_sys_preadv2, ptr @__x64_sys_pwritev2, ptr @__x64_sys_pkey_mprotect, ptr @__x64_sys_pkey_alloc, ptr @__x64_sys_pkey_free, ptr @__x64_sys_statx, ptr @__x64_sys_io_pgetevents, ptr @__x64_sys_rseq, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_ni_syscall, ptr @__x64_sys_pidfd_send_signal, ptr @__x64_sys_io_uring_setup, ptr @__x64_sys_io_uring_enter, ptr @__x64_sys_io_uring_register, ptr @__x64_sys_open_tree, ptr @__x64_sys_move_mount, ptr @__x64_sys_fsopen, ptr @__x64_sys_fsconfig, ptr @__x64_sys_fsmount, ptr @__x64_sys_fspick, ptr @__x64_sys_pidfd_open, ptr @__x64_sys_clone3, ptr @__x64_sys_close_range, ptr @__x64_sys_openat2, ptr @__x64_sys_pidfd_getfd, ptr @__x64_sys_faccessat2, ptr @__x64_sys_process_madvise, ptr @__x64_sys_epoll_pwait2, ptr @__x64_sys_mount_setattr, ptr @__x64_sys_quotactl_fd, ptr @__x64_sys_landlock_create_ruleset, ptr @__x64_sys_landlock_add_rule, ptr @__x64_sys_landlock_restrict_self, ptr @__x64_sys_memfd_secret, ptr @__x64_sys_process_mrelease, ptr @__x64_sys_futex_waitv, ptr @__x64_sys_set_mempolicy_home_node, ptr @__x64_sys_cachestat, ptr @__x64_sys_fchmodat2, ptr @__x64_sys_map_shadow_stack], align 16, !dbg !0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !86 dso_local i64 @__x64_sys_read(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !88 dso_local i64 @__x64_sys_write(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !89 dso_local i64 @__x64_sys_open(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !90 dso_local i64 @__x64_sys_close(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !91 dso_local i64 @__x64_sys_newstat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !92 dso_local i64 @__x64_sys_newfstat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !93 dso_local i64 @__x64_sys_newlstat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !94 dso_local i64 @__x64_sys_poll(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !95 dso_local i64 @__x64_sys_lseek(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !96 dso_local i64 @__x64_sys_mmap(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !97 dso_local i64 @__x64_sys_mprotect(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !98 dso_local i64 @__x64_sys_munmap(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !99 dso_local i64 @__x64_sys_brk(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !100 dso_local i64 @__x64_sys_rt_sigaction(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !101 dso_local i64 @__x64_sys_rt_sigprocmask(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !102 dso_local i64 @__x64_sys_rt_sigreturn(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !103 dso_local i64 @__x64_sys_ioctl(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !104 dso_local i64 @__x64_sys_pread64(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !105 dso_local i64 @__x64_sys_pwrite64(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !106 dso_local i64 @__x64_sys_readv(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !107 dso_local i64 @__x64_sys_writev(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !108 dso_local i64 @__x64_sys_access(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !109 dso_local i64 @__x64_sys_pipe(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !110 dso_local i64 @__x64_sys_select(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !111 dso_local i64 @__x64_sys_sched_yield(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !112 dso_local i64 @__x64_sys_mremap(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !113 dso_local i64 @__x64_sys_msync(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !114 dso_local i64 @__x64_sys_mincore(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !115 dso_local i64 @__x64_sys_madvise(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !116 dso_local i64 @__x64_sys_shmget(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !117 dso_local i64 @__x64_sys_shmat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !118 dso_local i64 @__x64_sys_shmctl(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !119 dso_local i64 @__x64_sys_dup(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !120 dso_local i64 @__x64_sys_dup2(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !121 dso_local i64 @__x64_sys_pause(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !122 dso_local i64 @__x64_sys_nanosleep(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !123 dso_local i64 @__x64_sys_getitimer(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !124 dso_local i64 @__x64_sys_alarm(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !125 dso_local i64 @__x64_sys_setitimer(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !126 dso_local i64 @__x64_sys_getpid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !127 dso_local i64 @__x64_sys_sendfile64(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !128 dso_local i64 @__x64_sys_socket(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !129 dso_local i64 @__x64_sys_connect(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !130 dso_local i64 @__x64_sys_accept(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !131 dso_local i64 @__x64_sys_sendto(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !132 dso_local i64 @__x64_sys_recvfrom(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !133 dso_local i64 @__x64_sys_sendmsg(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !134 dso_local i64 @__x64_sys_recvmsg(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !135 dso_local i64 @__x64_sys_shutdown(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !136 dso_local i64 @__x64_sys_bind(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !137 dso_local i64 @__x64_sys_listen(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !138 dso_local i64 @__x64_sys_getsockname(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !139 dso_local i64 @__x64_sys_getpeername(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !140 dso_local i64 @__x64_sys_socketpair(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !141 dso_local i64 @__x64_sys_setsockopt(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !142 dso_local i64 @__x64_sys_getsockopt(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !143 dso_local i64 @__x64_sys_clone(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !144 dso_local i64 @__x64_sys_fork(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !145 dso_local i64 @__x64_sys_vfork(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !146 dso_local i64 @__x64_sys_execve(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !147 dso_local i64 @__x64_sys_exit(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !148 dso_local i64 @__x64_sys_wait4(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !149 dso_local i64 @__x64_sys_kill(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !150 dso_local i64 @__x64_sys_newuname(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !151 dso_local i64 @__x64_sys_semget(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !152 dso_local i64 @__x64_sys_semop(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !153 dso_local i64 @__x64_sys_semctl(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !154 dso_local i64 @__x64_sys_shmdt(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !155 dso_local i64 @__x64_sys_msgget(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !156 dso_local i64 @__x64_sys_msgsnd(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !157 dso_local i64 @__x64_sys_msgrcv(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !158 dso_local i64 @__x64_sys_msgctl(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !159 dso_local i64 @__x64_sys_fcntl(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !160 dso_local i64 @__x64_sys_flock(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !161 dso_local i64 @__x64_sys_fsync(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !162 dso_local i64 @__x64_sys_fdatasync(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !163 dso_local i64 @__x64_sys_truncate(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !164 dso_local i64 @__x64_sys_ftruncate(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !165 dso_local i64 @__x64_sys_getdents(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !166 dso_local i64 @__x64_sys_getcwd(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !167 dso_local i64 @__x64_sys_chdir(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !168 dso_local i64 @__x64_sys_fchdir(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !169 dso_local i64 @__x64_sys_rename(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !170 dso_local i64 @__x64_sys_mkdir(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !171 dso_local i64 @__x64_sys_rmdir(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !172 dso_local i64 @__x64_sys_creat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !173 dso_local i64 @__x64_sys_link(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !174 dso_local i64 @__x64_sys_unlink(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !175 dso_local i64 @__x64_sys_symlink(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !176 dso_local i64 @__x64_sys_readlink(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !177 dso_local i64 @__x64_sys_chmod(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !178 dso_local i64 @__x64_sys_fchmod(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !179 dso_local i64 @__x64_sys_chown(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !180 dso_local i64 @__x64_sys_fchown(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !181 dso_local i64 @__x64_sys_lchown(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !182 dso_local i64 @__x64_sys_umask(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !183 dso_local i64 @__x64_sys_gettimeofday(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !184 dso_local i64 @__x64_sys_getrlimit(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !185 dso_local i64 @__x64_sys_getrusage(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !186 dso_local i64 @__x64_sys_sysinfo(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !187 dso_local i64 @__x64_sys_times(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !188 dso_local i64 @__x64_sys_ptrace(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !189 dso_local i64 @__x64_sys_getuid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !190 dso_local i64 @__x64_sys_syslog(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !191 dso_local i64 @__x64_sys_getgid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !192 dso_local i64 @__x64_sys_setuid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !193 dso_local i64 @__x64_sys_setgid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !194 dso_local i64 @__x64_sys_geteuid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !195 dso_local i64 @__x64_sys_getegid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !196 dso_local i64 @__x64_sys_setpgid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !197 dso_local i64 @__x64_sys_getppid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !198 dso_local i64 @__x64_sys_getpgrp(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !199 dso_local i64 @__x64_sys_setsid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !200 dso_local i64 @__x64_sys_setreuid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !201 dso_local i64 @__x64_sys_setregid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !202 dso_local i64 @__x64_sys_getgroups(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !203 dso_local i64 @__x64_sys_setgroups(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !204 dso_local i64 @__x64_sys_setresuid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !205 dso_local i64 @__x64_sys_getresuid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !206 dso_local i64 @__x64_sys_setresgid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !207 dso_local i64 @__x64_sys_getresgid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !208 dso_local i64 @__x64_sys_getpgid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !209 dso_local i64 @__x64_sys_setfsuid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !210 dso_local i64 @__x64_sys_setfsgid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !211 dso_local i64 @__x64_sys_getsid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !212 dso_local i64 @__x64_sys_capget(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !213 dso_local i64 @__x64_sys_capset(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !214 dso_local i64 @__x64_sys_rt_sigpending(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !215 dso_local i64 @__x64_sys_rt_sigtimedwait(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !216 dso_local i64 @__x64_sys_rt_sigqueueinfo(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !217 dso_local i64 @__x64_sys_rt_sigsuspend(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !218 dso_local i64 @__x64_sys_sigaltstack(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !219 dso_local i64 @__x64_sys_utime(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !220 dso_local i64 @__x64_sys_mknod(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !221 dso_local i64 @__x64_sys_ni_syscall(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !222 dso_local i64 @__x64_sys_personality(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !223 dso_local i64 @__x64_sys_ustat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !224 dso_local i64 @__x64_sys_statfs(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !225 dso_local i64 @__x64_sys_fstatfs(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !226 dso_local i64 @__x64_sys_sysfs(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !227 dso_local i64 @__x64_sys_getpriority(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !228 dso_local i64 @__x64_sys_setpriority(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !229 dso_local i64 @__x64_sys_sched_setparam(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !230 dso_local i64 @__x64_sys_sched_getparam(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !231 dso_local i64 @__x64_sys_sched_setscheduler(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !232 dso_local i64 @__x64_sys_sched_getscheduler(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !233 dso_local i64 @__x64_sys_sched_get_priority_max(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !234 dso_local i64 @__x64_sys_sched_get_priority_min(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !235 dso_local i64 @__x64_sys_sched_rr_get_interval(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !236 dso_local i64 @__x64_sys_mlock(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !237 dso_local i64 @__x64_sys_munlock(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !238 dso_local i64 @__x64_sys_mlockall(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !239 dso_local i64 @__x64_sys_munlockall(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !240 dso_local i64 @__x64_sys_vhangup(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !241 dso_local i64 @__x64_sys_modify_ldt(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !242 dso_local i64 @__x64_sys_pivot_root(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !243 dso_local i64 @__x64_sys_prctl(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !244 dso_local i64 @__x64_sys_arch_prctl(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !245 dso_local i64 @__x64_sys_adjtimex(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !246 dso_local i64 @__x64_sys_setrlimit(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !247 dso_local i64 @__x64_sys_chroot(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !248 dso_local i64 @__x64_sys_sync(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !249 dso_local i64 @__x64_sys_acct(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !250 dso_local i64 @__x64_sys_settimeofday(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !251 dso_local i64 @__x64_sys_mount(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !252 dso_local i64 @__x64_sys_umount(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !253 dso_local i64 @__x64_sys_swapon(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !254 dso_local i64 @__x64_sys_swapoff(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !255 dso_local i64 @__x64_sys_reboot(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !256 dso_local i64 @__x64_sys_sethostname(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !257 dso_local i64 @__x64_sys_setdomainname(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !258 dso_local i64 @__x64_sys_iopl(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !259 dso_local i64 @__x64_sys_ioperm(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !260 dso_local i64 @__x64_sys_init_module(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !261 dso_local i64 @__x64_sys_delete_module(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !262 dso_local i64 @__x64_sys_quotactl(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !263 dso_local i64 @__x64_sys_gettid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !264 dso_local i64 @__x64_sys_readahead(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !265 dso_local i64 @__x64_sys_setxattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !266 dso_local i64 @__x64_sys_lsetxattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !267 dso_local i64 @__x64_sys_fsetxattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !268 dso_local i64 @__x64_sys_getxattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !269 dso_local i64 @__x64_sys_lgetxattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !270 dso_local i64 @__x64_sys_fgetxattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !271 dso_local i64 @__x64_sys_listxattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !272 dso_local i64 @__x64_sys_llistxattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !273 dso_local i64 @__x64_sys_flistxattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !274 dso_local i64 @__x64_sys_removexattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !275 dso_local i64 @__x64_sys_lremovexattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !276 dso_local i64 @__x64_sys_fremovexattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !277 dso_local i64 @__x64_sys_tkill(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !278 dso_local i64 @__x64_sys_time(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !279 dso_local i64 @__x64_sys_futex(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !280 dso_local i64 @__x64_sys_sched_setaffinity(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !281 dso_local i64 @__x64_sys_sched_getaffinity(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !282 dso_local i64 @__x64_sys_io_setup(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !283 dso_local i64 @__x64_sys_io_destroy(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !284 dso_local i64 @__x64_sys_io_getevents(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !285 dso_local i64 @__x64_sys_io_submit(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !286 dso_local i64 @__x64_sys_io_cancel(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !287 dso_local i64 @__x64_sys_lookup_dcookie(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !288 dso_local i64 @__x64_sys_epoll_create(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !289 dso_local i64 @__x64_sys_remap_file_pages(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !290 dso_local i64 @__x64_sys_getdents64(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !291 dso_local i64 @__x64_sys_set_tid_address(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !292 dso_local i64 @__x64_sys_restart_syscall(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !293 dso_local i64 @__x64_sys_semtimedop(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !294 dso_local i64 @__x64_sys_fadvise64(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !295 dso_local i64 @__x64_sys_timer_create(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !296 dso_local i64 @__x64_sys_timer_settime(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !297 dso_local i64 @__x64_sys_timer_gettime(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !298 dso_local i64 @__x64_sys_timer_getoverrun(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !299 dso_local i64 @__x64_sys_timer_delete(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !300 dso_local i64 @__x64_sys_clock_settime(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !301 dso_local i64 @__x64_sys_clock_gettime(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !302 dso_local i64 @__x64_sys_clock_getres(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !303 dso_local i64 @__x64_sys_clock_nanosleep(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !304 dso_local i64 @__x64_sys_exit_group(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !305 dso_local i64 @__x64_sys_epoll_wait(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !306 dso_local i64 @__x64_sys_epoll_ctl(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !307 dso_local i64 @__x64_sys_tgkill(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !308 dso_local i64 @__x64_sys_utimes(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !309 dso_local i64 @__x64_sys_mbind(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !310 dso_local i64 @__x64_sys_set_mempolicy(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !311 dso_local i64 @__x64_sys_get_mempolicy(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !312 dso_local i64 @__x64_sys_mq_open(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !313 dso_local i64 @__x64_sys_mq_unlink(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !314 dso_local i64 @__x64_sys_mq_timedsend(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !315 dso_local i64 @__x64_sys_mq_timedreceive(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !316 dso_local i64 @__x64_sys_mq_notify(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !317 dso_local i64 @__x64_sys_mq_getsetattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !318 dso_local i64 @__x64_sys_kexec_load(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !319 dso_local i64 @__x64_sys_waitid(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !320 dso_local i64 @__x64_sys_add_key(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !321 dso_local i64 @__x64_sys_request_key(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !322 dso_local i64 @__x64_sys_keyctl(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !323 dso_local i64 @__x64_sys_ioprio_set(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !324 dso_local i64 @__x64_sys_ioprio_get(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !325 dso_local i64 @__x64_sys_inotify_init(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !326 dso_local i64 @__x64_sys_inotify_add_watch(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !327 dso_local i64 @__x64_sys_inotify_rm_watch(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !328 dso_local i64 @__x64_sys_migrate_pages(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !329 dso_local i64 @__x64_sys_openat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !330 dso_local i64 @__x64_sys_mkdirat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !331 dso_local i64 @__x64_sys_mknodat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !332 dso_local i64 @__x64_sys_fchownat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !333 dso_local i64 @__x64_sys_futimesat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !334 dso_local i64 @__x64_sys_newfstatat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !335 dso_local i64 @__x64_sys_unlinkat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !336 dso_local i64 @__x64_sys_renameat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !337 dso_local i64 @__x64_sys_linkat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !338 dso_local i64 @__x64_sys_symlinkat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !339 dso_local i64 @__x64_sys_readlinkat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !340 dso_local i64 @__x64_sys_fchmodat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !341 dso_local i64 @__x64_sys_faccessat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !342 dso_local i64 @__x64_sys_pselect6(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !343 dso_local i64 @__x64_sys_ppoll(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !344 dso_local i64 @__x64_sys_unshare(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !345 dso_local i64 @__x64_sys_set_robust_list(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !346 dso_local i64 @__x64_sys_get_robust_list(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !347 dso_local i64 @__x64_sys_splice(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !348 dso_local i64 @__x64_sys_tee(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !349 dso_local i64 @__x64_sys_sync_file_range(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !350 dso_local i64 @__x64_sys_vmsplice(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !351 dso_local i64 @__x64_sys_move_pages(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !352 dso_local i64 @__x64_sys_utimensat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !353 dso_local i64 @__x64_sys_epoll_pwait(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !354 dso_local i64 @__x64_sys_signalfd(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !355 dso_local i64 @__x64_sys_timerfd_create(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !356 dso_local i64 @__x64_sys_eventfd(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !357 dso_local i64 @__x64_sys_fallocate(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !358 dso_local i64 @__x64_sys_timerfd_settime(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !359 dso_local i64 @__x64_sys_timerfd_gettime(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !360 dso_local i64 @__x64_sys_accept4(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !361 dso_local i64 @__x64_sys_signalfd4(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !362 dso_local i64 @__x64_sys_eventfd2(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !363 dso_local i64 @__x64_sys_epoll_create1(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !364 dso_local i64 @__x64_sys_dup3(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !365 dso_local i64 @__x64_sys_pipe2(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !366 dso_local i64 @__x64_sys_inotify_init1(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !367 dso_local i64 @__x64_sys_preadv(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !368 dso_local i64 @__x64_sys_pwritev(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !369 dso_local i64 @__x64_sys_rt_tgsigqueueinfo(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !370 dso_local i64 @__x64_sys_perf_event_open(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !371 dso_local i64 @__x64_sys_recvmmsg(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !372 dso_local i64 @__x64_sys_fanotify_init(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !373 dso_local i64 @__x64_sys_fanotify_mark(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !374 dso_local i64 @__x64_sys_prlimit64(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !375 dso_local i64 @__x64_sys_name_to_handle_at(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !376 dso_local i64 @__x64_sys_open_by_handle_at(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !377 dso_local i64 @__x64_sys_clock_adjtime(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !378 dso_local i64 @__x64_sys_syncfs(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !379 dso_local i64 @__x64_sys_sendmmsg(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !380 dso_local i64 @__x64_sys_setns(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !381 dso_local i64 @__x64_sys_getcpu(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !382 dso_local i64 @__x64_sys_process_vm_readv(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !383 dso_local i64 @__x64_sys_process_vm_writev(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !384 dso_local i64 @__x64_sys_kcmp(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !385 dso_local i64 @__x64_sys_finit_module(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !386 dso_local i64 @__x64_sys_sched_setattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !387 dso_local i64 @__x64_sys_sched_getattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !388 dso_local i64 @__x64_sys_renameat2(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !389 dso_local i64 @__x64_sys_seccomp(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !390 dso_local i64 @__x64_sys_getrandom(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !391 dso_local i64 @__x64_sys_memfd_create(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !392 dso_local i64 @__x64_sys_kexec_file_load(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !393 dso_local i64 @__x64_sys_bpf(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !394 dso_local i64 @__x64_sys_execveat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !395 dso_local i64 @__x64_sys_userfaultfd(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !396 dso_local i64 @__x64_sys_membarrier(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !397 dso_local i64 @__x64_sys_mlock2(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !398 dso_local i64 @__x64_sys_copy_file_range(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !399 dso_local i64 @__x64_sys_preadv2(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !400 dso_local i64 @__x64_sys_pwritev2(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !401 dso_local i64 @__x64_sys_pkey_mprotect(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !402 dso_local i64 @__x64_sys_pkey_alloc(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !403 dso_local i64 @__x64_sys_pkey_free(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !404 dso_local i64 @__x64_sys_statx(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !405 dso_local i64 @__x64_sys_io_pgetevents(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !406 dso_local i64 @__x64_sys_rseq(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !407 dso_local i64 @__x64_sys_pidfd_send_signal(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !408 dso_local i64 @__x64_sys_io_uring_setup(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !409 dso_local i64 @__x64_sys_io_uring_enter(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !410 dso_local i64 @__x64_sys_io_uring_register(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !411 dso_local i64 @__x64_sys_open_tree(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !412 dso_local i64 @__x64_sys_move_mount(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !413 dso_local i64 @__x64_sys_fsopen(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !414 dso_local i64 @__x64_sys_fsconfig(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !415 dso_local i64 @__x64_sys_fsmount(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !416 dso_local i64 @__x64_sys_fspick(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !417 dso_local i64 @__x64_sys_pidfd_open(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !418 dso_local i64 @__x64_sys_clone3(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !419 dso_local i64 @__x64_sys_close_range(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !420 dso_local i64 @__x64_sys_openat2(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !421 dso_local i64 @__x64_sys_pidfd_getfd(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !422 dso_local i64 @__x64_sys_faccessat2(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !423 dso_local i64 @__x64_sys_process_madvise(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !424 dso_local i64 @__x64_sys_epoll_pwait2(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !425 dso_local i64 @__x64_sys_mount_setattr(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !426 dso_local i64 @__x64_sys_quotactl_fd(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !427 dso_local i64 @__x64_sys_landlock_create_ruleset(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !428 dso_local i64 @__x64_sys_landlock_add_rule(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !429 dso_local i64 @__x64_sys_landlock_restrict_self(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !430 dso_local i64 @__x64_sys_memfd_secret(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !431 dso_local i64 @__x64_sys_process_mrelease(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !432 dso_local i64 @__x64_sys_futex_waitv(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !433 dso_local i64 @__x64_sys_set_mempolicy_home_node(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !434 dso_local i64 @__x64_sys_cachestat(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !435 dso_local i64 @__x64_sys_fchmodat2(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !436 dso_local i64 @__x64_sys_map_shadow_stack(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @x64_sys_call(ptr noundef %regs, i32 noundef %nr) #1 align 16 !dbg !437 {
entry:
  %retval = alloca i64, align 8
  %regs.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !442, metadata !DIExpression()), !dbg !444
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !443, metadata !DIExpression()), !dbg !445
  %0 = load i32, ptr %nr.addr, align 4, !dbg !446
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb11
    i32 7, label %sw.bb13
    i32 8, label %sw.bb15
    i32 9, label %sw.bb17
    i32 10, label %sw.bb19
    i32 11, label %sw.bb21
    i32 12, label %sw.bb23
    i32 13, label %sw.bb25
    i32 14, label %sw.bb27
    i32 15, label %sw.bb29
    i32 16, label %sw.bb31
    i32 17, label %sw.bb33
    i32 18, label %sw.bb35
    i32 19, label %sw.bb37
    i32 20, label %sw.bb39
    i32 21, label %sw.bb41
    i32 22, label %sw.bb43
    i32 23, label %sw.bb45
    i32 24, label %sw.bb47
    i32 25, label %sw.bb49
    i32 26, label %sw.bb51
    i32 27, label %sw.bb53
    i32 28, label %sw.bb55
    i32 29, label %sw.bb57
    i32 30, label %sw.bb59
    i32 31, label %sw.bb61
    i32 32, label %sw.bb63
    i32 33, label %sw.bb65
    i32 34, label %sw.bb67
    i32 35, label %sw.bb69
    i32 36, label %sw.bb71
    i32 37, label %sw.bb73
    i32 38, label %sw.bb75
    i32 39, label %sw.bb77
    i32 40, label %sw.bb79
    i32 41, label %sw.bb81
    i32 42, label %sw.bb83
    i32 43, label %sw.bb85
    i32 44, label %sw.bb87
    i32 45, label %sw.bb89
    i32 46, label %sw.bb91
    i32 47, label %sw.bb93
    i32 48, label %sw.bb95
    i32 49, label %sw.bb97
    i32 50, label %sw.bb99
    i32 51, label %sw.bb101
    i32 52, label %sw.bb103
    i32 53, label %sw.bb105
    i32 54, label %sw.bb107
    i32 55, label %sw.bb109
    i32 56, label %sw.bb111
    i32 57, label %sw.bb113
    i32 58, label %sw.bb115
    i32 59, label %sw.bb117
    i32 60, label %sw.bb119
    i32 61, label %sw.bb121
    i32 62, label %sw.bb123
    i32 63, label %sw.bb125
    i32 64, label %sw.bb127
    i32 65, label %sw.bb129
    i32 66, label %sw.bb131
    i32 67, label %sw.bb133
    i32 68, label %sw.bb135
    i32 69, label %sw.bb137
    i32 70, label %sw.bb139
    i32 71, label %sw.bb141
    i32 72, label %sw.bb143
    i32 73, label %sw.bb145
    i32 74, label %sw.bb147
    i32 75, label %sw.bb149
    i32 76, label %sw.bb151
    i32 77, label %sw.bb153
    i32 78, label %sw.bb155
    i32 79, label %sw.bb157
    i32 80, label %sw.bb159
    i32 81, label %sw.bb161
    i32 82, label %sw.bb163
    i32 83, label %sw.bb165
    i32 84, label %sw.bb167
    i32 85, label %sw.bb169
    i32 86, label %sw.bb171
    i32 87, label %sw.bb173
    i32 88, label %sw.bb175
    i32 89, label %sw.bb177
    i32 90, label %sw.bb179
    i32 91, label %sw.bb181
    i32 92, label %sw.bb183
    i32 93, label %sw.bb185
    i32 94, label %sw.bb187
    i32 95, label %sw.bb189
    i32 96, label %sw.bb191
    i32 97, label %sw.bb193
    i32 98, label %sw.bb195
    i32 99, label %sw.bb197
    i32 100, label %sw.bb199
    i32 101, label %sw.bb201
    i32 102, label %sw.bb203
    i32 103, label %sw.bb205
    i32 104, label %sw.bb207
    i32 105, label %sw.bb209
    i32 106, label %sw.bb211
    i32 107, label %sw.bb213
    i32 108, label %sw.bb215
    i32 109, label %sw.bb217
    i32 110, label %sw.bb219
    i32 111, label %sw.bb221
    i32 112, label %sw.bb223
    i32 113, label %sw.bb225
    i32 114, label %sw.bb227
    i32 115, label %sw.bb229
    i32 116, label %sw.bb231
    i32 117, label %sw.bb233
    i32 118, label %sw.bb235
    i32 119, label %sw.bb237
    i32 120, label %sw.bb239
    i32 121, label %sw.bb241
    i32 122, label %sw.bb243
    i32 123, label %sw.bb245
    i32 124, label %sw.bb247
    i32 125, label %sw.bb249
    i32 126, label %sw.bb251
    i32 127, label %sw.bb253
    i32 128, label %sw.bb255
    i32 129, label %sw.bb257
    i32 130, label %sw.bb259
    i32 131, label %sw.bb261
    i32 132, label %sw.bb263
    i32 133, label %sw.bb265
    i32 134, label %sw.bb267
    i32 135, label %sw.bb269
    i32 136, label %sw.bb271
    i32 137, label %sw.bb273
    i32 138, label %sw.bb275
    i32 139, label %sw.bb277
    i32 140, label %sw.bb279
    i32 141, label %sw.bb281
    i32 142, label %sw.bb283
    i32 143, label %sw.bb285
    i32 144, label %sw.bb287
    i32 145, label %sw.bb289
    i32 146, label %sw.bb291
    i32 147, label %sw.bb293
    i32 148, label %sw.bb295
    i32 149, label %sw.bb297
    i32 150, label %sw.bb299
    i32 151, label %sw.bb301
    i32 152, label %sw.bb303
    i32 153, label %sw.bb305
    i32 154, label %sw.bb307
    i32 155, label %sw.bb309
    i32 156, label %sw.bb311
    i32 157, label %sw.bb313
    i32 158, label %sw.bb315
    i32 159, label %sw.bb317
    i32 160, label %sw.bb319
    i32 161, label %sw.bb321
    i32 162, label %sw.bb323
    i32 163, label %sw.bb325
    i32 164, label %sw.bb327
    i32 165, label %sw.bb329
    i32 166, label %sw.bb331
    i32 167, label %sw.bb333
    i32 168, label %sw.bb335
    i32 169, label %sw.bb337
    i32 170, label %sw.bb339
    i32 171, label %sw.bb341
    i32 172, label %sw.bb343
    i32 173, label %sw.bb345
    i32 174, label %sw.bb347
    i32 175, label %sw.bb349
    i32 176, label %sw.bb351
    i32 177, label %sw.bb353
    i32 178, label %sw.bb355
    i32 179, label %sw.bb357
    i32 180, label %sw.bb359
    i32 181, label %sw.bb361
    i32 182, label %sw.bb363
    i32 183, label %sw.bb365
    i32 184, label %sw.bb367
    i32 185, label %sw.bb369
    i32 186, label %sw.bb371
    i32 187, label %sw.bb373
    i32 188, label %sw.bb375
    i32 189, label %sw.bb377
    i32 190, label %sw.bb379
    i32 191, label %sw.bb381
    i32 192, label %sw.bb383
    i32 193, label %sw.bb385
    i32 194, label %sw.bb387
    i32 195, label %sw.bb389
    i32 196, label %sw.bb391
    i32 197, label %sw.bb393
    i32 198, label %sw.bb395
    i32 199, label %sw.bb397
    i32 200, label %sw.bb399
    i32 201, label %sw.bb401
    i32 202, label %sw.bb403
    i32 203, label %sw.bb405
    i32 204, label %sw.bb407
    i32 205, label %sw.bb409
    i32 206, label %sw.bb411
    i32 207, label %sw.bb413
    i32 208, label %sw.bb415
    i32 209, label %sw.bb417
    i32 210, label %sw.bb419
    i32 211, label %sw.bb421
    i32 212, label %sw.bb423
    i32 213, label %sw.bb425
    i32 214, label %sw.bb427
    i32 215, label %sw.bb429
    i32 216, label %sw.bb431
    i32 217, label %sw.bb433
    i32 218, label %sw.bb435
    i32 219, label %sw.bb437
    i32 220, label %sw.bb439
    i32 221, label %sw.bb441
    i32 222, label %sw.bb443
    i32 223, label %sw.bb445
    i32 224, label %sw.bb447
    i32 225, label %sw.bb449
    i32 226, label %sw.bb451
    i32 227, label %sw.bb453
    i32 228, label %sw.bb455
    i32 229, label %sw.bb457
    i32 230, label %sw.bb459
    i32 231, label %sw.bb461
    i32 232, label %sw.bb463
    i32 233, label %sw.bb465
    i32 234, label %sw.bb467
    i32 235, label %sw.bb469
    i32 236, label %sw.bb471
    i32 237, label %sw.bb473
    i32 238, label %sw.bb475
    i32 239, label %sw.bb477
    i32 240, label %sw.bb479
    i32 241, label %sw.bb481
    i32 242, label %sw.bb483
    i32 243, label %sw.bb485
    i32 244, label %sw.bb487
    i32 245, label %sw.bb489
    i32 246, label %sw.bb491
    i32 247, label %sw.bb493
    i32 248, label %sw.bb495
    i32 249, label %sw.bb497
    i32 250, label %sw.bb499
    i32 251, label %sw.bb501
    i32 252, label %sw.bb503
    i32 253, label %sw.bb505
    i32 254, label %sw.bb507
    i32 255, label %sw.bb509
    i32 256, label %sw.bb511
    i32 257, label %sw.bb513
    i32 258, label %sw.bb515
    i32 259, label %sw.bb517
    i32 260, label %sw.bb519
    i32 261, label %sw.bb521
    i32 262, label %sw.bb523
    i32 263, label %sw.bb525
    i32 264, label %sw.bb527
    i32 265, label %sw.bb529
    i32 266, label %sw.bb531
    i32 267, label %sw.bb533
    i32 268, label %sw.bb535
    i32 269, label %sw.bb537
    i32 270, label %sw.bb539
    i32 271, label %sw.bb541
    i32 272, label %sw.bb543
    i32 273, label %sw.bb545
    i32 274, label %sw.bb547
    i32 275, label %sw.bb549
    i32 276, label %sw.bb551
    i32 277, label %sw.bb553
    i32 278, label %sw.bb555
    i32 279, label %sw.bb557
    i32 280, label %sw.bb559
    i32 281, label %sw.bb561
    i32 282, label %sw.bb563
    i32 283, label %sw.bb565
    i32 284, label %sw.bb567
    i32 285, label %sw.bb569
    i32 286, label %sw.bb571
    i32 287, label %sw.bb573
    i32 288, label %sw.bb575
    i32 289, label %sw.bb577
    i32 290, label %sw.bb579
    i32 291, label %sw.bb581
    i32 292, label %sw.bb583
    i32 293, label %sw.bb585
    i32 294, label %sw.bb587
    i32 295, label %sw.bb589
    i32 296, label %sw.bb591
    i32 297, label %sw.bb593
    i32 298, label %sw.bb595
    i32 299, label %sw.bb597
    i32 300, label %sw.bb599
    i32 301, label %sw.bb601
    i32 302, label %sw.bb603
    i32 303, label %sw.bb605
    i32 304, label %sw.bb607
    i32 305, label %sw.bb609
    i32 306, label %sw.bb611
    i32 307, label %sw.bb613
    i32 308, label %sw.bb615
    i32 309, label %sw.bb617
    i32 310, label %sw.bb619
    i32 311, label %sw.bb621
    i32 312, label %sw.bb623
    i32 313, label %sw.bb625
    i32 314, label %sw.bb627
    i32 315, label %sw.bb629
    i32 316, label %sw.bb631
    i32 317, label %sw.bb633
    i32 318, label %sw.bb635
    i32 319, label %sw.bb637
    i32 320, label %sw.bb639
    i32 321, label %sw.bb641
    i32 322, label %sw.bb643
    i32 323, label %sw.bb645
    i32 324, label %sw.bb647
    i32 325, label %sw.bb649
    i32 326, label %sw.bb651
    i32 327, label %sw.bb653
    i32 328, label %sw.bb655
    i32 329, label %sw.bb657
    i32 330, label %sw.bb659
    i32 331, label %sw.bb661
    i32 332, label %sw.bb663
    i32 333, label %sw.bb665
    i32 334, label %sw.bb667
    i32 335, label %sw.bb669
    i32 336, label %sw.bb671
    i32 337, label %sw.bb673
    i32 338, label %sw.bb675
    i32 339, label %sw.bb677
    i32 340, label %sw.bb679
    i32 341, label %sw.bb681
    i32 342, label %sw.bb683
    i32 343, label %sw.bb685
    i32 344, label %sw.bb687
    i32 345, label %sw.bb689
    i32 346, label %sw.bb691
    i32 347, label %sw.bb693
    i32 348, label %sw.bb695
    i32 349, label %sw.bb697
    i32 350, label %sw.bb699
    i32 351, label %sw.bb701
    i32 352, label %sw.bb703
    i32 353, label %sw.bb705
    i32 354, label %sw.bb707
    i32 355, label %sw.bb709
    i32 356, label %sw.bb711
    i32 357, label %sw.bb713
    i32 358, label %sw.bb715
    i32 359, label %sw.bb717
    i32 360, label %sw.bb719
    i32 361, label %sw.bb721
    i32 362, label %sw.bb723
    i32 363, label %sw.bb725
    i32 364, label %sw.bb727
    i32 365, label %sw.bb729
    i32 366, label %sw.bb731
    i32 367, label %sw.bb733
    i32 368, label %sw.bb735
    i32 369, label %sw.bb737
    i32 370, label %sw.bb739
    i32 371, label %sw.bb741
    i32 372, label %sw.bb743
    i32 373, label %sw.bb745
    i32 374, label %sw.bb747
    i32 375, label %sw.bb749
    i32 376, label %sw.bb751
    i32 377, label %sw.bb753
    i32 378, label %sw.bb755
    i32 379, label %sw.bb757
    i32 380, label %sw.bb759
    i32 381, label %sw.bb761
    i32 382, label %sw.bb763
    i32 383, label %sw.bb765
    i32 384, label %sw.bb767
    i32 385, label %sw.bb769
    i32 386, label %sw.bb771
    i32 387, label %sw.bb773
    i32 388, label %sw.bb775
    i32 389, label %sw.bb777
    i32 390, label %sw.bb779
    i32 391, label %sw.bb781
    i32 392, label %sw.bb783
    i32 393, label %sw.bb785
    i32 394, label %sw.bb787
    i32 395, label %sw.bb789
    i32 396, label %sw.bb791
    i32 397, label %sw.bb793
    i32 398, label %sw.bb795
    i32 399, label %sw.bb797
    i32 400, label %sw.bb799
    i32 401, label %sw.bb801
    i32 402, label %sw.bb803
    i32 403, label %sw.bb805
    i32 404, label %sw.bb807
    i32 405, label %sw.bb809
    i32 406, label %sw.bb811
    i32 407, label %sw.bb813
    i32 408, label %sw.bb815
    i32 409, label %sw.bb817
    i32 410, label %sw.bb819
    i32 411, label %sw.bb821
    i32 412, label %sw.bb823
    i32 413, label %sw.bb825
    i32 414, label %sw.bb827
    i32 415, label %sw.bb829
    i32 416, label %sw.bb831
    i32 417, label %sw.bb833
    i32 418, label %sw.bb835
    i32 419, label %sw.bb837
    i32 420, label %sw.bb839
    i32 421, label %sw.bb841
    i32 422, label %sw.bb843
    i32 423, label %sw.bb845
    i32 424, label %sw.bb847
    i32 425, label %sw.bb849
    i32 426, label %sw.bb851
    i32 427, label %sw.bb853
    i32 428, label %sw.bb855
    i32 429, label %sw.bb857
    i32 430, label %sw.bb859
    i32 431, label %sw.bb861
    i32 432, label %sw.bb863
    i32 433, label %sw.bb865
    i32 434, label %sw.bb867
    i32 435, label %sw.bb869
    i32 436, label %sw.bb871
    i32 437, label %sw.bb873
    i32 438, label %sw.bb875
    i32 439, label %sw.bb877
    i32 440, label %sw.bb879
    i32 441, label %sw.bb881
    i32 442, label %sw.bb883
    i32 443, label %sw.bb885
    i32 444, label %sw.bb887
    i32 445, label %sw.bb889
    i32 446, label %sw.bb891
    i32 447, label %sw.bb893
    i32 448, label %sw.bb895
    i32 449, label %sw.bb897
    i32 450, label %sw.bb899
    i32 451, label %sw.bb901
    i32 452, label %sw.bb903
    i32 453, label %sw.bb905
  ], !dbg !447

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !448
  %call = call i64 @__x64_sys_read(ptr noundef %1) #3, !dbg !448
  store i64 %call, ptr %retval, align 8, !dbg !448
  br label %return, !dbg !448

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !451
  %call2 = call i64 @__x64_sys_write(ptr noundef %2) #3, !dbg !451
  store i64 %call2, ptr %retval, align 8, !dbg !451
  br label %return, !dbg !451

sw.bb3:                                           ; preds = %entry
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !452
  %call4 = call i64 @__x64_sys_open(ptr noundef %3) #3, !dbg !452
  store i64 %call4, ptr %retval, align 8, !dbg !452
  br label %return, !dbg !452

sw.bb5:                                           ; preds = %entry
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !453
  %call6 = call i64 @__x64_sys_close(ptr noundef %4) #3, !dbg !453
  store i64 %call6, ptr %retval, align 8, !dbg !453
  br label %return, !dbg !453

sw.bb7:                                           ; preds = %entry
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !454
  %call8 = call i64 @__x64_sys_newstat(ptr noundef %5) #3, !dbg !454
  store i64 %call8, ptr %retval, align 8, !dbg !454
  br label %return, !dbg !454

sw.bb9:                                           ; preds = %entry
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !455
  %call10 = call i64 @__x64_sys_newfstat(ptr noundef %6) #3, !dbg !455
  store i64 %call10, ptr %retval, align 8, !dbg !455
  br label %return, !dbg !455

sw.bb11:                                          ; preds = %entry
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !456
  %call12 = call i64 @__x64_sys_newlstat(ptr noundef %7) #3, !dbg !456
  store i64 %call12, ptr %retval, align 8, !dbg !456
  br label %return, !dbg !456

sw.bb13:                                          ; preds = %entry
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !457
  %call14 = call i64 @__x64_sys_poll(ptr noundef %8) #3, !dbg !457
  store i64 %call14, ptr %retval, align 8, !dbg !457
  br label %return, !dbg !457

sw.bb15:                                          ; preds = %entry
  %9 = load ptr, ptr %regs.addr, align 8, !dbg !458
  %call16 = call i64 @__x64_sys_lseek(ptr noundef %9) #3, !dbg !458
  store i64 %call16, ptr %retval, align 8, !dbg !458
  br label %return, !dbg !458

sw.bb17:                                          ; preds = %entry
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !459
  %call18 = call i64 @__x64_sys_mmap(ptr noundef %10) #3, !dbg !459
  store i64 %call18, ptr %retval, align 8, !dbg !459
  br label %return, !dbg !459

sw.bb19:                                          ; preds = %entry
  %11 = load ptr, ptr %regs.addr, align 8, !dbg !460
  %call20 = call i64 @__x64_sys_mprotect(ptr noundef %11) #3, !dbg !460
  store i64 %call20, ptr %retval, align 8, !dbg !460
  br label %return, !dbg !460

sw.bb21:                                          ; preds = %entry
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !461
  %call22 = call i64 @__x64_sys_munmap(ptr noundef %12) #3, !dbg !461
  store i64 %call22, ptr %retval, align 8, !dbg !461
  br label %return, !dbg !461

sw.bb23:                                          ; preds = %entry
  %13 = load ptr, ptr %regs.addr, align 8, !dbg !462
  %call24 = call i64 @__x64_sys_brk(ptr noundef %13) #3, !dbg !462
  store i64 %call24, ptr %retval, align 8, !dbg !462
  br label %return, !dbg !462

sw.bb25:                                          ; preds = %entry
  %14 = load ptr, ptr %regs.addr, align 8, !dbg !463
  %call26 = call i64 @__x64_sys_rt_sigaction(ptr noundef %14) #3, !dbg !463
  store i64 %call26, ptr %retval, align 8, !dbg !463
  br label %return, !dbg !463

sw.bb27:                                          ; preds = %entry
  %15 = load ptr, ptr %regs.addr, align 8, !dbg !464
  %call28 = call i64 @__x64_sys_rt_sigprocmask(ptr noundef %15) #3, !dbg !464
  store i64 %call28, ptr %retval, align 8, !dbg !464
  br label %return, !dbg !464

sw.bb29:                                          ; preds = %entry
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !465
  %call30 = call i64 @__x64_sys_rt_sigreturn(ptr noundef %16) #3, !dbg !465
  store i64 %call30, ptr %retval, align 8, !dbg !465
  br label %return, !dbg !465

sw.bb31:                                          ; preds = %entry
  %17 = load ptr, ptr %regs.addr, align 8, !dbg !466
  %call32 = call i64 @__x64_sys_ioctl(ptr noundef %17) #3, !dbg !466
  store i64 %call32, ptr %retval, align 8, !dbg !466
  br label %return, !dbg !466

sw.bb33:                                          ; preds = %entry
  %18 = load ptr, ptr %regs.addr, align 8, !dbg !467
  %call34 = call i64 @__x64_sys_pread64(ptr noundef %18) #3, !dbg !467
  store i64 %call34, ptr %retval, align 8, !dbg !467
  br label %return, !dbg !467

sw.bb35:                                          ; preds = %entry
  %19 = load ptr, ptr %regs.addr, align 8, !dbg !468
  %call36 = call i64 @__x64_sys_pwrite64(ptr noundef %19) #3, !dbg !468
  store i64 %call36, ptr %retval, align 8, !dbg !468
  br label %return, !dbg !468

sw.bb37:                                          ; preds = %entry
  %20 = load ptr, ptr %regs.addr, align 8, !dbg !469
  %call38 = call i64 @__x64_sys_readv(ptr noundef %20) #3, !dbg !469
  store i64 %call38, ptr %retval, align 8, !dbg !469
  br label %return, !dbg !469

sw.bb39:                                          ; preds = %entry
  %21 = load ptr, ptr %regs.addr, align 8, !dbg !470
  %call40 = call i64 @__x64_sys_writev(ptr noundef %21) #3, !dbg !470
  store i64 %call40, ptr %retval, align 8, !dbg !470
  br label %return, !dbg !470

sw.bb41:                                          ; preds = %entry
  %22 = load ptr, ptr %regs.addr, align 8, !dbg !471
  %call42 = call i64 @__x64_sys_access(ptr noundef %22) #3, !dbg !471
  store i64 %call42, ptr %retval, align 8, !dbg !471
  br label %return, !dbg !471

sw.bb43:                                          ; preds = %entry
  %23 = load ptr, ptr %regs.addr, align 8, !dbg !472
  %call44 = call i64 @__x64_sys_pipe(ptr noundef %23) #3, !dbg !472
  store i64 %call44, ptr %retval, align 8, !dbg !472
  br label %return, !dbg !472

sw.bb45:                                          ; preds = %entry
  %24 = load ptr, ptr %regs.addr, align 8, !dbg !473
  %call46 = call i64 @__x64_sys_select(ptr noundef %24) #3, !dbg !473
  store i64 %call46, ptr %retval, align 8, !dbg !473
  br label %return, !dbg !473

sw.bb47:                                          ; preds = %entry
  %25 = load ptr, ptr %regs.addr, align 8, !dbg !474
  %call48 = call i64 @__x64_sys_sched_yield(ptr noundef %25) #3, !dbg !474
  store i64 %call48, ptr %retval, align 8, !dbg !474
  br label %return, !dbg !474

sw.bb49:                                          ; preds = %entry
  %26 = load ptr, ptr %regs.addr, align 8, !dbg !475
  %call50 = call i64 @__x64_sys_mremap(ptr noundef %26) #3, !dbg !475
  store i64 %call50, ptr %retval, align 8, !dbg !475
  br label %return, !dbg !475

sw.bb51:                                          ; preds = %entry
  %27 = load ptr, ptr %regs.addr, align 8, !dbg !476
  %call52 = call i64 @__x64_sys_msync(ptr noundef %27) #3, !dbg !476
  store i64 %call52, ptr %retval, align 8, !dbg !476
  br label %return, !dbg !476

sw.bb53:                                          ; preds = %entry
  %28 = load ptr, ptr %regs.addr, align 8, !dbg !477
  %call54 = call i64 @__x64_sys_mincore(ptr noundef %28) #3, !dbg !477
  store i64 %call54, ptr %retval, align 8, !dbg !477
  br label %return, !dbg !477

sw.bb55:                                          ; preds = %entry
  %29 = load ptr, ptr %regs.addr, align 8, !dbg !478
  %call56 = call i64 @__x64_sys_madvise(ptr noundef %29) #3, !dbg !478
  store i64 %call56, ptr %retval, align 8, !dbg !478
  br label %return, !dbg !478

sw.bb57:                                          ; preds = %entry
  %30 = load ptr, ptr %regs.addr, align 8, !dbg !479
  %call58 = call i64 @__x64_sys_shmget(ptr noundef %30) #3, !dbg !479
  store i64 %call58, ptr %retval, align 8, !dbg !479
  br label %return, !dbg !479

sw.bb59:                                          ; preds = %entry
  %31 = load ptr, ptr %regs.addr, align 8, !dbg !480
  %call60 = call i64 @__x64_sys_shmat(ptr noundef %31) #3, !dbg !480
  store i64 %call60, ptr %retval, align 8, !dbg !480
  br label %return, !dbg !480

sw.bb61:                                          ; preds = %entry
  %32 = load ptr, ptr %regs.addr, align 8, !dbg !481
  %call62 = call i64 @__x64_sys_shmctl(ptr noundef %32) #3, !dbg !481
  store i64 %call62, ptr %retval, align 8, !dbg !481
  br label %return, !dbg !481

sw.bb63:                                          ; preds = %entry
  %33 = load ptr, ptr %regs.addr, align 8, !dbg !482
  %call64 = call i64 @__x64_sys_dup(ptr noundef %33) #3, !dbg !482
  store i64 %call64, ptr %retval, align 8, !dbg !482
  br label %return, !dbg !482

sw.bb65:                                          ; preds = %entry
  %34 = load ptr, ptr %regs.addr, align 8, !dbg !483
  %call66 = call i64 @__x64_sys_dup2(ptr noundef %34) #3, !dbg !483
  store i64 %call66, ptr %retval, align 8, !dbg !483
  br label %return, !dbg !483

sw.bb67:                                          ; preds = %entry
  %35 = load ptr, ptr %regs.addr, align 8, !dbg !484
  %call68 = call i64 @__x64_sys_pause(ptr noundef %35) #3, !dbg !484
  store i64 %call68, ptr %retval, align 8, !dbg !484
  br label %return, !dbg !484

sw.bb69:                                          ; preds = %entry
  %36 = load ptr, ptr %regs.addr, align 8, !dbg !485
  %call70 = call i64 @__x64_sys_nanosleep(ptr noundef %36) #3, !dbg !485
  store i64 %call70, ptr %retval, align 8, !dbg !485
  br label %return, !dbg !485

sw.bb71:                                          ; preds = %entry
  %37 = load ptr, ptr %regs.addr, align 8, !dbg !486
  %call72 = call i64 @__x64_sys_getitimer(ptr noundef %37) #3, !dbg !486
  store i64 %call72, ptr %retval, align 8, !dbg !486
  br label %return, !dbg !486

sw.bb73:                                          ; preds = %entry
  %38 = load ptr, ptr %regs.addr, align 8, !dbg !487
  %call74 = call i64 @__x64_sys_alarm(ptr noundef %38) #3, !dbg !487
  store i64 %call74, ptr %retval, align 8, !dbg !487
  br label %return, !dbg !487

sw.bb75:                                          ; preds = %entry
  %39 = load ptr, ptr %regs.addr, align 8, !dbg !488
  %call76 = call i64 @__x64_sys_setitimer(ptr noundef %39) #3, !dbg !488
  store i64 %call76, ptr %retval, align 8, !dbg !488
  br label %return, !dbg !488

sw.bb77:                                          ; preds = %entry
  %40 = load ptr, ptr %regs.addr, align 8, !dbg !489
  %call78 = call i64 @__x64_sys_getpid(ptr noundef %40) #3, !dbg !489
  store i64 %call78, ptr %retval, align 8, !dbg !489
  br label %return, !dbg !489

sw.bb79:                                          ; preds = %entry
  %41 = load ptr, ptr %regs.addr, align 8, !dbg !490
  %call80 = call i64 @__x64_sys_sendfile64(ptr noundef %41) #3, !dbg !490
  store i64 %call80, ptr %retval, align 8, !dbg !490
  br label %return, !dbg !490

sw.bb81:                                          ; preds = %entry
  %42 = load ptr, ptr %regs.addr, align 8, !dbg !491
  %call82 = call i64 @__x64_sys_socket(ptr noundef %42) #3, !dbg !491
  store i64 %call82, ptr %retval, align 8, !dbg !491
  br label %return, !dbg !491

sw.bb83:                                          ; preds = %entry
  %43 = load ptr, ptr %regs.addr, align 8, !dbg !492
  %call84 = call i64 @__x64_sys_connect(ptr noundef %43) #3, !dbg !492
  store i64 %call84, ptr %retval, align 8, !dbg !492
  br label %return, !dbg !492

sw.bb85:                                          ; preds = %entry
  %44 = load ptr, ptr %regs.addr, align 8, !dbg !493
  %call86 = call i64 @__x64_sys_accept(ptr noundef %44) #3, !dbg !493
  store i64 %call86, ptr %retval, align 8, !dbg !493
  br label %return, !dbg !493

sw.bb87:                                          ; preds = %entry
  %45 = load ptr, ptr %regs.addr, align 8, !dbg !494
  %call88 = call i64 @__x64_sys_sendto(ptr noundef %45) #3, !dbg !494
  store i64 %call88, ptr %retval, align 8, !dbg !494
  br label %return, !dbg !494

sw.bb89:                                          ; preds = %entry
  %46 = load ptr, ptr %regs.addr, align 8, !dbg !495
  %call90 = call i64 @__x64_sys_recvfrom(ptr noundef %46) #3, !dbg !495
  store i64 %call90, ptr %retval, align 8, !dbg !495
  br label %return, !dbg !495

sw.bb91:                                          ; preds = %entry
  %47 = load ptr, ptr %regs.addr, align 8, !dbg !496
  %call92 = call i64 @__x64_sys_sendmsg(ptr noundef %47) #3, !dbg !496
  store i64 %call92, ptr %retval, align 8, !dbg !496
  br label %return, !dbg !496

sw.bb93:                                          ; preds = %entry
  %48 = load ptr, ptr %regs.addr, align 8, !dbg !497
  %call94 = call i64 @__x64_sys_recvmsg(ptr noundef %48) #3, !dbg !497
  store i64 %call94, ptr %retval, align 8, !dbg !497
  br label %return, !dbg !497

sw.bb95:                                          ; preds = %entry
  %49 = load ptr, ptr %regs.addr, align 8, !dbg !498
  %call96 = call i64 @__x64_sys_shutdown(ptr noundef %49) #3, !dbg !498
  store i64 %call96, ptr %retval, align 8, !dbg !498
  br label %return, !dbg !498

sw.bb97:                                          ; preds = %entry
  %50 = load ptr, ptr %regs.addr, align 8, !dbg !499
  %call98 = call i64 @__x64_sys_bind(ptr noundef %50) #3, !dbg !499
  store i64 %call98, ptr %retval, align 8, !dbg !499
  br label %return, !dbg !499

sw.bb99:                                          ; preds = %entry
  %51 = load ptr, ptr %regs.addr, align 8, !dbg !500
  %call100 = call i64 @__x64_sys_listen(ptr noundef %51) #3, !dbg !500
  store i64 %call100, ptr %retval, align 8, !dbg !500
  br label %return, !dbg !500

sw.bb101:                                         ; preds = %entry
  %52 = load ptr, ptr %regs.addr, align 8, !dbg !501
  %call102 = call i64 @__x64_sys_getsockname(ptr noundef %52) #3, !dbg !501
  store i64 %call102, ptr %retval, align 8, !dbg !501
  br label %return, !dbg !501

sw.bb103:                                         ; preds = %entry
  %53 = load ptr, ptr %regs.addr, align 8, !dbg !502
  %call104 = call i64 @__x64_sys_getpeername(ptr noundef %53) #3, !dbg !502
  store i64 %call104, ptr %retval, align 8, !dbg !502
  br label %return, !dbg !502

sw.bb105:                                         ; preds = %entry
  %54 = load ptr, ptr %regs.addr, align 8, !dbg !503
  %call106 = call i64 @__x64_sys_socketpair(ptr noundef %54) #3, !dbg !503
  store i64 %call106, ptr %retval, align 8, !dbg !503
  br label %return, !dbg !503

sw.bb107:                                         ; preds = %entry
  %55 = load ptr, ptr %regs.addr, align 8, !dbg !504
  %call108 = call i64 @__x64_sys_setsockopt(ptr noundef %55) #3, !dbg !504
  store i64 %call108, ptr %retval, align 8, !dbg !504
  br label %return, !dbg !504

sw.bb109:                                         ; preds = %entry
  %56 = load ptr, ptr %regs.addr, align 8, !dbg !505
  %call110 = call i64 @__x64_sys_getsockopt(ptr noundef %56) #3, !dbg !505
  store i64 %call110, ptr %retval, align 8, !dbg !505
  br label %return, !dbg !505

sw.bb111:                                         ; preds = %entry
  %57 = load ptr, ptr %regs.addr, align 8, !dbg !506
  %call112 = call i64 @__x64_sys_clone(ptr noundef %57) #3, !dbg !506
  store i64 %call112, ptr %retval, align 8, !dbg !506
  br label %return, !dbg !506

sw.bb113:                                         ; preds = %entry
  %58 = load ptr, ptr %regs.addr, align 8, !dbg !507
  %call114 = call i64 @__x64_sys_fork(ptr noundef %58) #3, !dbg !507
  store i64 %call114, ptr %retval, align 8, !dbg !507
  br label %return, !dbg !507

sw.bb115:                                         ; preds = %entry
  %59 = load ptr, ptr %regs.addr, align 8, !dbg !508
  %call116 = call i64 @__x64_sys_vfork(ptr noundef %59) #3, !dbg !508
  store i64 %call116, ptr %retval, align 8, !dbg !508
  br label %return, !dbg !508

sw.bb117:                                         ; preds = %entry
  %60 = load ptr, ptr %regs.addr, align 8, !dbg !509
  %call118 = call i64 @__x64_sys_execve(ptr noundef %60) #3, !dbg !509
  store i64 %call118, ptr %retval, align 8, !dbg !509
  br label %return, !dbg !509

sw.bb119:                                         ; preds = %entry
  %61 = load ptr, ptr %regs.addr, align 8, !dbg !510
  %call120 = call i64 @__x64_sys_exit(ptr noundef %61) #3, !dbg !510
  store i64 %call120, ptr %retval, align 8, !dbg !510
  br label %return, !dbg !510

sw.bb121:                                         ; preds = %entry
  %62 = load ptr, ptr %regs.addr, align 8, !dbg !511
  %call122 = call i64 @__x64_sys_wait4(ptr noundef %62) #3, !dbg !511
  store i64 %call122, ptr %retval, align 8, !dbg !511
  br label %return, !dbg !511

sw.bb123:                                         ; preds = %entry
  %63 = load ptr, ptr %regs.addr, align 8, !dbg !512
  %call124 = call i64 @__x64_sys_kill(ptr noundef %63) #3, !dbg !512
  store i64 %call124, ptr %retval, align 8, !dbg !512
  br label %return, !dbg !512

sw.bb125:                                         ; preds = %entry
  %64 = load ptr, ptr %regs.addr, align 8, !dbg !513
  %call126 = call i64 @__x64_sys_newuname(ptr noundef %64) #3, !dbg !513
  store i64 %call126, ptr %retval, align 8, !dbg !513
  br label %return, !dbg !513

sw.bb127:                                         ; preds = %entry
  %65 = load ptr, ptr %regs.addr, align 8, !dbg !514
  %call128 = call i64 @__x64_sys_semget(ptr noundef %65) #3, !dbg !514
  store i64 %call128, ptr %retval, align 8, !dbg !514
  br label %return, !dbg !514

sw.bb129:                                         ; preds = %entry
  %66 = load ptr, ptr %regs.addr, align 8, !dbg !515
  %call130 = call i64 @__x64_sys_semop(ptr noundef %66) #3, !dbg !515
  store i64 %call130, ptr %retval, align 8, !dbg !515
  br label %return, !dbg !515

sw.bb131:                                         ; preds = %entry
  %67 = load ptr, ptr %regs.addr, align 8, !dbg !516
  %call132 = call i64 @__x64_sys_semctl(ptr noundef %67) #3, !dbg !516
  store i64 %call132, ptr %retval, align 8, !dbg !516
  br label %return, !dbg !516

sw.bb133:                                         ; preds = %entry
  %68 = load ptr, ptr %regs.addr, align 8, !dbg !517
  %call134 = call i64 @__x64_sys_shmdt(ptr noundef %68) #3, !dbg !517
  store i64 %call134, ptr %retval, align 8, !dbg !517
  br label %return, !dbg !517

sw.bb135:                                         ; preds = %entry
  %69 = load ptr, ptr %regs.addr, align 8, !dbg !518
  %call136 = call i64 @__x64_sys_msgget(ptr noundef %69) #3, !dbg !518
  store i64 %call136, ptr %retval, align 8, !dbg !518
  br label %return, !dbg !518

sw.bb137:                                         ; preds = %entry
  %70 = load ptr, ptr %regs.addr, align 8, !dbg !519
  %call138 = call i64 @__x64_sys_msgsnd(ptr noundef %70) #3, !dbg !519
  store i64 %call138, ptr %retval, align 8, !dbg !519
  br label %return, !dbg !519

sw.bb139:                                         ; preds = %entry
  %71 = load ptr, ptr %regs.addr, align 8, !dbg !520
  %call140 = call i64 @__x64_sys_msgrcv(ptr noundef %71) #3, !dbg !520
  store i64 %call140, ptr %retval, align 8, !dbg !520
  br label %return, !dbg !520

sw.bb141:                                         ; preds = %entry
  %72 = load ptr, ptr %regs.addr, align 8, !dbg !521
  %call142 = call i64 @__x64_sys_msgctl(ptr noundef %72) #3, !dbg !521
  store i64 %call142, ptr %retval, align 8, !dbg !521
  br label %return, !dbg !521

sw.bb143:                                         ; preds = %entry
  %73 = load ptr, ptr %regs.addr, align 8, !dbg !522
  %call144 = call i64 @__x64_sys_fcntl(ptr noundef %73) #3, !dbg !522
  store i64 %call144, ptr %retval, align 8, !dbg !522
  br label %return, !dbg !522

sw.bb145:                                         ; preds = %entry
  %74 = load ptr, ptr %regs.addr, align 8, !dbg !523
  %call146 = call i64 @__x64_sys_flock(ptr noundef %74) #3, !dbg !523
  store i64 %call146, ptr %retval, align 8, !dbg !523
  br label %return, !dbg !523

sw.bb147:                                         ; preds = %entry
  %75 = load ptr, ptr %regs.addr, align 8, !dbg !524
  %call148 = call i64 @__x64_sys_fsync(ptr noundef %75) #3, !dbg !524
  store i64 %call148, ptr %retval, align 8, !dbg !524
  br label %return, !dbg !524

sw.bb149:                                         ; preds = %entry
  %76 = load ptr, ptr %regs.addr, align 8, !dbg !525
  %call150 = call i64 @__x64_sys_fdatasync(ptr noundef %76) #3, !dbg !525
  store i64 %call150, ptr %retval, align 8, !dbg !525
  br label %return, !dbg !525

sw.bb151:                                         ; preds = %entry
  %77 = load ptr, ptr %regs.addr, align 8, !dbg !526
  %call152 = call i64 @__x64_sys_truncate(ptr noundef %77) #3, !dbg !526
  store i64 %call152, ptr %retval, align 8, !dbg !526
  br label %return, !dbg !526

sw.bb153:                                         ; preds = %entry
  %78 = load ptr, ptr %regs.addr, align 8, !dbg !527
  %call154 = call i64 @__x64_sys_ftruncate(ptr noundef %78) #3, !dbg !527
  store i64 %call154, ptr %retval, align 8, !dbg !527
  br label %return, !dbg !527

sw.bb155:                                         ; preds = %entry
  %79 = load ptr, ptr %regs.addr, align 8, !dbg !528
  %call156 = call i64 @__x64_sys_getdents(ptr noundef %79) #3, !dbg !528
  store i64 %call156, ptr %retval, align 8, !dbg !528
  br label %return, !dbg !528

sw.bb157:                                         ; preds = %entry
  %80 = load ptr, ptr %regs.addr, align 8, !dbg !529
  %call158 = call i64 @__x64_sys_getcwd(ptr noundef %80) #3, !dbg !529
  store i64 %call158, ptr %retval, align 8, !dbg !529
  br label %return, !dbg !529

sw.bb159:                                         ; preds = %entry
  %81 = load ptr, ptr %regs.addr, align 8, !dbg !530
  %call160 = call i64 @__x64_sys_chdir(ptr noundef %81) #3, !dbg !530
  store i64 %call160, ptr %retval, align 8, !dbg !530
  br label %return, !dbg !530

sw.bb161:                                         ; preds = %entry
  %82 = load ptr, ptr %regs.addr, align 8, !dbg !531
  %call162 = call i64 @__x64_sys_fchdir(ptr noundef %82) #3, !dbg !531
  store i64 %call162, ptr %retval, align 8, !dbg !531
  br label %return, !dbg !531

sw.bb163:                                         ; preds = %entry
  %83 = load ptr, ptr %regs.addr, align 8, !dbg !532
  %call164 = call i64 @__x64_sys_rename(ptr noundef %83) #3, !dbg !532
  store i64 %call164, ptr %retval, align 8, !dbg !532
  br label %return, !dbg !532

sw.bb165:                                         ; preds = %entry
  %84 = load ptr, ptr %regs.addr, align 8, !dbg !533
  %call166 = call i64 @__x64_sys_mkdir(ptr noundef %84) #3, !dbg !533
  store i64 %call166, ptr %retval, align 8, !dbg !533
  br label %return, !dbg !533

sw.bb167:                                         ; preds = %entry
  %85 = load ptr, ptr %regs.addr, align 8, !dbg !534
  %call168 = call i64 @__x64_sys_rmdir(ptr noundef %85) #3, !dbg !534
  store i64 %call168, ptr %retval, align 8, !dbg !534
  br label %return, !dbg !534

sw.bb169:                                         ; preds = %entry
  %86 = load ptr, ptr %regs.addr, align 8, !dbg !535
  %call170 = call i64 @__x64_sys_creat(ptr noundef %86) #3, !dbg !535
  store i64 %call170, ptr %retval, align 8, !dbg !535
  br label %return, !dbg !535

sw.bb171:                                         ; preds = %entry
  %87 = load ptr, ptr %regs.addr, align 8, !dbg !536
  %call172 = call i64 @__x64_sys_link(ptr noundef %87) #3, !dbg !536
  store i64 %call172, ptr %retval, align 8, !dbg !536
  br label %return, !dbg !536

sw.bb173:                                         ; preds = %entry
  %88 = load ptr, ptr %regs.addr, align 8, !dbg !537
  %call174 = call i64 @__x64_sys_unlink(ptr noundef %88) #3, !dbg !537
  store i64 %call174, ptr %retval, align 8, !dbg !537
  br label %return, !dbg !537

sw.bb175:                                         ; preds = %entry
  %89 = load ptr, ptr %regs.addr, align 8, !dbg !538
  %call176 = call i64 @__x64_sys_symlink(ptr noundef %89) #3, !dbg !538
  store i64 %call176, ptr %retval, align 8, !dbg !538
  br label %return, !dbg !538

sw.bb177:                                         ; preds = %entry
  %90 = load ptr, ptr %regs.addr, align 8, !dbg !539
  %call178 = call i64 @__x64_sys_readlink(ptr noundef %90) #3, !dbg !539
  store i64 %call178, ptr %retval, align 8, !dbg !539
  br label %return, !dbg !539

sw.bb179:                                         ; preds = %entry
  %91 = load ptr, ptr %regs.addr, align 8, !dbg !540
  %call180 = call i64 @__x64_sys_chmod(ptr noundef %91) #3, !dbg !540
  store i64 %call180, ptr %retval, align 8, !dbg !540
  br label %return, !dbg !540

sw.bb181:                                         ; preds = %entry
  %92 = load ptr, ptr %regs.addr, align 8, !dbg !541
  %call182 = call i64 @__x64_sys_fchmod(ptr noundef %92) #3, !dbg !541
  store i64 %call182, ptr %retval, align 8, !dbg !541
  br label %return, !dbg !541

sw.bb183:                                         ; preds = %entry
  %93 = load ptr, ptr %regs.addr, align 8, !dbg !542
  %call184 = call i64 @__x64_sys_chown(ptr noundef %93) #3, !dbg !542
  store i64 %call184, ptr %retval, align 8, !dbg !542
  br label %return, !dbg !542

sw.bb185:                                         ; preds = %entry
  %94 = load ptr, ptr %regs.addr, align 8, !dbg !543
  %call186 = call i64 @__x64_sys_fchown(ptr noundef %94) #3, !dbg !543
  store i64 %call186, ptr %retval, align 8, !dbg !543
  br label %return, !dbg !543

sw.bb187:                                         ; preds = %entry
  %95 = load ptr, ptr %regs.addr, align 8, !dbg !544
  %call188 = call i64 @__x64_sys_lchown(ptr noundef %95) #3, !dbg !544
  store i64 %call188, ptr %retval, align 8, !dbg !544
  br label %return, !dbg !544

sw.bb189:                                         ; preds = %entry
  %96 = load ptr, ptr %regs.addr, align 8, !dbg !545
  %call190 = call i64 @__x64_sys_umask(ptr noundef %96) #3, !dbg !545
  store i64 %call190, ptr %retval, align 8, !dbg !545
  br label %return, !dbg !545

sw.bb191:                                         ; preds = %entry
  %97 = load ptr, ptr %regs.addr, align 8, !dbg !546
  %call192 = call i64 @__x64_sys_gettimeofday(ptr noundef %97) #3, !dbg !546
  store i64 %call192, ptr %retval, align 8, !dbg !546
  br label %return, !dbg !546

sw.bb193:                                         ; preds = %entry
  %98 = load ptr, ptr %regs.addr, align 8, !dbg !547
  %call194 = call i64 @__x64_sys_getrlimit(ptr noundef %98) #3, !dbg !547
  store i64 %call194, ptr %retval, align 8, !dbg !547
  br label %return, !dbg !547

sw.bb195:                                         ; preds = %entry
  %99 = load ptr, ptr %regs.addr, align 8, !dbg !548
  %call196 = call i64 @__x64_sys_getrusage(ptr noundef %99) #3, !dbg !548
  store i64 %call196, ptr %retval, align 8, !dbg !548
  br label %return, !dbg !548

sw.bb197:                                         ; preds = %entry
  %100 = load ptr, ptr %regs.addr, align 8, !dbg !549
  %call198 = call i64 @__x64_sys_sysinfo(ptr noundef %100) #3, !dbg !549
  store i64 %call198, ptr %retval, align 8, !dbg !549
  br label %return, !dbg !549

sw.bb199:                                         ; preds = %entry
  %101 = load ptr, ptr %regs.addr, align 8, !dbg !550
  %call200 = call i64 @__x64_sys_times(ptr noundef %101) #3, !dbg !550
  store i64 %call200, ptr %retval, align 8, !dbg !550
  br label %return, !dbg !550

sw.bb201:                                         ; preds = %entry
  %102 = load ptr, ptr %regs.addr, align 8, !dbg !551
  %call202 = call i64 @__x64_sys_ptrace(ptr noundef %102) #3, !dbg !551
  store i64 %call202, ptr %retval, align 8, !dbg !551
  br label %return, !dbg !551

sw.bb203:                                         ; preds = %entry
  %103 = load ptr, ptr %regs.addr, align 8, !dbg !552
  %call204 = call i64 @__x64_sys_getuid(ptr noundef %103) #3, !dbg !552
  store i64 %call204, ptr %retval, align 8, !dbg !552
  br label %return, !dbg !552

sw.bb205:                                         ; preds = %entry
  %104 = load ptr, ptr %regs.addr, align 8, !dbg !553
  %call206 = call i64 @__x64_sys_syslog(ptr noundef %104) #3, !dbg !553
  store i64 %call206, ptr %retval, align 8, !dbg !553
  br label %return, !dbg !553

sw.bb207:                                         ; preds = %entry
  %105 = load ptr, ptr %regs.addr, align 8, !dbg !554
  %call208 = call i64 @__x64_sys_getgid(ptr noundef %105) #3, !dbg !554
  store i64 %call208, ptr %retval, align 8, !dbg !554
  br label %return, !dbg !554

sw.bb209:                                         ; preds = %entry
  %106 = load ptr, ptr %regs.addr, align 8, !dbg !555
  %call210 = call i64 @__x64_sys_setuid(ptr noundef %106) #3, !dbg !555
  store i64 %call210, ptr %retval, align 8, !dbg !555
  br label %return, !dbg !555

sw.bb211:                                         ; preds = %entry
  %107 = load ptr, ptr %regs.addr, align 8, !dbg !556
  %call212 = call i64 @__x64_sys_setgid(ptr noundef %107) #3, !dbg !556
  store i64 %call212, ptr %retval, align 8, !dbg !556
  br label %return, !dbg !556

sw.bb213:                                         ; preds = %entry
  %108 = load ptr, ptr %regs.addr, align 8, !dbg !557
  %call214 = call i64 @__x64_sys_geteuid(ptr noundef %108) #3, !dbg !557
  store i64 %call214, ptr %retval, align 8, !dbg !557
  br label %return, !dbg !557

sw.bb215:                                         ; preds = %entry
  %109 = load ptr, ptr %regs.addr, align 8, !dbg !558
  %call216 = call i64 @__x64_sys_getegid(ptr noundef %109) #3, !dbg !558
  store i64 %call216, ptr %retval, align 8, !dbg !558
  br label %return, !dbg !558

sw.bb217:                                         ; preds = %entry
  %110 = load ptr, ptr %regs.addr, align 8, !dbg !559
  %call218 = call i64 @__x64_sys_setpgid(ptr noundef %110) #3, !dbg !559
  store i64 %call218, ptr %retval, align 8, !dbg !559
  br label %return, !dbg !559

sw.bb219:                                         ; preds = %entry
  %111 = load ptr, ptr %regs.addr, align 8, !dbg !560
  %call220 = call i64 @__x64_sys_getppid(ptr noundef %111) #3, !dbg !560
  store i64 %call220, ptr %retval, align 8, !dbg !560
  br label %return, !dbg !560

sw.bb221:                                         ; preds = %entry
  %112 = load ptr, ptr %regs.addr, align 8, !dbg !561
  %call222 = call i64 @__x64_sys_getpgrp(ptr noundef %112) #3, !dbg !561
  store i64 %call222, ptr %retval, align 8, !dbg !561
  br label %return, !dbg !561

sw.bb223:                                         ; preds = %entry
  %113 = load ptr, ptr %regs.addr, align 8, !dbg !562
  %call224 = call i64 @__x64_sys_setsid(ptr noundef %113) #3, !dbg !562
  store i64 %call224, ptr %retval, align 8, !dbg !562
  br label %return, !dbg !562

sw.bb225:                                         ; preds = %entry
  %114 = load ptr, ptr %regs.addr, align 8, !dbg !563
  %call226 = call i64 @__x64_sys_setreuid(ptr noundef %114) #3, !dbg !563
  store i64 %call226, ptr %retval, align 8, !dbg !563
  br label %return, !dbg !563

sw.bb227:                                         ; preds = %entry
  %115 = load ptr, ptr %regs.addr, align 8, !dbg !564
  %call228 = call i64 @__x64_sys_setregid(ptr noundef %115) #3, !dbg !564
  store i64 %call228, ptr %retval, align 8, !dbg !564
  br label %return, !dbg !564

sw.bb229:                                         ; preds = %entry
  %116 = load ptr, ptr %regs.addr, align 8, !dbg !565
  %call230 = call i64 @__x64_sys_getgroups(ptr noundef %116) #3, !dbg !565
  store i64 %call230, ptr %retval, align 8, !dbg !565
  br label %return, !dbg !565

sw.bb231:                                         ; preds = %entry
  %117 = load ptr, ptr %regs.addr, align 8, !dbg !566
  %call232 = call i64 @__x64_sys_setgroups(ptr noundef %117) #3, !dbg !566
  store i64 %call232, ptr %retval, align 8, !dbg !566
  br label %return, !dbg !566

sw.bb233:                                         ; preds = %entry
  %118 = load ptr, ptr %regs.addr, align 8, !dbg !567
  %call234 = call i64 @__x64_sys_setresuid(ptr noundef %118) #3, !dbg !567
  store i64 %call234, ptr %retval, align 8, !dbg !567
  br label %return, !dbg !567

sw.bb235:                                         ; preds = %entry
  %119 = load ptr, ptr %regs.addr, align 8, !dbg !568
  %call236 = call i64 @__x64_sys_getresuid(ptr noundef %119) #3, !dbg !568
  store i64 %call236, ptr %retval, align 8, !dbg !568
  br label %return, !dbg !568

sw.bb237:                                         ; preds = %entry
  %120 = load ptr, ptr %regs.addr, align 8, !dbg !569
  %call238 = call i64 @__x64_sys_setresgid(ptr noundef %120) #3, !dbg !569
  store i64 %call238, ptr %retval, align 8, !dbg !569
  br label %return, !dbg !569

sw.bb239:                                         ; preds = %entry
  %121 = load ptr, ptr %regs.addr, align 8, !dbg !570
  %call240 = call i64 @__x64_sys_getresgid(ptr noundef %121) #3, !dbg !570
  store i64 %call240, ptr %retval, align 8, !dbg !570
  br label %return, !dbg !570

sw.bb241:                                         ; preds = %entry
  %122 = load ptr, ptr %regs.addr, align 8, !dbg !571
  %call242 = call i64 @__x64_sys_getpgid(ptr noundef %122) #3, !dbg !571
  store i64 %call242, ptr %retval, align 8, !dbg !571
  br label %return, !dbg !571

sw.bb243:                                         ; preds = %entry
  %123 = load ptr, ptr %regs.addr, align 8, !dbg !572
  %call244 = call i64 @__x64_sys_setfsuid(ptr noundef %123) #3, !dbg !572
  store i64 %call244, ptr %retval, align 8, !dbg !572
  br label %return, !dbg !572

sw.bb245:                                         ; preds = %entry
  %124 = load ptr, ptr %regs.addr, align 8, !dbg !573
  %call246 = call i64 @__x64_sys_setfsgid(ptr noundef %124) #3, !dbg !573
  store i64 %call246, ptr %retval, align 8, !dbg !573
  br label %return, !dbg !573

sw.bb247:                                         ; preds = %entry
  %125 = load ptr, ptr %regs.addr, align 8, !dbg !574
  %call248 = call i64 @__x64_sys_getsid(ptr noundef %125) #3, !dbg !574
  store i64 %call248, ptr %retval, align 8, !dbg !574
  br label %return, !dbg !574

sw.bb249:                                         ; preds = %entry
  %126 = load ptr, ptr %regs.addr, align 8, !dbg !575
  %call250 = call i64 @__x64_sys_capget(ptr noundef %126) #3, !dbg !575
  store i64 %call250, ptr %retval, align 8, !dbg !575
  br label %return, !dbg !575

sw.bb251:                                         ; preds = %entry
  %127 = load ptr, ptr %regs.addr, align 8, !dbg !576
  %call252 = call i64 @__x64_sys_capset(ptr noundef %127) #3, !dbg !576
  store i64 %call252, ptr %retval, align 8, !dbg !576
  br label %return, !dbg !576

sw.bb253:                                         ; preds = %entry
  %128 = load ptr, ptr %regs.addr, align 8, !dbg !577
  %call254 = call i64 @__x64_sys_rt_sigpending(ptr noundef %128) #3, !dbg !577
  store i64 %call254, ptr %retval, align 8, !dbg !577
  br label %return, !dbg !577

sw.bb255:                                         ; preds = %entry
  %129 = load ptr, ptr %regs.addr, align 8, !dbg !578
  %call256 = call i64 @__x64_sys_rt_sigtimedwait(ptr noundef %129) #3, !dbg !578
  store i64 %call256, ptr %retval, align 8, !dbg !578
  br label %return, !dbg !578

sw.bb257:                                         ; preds = %entry
  %130 = load ptr, ptr %regs.addr, align 8, !dbg !579
  %call258 = call i64 @__x64_sys_rt_sigqueueinfo(ptr noundef %130) #3, !dbg !579
  store i64 %call258, ptr %retval, align 8, !dbg !579
  br label %return, !dbg !579

sw.bb259:                                         ; preds = %entry
  %131 = load ptr, ptr %regs.addr, align 8, !dbg !580
  %call260 = call i64 @__x64_sys_rt_sigsuspend(ptr noundef %131) #3, !dbg !580
  store i64 %call260, ptr %retval, align 8, !dbg !580
  br label %return, !dbg !580

sw.bb261:                                         ; preds = %entry
  %132 = load ptr, ptr %regs.addr, align 8, !dbg !581
  %call262 = call i64 @__x64_sys_sigaltstack(ptr noundef %132) #3, !dbg !581
  store i64 %call262, ptr %retval, align 8, !dbg !581
  br label %return, !dbg !581

sw.bb263:                                         ; preds = %entry
  %133 = load ptr, ptr %regs.addr, align 8, !dbg !582
  %call264 = call i64 @__x64_sys_utime(ptr noundef %133) #3, !dbg !582
  store i64 %call264, ptr %retval, align 8, !dbg !582
  br label %return, !dbg !582

sw.bb265:                                         ; preds = %entry
  %134 = load ptr, ptr %regs.addr, align 8, !dbg !583
  %call266 = call i64 @__x64_sys_mknod(ptr noundef %134) #3, !dbg !583
  store i64 %call266, ptr %retval, align 8, !dbg !583
  br label %return, !dbg !583

sw.bb267:                                         ; preds = %entry
  %135 = load ptr, ptr %regs.addr, align 8, !dbg !584
  %call268 = call i64 @__x64_sys_ni_syscall(ptr noundef %135) #3, !dbg !584
  store i64 %call268, ptr %retval, align 8, !dbg !584
  br label %return, !dbg !584

sw.bb269:                                         ; preds = %entry
  %136 = load ptr, ptr %regs.addr, align 8, !dbg !585
  %call270 = call i64 @__x64_sys_personality(ptr noundef %136) #3, !dbg !585
  store i64 %call270, ptr %retval, align 8, !dbg !585
  br label %return, !dbg !585

sw.bb271:                                         ; preds = %entry
  %137 = load ptr, ptr %regs.addr, align 8, !dbg !586
  %call272 = call i64 @__x64_sys_ustat(ptr noundef %137) #3, !dbg !586
  store i64 %call272, ptr %retval, align 8, !dbg !586
  br label %return, !dbg !586

sw.bb273:                                         ; preds = %entry
  %138 = load ptr, ptr %regs.addr, align 8, !dbg !587
  %call274 = call i64 @__x64_sys_statfs(ptr noundef %138) #3, !dbg !587
  store i64 %call274, ptr %retval, align 8, !dbg !587
  br label %return, !dbg !587

sw.bb275:                                         ; preds = %entry
  %139 = load ptr, ptr %regs.addr, align 8, !dbg !588
  %call276 = call i64 @__x64_sys_fstatfs(ptr noundef %139) #3, !dbg !588
  store i64 %call276, ptr %retval, align 8, !dbg !588
  br label %return, !dbg !588

sw.bb277:                                         ; preds = %entry
  %140 = load ptr, ptr %regs.addr, align 8, !dbg !589
  %call278 = call i64 @__x64_sys_sysfs(ptr noundef %140) #3, !dbg !589
  store i64 %call278, ptr %retval, align 8, !dbg !589
  br label %return, !dbg !589

sw.bb279:                                         ; preds = %entry
  %141 = load ptr, ptr %regs.addr, align 8, !dbg !590
  %call280 = call i64 @__x64_sys_getpriority(ptr noundef %141) #3, !dbg !590
  store i64 %call280, ptr %retval, align 8, !dbg !590
  br label %return, !dbg !590

sw.bb281:                                         ; preds = %entry
  %142 = load ptr, ptr %regs.addr, align 8, !dbg !591
  %call282 = call i64 @__x64_sys_setpriority(ptr noundef %142) #3, !dbg !591
  store i64 %call282, ptr %retval, align 8, !dbg !591
  br label %return, !dbg !591

sw.bb283:                                         ; preds = %entry
  %143 = load ptr, ptr %regs.addr, align 8, !dbg !592
  %call284 = call i64 @__x64_sys_sched_setparam(ptr noundef %143) #3, !dbg !592
  store i64 %call284, ptr %retval, align 8, !dbg !592
  br label %return, !dbg !592

sw.bb285:                                         ; preds = %entry
  %144 = load ptr, ptr %regs.addr, align 8, !dbg !593
  %call286 = call i64 @__x64_sys_sched_getparam(ptr noundef %144) #3, !dbg !593
  store i64 %call286, ptr %retval, align 8, !dbg !593
  br label %return, !dbg !593

sw.bb287:                                         ; preds = %entry
  %145 = load ptr, ptr %regs.addr, align 8, !dbg !594
  %call288 = call i64 @__x64_sys_sched_setscheduler(ptr noundef %145) #3, !dbg !594
  store i64 %call288, ptr %retval, align 8, !dbg !594
  br label %return, !dbg !594

sw.bb289:                                         ; preds = %entry
  %146 = load ptr, ptr %regs.addr, align 8, !dbg !595
  %call290 = call i64 @__x64_sys_sched_getscheduler(ptr noundef %146) #3, !dbg !595
  store i64 %call290, ptr %retval, align 8, !dbg !595
  br label %return, !dbg !595

sw.bb291:                                         ; preds = %entry
  %147 = load ptr, ptr %regs.addr, align 8, !dbg !596
  %call292 = call i64 @__x64_sys_sched_get_priority_max(ptr noundef %147) #3, !dbg !596
  store i64 %call292, ptr %retval, align 8, !dbg !596
  br label %return, !dbg !596

sw.bb293:                                         ; preds = %entry
  %148 = load ptr, ptr %regs.addr, align 8, !dbg !597
  %call294 = call i64 @__x64_sys_sched_get_priority_min(ptr noundef %148) #3, !dbg !597
  store i64 %call294, ptr %retval, align 8, !dbg !597
  br label %return, !dbg !597

sw.bb295:                                         ; preds = %entry
  %149 = load ptr, ptr %regs.addr, align 8, !dbg !598
  %call296 = call i64 @__x64_sys_sched_rr_get_interval(ptr noundef %149) #3, !dbg !598
  store i64 %call296, ptr %retval, align 8, !dbg !598
  br label %return, !dbg !598

sw.bb297:                                         ; preds = %entry
  %150 = load ptr, ptr %regs.addr, align 8, !dbg !599
  %call298 = call i64 @__x64_sys_mlock(ptr noundef %150) #3, !dbg !599
  store i64 %call298, ptr %retval, align 8, !dbg !599
  br label %return, !dbg !599

sw.bb299:                                         ; preds = %entry
  %151 = load ptr, ptr %regs.addr, align 8, !dbg !600
  %call300 = call i64 @__x64_sys_munlock(ptr noundef %151) #3, !dbg !600
  store i64 %call300, ptr %retval, align 8, !dbg !600
  br label %return, !dbg !600

sw.bb301:                                         ; preds = %entry
  %152 = load ptr, ptr %regs.addr, align 8, !dbg !601
  %call302 = call i64 @__x64_sys_mlockall(ptr noundef %152) #3, !dbg !601
  store i64 %call302, ptr %retval, align 8, !dbg !601
  br label %return, !dbg !601

sw.bb303:                                         ; preds = %entry
  %153 = load ptr, ptr %regs.addr, align 8, !dbg !602
  %call304 = call i64 @__x64_sys_munlockall(ptr noundef %153) #3, !dbg !602
  store i64 %call304, ptr %retval, align 8, !dbg !602
  br label %return, !dbg !602

sw.bb305:                                         ; preds = %entry
  %154 = load ptr, ptr %regs.addr, align 8, !dbg !603
  %call306 = call i64 @__x64_sys_vhangup(ptr noundef %154) #3, !dbg !603
  store i64 %call306, ptr %retval, align 8, !dbg !603
  br label %return, !dbg !603

sw.bb307:                                         ; preds = %entry
  %155 = load ptr, ptr %regs.addr, align 8, !dbg !604
  %call308 = call i64 @__x64_sys_modify_ldt(ptr noundef %155) #3, !dbg !604
  store i64 %call308, ptr %retval, align 8, !dbg !604
  br label %return, !dbg !604

sw.bb309:                                         ; preds = %entry
  %156 = load ptr, ptr %regs.addr, align 8, !dbg !605
  %call310 = call i64 @__x64_sys_pivot_root(ptr noundef %156) #3, !dbg !605
  store i64 %call310, ptr %retval, align 8, !dbg !605
  br label %return, !dbg !605

sw.bb311:                                         ; preds = %entry
  %157 = load ptr, ptr %regs.addr, align 8, !dbg !606
  %call312 = call i64 @__x64_sys_ni_syscall(ptr noundef %157) #3, !dbg !606
  store i64 %call312, ptr %retval, align 8, !dbg !606
  br label %return, !dbg !606

sw.bb313:                                         ; preds = %entry
  %158 = load ptr, ptr %regs.addr, align 8, !dbg !607
  %call314 = call i64 @__x64_sys_prctl(ptr noundef %158) #3, !dbg !607
  store i64 %call314, ptr %retval, align 8, !dbg !607
  br label %return, !dbg !607

sw.bb315:                                         ; preds = %entry
  %159 = load ptr, ptr %regs.addr, align 8, !dbg !608
  %call316 = call i64 @__x64_sys_arch_prctl(ptr noundef %159) #3, !dbg !608
  store i64 %call316, ptr %retval, align 8, !dbg !608
  br label %return, !dbg !608

sw.bb317:                                         ; preds = %entry
  %160 = load ptr, ptr %regs.addr, align 8, !dbg !609
  %call318 = call i64 @__x64_sys_adjtimex(ptr noundef %160) #3, !dbg !609
  store i64 %call318, ptr %retval, align 8, !dbg !609
  br label %return, !dbg !609

sw.bb319:                                         ; preds = %entry
  %161 = load ptr, ptr %regs.addr, align 8, !dbg !610
  %call320 = call i64 @__x64_sys_setrlimit(ptr noundef %161) #3, !dbg !610
  store i64 %call320, ptr %retval, align 8, !dbg !610
  br label %return, !dbg !610

sw.bb321:                                         ; preds = %entry
  %162 = load ptr, ptr %regs.addr, align 8, !dbg !611
  %call322 = call i64 @__x64_sys_chroot(ptr noundef %162) #3, !dbg !611
  store i64 %call322, ptr %retval, align 8, !dbg !611
  br label %return, !dbg !611

sw.bb323:                                         ; preds = %entry
  %163 = load ptr, ptr %regs.addr, align 8, !dbg !612
  %call324 = call i64 @__x64_sys_sync(ptr noundef %163) #3, !dbg !612
  store i64 %call324, ptr %retval, align 8, !dbg !612
  br label %return, !dbg !612

sw.bb325:                                         ; preds = %entry
  %164 = load ptr, ptr %regs.addr, align 8, !dbg !613
  %call326 = call i64 @__x64_sys_acct(ptr noundef %164) #3, !dbg !613
  store i64 %call326, ptr %retval, align 8, !dbg !613
  br label %return, !dbg !613

sw.bb327:                                         ; preds = %entry
  %165 = load ptr, ptr %regs.addr, align 8, !dbg !614
  %call328 = call i64 @__x64_sys_settimeofday(ptr noundef %165) #3, !dbg !614
  store i64 %call328, ptr %retval, align 8, !dbg !614
  br label %return, !dbg !614

sw.bb329:                                         ; preds = %entry
  %166 = load ptr, ptr %regs.addr, align 8, !dbg !615
  %call330 = call i64 @__x64_sys_mount(ptr noundef %166) #3, !dbg !615
  store i64 %call330, ptr %retval, align 8, !dbg !615
  br label %return, !dbg !615

sw.bb331:                                         ; preds = %entry
  %167 = load ptr, ptr %regs.addr, align 8, !dbg !616
  %call332 = call i64 @__x64_sys_umount(ptr noundef %167) #3, !dbg !616
  store i64 %call332, ptr %retval, align 8, !dbg !616
  br label %return, !dbg !616

sw.bb333:                                         ; preds = %entry
  %168 = load ptr, ptr %regs.addr, align 8, !dbg !617
  %call334 = call i64 @__x64_sys_swapon(ptr noundef %168) #3, !dbg !617
  store i64 %call334, ptr %retval, align 8, !dbg !617
  br label %return, !dbg !617

sw.bb335:                                         ; preds = %entry
  %169 = load ptr, ptr %regs.addr, align 8, !dbg !618
  %call336 = call i64 @__x64_sys_swapoff(ptr noundef %169) #3, !dbg !618
  store i64 %call336, ptr %retval, align 8, !dbg !618
  br label %return, !dbg !618

sw.bb337:                                         ; preds = %entry
  %170 = load ptr, ptr %regs.addr, align 8, !dbg !619
  %call338 = call i64 @__x64_sys_reboot(ptr noundef %170) #3, !dbg !619
  store i64 %call338, ptr %retval, align 8, !dbg !619
  br label %return, !dbg !619

sw.bb339:                                         ; preds = %entry
  %171 = load ptr, ptr %regs.addr, align 8, !dbg !620
  %call340 = call i64 @__x64_sys_sethostname(ptr noundef %171) #3, !dbg !620
  store i64 %call340, ptr %retval, align 8, !dbg !620
  br label %return, !dbg !620

sw.bb341:                                         ; preds = %entry
  %172 = load ptr, ptr %regs.addr, align 8, !dbg !621
  %call342 = call i64 @__x64_sys_setdomainname(ptr noundef %172) #3, !dbg !621
  store i64 %call342, ptr %retval, align 8, !dbg !621
  br label %return, !dbg !621

sw.bb343:                                         ; preds = %entry
  %173 = load ptr, ptr %regs.addr, align 8, !dbg !622
  %call344 = call i64 @__x64_sys_iopl(ptr noundef %173) #3, !dbg !622
  store i64 %call344, ptr %retval, align 8, !dbg !622
  br label %return, !dbg !622

sw.bb345:                                         ; preds = %entry
  %174 = load ptr, ptr %regs.addr, align 8, !dbg !623
  %call346 = call i64 @__x64_sys_ioperm(ptr noundef %174) #3, !dbg !623
  store i64 %call346, ptr %retval, align 8, !dbg !623
  br label %return, !dbg !623

sw.bb347:                                         ; preds = %entry
  %175 = load ptr, ptr %regs.addr, align 8, !dbg !624
  %call348 = call i64 @__x64_sys_ni_syscall(ptr noundef %175) #3, !dbg !624
  store i64 %call348, ptr %retval, align 8, !dbg !624
  br label %return, !dbg !624

sw.bb349:                                         ; preds = %entry
  %176 = load ptr, ptr %regs.addr, align 8, !dbg !625
  %call350 = call i64 @__x64_sys_init_module(ptr noundef %176) #3, !dbg !625
  store i64 %call350, ptr %retval, align 8, !dbg !625
  br label %return, !dbg !625

sw.bb351:                                         ; preds = %entry
  %177 = load ptr, ptr %regs.addr, align 8, !dbg !626
  %call352 = call i64 @__x64_sys_delete_module(ptr noundef %177) #3, !dbg !626
  store i64 %call352, ptr %retval, align 8, !dbg !626
  br label %return, !dbg !626

sw.bb353:                                         ; preds = %entry
  %178 = load ptr, ptr %regs.addr, align 8, !dbg !627
  %call354 = call i64 @__x64_sys_ni_syscall(ptr noundef %178) #3, !dbg !627
  store i64 %call354, ptr %retval, align 8, !dbg !627
  br label %return, !dbg !627

sw.bb355:                                         ; preds = %entry
  %179 = load ptr, ptr %regs.addr, align 8, !dbg !628
  %call356 = call i64 @__x64_sys_ni_syscall(ptr noundef %179) #3, !dbg !628
  store i64 %call356, ptr %retval, align 8, !dbg !628
  br label %return, !dbg !628

sw.bb357:                                         ; preds = %entry
  %180 = load ptr, ptr %regs.addr, align 8, !dbg !629
  %call358 = call i64 @__x64_sys_quotactl(ptr noundef %180) #3, !dbg !629
  store i64 %call358, ptr %retval, align 8, !dbg !629
  br label %return, !dbg !629

sw.bb359:                                         ; preds = %entry
  %181 = load ptr, ptr %regs.addr, align 8, !dbg !630
  %call360 = call i64 @__x64_sys_ni_syscall(ptr noundef %181) #3, !dbg !630
  store i64 %call360, ptr %retval, align 8, !dbg !630
  br label %return, !dbg !630

sw.bb361:                                         ; preds = %entry
  %182 = load ptr, ptr %regs.addr, align 8, !dbg !631
  %call362 = call i64 @__x64_sys_ni_syscall(ptr noundef %182) #3, !dbg !631
  store i64 %call362, ptr %retval, align 8, !dbg !631
  br label %return, !dbg !631

sw.bb363:                                         ; preds = %entry
  %183 = load ptr, ptr %regs.addr, align 8, !dbg !632
  %call364 = call i64 @__x64_sys_ni_syscall(ptr noundef %183) #3, !dbg !632
  store i64 %call364, ptr %retval, align 8, !dbg !632
  br label %return, !dbg !632

sw.bb365:                                         ; preds = %entry
  %184 = load ptr, ptr %regs.addr, align 8, !dbg !633
  %call366 = call i64 @__x64_sys_ni_syscall(ptr noundef %184) #3, !dbg !633
  store i64 %call366, ptr %retval, align 8, !dbg !633
  br label %return, !dbg !633

sw.bb367:                                         ; preds = %entry
  %185 = load ptr, ptr %regs.addr, align 8, !dbg !634
  %call368 = call i64 @__x64_sys_ni_syscall(ptr noundef %185) #3, !dbg !634
  store i64 %call368, ptr %retval, align 8, !dbg !634
  br label %return, !dbg !634

sw.bb369:                                         ; preds = %entry
  %186 = load ptr, ptr %regs.addr, align 8, !dbg !635
  %call370 = call i64 @__x64_sys_ni_syscall(ptr noundef %186) #3, !dbg !635
  store i64 %call370, ptr %retval, align 8, !dbg !635
  br label %return, !dbg !635

sw.bb371:                                         ; preds = %entry
  %187 = load ptr, ptr %regs.addr, align 8, !dbg !636
  %call372 = call i64 @__x64_sys_gettid(ptr noundef %187) #3, !dbg !636
  store i64 %call372, ptr %retval, align 8, !dbg !636
  br label %return, !dbg !636

sw.bb373:                                         ; preds = %entry
  %188 = load ptr, ptr %regs.addr, align 8, !dbg !637
  %call374 = call i64 @__x64_sys_readahead(ptr noundef %188) #3, !dbg !637
  store i64 %call374, ptr %retval, align 8, !dbg !637
  br label %return, !dbg !637

sw.bb375:                                         ; preds = %entry
  %189 = load ptr, ptr %regs.addr, align 8, !dbg !638
  %call376 = call i64 @__x64_sys_setxattr(ptr noundef %189) #3, !dbg !638
  store i64 %call376, ptr %retval, align 8, !dbg !638
  br label %return, !dbg !638

sw.bb377:                                         ; preds = %entry
  %190 = load ptr, ptr %regs.addr, align 8, !dbg !639
  %call378 = call i64 @__x64_sys_lsetxattr(ptr noundef %190) #3, !dbg !639
  store i64 %call378, ptr %retval, align 8, !dbg !639
  br label %return, !dbg !639

sw.bb379:                                         ; preds = %entry
  %191 = load ptr, ptr %regs.addr, align 8, !dbg !640
  %call380 = call i64 @__x64_sys_fsetxattr(ptr noundef %191) #3, !dbg !640
  store i64 %call380, ptr %retval, align 8, !dbg !640
  br label %return, !dbg !640

sw.bb381:                                         ; preds = %entry
  %192 = load ptr, ptr %regs.addr, align 8, !dbg !641
  %call382 = call i64 @__x64_sys_getxattr(ptr noundef %192) #3, !dbg !641
  store i64 %call382, ptr %retval, align 8, !dbg !641
  br label %return, !dbg !641

sw.bb383:                                         ; preds = %entry
  %193 = load ptr, ptr %regs.addr, align 8, !dbg !642
  %call384 = call i64 @__x64_sys_lgetxattr(ptr noundef %193) #3, !dbg !642
  store i64 %call384, ptr %retval, align 8, !dbg !642
  br label %return, !dbg !642

sw.bb385:                                         ; preds = %entry
  %194 = load ptr, ptr %regs.addr, align 8, !dbg !643
  %call386 = call i64 @__x64_sys_fgetxattr(ptr noundef %194) #3, !dbg !643
  store i64 %call386, ptr %retval, align 8, !dbg !643
  br label %return, !dbg !643

sw.bb387:                                         ; preds = %entry
  %195 = load ptr, ptr %regs.addr, align 8, !dbg !644
  %call388 = call i64 @__x64_sys_listxattr(ptr noundef %195) #3, !dbg !644
  store i64 %call388, ptr %retval, align 8, !dbg !644
  br label %return, !dbg !644

sw.bb389:                                         ; preds = %entry
  %196 = load ptr, ptr %regs.addr, align 8, !dbg !645
  %call390 = call i64 @__x64_sys_llistxattr(ptr noundef %196) #3, !dbg !645
  store i64 %call390, ptr %retval, align 8, !dbg !645
  br label %return, !dbg !645

sw.bb391:                                         ; preds = %entry
  %197 = load ptr, ptr %regs.addr, align 8, !dbg !646
  %call392 = call i64 @__x64_sys_flistxattr(ptr noundef %197) #3, !dbg !646
  store i64 %call392, ptr %retval, align 8, !dbg !646
  br label %return, !dbg !646

sw.bb393:                                         ; preds = %entry
  %198 = load ptr, ptr %regs.addr, align 8, !dbg !647
  %call394 = call i64 @__x64_sys_removexattr(ptr noundef %198) #3, !dbg !647
  store i64 %call394, ptr %retval, align 8, !dbg !647
  br label %return, !dbg !647

sw.bb395:                                         ; preds = %entry
  %199 = load ptr, ptr %regs.addr, align 8, !dbg !648
  %call396 = call i64 @__x64_sys_lremovexattr(ptr noundef %199) #3, !dbg !648
  store i64 %call396, ptr %retval, align 8, !dbg !648
  br label %return, !dbg !648

sw.bb397:                                         ; preds = %entry
  %200 = load ptr, ptr %regs.addr, align 8, !dbg !649
  %call398 = call i64 @__x64_sys_fremovexattr(ptr noundef %200) #3, !dbg !649
  store i64 %call398, ptr %retval, align 8, !dbg !649
  br label %return, !dbg !649

sw.bb399:                                         ; preds = %entry
  %201 = load ptr, ptr %regs.addr, align 8, !dbg !650
  %call400 = call i64 @__x64_sys_tkill(ptr noundef %201) #3, !dbg !650
  store i64 %call400, ptr %retval, align 8, !dbg !650
  br label %return, !dbg !650

sw.bb401:                                         ; preds = %entry
  %202 = load ptr, ptr %regs.addr, align 8, !dbg !651
  %call402 = call i64 @__x64_sys_time(ptr noundef %202) #3, !dbg !651
  store i64 %call402, ptr %retval, align 8, !dbg !651
  br label %return, !dbg !651

sw.bb403:                                         ; preds = %entry
  %203 = load ptr, ptr %regs.addr, align 8, !dbg !652
  %call404 = call i64 @__x64_sys_futex(ptr noundef %203) #3, !dbg !652
  store i64 %call404, ptr %retval, align 8, !dbg !652
  br label %return, !dbg !652

sw.bb405:                                         ; preds = %entry
  %204 = load ptr, ptr %regs.addr, align 8, !dbg !653
  %call406 = call i64 @__x64_sys_sched_setaffinity(ptr noundef %204) #3, !dbg !653
  store i64 %call406, ptr %retval, align 8, !dbg !653
  br label %return, !dbg !653

sw.bb407:                                         ; preds = %entry
  %205 = load ptr, ptr %regs.addr, align 8, !dbg !654
  %call408 = call i64 @__x64_sys_sched_getaffinity(ptr noundef %205) #3, !dbg !654
  store i64 %call408, ptr %retval, align 8, !dbg !654
  br label %return, !dbg !654

sw.bb409:                                         ; preds = %entry
  %206 = load ptr, ptr %regs.addr, align 8, !dbg !655
  %call410 = call i64 @__x64_sys_ni_syscall(ptr noundef %206) #3, !dbg !655
  store i64 %call410, ptr %retval, align 8, !dbg !655
  br label %return, !dbg !655

sw.bb411:                                         ; preds = %entry
  %207 = load ptr, ptr %regs.addr, align 8, !dbg !656
  %call412 = call i64 @__x64_sys_io_setup(ptr noundef %207) #3, !dbg !656
  store i64 %call412, ptr %retval, align 8, !dbg !656
  br label %return, !dbg !656

sw.bb413:                                         ; preds = %entry
  %208 = load ptr, ptr %regs.addr, align 8, !dbg !657
  %call414 = call i64 @__x64_sys_io_destroy(ptr noundef %208) #3, !dbg !657
  store i64 %call414, ptr %retval, align 8, !dbg !657
  br label %return, !dbg !657

sw.bb415:                                         ; preds = %entry
  %209 = load ptr, ptr %regs.addr, align 8, !dbg !658
  %call416 = call i64 @__x64_sys_io_getevents(ptr noundef %209) #3, !dbg !658
  store i64 %call416, ptr %retval, align 8, !dbg !658
  br label %return, !dbg !658

sw.bb417:                                         ; preds = %entry
  %210 = load ptr, ptr %regs.addr, align 8, !dbg !659
  %call418 = call i64 @__x64_sys_io_submit(ptr noundef %210) #3, !dbg !659
  store i64 %call418, ptr %retval, align 8, !dbg !659
  br label %return, !dbg !659

sw.bb419:                                         ; preds = %entry
  %211 = load ptr, ptr %regs.addr, align 8, !dbg !660
  %call420 = call i64 @__x64_sys_io_cancel(ptr noundef %211) #3, !dbg !660
  store i64 %call420, ptr %retval, align 8, !dbg !660
  br label %return, !dbg !660

sw.bb421:                                         ; preds = %entry
  %212 = load ptr, ptr %regs.addr, align 8, !dbg !661
  %call422 = call i64 @__x64_sys_ni_syscall(ptr noundef %212) #3, !dbg !661
  store i64 %call422, ptr %retval, align 8, !dbg !661
  br label %return, !dbg !661

sw.bb423:                                         ; preds = %entry
  %213 = load ptr, ptr %regs.addr, align 8, !dbg !662
  %call424 = call i64 @__x64_sys_lookup_dcookie(ptr noundef %213) #3, !dbg !662
  store i64 %call424, ptr %retval, align 8, !dbg !662
  br label %return, !dbg !662

sw.bb425:                                         ; preds = %entry
  %214 = load ptr, ptr %regs.addr, align 8, !dbg !663
  %call426 = call i64 @__x64_sys_epoll_create(ptr noundef %214) #3, !dbg !663
  store i64 %call426, ptr %retval, align 8, !dbg !663
  br label %return, !dbg !663

sw.bb427:                                         ; preds = %entry
  %215 = load ptr, ptr %regs.addr, align 8, !dbg !664
  %call428 = call i64 @__x64_sys_ni_syscall(ptr noundef %215) #3, !dbg !664
  store i64 %call428, ptr %retval, align 8, !dbg !664
  br label %return, !dbg !664

sw.bb429:                                         ; preds = %entry
  %216 = load ptr, ptr %regs.addr, align 8, !dbg !665
  %call430 = call i64 @__x64_sys_ni_syscall(ptr noundef %216) #3, !dbg !665
  store i64 %call430, ptr %retval, align 8, !dbg !665
  br label %return, !dbg !665

sw.bb431:                                         ; preds = %entry
  %217 = load ptr, ptr %regs.addr, align 8, !dbg !666
  %call432 = call i64 @__x64_sys_remap_file_pages(ptr noundef %217) #3, !dbg !666
  store i64 %call432, ptr %retval, align 8, !dbg !666
  br label %return, !dbg !666

sw.bb433:                                         ; preds = %entry
  %218 = load ptr, ptr %regs.addr, align 8, !dbg !667
  %call434 = call i64 @__x64_sys_getdents64(ptr noundef %218) #3, !dbg !667
  store i64 %call434, ptr %retval, align 8, !dbg !667
  br label %return, !dbg !667

sw.bb435:                                         ; preds = %entry
  %219 = load ptr, ptr %regs.addr, align 8, !dbg !668
  %call436 = call i64 @__x64_sys_set_tid_address(ptr noundef %219) #3, !dbg !668
  store i64 %call436, ptr %retval, align 8, !dbg !668
  br label %return, !dbg !668

sw.bb437:                                         ; preds = %entry
  %220 = load ptr, ptr %regs.addr, align 8, !dbg !669
  %call438 = call i64 @__x64_sys_restart_syscall(ptr noundef %220) #3, !dbg !669
  store i64 %call438, ptr %retval, align 8, !dbg !669
  br label %return, !dbg !669

sw.bb439:                                         ; preds = %entry
  %221 = load ptr, ptr %regs.addr, align 8, !dbg !670
  %call440 = call i64 @__x64_sys_semtimedop(ptr noundef %221) #3, !dbg !670
  store i64 %call440, ptr %retval, align 8, !dbg !670
  br label %return, !dbg !670

sw.bb441:                                         ; preds = %entry
  %222 = load ptr, ptr %regs.addr, align 8, !dbg !671
  %call442 = call i64 @__x64_sys_fadvise64(ptr noundef %222) #3, !dbg !671
  store i64 %call442, ptr %retval, align 8, !dbg !671
  br label %return, !dbg !671

sw.bb443:                                         ; preds = %entry
  %223 = load ptr, ptr %regs.addr, align 8, !dbg !672
  %call444 = call i64 @__x64_sys_timer_create(ptr noundef %223) #3, !dbg !672
  store i64 %call444, ptr %retval, align 8, !dbg !672
  br label %return, !dbg !672

sw.bb445:                                         ; preds = %entry
  %224 = load ptr, ptr %regs.addr, align 8, !dbg !673
  %call446 = call i64 @__x64_sys_timer_settime(ptr noundef %224) #3, !dbg !673
  store i64 %call446, ptr %retval, align 8, !dbg !673
  br label %return, !dbg !673

sw.bb447:                                         ; preds = %entry
  %225 = load ptr, ptr %regs.addr, align 8, !dbg !674
  %call448 = call i64 @__x64_sys_timer_gettime(ptr noundef %225) #3, !dbg !674
  store i64 %call448, ptr %retval, align 8, !dbg !674
  br label %return, !dbg !674

sw.bb449:                                         ; preds = %entry
  %226 = load ptr, ptr %regs.addr, align 8, !dbg !675
  %call450 = call i64 @__x64_sys_timer_getoverrun(ptr noundef %226) #3, !dbg !675
  store i64 %call450, ptr %retval, align 8, !dbg !675
  br label %return, !dbg !675

sw.bb451:                                         ; preds = %entry
  %227 = load ptr, ptr %regs.addr, align 8, !dbg !676
  %call452 = call i64 @__x64_sys_timer_delete(ptr noundef %227) #3, !dbg !676
  store i64 %call452, ptr %retval, align 8, !dbg !676
  br label %return, !dbg !676

sw.bb453:                                         ; preds = %entry
  %228 = load ptr, ptr %regs.addr, align 8, !dbg !677
  %call454 = call i64 @__x64_sys_clock_settime(ptr noundef %228) #3, !dbg !677
  store i64 %call454, ptr %retval, align 8, !dbg !677
  br label %return, !dbg !677

sw.bb455:                                         ; preds = %entry
  %229 = load ptr, ptr %regs.addr, align 8, !dbg !678
  %call456 = call i64 @__x64_sys_clock_gettime(ptr noundef %229) #3, !dbg !678
  store i64 %call456, ptr %retval, align 8, !dbg !678
  br label %return, !dbg !678

sw.bb457:                                         ; preds = %entry
  %230 = load ptr, ptr %regs.addr, align 8, !dbg !679
  %call458 = call i64 @__x64_sys_clock_getres(ptr noundef %230) #3, !dbg !679
  store i64 %call458, ptr %retval, align 8, !dbg !679
  br label %return, !dbg !679

sw.bb459:                                         ; preds = %entry
  %231 = load ptr, ptr %regs.addr, align 8, !dbg !680
  %call460 = call i64 @__x64_sys_clock_nanosleep(ptr noundef %231) #3, !dbg !680
  store i64 %call460, ptr %retval, align 8, !dbg !680
  br label %return, !dbg !680

sw.bb461:                                         ; preds = %entry
  %232 = load ptr, ptr %regs.addr, align 8, !dbg !681
  %call462 = call i64 @__x64_sys_exit_group(ptr noundef %232) #3, !dbg !681
  store i64 %call462, ptr %retval, align 8, !dbg !681
  br label %return, !dbg !681

sw.bb463:                                         ; preds = %entry
  %233 = load ptr, ptr %regs.addr, align 8, !dbg !682
  %call464 = call i64 @__x64_sys_epoll_wait(ptr noundef %233) #3, !dbg !682
  store i64 %call464, ptr %retval, align 8, !dbg !682
  br label %return, !dbg !682

sw.bb465:                                         ; preds = %entry
  %234 = load ptr, ptr %regs.addr, align 8, !dbg !683
  %call466 = call i64 @__x64_sys_epoll_ctl(ptr noundef %234) #3, !dbg !683
  store i64 %call466, ptr %retval, align 8, !dbg !683
  br label %return, !dbg !683

sw.bb467:                                         ; preds = %entry
  %235 = load ptr, ptr %regs.addr, align 8, !dbg !684
  %call468 = call i64 @__x64_sys_tgkill(ptr noundef %235) #3, !dbg !684
  store i64 %call468, ptr %retval, align 8, !dbg !684
  br label %return, !dbg !684

sw.bb469:                                         ; preds = %entry
  %236 = load ptr, ptr %regs.addr, align 8, !dbg !685
  %call470 = call i64 @__x64_sys_utimes(ptr noundef %236) #3, !dbg !685
  store i64 %call470, ptr %retval, align 8, !dbg !685
  br label %return, !dbg !685

sw.bb471:                                         ; preds = %entry
  %237 = load ptr, ptr %regs.addr, align 8, !dbg !686
  %call472 = call i64 @__x64_sys_ni_syscall(ptr noundef %237) #3, !dbg !686
  store i64 %call472, ptr %retval, align 8, !dbg !686
  br label %return, !dbg !686

sw.bb473:                                         ; preds = %entry
  %238 = load ptr, ptr %regs.addr, align 8, !dbg !687
  %call474 = call i64 @__x64_sys_mbind(ptr noundef %238) #3, !dbg !687
  store i64 %call474, ptr %retval, align 8, !dbg !687
  br label %return, !dbg !687

sw.bb475:                                         ; preds = %entry
  %239 = load ptr, ptr %regs.addr, align 8, !dbg !688
  %call476 = call i64 @__x64_sys_set_mempolicy(ptr noundef %239) #3, !dbg !688
  store i64 %call476, ptr %retval, align 8, !dbg !688
  br label %return, !dbg !688

sw.bb477:                                         ; preds = %entry
  %240 = load ptr, ptr %regs.addr, align 8, !dbg !689
  %call478 = call i64 @__x64_sys_get_mempolicy(ptr noundef %240) #3, !dbg !689
  store i64 %call478, ptr %retval, align 8, !dbg !689
  br label %return, !dbg !689

sw.bb479:                                         ; preds = %entry
  %241 = load ptr, ptr %regs.addr, align 8, !dbg !690
  %call480 = call i64 @__x64_sys_mq_open(ptr noundef %241) #3, !dbg !690
  store i64 %call480, ptr %retval, align 8, !dbg !690
  br label %return, !dbg !690

sw.bb481:                                         ; preds = %entry
  %242 = load ptr, ptr %regs.addr, align 8, !dbg !691
  %call482 = call i64 @__x64_sys_mq_unlink(ptr noundef %242) #3, !dbg !691
  store i64 %call482, ptr %retval, align 8, !dbg !691
  br label %return, !dbg !691

sw.bb483:                                         ; preds = %entry
  %243 = load ptr, ptr %regs.addr, align 8, !dbg !692
  %call484 = call i64 @__x64_sys_mq_timedsend(ptr noundef %243) #3, !dbg !692
  store i64 %call484, ptr %retval, align 8, !dbg !692
  br label %return, !dbg !692

sw.bb485:                                         ; preds = %entry
  %244 = load ptr, ptr %regs.addr, align 8, !dbg !693
  %call486 = call i64 @__x64_sys_mq_timedreceive(ptr noundef %244) #3, !dbg !693
  store i64 %call486, ptr %retval, align 8, !dbg !693
  br label %return, !dbg !693

sw.bb487:                                         ; preds = %entry
  %245 = load ptr, ptr %regs.addr, align 8, !dbg !694
  %call488 = call i64 @__x64_sys_mq_notify(ptr noundef %245) #3, !dbg !694
  store i64 %call488, ptr %retval, align 8, !dbg !694
  br label %return, !dbg !694

sw.bb489:                                         ; preds = %entry
  %246 = load ptr, ptr %regs.addr, align 8, !dbg !695
  %call490 = call i64 @__x64_sys_mq_getsetattr(ptr noundef %246) #3, !dbg !695
  store i64 %call490, ptr %retval, align 8, !dbg !695
  br label %return, !dbg !695

sw.bb491:                                         ; preds = %entry
  %247 = load ptr, ptr %regs.addr, align 8, !dbg !696
  %call492 = call i64 @__x64_sys_kexec_load(ptr noundef %247) #3, !dbg !696
  store i64 %call492, ptr %retval, align 8, !dbg !696
  br label %return, !dbg !696

sw.bb493:                                         ; preds = %entry
  %248 = load ptr, ptr %regs.addr, align 8, !dbg !697
  %call494 = call i64 @__x64_sys_waitid(ptr noundef %248) #3, !dbg !697
  store i64 %call494, ptr %retval, align 8, !dbg !697
  br label %return, !dbg !697

sw.bb495:                                         ; preds = %entry
  %249 = load ptr, ptr %regs.addr, align 8, !dbg !698
  %call496 = call i64 @__x64_sys_add_key(ptr noundef %249) #3, !dbg !698
  store i64 %call496, ptr %retval, align 8, !dbg !698
  br label %return, !dbg !698

sw.bb497:                                         ; preds = %entry
  %250 = load ptr, ptr %regs.addr, align 8, !dbg !699
  %call498 = call i64 @__x64_sys_request_key(ptr noundef %250) #3, !dbg !699
  store i64 %call498, ptr %retval, align 8, !dbg !699
  br label %return, !dbg !699

sw.bb499:                                         ; preds = %entry
  %251 = load ptr, ptr %regs.addr, align 8, !dbg !700
  %call500 = call i64 @__x64_sys_keyctl(ptr noundef %251) #3, !dbg !700
  store i64 %call500, ptr %retval, align 8, !dbg !700
  br label %return, !dbg !700

sw.bb501:                                         ; preds = %entry
  %252 = load ptr, ptr %regs.addr, align 8, !dbg !701
  %call502 = call i64 @__x64_sys_ioprio_set(ptr noundef %252) #3, !dbg !701
  store i64 %call502, ptr %retval, align 8, !dbg !701
  br label %return, !dbg !701

sw.bb503:                                         ; preds = %entry
  %253 = load ptr, ptr %regs.addr, align 8, !dbg !702
  %call504 = call i64 @__x64_sys_ioprio_get(ptr noundef %253) #3, !dbg !702
  store i64 %call504, ptr %retval, align 8, !dbg !702
  br label %return, !dbg !702

sw.bb505:                                         ; preds = %entry
  %254 = load ptr, ptr %regs.addr, align 8, !dbg !703
  %call506 = call i64 @__x64_sys_inotify_init(ptr noundef %254) #3, !dbg !703
  store i64 %call506, ptr %retval, align 8, !dbg !703
  br label %return, !dbg !703

sw.bb507:                                         ; preds = %entry
  %255 = load ptr, ptr %regs.addr, align 8, !dbg !704
  %call508 = call i64 @__x64_sys_inotify_add_watch(ptr noundef %255) #3, !dbg !704
  store i64 %call508, ptr %retval, align 8, !dbg !704
  br label %return, !dbg !704

sw.bb509:                                         ; preds = %entry
  %256 = load ptr, ptr %regs.addr, align 8, !dbg !705
  %call510 = call i64 @__x64_sys_inotify_rm_watch(ptr noundef %256) #3, !dbg !705
  store i64 %call510, ptr %retval, align 8, !dbg !705
  br label %return, !dbg !705

sw.bb511:                                         ; preds = %entry
  %257 = load ptr, ptr %regs.addr, align 8, !dbg !706
  %call512 = call i64 @__x64_sys_migrate_pages(ptr noundef %257) #3, !dbg !706
  store i64 %call512, ptr %retval, align 8, !dbg !706
  br label %return, !dbg !706

sw.bb513:                                         ; preds = %entry
  %258 = load ptr, ptr %regs.addr, align 8, !dbg !707
  %call514 = call i64 @__x64_sys_openat(ptr noundef %258) #3, !dbg !707
  store i64 %call514, ptr %retval, align 8, !dbg !707
  br label %return, !dbg !707

sw.bb515:                                         ; preds = %entry
  %259 = load ptr, ptr %regs.addr, align 8, !dbg !708
  %call516 = call i64 @__x64_sys_mkdirat(ptr noundef %259) #3, !dbg !708
  store i64 %call516, ptr %retval, align 8, !dbg !708
  br label %return, !dbg !708

sw.bb517:                                         ; preds = %entry
  %260 = load ptr, ptr %regs.addr, align 8, !dbg !709
  %call518 = call i64 @__x64_sys_mknodat(ptr noundef %260) #3, !dbg !709
  store i64 %call518, ptr %retval, align 8, !dbg !709
  br label %return, !dbg !709

sw.bb519:                                         ; preds = %entry
  %261 = load ptr, ptr %regs.addr, align 8, !dbg !710
  %call520 = call i64 @__x64_sys_fchownat(ptr noundef %261) #3, !dbg !710
  store i64 %call520, ptr %retval, align 8, !dbg !710
  br label %return, !dbg !710

sw.bb521:                                         ; preds = %entry
  %262 = load ptr, ptr %regs.addr, align 8, !dbg !711
  %call522 = call i64 @__x64_sys_futimesat(ptr noundef %262) #3, !dbg !711
  store i64 %call522, ptr %retval, align 8, !dbg !711
  br label %return, !dbg !711

sw.bb523:                                         ; preds = %entry
  %263 = load ptr, ptr %regs.addr, align 8, !dbg !712
  %call524 = call i64 @__x64_sys_newfstatat(ptr noundef %263) #3, !dbg !712
  store i64 %call524, ptr %retval, align 8, !dbg !712
  br label %return, !dbg !712

sw.bb525:                                         ; preds = %entry
  %264 = load ptr, ptr %regs.addr, align 8, !dbg !713
  %call526 = call i64 @__x64_sys_unlinkat(ptr noundef %264) #3, !dbg !713
  store i64 %call526, ptr %retval, align 8, !dbg !713
  br label %return, !dbg !713

sw.bb527:                                         ; preds = %entry
  %265 = load ptr, ptr %regs.addr, align 8, !dbg !714
  %call528 = call i64 @__x64_sys_renameat(ptr noundef %265) #3, !dbg !714
  store i64 %call528, ptr %retval, align 8, !dbg !714
  br label %return, !dbg !714

sw.bb529:                                         ; preds = %entry
  %266 = load ptr, ptr %regs.addr, align 8, !dbg !715
  %call530 = call i64 @__x64_sys_linkat(ptr noundef %266) #3, !dbg !715
  store i64 %call530, ptr %retval, align 8, !dbg !715
  br label %return, !dbg !715

sw.bb531:                                         ; preds = %entry
  %267 = load ptr, ptr %regs.addr, align 8, !dbg !716
  %call532 = call i64 @__x64_sys_symlinkat(ptr noundef %267) #3, !dbg !716
  store i64 %call532, ptr %retval, align 8, !dbg !716
  br label %return, !dbg !716

sw.bb533:                                         ; preds = %entry
  %268 = load ptr, ptr %regs.addr, align 8, !dbg !717
  %call534 = call i64 @__x64_sys_readlinkat(ptr noundef %268) #3, !dbg !717
  store i64 %call534, ptr %retval, align 8, !dbg !717
  br label %return, !dbg !717

sw.bb535:                                         ; preds = %entry
  %269 = load ptr, ptr %regs.addr, align 8, !dbg !718
  %call536 = call i64 @__x64_sys_fchmodat(ptr noundef %269) #3, !dbg !718
  store i64 %call536, ptr %retval, align 8, !dbg !718
  br label %return, !dbg !718

sw.bb537:                                         ; preds = %entry
  %270 = load ptr, ptr %regs.addr, align 8, !dbg !719
  %call538 = call i64 @__x64_sys_faccessat(ptr noundef %270) #3, !dbg !719
  store i64 %call538, ptr %retval, align 8, !dbg !719
  br label %return, !dbg !719

sw.bb539:                                         ; preds = %entry
  %271 = load ptr, ptr %regs.addr, align 8, !dbg !720
  %call540 = call i64 @__x64_sys_pselect6(ptr noundef %271) #3, !dbg !720
  store i64 %call540, ptr %retval, align 8, !dbg !720
  br label %return, !dbg !720

sw.bb541:                                         ; preds = %entry
  %272 = load ptr, ptr %regs.addr, align 8, !dbg !721
  %call542 = call i64 @__x64_sys_ppoll(ptr noundef %272) #3, !dbg !721
  store i64 %call542, ptr %retval, align 8, !dbg !721
  br label %return, !dbg !721

sw.bb543:                                         ; preds = %entry
  %273 = load ptr, ptr %regs.addr, align 8, !dbg !722
  %call544 = call i64 @__x64_sys_unshare(ptr noundef %273) #3, !dbg !722
  store i64 %call544, ptr %retval, align 8, !dbg !722
  br label %return, !dbg !722

sw.bb545:                                         ; preds = %entry
  %274 = load ptr, ptr %regs.addr, align 8, !dbg !723
  %call546 = call i64 @__x64_sys_set_robust_list(ptr noundef %274) #3, !dbg !723
  store i64 %call546, ptr %retval, align 8, !dbg !723
  br label %return, !dbg !723

sw.bb547:                                         ; preds = %entry
  %275 = load ptr, ptr %regs.addr, align 8, !dbg !724
  %call548 = call i64 @__x64_sys_get_robust_list(ptr noundef %275) #3, !dbg !724
  store i64 %call548, ptr %retval, align 8, !dbg !724
  br label %return, !dbg !724

sw.bb549:                                         ; preds = %entry
  %276 = load ptr, ptr %regs.addr, align 8, !dbg !725
  %call550 = call i64 @__x64_sys_splice(ptr noundef %276) #3, !dbg !725
  store i64 %call550, ptr %retval, align 8, !dbg !725
  br label %return, !dbg !725

sw.bb551:                                         ; preds = %entry
  %277 = load ptr, ptr %regs.addr, align 8, !dbg !726
  %call552 = call i64 @__x64_sys_tee(ptr noundef %277) #3, !dbg !726
  store i64 %call552, ptr %retval, align 8, !dbg !726
  br label %return, !dbg !726

sw.bb553:                                         ; preds = %entry
  %278 = load ptr, ptr %regs.addr, align 8, !dbg !727
  %call554 = call i64 @__x64_sys_sync_file_range(ptr noundef %278) #3, !dbg !727
  store i64 %call554, ptr %retval, align 8, !dbg !727
  br label %return, !dbg !727

sw.bb555:                                         ; preds = %entry
  %279 = load ptr, ptr %regs.addr, align 8, !dbg !728
  %call556 = call i64 @__x64_sys_vmsplice(ptr noundef %279) #3, !dbg !728
  store i64 %call556, ptr %retval, align 8, !dbg !728
  br label %return, !dbg !728

sw.bb557:                                         ; preds = %entry
  %280 = load ptr, ptr %regs.addr, align 8, !dbg !729
  %call558 = call i64 @__x64_sys_move_pages(ptr noundef %280) #3, !dbg !729
  store i64 %call558, ptr %retval, align 8, !dbg !729
  br label %return, !dbg !729

sw.bb559:                                         ; preds = %entry
  %281 = load ptr, ptr %regs.addr, align 8, !dbg !730
  %call560 = call i64 @__x64_sys_utimensat(ptr noundef %281) #3, !dbg !730
  store i64 %call560, ptr %retval, align 8, !dbg !730
  br label %return, !dbg !730

sw.bb561:                                         ; preds = %entry
  %282 = load ptr, ptr %regs.addr, align 8, !dbg !731
  %call562 = call i64 @__x64_sys_epoll_pwait(ptr noundef %282) #3, !dbg !731
  store i64 %call562, ptr %retval, align 8, !dbg !731
  br label %return, !dbg !731

sw.bb563:                                         ; preds = %entry
  %283 = load ptr, ptr %regs.addr, align 8, !dbg !732
  %call564 = call i64 @__x64_sys_signalfd(ptr noundef %283) #3, !dbg !732
  store i64 %call564, ptr %retval, align 8, !dbg !732
  br label %return, !dbg !732

sw.bb565:                                         ; preds = %entry
  %284 = load ptr, ptr %regs.addr, align 8, !dbg !733
  %call566 = call i64 @__x64_sys_timerfd_create(ptr noundef %284) #3, !dbg !733
  store i64 %call566, ptr %retval, align 8, !dbg !733
  br label %return, !dbg !733

sw.bb567:                                         ; preds = %entry
  %285 = load ptr, ptr %regs.addr, align 8, !dbg !734
  %call568 = call i64 @__x64_sys_eventfd(ptr noundef %285) #3, !dbg !734
  store i64 %call568, ptr %retval, align 8, !dbg !734
  br label %return, !dbg !734

sw.bb569:                                         ; preds = %entry
  %286 = load ptr, ptr %regs.addr, align 8, !dbg !735
  %call570 = call i64 @__x64_sys_fallocate(ptr noundef %286) #3, !dbg !735
  store i64 %call570, ptr %retval, align 8, !dbg !735
  br label %return, !dbg !735

sw.bb571:                                         ; preds = %entry
  %287 = load ptr, ptr %regs.addr, align 8, !dbg !736
  %call572 = call i64 @__x64_sys_timerfd_settime(ptr noundef %287) #3, !dbg !736
  store i64 %call572, ptr %retval, align 8, !dbg !736
  br label %return, !dbg !736

sw.bb573:                                         ; preds = %entry
  %288 = load ptr, ptr %regs.addr, align 8, !dbg !737
  %call574 = call i64 @__x64_sys_timerfd_gettime(ptr noundef %288) #3, !dbg !737
  store i64 %call574, ptr %retval, align 8, !dbg !737
  br label %return, !dbg !737

sw.bb575:                                         ; preds = %entry
  %289 = load ptr, ptr %regs.addr, align 8, !dbg !738
  %call576 = call i64 @__x64_sys_accept4(ptr noundef %289) #3, !dbg !738
  store i64 %call576, ptr %retval, align 8, !dbg !738
  br label %return, !dbg !738

sw.bb577:                                         ; preds = %entry
  %290 = load ptr, ptr %regs.addr, align 8, !dbg !739
  %call578 = call i64 @__x64_sys_signalfd4(ptr noundef %290) #3, !dbg !739
  store i64 %call578, ptr %retval, align 8, !dbg !739
  br label %return, !dbg !739

sw.bb579:                                         ; preds = %entry
  %291 = load ptr, ptr %regs.addr, align 8, !dbg !740
  %call580 = call i64 @__x64_sys_eventfd2(ptr noundef %291) #3, !dbg !740
  store i64 %call580, ptr %retval, align 8, !dbg !740
  br label %return, !dbg !740

sw.bb581:                                         ; preds = %entry
  %292 = load ptr, ptr %regs.addr, align 8, !dbg !741
  %call582 = call i64 @__x64_sys_epoll_create1(ptr noundef %292) #3, !dbg !741
  store i64 %call582, ptr %retval, align 8, !dbg !741
  br label %return, !dbg !741

sw.bb583:                                         ; preds = %entry
  %293 = load ptr, ptr %regs.addr, align 8, !dbg !742
  %call584 = call i64 @__x64_sys_dup3(ptr noundef %293) #3, !dbg !742
  store i64 %call584, ptr %retval, align 8, !dbg !742
  br label %return, !dbg !742

sw.bb585:                                         ; preds = %entry
  %294 = load ptr, ptr %regs.addr, align 8, !dbg !743
  %call586 = call i64 @__x64_sys_pipe2(ptr noundef %294) #3, !dbg !743
  store i64 %call586, ptr %retval, align 8, !dbg !743
  br label %return, !dbg !743

sw.bb587:                                         ; preds = %entry
  %295 = load ptr, ptr %regs.addr, align 8, !dbg !744
  %call588 = call i64 @__x64_sys_inotify_init1(ptr noundef %295) #3, !dbg !744
  store i64 %call588, ptr %retval, align 8, !dbg !744
  br label %return, !dbg !744

sw.bb589:                                         ; preds = %entry
  %296 = load ptr, ptr %regs.addr, align 8, !dbg !745
  %call590 = call i64 @__x64_sys_preadv(ptr noundef %296) #3, !dbg !745
  store i64 %call590, ptr %retval, align 8, !dbg !745
  br label %return, !dbg !745

sw.bb591:                                         ; preds = %entry
  %297 = load ptr, ptr %regs.addr, align 8, !dbg !746
  %call592 = call i64 @__x64_sys_pwritev(ptr noundef %297) #3, !dbg !746
  store i64 %call592, ptr %retval, align 8, !dbg !746
  br label %return, !dbg !746

sw.bb593:                                         ; preds = %entry
  %298 = load ptr, ptr %regs.addr, align 8, !dbg !747
  %call594 = call i64 @__x64_sys_rt_tgsigqueueinfo(ptr noundef %298) #3, !dbg !747
  store i64 %call594, ptr %retval, align 8, !dbg !747
  br label %return, !dbg !747

sw.bb595:                                         ; preds = %entry
  %299 = load ptr, ptr %regs.addr, align 8, !dbg !748
  %call596 = call i64 @__x64_sys_perf_event_open(ptr noundef %299) #3, !dbg !748
  store i64 %call596, ptr %retval, align 8, !dbg !748
  br label %return, !dbg !748

sw.bb597:                                         ; preds = %entry
  %300 = load ptr, ptr %regs.addr, align 8, !dbg !749
  %call598 = call i64 @__x64_sys_recvmmsg(ptr noundef %300) #3, !dbg !749
  store i64 %call598, ptr %retval, align 8, !dbg !749
  br label %return, !dbg !749

sw.bb599:                                         ; preds = %entry
  %301 = load ptr, ptr %regs.addr, align 8, !dbg !750
  %call600 = call i64 @__x64_sys_fanotify_init(ptr noundef %301) #3, !dbg !750
  store i64 %call600, ptr %retval, align 8, !dbg !750
  br label %return, !dbg !750

sw.bb601:                                         ; preds = %entry
  %302 = load ptr, ptr %regs.addr, align 8, !dbg !751
  %call602 = call i64 @__x64_sys_fanotify_mark(ptr noundef %302) #3, !dbg !751
  store i64 %call602, ptr %retval, align 8, !dbg !751
  br label %return, !dbg !751

sw.bb603:                                         ; preds = %entry
  %303 = load ptr, ptr %regs.addr, align 8, !dbg !752
  %call604 = call i64 @__x64_sys_prlimit64(ptr noundef %303) #3, !dbg !752
  store i64 %call604, ptr %retval, align 8, !dbg !752
  br label %return, !dbg !752

sw.bb605:                                         ; preds = %entry
  %304 = load ptr, ptr %regs.addr, align 8, !dbg !753
  %call606 = call i64 @__x64_sys_name_to_handle_at(ptr noundef %304) #3, !dbg !753
  store i64 %call606, ptr %retval, align 8, !dbg !753
  br label %return, !dbg !753

sw.bb607:                                         ; preds = %entry
  %305 = load ptr, ptr %regs.addr, align 8, !dbg !754
  %call608 = call i64 @__x64_sys_open_by_handle_at(ptr noundef %305) #3, !dbg !754
  store i64 %call608, ptr %retval, align 8, !dbg !754
  br label %return, !dbg !754

sw.bb609:                                         ; preds = %entry
  %306 = load ptr, ptr %regs.addr, align 8, !dbg !755
  %call610 = call i64 @__x64_sys_clock_adjtime(ptr noundef %306) #3, !dbg !755
  store i64 %call610, ptr %retval, align 8, !dbg !755
  br label %return, !dbg !755

sw.bb611:                                         ; preds = %entry
  %307 = load ptr, ptr %regs.addr, align 8, !dbg !756
  %call612 = call i64 @__x64_sys_syncfs(ptr noundef %307) #3, !dbg !756
  store i64 %call612, ptr %retval, align 8, !dbg !756
  br label %return, !dbg !756

sw.bb613:                                         ; preds = %entry
  %308 = load ptr, ptr %regs.addr, align 8, !dbg !757
  %call614 = call i64 @__x64_sys_sendmmsg(ptr noundef %308) #3, !dbg !757
  store i64 %call614, ptr %retval, align 8, !dbg !757
  br label %return, !dbg !757

sw.bb615:                                         ; preds = %entry
  %309 = load ptr, ptr %regs.addr, align 8, !dbg !758
  %call616 = call i64 @__x64_sys_setns(ptr noundef %309) #3, !dbg !758
  store i64 %call616, ptr %retval, align 8, !dbg !758
  br label %return, !dbg !758

sw.bb617:                                         ; preds = %entry
  %310 = load ptr, ptr %regs.addr, align 8, !dbg !759
  %call618 = call i64 @__x64_sys_getcpu(ptr noundef %310) #3, !dbg !759
  store i64 %call618, ptr %retval, align 8, !dbg !759
  br label %return, !dbg !759

sw.bb619:                                         ; preds = %entry
  %311 = load ptr, ptr %regs.addr, align 8, !dbg !760
  %call620 = call i64 @__x64_sys_process_vm_readv(ptr noundef %311) #3, !dbg !760
  store i64 %call620, ptr %retval, align 8, !dbg !760
  br label %return, !dbg !760

sw.bb621:                                         ; preds = %entry
  %312 = load ptr, ptr %regs.addr, align 8, !dbg !761
  %call622 = call i64 @__x64_sys_process_vm_writev(ptr noundef %312) #3, !dbg !761
  store i64 %call622, ptr %retval, align 8, !dbg !761
  br label %return, !dbg !761

sw.bb623:                                         ; preds = %entry
  %313 = load ptr, ptr %regs.addr, align 8, !dbg !762
  %call624 = call i64 @__x64_sys_kcmp(ptr noundef %313) #3, !dbg !762
  store i64 %call624, ptr %retval, align 8, !dbg !762
  br label %return, !dbg !762

sw.bb625:                                         ; preds = %entry
  %314 = load ptr, ptr %regs.addr, align 8, !dbg !763
  %call626 = call i64 @__x64_sys_finit_module(ptr noundef %314) #3, !dbg !763
  store i64 %call626, ptr %retval, align 8, !dbg !763
  br label %return, !dbg !763

sw.bb627:                                         ; preds = %entry
  %315 = load ptr, ptr %regs.addr, align 8, !dbg !764
  %call628 = call i64 @__x64_sys_sched_setattr(ptr noundef %315) #3, !dbg !764
  store i64 %call628, ptr %retval, align 8, !dbg !764
  br label %return, !dbg !764

sw.bb629:                                         ; preds = %entry
  %316 = load ptr, ptr %regs.addr, align 8, !dbg !765
  %call630 = call i64 @__x64_sys_sched_getattr(ptr noundef %316) #3, !dbg !765
  store i64 %call630, ptr %retval, align 8, !dbg !765
  br label %return, !dbg !765

sw.bb631:                                         ; preds = %entry
  %317 = load ptr, ptr %regs.addr, align 8, !dbg !766
  %call632 = call i64 @__x64_sys_renameat2(ptr noundef %317) #3, !dbg !766
  store i64 %call632, ptr %retval, align 8, !dbg !766
  br label %return, !dbg !766

sw.bb633:                                         ; preds = %entry
  %318 = load ptr, ptr %regs.addr, align 8, !dbg !767
  %call634 = call i64 @__x64_sys_seccomp(ptr noundef %318) #3, !dbg !767
  store i64 %call634, ptr %retval, align 8, !dbg !767
  br label %return, !dbg !767

sw.bb635:                                         ; preds = %entry
  %319 = load ptr, ptr %regs.addr, align 8, !dbg !768
  %call636 = call i64 @__x64_sys_getrandom(ptr noundef %319) #3, !dbg !768
  store i64 %call636, ptr %retval, align 8, !dbg !768
  br label %return, !dbg !768

sw.bb637:                                         ; preds = %entry
  %320 = load ptr, ptr %regs.addr, align 8, !dbg !769
  %call638 = call i64 @__x64_sys_memfd_create(ptr noundef %320) #3, !dbg !769
  store i64 %call638, ptr %retval, align 8, !dbg !769
  br label %return, !dbg !769

sw.bb639:                                         ; preds = %entry
  %321 = load ptr, ptr %regs.addr, align 8, !dbg !770
  %call640 = call i64 @__x64_sys_kexec_file_load(ptr noundef %321) #3, !dbg !770
  store i64 %call640, ptr %retval, align 8, !dbg !770
  br label %return, !dbg !770

sw.bb641:                                         ; preds = %entry
  %322 = load ptr, ptr %regs.addr, align 8, !dbg !771
  %call642 = call i64 @__x64_sys_bpf(ptr noundef %322) #3, !dbg !771
  store i64 %call642, ptr %retval, align 8, !dbg !771
  br label %return, !dbg !771

sw.bb643:                                         ; preds = %entry
  %323 = load ptr, ptr %regs.addr, align 8, !dbg !772
  %call644 = call i64 @__x64_sys_execveat(ptr noundef %323) #3, !dbg !772
  store i64 %call644, ptr %retval, align 8, !dbg !772
  br label %return, !dbg !772

sw.bb645:                                         ; preds = %entry
  %324 = load ptr, ptr %regs.addr, align 8, !dbg !773
  %call646 = call i64 @__x64_sys_userfaultfd(ptr noundef %324) #3, !dbg !773
  store i64 %call646, ptr %retval, align 8, !dbg !773
  br label %return, !dbg !773

sw.bb647:                                         ; preds = %entry
  %325 = load ptr, ptr %regs.addr, align 8, !dbg !774
  %call648 = call i64 @__x64_sys_membarrier(ptr noundef %325) #3, !dbg !774
  store i64 %call648, ptr %retval, align 8, !dbg !774
  br label %return, !dbg !774

sw.bb649:                                         ; preds = %entry
  %326 = load ptr, ptr %regs.addr, align 8, !dbg !775
  %call650 = call i64 @__x64_sys_mlock2(ptr noundef %326) #3, !dbg !775
  store i64 %call650, ptr %retval, align 8, !dbg !775
  br label %return, !dbg !775

sw.bb651:                                         ; preds = %entry
  %327 = load ptr, ptr %regs.addr, align 8, !dbg !776
  %call652 = call i64 @__x64_sys_copy_file_range(ptr noundef %327) #3, !dbg !776
  store i64 %call652, ptr %retval, align 8, !dbg !776
  br label %return, !dbg !776

sw.bb653:                                         ; preds = %entry
  %328 = load ptr, ptr %regs.addr, align 8, !dbg !777
  %call654 = call i64 @__x64_sys_preadv2(ptr noundef %328) #3, !dbg !777
  store i64 %call654, ptr %retval, align 8, !dbg !777
  br label %return, !dbg !777

sw.bb655:                                         ; preds = %entry
  %329 = load ptr, ptr %regs.addr, align 8, !dbg !778
  %call656 = call i64 @__x64_sys_pwritev2(ptr noundef %329) #3, !dbg !778
  store i64 %call656, ptr %retval, align 8, !dbg !778
  br label %return, !dbg !778

sw.bb657:                                         ; preds = %entry
  %330 = load ptr, ptr %regs.addr, align 8, !dbg !779
  %call658 = call i64 @__x64_sys_pkey_mprotect(ptr noundef %330) #3, !dbg !779
  store i64 %call658, ptr %retval, align 8, !dbg !779
  br label %return, !dbg !779

sw.bb659:                                         ; preds = %entry
  %331 = load ptr, ptr %regs.addr, align 8, !dbg !780
  %call660 = call i64 @__x64_sys_pkey_alloc(ptr noundef %331) #3, !dbg !780
  store i64 %call660, ptr %retval, align 8, !dbg !780
  br label %return, !dbg !780

sw.bb661:                                         ; preds = %entry
  %332 = load ptr, ptr %regs.addr, align 8, !dbg !781
  %call662 = call i64 @__x64_sys_pkey_free(ptr noundef %332) #3, !dbg !781
  store i64 %call662, ptr %retval, align 8, !dbg !781
  br label %return, !dbg !781

sw.bb663:                                         ; preds = %entry
  %333 = load ptr, ptr %regs.addr, align 8, !dbg !782
  %call664 = call i64 @__x64_sys_statx(ptr noundef %333) #3, !dbg !782
  store i64 %call664, ptr %retval, align 8, !dbg !782
  br label %return, !dbg !782

sw.bb665:                                         ; preds = %entry
  %334 = load ptr, ptr %regs.addr, align 8, !dbg !783
  %call666 = call i64 @__x64_sys_io_pgetevents(ptr noundef %334) #3, !dbg !783
  store i64 %call666, ptr %retval, align 8, !dbg !783
  br label %return, !dbg !783

sw.bb667:                                         ; preds = %entry
  %335 = load ptr, ptr %regs.addr, align 8, !dbg !784
  %call668 = call i64 @__x64_sys_rseq(ptr noundef %335) #3, !dbg !784
  store i64 %call668, ptr %retval, align 8, !dbg !784
  br label %return, !dbg !784

sw.bb669:                                         ; preds = %entry
  %336 = load ptr, ptr %regs.addr, align 8, !dbg !785
  %call670 = call i64 @__x64_sys_ni_syscall(ptr noundef %336) #3, !dbg !785
  store i64 %call670, ptr %retval, align 8, !dbg !785
  br label %return, !dbg !785

sw.bb671:                                         ; preds = %entry
  %337 = load ptr, ptr %regs.addr, align 8, !dbg !786
  %call672 = call i64 @__x64_sys_ni_syscall(ptr noundef %337) #3, !dbg !786
  store i64 %call672, ptr %retval, align 8, !dbg !786
  br label %return, !dbg !786

sw.bb673:                                         ; preds = %entry
  %338 = load ptr, ptr %regs.addr, align 8, !dbg !787
  %call674 = call i64 @__x64_sys_ni_syscall(ptr noundef %338) #3, !dbg !787
  store i64 %call674, ptr %retval, align 8, !dbg !787
  br label %return, !dbg !787

sw.bb675:                                         ; preds = %entry
  %339 = load ptr, ptr %regs.addr, align 8, !dbg !788
  %call676 = call i64 @__x64_sys_ni_syscall(ptr noundef %339) #3, !dbg !788
  store i64 %call676, ptr %retval, align 8, !dbg !788
  br label %return, !dbg !788

sw.bb677:                                         ; preds = %entry
  %340 = load ptr, ptr %regs.addr, align 8, !dbg !789
  %call678 = call i64 @__x64_sys_ni_syscall(ptr noundef %340) #3, !dbg !789
  store i64 %call678, ptr %retval, align 8, !dbg !789
  br label %return, !dbg !789

sw.bb679:                                         ; preds = %entry
  %341 = load ptr, ptr %regs.addr, align 8, !dbg !790
  %call680 = call i64 @__x64_sys_ni_syscall(ptr noundef %341) #3, !dbg !790
  store i64 %call680, ptr %retval, align 8, !dbg !790
  br label %return, !dbg !790

sw.bb681:                                         ; preds = %entry
  %342 = load ptr, ptr %regs.addr, align 8, !dbg !791
  %call682 = call i64 @__x64_sys_ni_syscall(ptr noundef %342) #3, !dbg !791
  store i64 %call682, ptr %retval, align 8, !dbg !791
  br label %return, !dbg !791

sw.bb683:                                         ; preds = %entry
  %343 = load ptr, ptr %regs.addr, align 8, !dbg !792
  %call684 = call i64 @__x64_sys_ni_syscall(ptr noundef %343) #3, !dbg !792
  store i64 %call684, ptr %retval, align 8, !dbg !792
  br label %return, !dbg !792

sw.bb685:                                         ; preds = %entry
  %344 = load ptr, ptr %regs.addr, align 8, !dbg !793
  %call686 = call i64 @__x64_sys_ni_syscall(ptr noundef %344) #3, !dbg !793
  store i64 %call686, ptr %retval, align 8, !dbg !793
  br label %return, !dbg !793

sw.bb687:                                         ; preds = %entry
  %345 = load ptr, ptr %regs.addr, align 8, !dbg !794
  %call688 = call i64 @__x64_sys_ni_syscall(ptr noundef %345) #3, !dbg !794
  store i64 %call688, ptr %retval, align 8, !dbg !794
  br label %return, !dbg !794

sw.bb689:                                         ; preds = %entry
  %346 = load ptr, ptr %regs.addr, align 8, !dbg !795
  %call690 = call i64 @__x64_sys_ni_syscall(ptr noundef %346) #3, !dbg !795
  store i64 %call690, ptr %retval, align 8, !dbg !795
  br label %return, !dbg !795

sw.bb691:                                         ; preds = %entry
  %347 = load ptr, ptr %regs.addr, align 8, !dbg !796
  %call692 = call i64 @__x64_sys_ni_syscall(ptr noundef %347) #3, !dbg !796
  store i64 %call692, ptr %retval, align 8, !dbg !796
  br label %return, !dbg !796

sw.bb693:                                         ; preds = %entry
  %348 = load ptr, ptr %regs.addr, align 8, !dbg !797
  %call694 = call i64 @__x64_sys_ni_syscall(ptr noundef %348) #3, !dbg !797
  store i64 %call694, ptr %retval, align 8, !dbg !797
  br label %return, !dbg !797

sw.bb695:                                         ; preds = %entry
  %349 = load ptr, ptr %regs.addr, align 8, !dbg !798
  %call696 = call i64 @__x64_sys_ni_syscall(ptr noundef %349) #3, !dbg !798
  store i64 %call696, ptr %retval, align 8, !dbg !798
  br label %return, !dbg !798

sw.bb697:                                         ; preds = %entry
  %350 = load ptr, ptr %regs.addr, align 8, !dbg !799
  %call698 = call i64 @__x64_sys_ni_syscall(ptr noundef %350) #3, !dbg !799
  store i64 %call698, ptr %retval, align 8, !dbg !799
  br label %return, !dbg !799

sw.bb699:                                         ; preds = %entry
  %351 = load ptr, ptr %regs.addr, align 8, !dbg !800
  %call700 = call i64 @__x64_sys_ni_syscall(ptr noundef %351) #3, !dbg !800
  store i64 %call700, ptr %retval, align 8, !dbg !800
  br label %return, !dbg !800

sw.bb701:                                         ; preds = %entry
  %352 = load ptr, ptr %regs.addr, align 8, !dbg !801
  %call702 = call i64 @__x64_sys_ni_syscall(ptr noundef %352) #3, !dbg !801
  store i64 %call702, ptr %retval, align 8, !dbg !801
  br label %return, !dbg !801

sw.bb703:                                         ; preds = %entry
  %353 = load ptr, ptr %regs.addr, align 8, !dbg !802
  %call704 = call i64 @__x64_sys_ni_syscall(ptr noundef %353) #3, !dbg !802
  store i64 %call704, ptr %retval, align 8, !dbg !802
  br label %return, !dbg !802

sw.bb705:                                         ; preds = %entry
  %354 = load ptr, ptr %regs.addr, align 8, !dbg !803
  %call706 = call i64 @__x64_sys_ni_syscall(ptr noundef %354) #3, !dbg !803
  store i64 %call706, ptr %retval, align 8, !dbg !803
  br label %return, !dbg !803

sw.bb707:                                         ; preds = %entry
  %355 = load ptr, ptr %regs.addr, align 8, !dbg !804
  %call708 = call i64 @__x64_sys_ni_syscall(ptr noundef %355) #3, !dbg !804
  store i64 %call708, ptr %retval, align 8, !dbg !804
  br label %return, !dbg !804

sw.bb709:                                         ; preds = %entry
  %356 = load ptr, ptr %regs.addr, align 8, !dbg !805
  %call710 = call i64 @__x64_sys_ni_syscall(ptr noundef %356) #3, !dbg !805
  store i64 %call710, ptr %retval, align 8, !dbg !805
  br label %return, !dbg !805

sw.bb711:                                         ; preds = %entry
  %357 = load ptr, ptr %regs.addr, align 8, !dbg !806
  %call712 = call i64 @__x64_sys_ni_syscall(ptr noundef %357) #3, !dbg !806
  store i64 %call712, ptr %retval, align 8, !dbg !806
  br label %return, !dbg !806

sw.bb713:                                         ; preds = %entry
  %358 = load ptr, ptr %regs.addr, align 8, !dbg !807
  %call714 = call i64 @__x64_sys_ni_syscall(ptr noundef %358) #3, !dbg !807
  store i64 %call714, ptr %retval, align 8, !dbg !807
  br label %return, !dbg !807

sw.bb715:                                         ; preds = %entry
  %359 = load ptr, ptr %regs.addr, align 8, !dbg !808
  %call716 = call i64 @__x64_sys_ni_syscall(ptr noundef %359) #3, !dbg !808
  store i64 %call716, ptr %retval, align 8, !dbg !808
  br label %return, !dbg !808

sw.bb717:                                         ; preds = %entry
  %360 = load ptr, ptr %regs.addr, align 8, !dbg !809
  %call718 = call i64 @__x64_sys_ni_syscall(ptr noundef %360) #3, !dbg !809
  store i64 %call718, ptr %retval, align 8, !dbg !809
  br label %return, !dbg !809

sw.bb719:                                         ; preds = %entry
  %361 = load ptr, ptr %regs.addr, align 8, !dbg !810
  %call720 = call i64 @__x64_sys_ni_syscall(ptr noundef %361) #3, !dbg !810
  store i64 %call720, ptr %retval, align 8, !dbg !810
  br label %return, !dbg !810

sw.bb721:                                         ; preds = %entry
  %362 = load ptr, ptr %regs.addr, align 8, !dbg !811
  %call722 = call i64 @__x64_sys_ni_syscall(ptr noundef %362) #3, !dbg !811
  store i64 %call722, ptr %retval, align 8, !dbg !811
  br label %return, !dbg !811

sw.bb723:                                         ; preds = %entry
  %363 = load ptr, ptr %regs.addr, align 8, !dbg !812
  %call724 = call i64 @__x64_sys_ni_syscall(ptr noundef %363) #3, !dbg !812
  store i64 %call724, ptr %retval, align 8, !dbg !812
  br label %return, !dbg !812

sw.bb725:                                         ; preds = %entry
  %364 = load ptr, ptr %regs.addr, align 8, !dbg !813
  %call726 = call i64 @__x64_sys_ni_syscall(ptr noundef %364) #3, !dbg !813
  store i64 %call726, ptr %retval, align 8, !dbg !813
  br label %return, !dbg !813

sw.bb727:                                         ; preds = %entry
  %365 = load ptr, ptr %regs.addr, align 8, !dbg !814
  %call728 = call i64 @__x64_sys_ni_syscall(ptr noundef %365) #3, !dbg !814
  store i64 %call728, ptr %retval, align 8, !dbg !814
  br label %return, !dbg !814

sw.bb729:                                         ; preds = %entry
  %366 = load ptr, ptr %regs.addr, align 8, !dbg !815
  %call730 = call i64 @__x64_sys_ni_syscall(ptr noundef %366) #3, !dbg !815
  store i64 %call730, ptr %retval, align 8, !dbg !815
  br label %return, !dbg !815

sw.bb731:                                         ; preds = %entry
  %367 = load ptr, ptr %regs.addr, align 8, !dbg !816
  %call732 = call i64 @__x64_sys_ni_syscall(ptr noundef %367) #3, !dbg !816
  store i64 %call732, ptr %retval, align 8, !dbg !816
  br label %return, !dbg !816

sw.bb733:                                         ; preds = %entry
  %368 = load ptr, ptr %regs.addr, align 8, !dbg !817
  %call734 = call i64 @__x64_sys_ni_syscall(ptr noundef %368) #3, !dbg !817
  store i64 %call734, ptr %retval, align 8, !dbg !817
  br label %return, !dbg !817

sw.bb735:                                         ; preds = %entry
  %369 = load ptr, ptr %regs.addr, align 8, !dbg !818
  %call736 = call i64 @__x64_sys_ni_syscall(ptr noundef %369) #3, !dbg !818
  store i64 %call736, ptr %retval, align 8, !dbg !818
  br label %return, !dbg !818

sw.bb737:                                         ; preds = %entry
  %370 = load ptr, ptr %regs.addr, align 8, !dbg !819
  %call738 = call i64 @__x64_sys_ni_syscall(ptr noundef %370) #3, !dbg !819
  store i64 %call738, ptr %retval, align 8, !dbg !819
  br label %return, !dbg !819

sw.bb739:                                         ; preds = %entry
  %371 = load ptr, ptr %regs.addr, align 8, !dbg !820
  %call740 = call i64 @__x64_sys_ni_syscall(ptr noundef %371) #3, !dbg !820
  store i64 %call740, ptr %retval, align 8, !dbg !820
  br label %return, !dbg !820

sw.bb741:                                         ; preds = %entry
  %372 = load ptr, ptr %regs.addr, align 8, !dbg !821
  %call742 = call i64 @__x64_sys_ni_syscall(ptr noundef %372) #3, !dbg !821
  store i64 %call742, ptr %retval, align 8, !dbg !821
  br label %return, !dbg !821

sw.bb743:                                         ; preds = %entry
  %373 = load ptr, ptr %regs.addr, align 8, !dbg !822
  %call744 = call i64 @__x64_sys_ni_syscall(ptr noundef %373) #3, !dbg !822
  store i64 %call744, ptr %retval, align 8, !dbg !822
  br label %return, !dbg !822

sw.bb745:                                         ; preds = %entry
  %374 = load ptr, ptr %regs.addr, align 8, !dbg !823
  %call746 = call i64 @__x64_sys_ni_syscall(ptr noundef %374) #3, !dbg !823
  store i64 %call746, ptr %retval, align 8, !dbg !823
  br label %return, !dbg !823

sw.bb747:                                         ; preds = %entry
  %375 = load ptr, ptr %regs.addr, align 8, !dbg !824
  %call748 = call i64 @__x64_sys_ni_syscall(ptr noundef %375) #3, !dbg !824
  store i64 %call748, ptr %retval, align 8, !dbg !824
  br label %return, !dbg !824

sw.bb749:                                         ; preds = %entry
  %376 = load ptr, ptr %regs.addr, align 8, !dbg !825
  %call750 = call i64 @__x64_sys_ni_syscall(ptr noundef %376) #3, !dbg !825
  store i64 %call750, ptr %retval, align 8, !dbg !825
  br label %return, !dbg !825

sw.bb751:                                         ; preds = %entry
  %377 = load ptr, ptr %regs.addr, align 8, !dbg !826
  %call752 = call i64 @__x64_sys_ni_syscall(ptr noundef %377) #3, !dbg !826
  store i64 %call752, ptr %retval, align 8, !dbg !826
  br label %return, !dbg !826

sw.bb753:                                         ; preds = %entry
  %378 = load ptr, ptr %regs.addr, align 8, !dbg !827
  %call754 = call i64 @__x64_sys_ni_syscall(ptr noundef %378) #3, !dbg !827
  store i64 %call754, ptr %retval, align 8, !dbg !827
  br label %return, !dbg !827

sw.bb755:                                         ; preds = %entry
  %379 = load ptr, ptr %regs.addr, align 8, !dbg !828
  %call756 = call i64 @__x64_sys_ni_syscall(ptr noundef %379) #3, !dbg !828
  store i64 %call756, ptr %retval, align 8, !dbg !828
  br label %return, !dbg !828

sw.bb757:                                         ; preds = %entry
  %380 = load ptr, ptr %regs.addr, align 8, !dbg !829
  %call758 = call i64 @__x64_sys_ni_syscall(ptr noundef %380) #3, !dbg !829
  store i64 %call758, ptr %retval, align 8, !dbg !829
  br label %return, !dbg !829

sw.bb759:                                         ; preds = %entry
  %381 = load ptr, ptr %regs.addr, align 8, !dbg !830
  %call760 = call i64 @__x64_sys_ni_syscall(ptr noundef %381) #3, !dbg !830
  store i64 %call760, ptr %retval, align 8, !dbg !830
  br label %return, !dbg !830

sw.bb761:                                         ; preds = %entry
  %382 = load ptr, ptr %regs.addr, align 8, !dbg !831
  %call762 = call i64 @__x64_sys_ni_syscall(ptr noundef %382) #3, !dbg !831
  store i64 %call762, ptr %retval, align 8, !dbg !831
  br label %return, !dbg !831

sw.bb763:                                         ; preds = %entry
  %383 = load ptr, ptr %regs.addr, align 8, !dbg !832
  %call764 = call i64 @__x64_sys_ni_syscall(ptr noundef %383) #3, !dbg !832
  store i64 %call764, ptr %retval, align 8, !dbg !832
  br label %return, !dbg !832

sw.bb765:                                         ; preds = %entry
  %384 = load ptr, ptr %regs.addr, align 8, !dbg !833
  %call766 = call i64 @__x64_sys_ni_syscall(ptr noundef %384) #3, !dbg !833
  store i64 %call766, ptr %retval, align 8, !dbg !833
  br label %return, !dbg !833

sw.bb767:                                         ; preds = %entry
  %385 = load ptr, ptr %regs.addr, align 8, !dbg !834
  %call768 = call i64 @__x64_sys_ni_syscall(ptr noundef %385) #3, !dbg !834
  store i64 %call768, ptr %retval, align 8, !dbg !834
  br label %return, !dbg !834

sw.bb769:                                         ; preds = %entry
  %386 = load ptr, ptr %regs.addr, align 8, !dbg !835
  %call770 = call i64 @__x64_sys_ni_syscall(ptr noundef %386) #3, !dbg !835
  store i64 %call770, ptr %retval, align 8, !dbg !835
  br label %return, !dbg !835

sw.bb771:                                         ; preds = %entry
  %387 = load ptr, ptr %regs.addr, align 8, !dbg !836
  %call772 = call i64 @__x64_sys_ni_syscall(ptr noundef %387) #3, !dbg !836
  store i64 %call772, ptr %retval, align 8, !dbg !836
  br label %return, !dbg !836

sw.bb773:                                         ; preds = %entry
  %388 = load ptr, ptr %regs.addr, align 8, !dbg !837
  %call774 = call i64 @__x64_sys_ni_syscall(ptr noundef %388) #3, !dbg !837
  store i64 %call774, ptr %retval, align 8, !dbg !837
  br label %return, !dbg !837

sw.bb775:                                         ; preds = %entry
  %389 = load ptr, ptr %regs.addr, align 8, !dbg !838
  %call776 = call i64 @__x64_sys_ni_syscall(ptr noundef %389) #3, !dbg !838
  store i64 %call776, ptr %retval, align 8, !dbg !838
  br label %return, !dbg !838

sw.bb777:                                         ; preds = %entry
  %390 = load ptr, ptr %regs.addr, align 8, !dbg !839
  %call778 = call i64 @__x64_sys_ni_syscall(ptr noundef %390) #3, !dbg !839
  store i64 %call778, ptr %retval, align 8, !dbg !839
  br label %return, !dbg !839

sw.bb779:                                         ; preds = %entry
  %391 = load ptr, ptr %regs.addr, align 8, !dbg !840
  %call780 = call i64 @__x64_sys_ni_syscall(ptr noundef %391) #3, !dbg !840
  store i64 %call780, ptr %retval, align 8, !dbg !840
  br label %return, !dbg !840

sw.bb781:                                         ; preds = %entry
  %392 = load ptr, ptr %regs.addr, align 8, !dbg !841
  %call782 = call i64 @__x64_sys_ni_syscall(ptr noundef %392) #3, !dbg !841
  store i64 %call782, ptr %retval, align 8, !dbg !841
  br label %return, !dbg !841

sw.bb783:                                         ; preds = %entry
  %393 = load ptr, ptr %regs.addr, align 8, !dbg !842
  %call784 = call i64 @__x64_sys_ni_syscall(ptr noundef %393) #3, !dbg !842
  store i64 %call784, ptr %retval, align 8, !dbg !842
  br label %return, !dbg !842

sw.bb785:                                         ; preds = %entry
  %394 = load ptr, ptr %regs.addr, align 8, !dbg !843
  %call786 = call i64 @__x64_sys_ni_syscall(ptr noundef %394) #3, !dbg !843
  store i64 %call786, ptr %retval, align 8, !dbg !843
  br label %return, !dbg !843

sw.bb787:                                         ; preds = %entry
  %395 = load ptr, ptr %regs.addr, align 8, !dbg !844
  %call788 = call i64 @__x64_sys_ni_syscall(ptr noundef %395) #3, !dbg !844
  store i64 %call788, ptr %retval, align 8, !dbg !844
  br label %return, !dbg !844

sw.bb789:                                         ; preds = %entry
  %396 = load ptr, ptr %regs.addr, align 8, !dbg !845
  %call790 = call i64 @__x64_sys_ni_syscall(ptr noundef %396) #3, !dbg !845
  store i64 %call790, ptr %retval, align 8, !dbg !845
  br label %return, !dbg !845

sw.bb791:                                         ; preds = %entry
  %397 = load ptr, ptr %regs.addr, align 8, !dbg !846
  %call792 = call i64 @__x64_sys_ni_syscall(ptr noundef %397) #3, !dbg !846
  store i64 %call792, ptr %retval, align 8, !dbg !846
  br label %return, !dbg !846

sw.bb793:                                         ; preds = %entry
  %398 = load ptr, ptr %regs.addr, align 8, !dbg !847
  %call794 = call i64 @__x64_sys_ni_syscall(ptr noundef %398) #3, !dbg !847
  store i64 %call794, ptr %retval, align 8, !dbg !847
  br label %return, !dbg !847

sw.bb795:                                         ; preds = %entry
  %399 = load ptr, ptr %regs.addr, align 8, !dbg !848
  %call796 = call i64 @__x64_sys_ni_syscall(ptr noundef %399) #3, !dbg !848
  store i64 %call796, ptr %retval, align 8, !dbg !848
  br label %return, !dbg !848

sw.bb797:                                         ; preds = %entry
  %400 = load ptr, ptr %regs.addr, align 8, !dbg !849
  %call798 = call i64 @__x64_sys_ni_syscall(ptr noundef %400) #3, !dbg !849
  store i64 %call798, ptr %retval, align 8, !dbg !849
  br label %return, !dbg !849

sw.bb799:                                         ; preds = %entry
  %401 = load ptr, ptr %regs.addr, align 8, !dbg !850
  %call800 = call i64 @__x64_sys_ni_syscall(ptr noundef %401) #3, !dbg !850
  store i64 %call800, ptr %retval, align 8, !dbg !850
  br label %return, !dbg !850

sw.bb801:                                         ; preds = %entry
  %402 = load ptr, ptr %regs.addr, align 8, !dbg !851
  %call802 = call i64 @__x64_sys_ni_syscall(ptr noundef %402) #3, !dbg !851
  store i64 %call802, ptr %retval, align 8, !dbg !851
  br label %return, !dbg !851

sw.bb803:                                         ; preds = %entry
  %403 = load ptr, ptr %regs.addr, align 8, !dbg !852
  %call804 = call i64 @__x64_sys_ni_syscall(ptr noundef %403) #3, !dbg !852
  store i64 %call804, ptr %retval, align 8, !dbg !852
  br label %return, !dbg !852

sw.bb805:                                         ; preds = %entry
  %404 = load ptr, ptr %regs.addr, align 8, !dbg !853
  %call806 = call i64 @__x64_sys_ni_syscall(ptr noundef %404) #3, !dbg !853
  store i64 %call806, ptr %retval, align 8, !dbg !853
  br label %return, !dbg !853

sw.bb807:                                         ; preds = %entry
  %405 = load ptr, ptr %regs.addr, align 8, !dbg !854
  %call808 = call i64 @__x64_sys_ni_syscall(ptr noundef %405) #3, !dbg !854
  store i64 %call808, ptr %retval, align 8, !dbg !854
  br label %return, !dbg !854

sw.bb809:                                         ; preds = %entry
  %406 = load ptr, ptr %regs.addr, align 8, !dbg !855
  %call810 = call i64 @__x64_sys_ni_syscall(ptr noundef %406) #3, !dbg !855
  store i64 %call810, ptr %retval, align 8, !dbg !855
  br label %return, !dbg !855

sw.bb811:                                         ; preds = %entry
  %407 = load ptr, ptr %regs.addr, align 8, !dbg !856
  %call812 = call i64 @__x64_sys_ni_syscall(ptr noundef %407) #3, !dbg !856
  store i64 %call812, ptr %retval, align 8, !dbg !856
  br label %return, !dbg !856

sw.bb813:                                         ; preds = %entry
  %408 = load ptr, ptr %regs.addr, align 8, !dbg !857
  %call814 = call i64 @__x64_sys_ni_syscall(ptr noundef %408) #3, !dbg !857
  store i64 %call814, ptr %retval, align 8, !dbg !857
  br label %return, !dbg !857

sw.bb815:                                         ; preds = %entry
  %409 = load ptr, ptr %regs.addr, align 8, !dbg !858
  %call816 = call i64 @__x64_sys_ni_syscall(ptr noundef %409) #3, !dbg !858
  store i64 %call816, ptr %retval, align 8, !dbg !858
  br label %return, !dbg !858

sw.bb817:                                         ; preds = %entry
  %410 = load ptr, ptr %regs.addr, align 8, !dbg !859
  %call818 = call i64 @__x64_sys_ni_syscall(ptr noundef %410) #3, !dbg !859
  store i64 %call818, ptr %retval, align 8, !dbg !859
  br label %return, !dbg !859

sw.bb819:                                         ; preds = %entry
  %411 = load ptr, ptr %regs.addr, align 8, !dbg !860
  %call820 = call i64 @__x64_sys_ni_syscall(ptr noundef %411) #3, !dbg !860
  store i64 %call820, ptr %retval, align 8, !dbg !860
  br label %return, !dbg !860

sw.bb821:                                         ; preds = %entry
  %412 = load ptr, ptr %regs.addr, align 8, !dbg !861
  %call822 = call i64 @__x64_sys_ni_syscall(ptr noundef %412) #3, !dbg !861
  store i64 %call822, ptr %retval, align 8, !dbg !861
  br label %return, !dbg !861

sw.bb823:                                         ; preds = %entry
  %413 = load ptr, ptr %regs.addr, align 8, !dbg !862
  %call824 = call i64 @__x64_sys_ni_syscall(ptr noundef %413) #3, !dbg !862
  store i64 %call824, ptr %retval, align 8, !dbg !862
  br label %return, !dbg !862

sw.bb825:                                         ; preds = %entry
  %414 = load ptr, ptr %regs.addr, align 8, !dbg !863
  %call826 = call i64 @__x64_sys_ni_syscall(ptr noundef %414) #3, !dbg !863
  store i64 %call826, ptr %retval, align 8, !dbg !863
  br label %return, !dbg !863

sw.bb827:                                         ; preds = %entry
  %415 = load ptr, ptr %regs.addr, align 8, !dbg !864
  %call828 = call i64 @__x64_sys_ni_syscall(ptr noundef %415) #3, !dbg !864
  store i64 %call828, ptr %retval, align 8, !dbg !864
  br label %return, !dbg !864

sw.bb829:                                         ; preds = %entry
  %416 = load ptr, ptr %regs.addr, align 8, !dbg !865
  %call830 = call i64 @__x64_sys_ni_syscall(ptr noundef %416) #3, !dbg !865
  store i64 %call830, ptr %retval, align 8, !dbg !865
  br label %return, !dbg !865

sw.bb831:                                         ; preds = %entry
  %417 = load ptr, ptr %regs.addr, align 8, !dbg !866
  %call832 = call i64 @__x64_sys_ni_syscall(ptr noundef %417) #3, !dbg !866
  store i64 %call832, ptr %retval, align 8, !dbg !866
  br label %return, !dbg !866

sw.bb833:                                         ; preds = %entry
  %418 = load ptr, ptr %regs.addr, align 8, !dbg !867
  %call834 = call i64 @__x64_sys_ni_syscall(ptr noundef %418) #3, !dbg !867
  store i64 %call834, ptr %retval, align 8, !dbg !867
  br label %return, !dbg !867

sw.bb835:                                         ; preds = %entry
  %419 = load ptr, ptr %regs.addr, align 8, !dbg !868
  %call836 = call i64 @__x64_sys_ni_syscall(ptr noundef %419) #3, !dbg !868
  store i64 %call836, ptr %retval, align 8, !dbg !868
  br label %return, !dbg !868

sw.bb837:                                         ; preds = %entry
  %420 = load ptr, ptr %regs.addr, align 8, !dbg !869
  %call838 = call i64 @__x64_sys_ni_syscall(ptr noundef %420) #3, !dbg !869
  store i64 %call838, ptr %retval, align 8, !dbg !869
  br label %return, !dbg !869

sw.bb839:                                         ; preds = %entry
  %421 = load ptr, ptr %regs.addr, align 8, !dbg !870
  %call840 = call i64 @__x64_sys_ni_syscall(ptr noundef %421) #3, !dbg !870
  store i64 %call840, ptr %retval, align 8, !dbg !870
  br label %return, !dbg !870

sw.bb841:                                         ; preds = %entry
  %422 = load ptr, ptr %regs.addr, align 8, !dbg !871
  %call842 = call i64 @__x64_sys_ni_syscall(ptr noundef %422) #3, !dbg !871
  store i64 %call842, ptr %retval, align 8, !dbg !871
  br label %return, !dbg !871

sw.bb843:                                         ; preds = %entry
  %423 = load ptr, ptr %regs.addr, align 8, !dbg !872
  %call844 = call i64 @__x64_sys_ni_syscall(ptr noundef %423) #3, !dbg !872
  store i64 %call844, ptr %retval, align 8, !dbg !872
  br label %return, !dbg !872

sw.bb845:                                         ; preds = %entry
  %424 = load ptr, ptr %regs.addr, align 8, !dbg !873
  %call846 = call i64 @__x64_sys_ni_syscall(ptr noundef %424) #3, !dbg !873
  store i64 %call846, ptr %retval, align 8, !dbg !873
  br label %return, !dbg !873

sw.bb847:                                         ; preds = %entry
  %425 = load ptr, ptr %regs.addr, align 8, !dbg !874
  %call848 = call i64 @__x64_sys_pidfd_send_signal(ptr noundef %425) #3, !dbg !874
  store i64 %call848, ptr %retval, align 8, !dbg !874
  br label %return, !dbg !874

sw.bb849:                                         ; preds = %entry
  %426 = load ptr, ptr %regs.addr, align 8, !dbg !875
  %call850 = call i64 @__x64_sys_io_uring_setup(ptr noundef %426) #3, !dbg !875
  store i64 %call850, ptr %retval, align 8, !dbg !875
  br label %return, !dbg !875

sw.bb851:                                         ; preds = %entry
  %427 = load ptr, ptr %regs.addr, align 8, !dbg !876
  %call852 = call i64 @__x64_sys_io_uring_enter(ptr noundef %427) #3, !dbg !876
  store i64 %call852, ptr %retval, align 8, !dbg !876
  br label %return, !dbg !876

sw.bb853:                                         ; preds = %entry
  %428 = load ptr, ptr %regs.addr, align 8, !dbg !877
  %call854 = call i64 @__x64_sys_io_uring_register(ptr noundef %428) #3, !dbg !877
  store i64 %call854, ptr %retval, align 8, !dbg !877
  br label %return, !dbg !877

sw.bb855:                                         ; preds = %entry
  %429 = load ptr, ptr %regs.addr, align 8, !dbg !878
  %call856 = call i64 @__x64_sys_open_tree(ptr noundef %429) #3, !dbg !878
  store i64 %call856, ptr %retval, align 8, !dbg !878
  br label %return, !dbg !878

sw.bb857:                                         ; preds = %entry
  %430 = load ptr, ptr %regs.addr, align 8, !dbg !879
  %call858 = call i64 @__x64_sys_move_mount(ptr noundef %430) #3, !dbg !879
  store i64 %call858, ptr %retval, align 8, !dbg !879
  br label %return, !dbg !879

sw.bb859:                                         ; preds = %entry
  %431 = load ptr, ptr %regs.addr, align 8, !dbg !880
  %call860 = call i64 @__x64_sys_fsopen(ptr noundef %431) #3, !dbg !880
  store i64 %call860, ptr %retval, align 8, !dbg !880
  br label %return, !dbg !880

sw.bb861:                                         ; preds = %entry
  %432 = load ptr, ptr %regs.addr, align 8, !dbg !881
  %call862 = call i64 @__x64_sys_fsconfig(ptr noundef %432) #3, !dbg !881
  store i64 %call862, ptr %retval, align 8, !dbg !881
  br label %return, !dbg !881

sw.bb863:                                         ; preds = %entry
  %433 = load ptr, ptr %regs.addr, align 8, !dbg !882
  %call864 = call i64 @__x64_sys_fsmount(ptr noundef %433) #3, !dbg !882
  store i64 %call864, ptr %retval, align 8, !dbg !882
  br label %return, !dbg !882

sw.bb865:                                         ; preds = %entry
  %434 = load ptr, ptr %regs.addr, align 8, !dbg !883
  %call866 = call i64 @__x64_sys_fspick(ptr noundef %434) #3, !dbg !883
  store i64 %call866, ptr %retval, align 8, !dbg !883
  br label %return, !dbg !883

sw.bb867:                                         ; preds = %entry
  %435 = load ptr, ptr %regs.addr, align 8, !dbg !884
  %call868 = call i64 @__x64_sys_pidfd_open(ptr noundef %435) #3, !dbg !884
  store i64 %call868, ptr %retval, align 8, !dbg !884
  br label %return, !dbg !884

sw.bb869:                                         ; preds = %entry
  %436 = load ptr, ptr %regs.addr, align 8, !dbg !885
  %call870 = call i64 @__x64_sys_clone3(ptr noundef %436) #3, !dbg !885
  store i64 %call870, ptr %retval, align 8, !dbg !885
  br label %return, !dbg !885

sw.bb871:                                         ; preds = %entry
  %437 = load ptr, ptr %regs.addr, align 8, !dbg !886
  %call872 = call i64 @__x64_sys_close_range(ptr noundef %437) #3, !dbg !886
  store i64 %call872, ptr %retval, align 8, !dbg !886
  br label %return, !dbg !886

sw.bb873:                                         ; preds = %entry
  %438 = load ptr, ptr %regs.addr, align 8, !dbg !887
  %call874 = call i64 @__x64_sys_openat2(ptr noundef %438) #3, !dbg !887
  store i64 %call874, ptr %retval, align 8, !dbg !887
  br label %return, !dbg !887

sw.bb875:                                         ; preds = %entry
  %439 = load ptr, ptr %regs.addr, align 8, !dbg !888
  %call876 = call i64 @__x64_sys_pidfd_getfd(ptr noundef %439) #3, !dbg !888
  store i64 %call876, ptr %retval, align 8, !dbg !888
  br label %return, !dbg !888

sw.bb877:                                         ; preds = %entry
  %440 = load ptr, ptr %regs.addr, align 8, !dbg !889
  %call878 = call i64 @__x64_sys_faccessat2(ptr noundef %440) #3, !dbg !889
  store i64 %call878, ptr %retval, align 8, !dbg !889
  br label %return, !dbg !889

sw.bb879:                                         ; preds = %entry
  %441 = load ptr, ptr %regs.addr, align 8, !dbg !890
  %call880 = call i64 @__x64_sys_process_madvise(ptr noundef %441) #3, !dbg !890
  store i64 %call880, ptr %retval, align 8, !dbg !890
  br label %return, !dbg !890

sw.bb881:                                         ; preds = %entry
  %442 = load ptr, ptr %regs.addr, align 8, !dbg !891
  %call882 = call i64 @__x64_sys_epoll_pwait2(ptr noundef %442) #3, !dbg !891
  store i64 %call882, ptr %retval, align 8, !dbg !891
  br label %return, !dbg !891

sw.bb883:                                         ; preds = %entry
  %443 = load ptr, ptr %regs.addr, align 8, !dbg !892
  %call884 = call i64 @__x64_sys_mount_setattr(ptr noundef %443) #3, !dbg !892
  store i64 %call884, ptr %retval, align 8, !dbg !892
  br label %return, !dbg !892

sw.bb885:                                         ; preds = %entry
  %444 = load ptr, ptr %regs.addr, align 8, !dbg !893
  %call886 = call i64 @__x64_sys_quotactl_fd(ptr noundef %444) #3, !dbg !893
  store i64 %call886, ptr %retval, align 8, !dbg !893
  br label %return, !dbg !893

sw.bb887:                                         ; preds = %entry
  %445 = load ptr, ptr %regs.addr, align 8, !dbg !894
  %call888 = call i64 @__x64_sys_landlock_create_ruleset(ptr noundef %445) #3, !dbg !894
  store i64 %call888, ptr %retval, align 8, !dbg !894
  br label %return, !dbg !894

sw.bb889:                                         ; preds = %entry
  %446 = load ptr, ptr %regs.addr, align 8, !dbg !895
  %call890 = call i64 @__x64_sys_landlock_add_rule(ptr noundef %446) #3, !dbg !895
  store i64 %call890, ptr %retval, align 8, !dbg !895
  br label %return, !dbg !895

sw.bb891:                                         ; preds = %entry
  %447 = load ptr, ptr %regs.addr, align 8, !dbg !896
  %call892 = call i64 @__x64_sys_landlock_restrict_self(ptr noundef %447) #3, !dbg !896
  store i64 %call892, ptr %retval, align 8, !dbg !896
  br label %return, !dbg !896

sw.bb893:                                         ; preds = %entry
  %448 = load ptr, ptr %regs.addr, align 8, !dbg !897
  %call894 = call i64 @__x64_sys_memfd_secret(ptr noundef %448) #3, !dbg !897
  store i64 %call894, ptr %retval, align 8, !dbg !897
  br label %return, !dbg !897

sw.bb895:                                         ; preds = %entry
  %449 = load ptr, ptr %regs.addr, align 8, !dbg !898
  %call896 = call i64 @__x64_sys_process_mrelease(ptr noundef %449) #3, !dbg !898
  store i64 %call896, ptr %retval, align 8, !dbg !898
  br label %return, !dbg !898

sw.bb897:                                         ; preds = %entry
  %450 = load ptr, ptr %regs.addr, align 8, !dbg !899
  %call898 = call i64 @__x64_sys_futex_waitv(ptr noundef %450) #3, !dbg !899
  store i64 %call898, ptr %retval, align 8, !dbg !899
  br label %return, !dbg !899

sw.bb899:                                         ; preds = %entry
  %451 = load ptr, ptr %regs.addr, align 8, !dbg !900
  %call900 = call i64 @__x64_sys_set_mempolicy_home_node(ptr noundef %451) #3, !dbg !900
  store i64 %call900, ptr %retval, align 8, !dbg !900
  br label %return, !dbg !900

sw.bb901:                                         ; preds = %entry
  %452 = load ptr, ptr %regs.addr, align 8, !dbg !901
  %call902 = call i64 @__x64_sys_cachestat(ptr noundef %452) #3, !dbg !901
  store i64 %call902, ptr %retval, align 8, !dbg !901
  br label %return, !dbg !901

sw.bb903:                                         ; preds = %entry
  %453 = load ptr, ptr %regs.addr, align 8, !dbg !902
  %call904 = call i64 @__x64_sys_fchmodat2(ptr noundef %453) #3, !dbg !902
  store i64 %call904, ptr %retval, align 8, !dbg !902
  br label %return, !dbg !902

sw.bb905:                                         ; preds = %entry
  %454 = load ptr, ptr %regs.addr, align 8, !dbg !903
  %call906 = call i64 @__x64_sys_map_shadow_stack(ptr noundef %454) #3, !dbg !903
  store i64 %call906, ptr %retval, align 8, !dbg !903
  br label %return, !dbg !903

sw.default:                                       ; preds = %entry
  %455 = load ptr, ptr %regs.addr, align 8, !dbg !904
  %call907 = call i64 @__x64_sys_ni_syscall(ptr noundef %455) #3, !dbg !906
  store i64 %call907, ptr %retval, align 8, !dbg !907
  br label %return, !dbg !907

return:                                           ; preds = %sw.default, %sw.bb905, %sw.bb903, %sw.bb901, %sw.bb899, %sw.bb897, %sw.bb895, %sw.bb893, %sw.bb891, %sw.bb889, %sw.bb887, %sw.bb885, %sw.bb883, %sw.bb881, %sw.bb879, %sw.bb877, %sw.bb875, %sw.bb873, %sw.bb871, %sw.bb869, %sw.bb867, %sw.bb865, %sw.bb863, %sw.bb861, %sw.bb859, %sw.bb857, %sw.bb855, %sw.bb853, %sw.bb851, %sw.bb849, %sw.bb847, %sw.bb845, %sw.bb843, %sw.bb841, %sw.bb839, %sw.bb837, %sw.bb835, %sw.bb833, %sw.bb831, %sw.bb829, %sw.bb827, %sw.bb825, %sw.bb823, %sw.bb821, %sw.bb819, %sw.bb817, %sw.bb815, %sw.bb813, %sw.bb811, %sw.bb809, %sw.bb807, %sw.bb805, %sw.bb803, %sw.bb801, %sw.bb799, %sw.bb797, %sw.bb795, %sw.bb793, %sw.bb791, %sw.bb789, %sw.bb787, %sw.bb785, %sw.bb783, %sw.bb781, %sw.bb779, %sw.bb777, %sw.bb775, %sw.bb773, %sw.bb771, %sw.bb769, %sw.bb767, %sw.bb765, %sw.bb763, %sw.bb761, %sw.bb759, %sw.bb757, %sw.bb755, %sw.bb753, %sw.bb751, %sw.bb749, %sw.bb747, %sw.bb745, %sw.bb743, %sw.bb741, %sw.bb739, %sw.bb737, %sw.bb735, %sw.bb733, %sw.bb731, %sw.bb729, %sw.bb727, %sw.bb725, %sw.bb723, %sw.bb721, %sw.bb719, %sw.bb717, %sw.bb715, %sw.bb713, %sw.bb711, %sw.bb709, %sw.bb707, %sw.bb705, %sw.bb703, %sw.bb701, %sw.bb699, %sw.bb697, %sw.bb695, %sw.bb693, %sw.bb691, %sw.bb689, %sw.bb687, %sw.bb685, %sw.bb683, %sw.bb681, %sw.bb679, %sw.bb677, %sw.bb675, %sw.bb673, %sw.bb671, %sw.bb669, %sw.bb667, %sw.bb665, %sw.bb663, %sw.bb661, %sw.bb659, %sw.bb657, %sw.bb655, %sw.bb653, %sw.bb651, %sw.bb649, %sw.bb647, %sw.bb645, %sw.bb643, %sw.bb641, %sw.bb639, %sw.bb637, %sw.bb635, %sw.bb633, %sw.bb631, %sw.bb629, %sw.bb627, %sw.bb625, %sw.bb623, %sw.bb621, %sw.bb619, %sw.bb617, %sw.bb615, %sw.bb613, %sw.bb611, %sw.bb609, %sw.bb607, %sw.bb605, %sw.bb603, %sw.bb601, %sw.bb599, %sw.bb597, %sw.bb595, %sw.bb593, %sw.bb591, %sw.bb589, %sw.bb587, %sw.bb585, %sw.bb583, %sw.bb581, %sw.bb579, %sw.bb577, %sw.bb575, %sw.bb573, %sw.bb571, %sw.bb569, %sw.bb567, %sw.bb565, %sw.bb563, %sw.bb561, %sw.bb559, %sw.bb557, %sw.bb555, %sw.bb553, %sw.bb551, %sw.bb549, %sw.bb547, %sw.bb545, %sw.bb543, %sw.bb541, %sw.bb539, %sw.bb537, %sw.bb535, %sw.bb533, %sw.bb531, %sw.bb529, %sw.bb527, %sw.bb525, %sw.bb523, %sw.bb521, %sw.bb519, %sw.bb517, %sw.bb515, %sw.bb513, %sw.bb511, %sw.bb509, %sw.bb507, %sw.bb505, %sw.bb503, %sw.bb501, %sw.bb499, %sw.bb497, %sw.bb495, %sw.bb493, %sw.bb491, %sw.bb489, %sw.bb487, %sw.bb485, %sw.bb483, %sw.bb481, %sw.bb479, %sw.bb477, %sw.bb475, %sw.bb473, %sw.bb471, %sw.bb469, %sw.bb467, %sw.bb465, %sw.bb463, %sw.bb461, %sw.bb459, %sw.bb457, %sw.bb455, %sw.bb453, %sw.bb451, %sw.bb449, %sw.bb447, %sw.bb445, %sw.bb443, %sw.bb441, %sw.bb439, %sw.bb437, %sw.bb435, %sw.bb433, %sw.bb431, %sw.bb429, %sw.bb427, %sw.bb425, %sw.bb423, %sw.bb421, %sw.bb419, %sw.bb417, %sw.bb415, %sw.bb413, %sw.bb411, %sw.bb409, %sw.bb407, %sw.bb405, %sw.bb403, %sw.bb401, %sw.bb399, %sw.bb397, %sw.bb395, %sw.bb393, %sw.bb391, %sw.bb389, %sw.bb387, %sw.bb385, %sw.bb383, %sw.bb381, %sw.bb379, %sw.bb377, %sw.bb375, %sw.bb373, %sw.bb371, %sw.bb369, %sw.bb367, %sw.bb365, %sw.bb363, %sw.bb361, %sw.bb359, %sw.bb357, %sw.bb355, %sw.bb353, %sw.bb351, %sw.bb349, %sw.bb347, %sw.bb345, %sw.bb343, %sw.bb341, %sw.bb339, %sw.bb337, %sw.bb335, %sw.bb333, %sw.bb331, %sw.bb329, %sw.bb327, %sw.bb325, %sw.bb323, %sw.bb321, %sw.bb319, %sw.bb317, %sw.bb315, %sw.bb313, %sw.bb311, %sw.bb309, %sw.bb307, %sw.bb305, %sw.bb303, %sw.bb301, %sw.bb299, %sw.bb297, %sw.bb295, %sw.bb293, %sw.bb291, %sw.bb289, %sw.bb287, %sw.bb285, %sw.bb283, %sw.bb281, %sw.bb279, %sw.bb277, %sw.bb275, %sw.bb273, %sw.bb271, %sw.bb269, %sw.bb267, %sw.bb265, %sw.bb263, %sw.bb261, %sw.bb259, %sw.bb257, %sw.bb255, %sw.bb253, %sw.bb251, %sw.bb249, %sw.bb247, %sw.bb245, %sw.bb243, %sw.bb241, %sw.bb239, %sw.bb237, %sw.bb235, %sw.bb233, %sw.bb231, %sw.bb229, %sw.bb227, %sw.bb225, %sw.bb223, %sw.bb221, %sw.bb219, %sw.bb217, %sw.bb215, %sw.bb213, %sw.bb211, %sw.bb209, %sw.bb207, %sw.bb205, %sw.bb203, %sw.bb201, %sw.bb199, %sw.bb197, %sw.bb195, %sw.bb193, %sw.bb191, %sw.bb189, %sw.bb187, %sw.bb185, %sw.bb183, %sw.bb181, %sw.bb179, %sw.bb177, %sw.bb175, %sw.bb173, %sw.bb171, %sw.bb169, %sw.bb167, %sw.bb165, %sw.bb163, %sw.bb161, %sw.bb159, %sw.bb157, %sw.bb155, %sw.bb153, %sw.bb151, %sw.bb149, %sw.bb147, %sw.bb145, %sw.bb143, %sw.bb141, %sw.bb139, %sw.bb137, %sw.bb135, %sw.bb133, %sw.bb131, %sw.bb129, %sw.bb127, %sw.bb125, %sw.bb123, %sw.bb121, %sw.bb119, %sw.bb117, %sw.bb115, %sw.bb113, %sw.bb111, %sw.bb109, %sw.bb107, %sw.bb105, %sw.bb103, %sw.bb101, %sw.bb99, %sw.bb97, %sw.bb95, %sw.bb93, %sw.bb91, %sw.bb89, %sw.bb87, %sw.bb85, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb71, %sw.bb69, %sw.bb67, %sw.bb65, %sw.bb63, %sw.bb61, %sw.bb59, %sw.bb57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %456 = load i64, ptr %retval, align 8, !dbg !908
  ret i64 %456, !dbg !908
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sys_call_table", scope: !2, file: !3, line: 20, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/entry/.syscall_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/entry/syscall_64\22 -D KBUILD_BASENAME=\22syscall_64\22 -D KBUILD_MODNAME=\22syscall_64\22 -D __KBUILD_MODNAME=kmod_syscall_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/entry/syscall_64.ll arch/x86/entry/syscall_64.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/entry/syscall_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f5a42a456cf0c743d5ec1e9d6ed0290a")
!4 = !{!0}
!5 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 29056, elements: !75)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_call_ptr_t", file: !8, line: 20, baseType: !9)
!8 = !DIFile(filename: "./arch/x86/include/asm/syscall.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "757a8fbb630f22ac4219812d1d4dd322")
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !16, line: 103, size: 1344, elements: !17)
!16 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!17 = !{!18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !55, !56, !57}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !15, file: !16, line: 109, baseType: !19, size: 64)
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !15, file: !16, line: 110, baseType: !19, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !15, file: !16, line: 111, baseType: !19, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !15, file: !16, line: 112, baseType: !19, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !15, file: !16, line: 113, baseType: !19, size: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !15, file: !16, line: 114, baseType: !19, size: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !15, file: !16, line: 117, baseType: !19, size: 64, offset: 384)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !15, file: !16, line: 118, baseType: !19, size: 64, offset: 448)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !15, file: !16, line: 119, baseType: !19, size: 64, offset: 512)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !15, file: !16, line: 120, baseType: !19, size: 64, offset: 576)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !15, file: !16, line: 121, baseType: !19, size: 64, offset: 640)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !15, file: !16, line: 122, baseType: !19, size: 64, offset: 704)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !15, file: !16, line: 123, baseType: !19, size: 64, offset: 768)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !15, file: !16, line: 124, baseType: !19, size: 64, offset: 832)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !15, file: !16, line: 125, baseType: !19, size: 64, offset: 896)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !15, file: !16, line: 139, baseType: !19, size: 64, offset: 960)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !15, file: !16, line: 142, baseType: !19, size: 64, offset: 1024)
!36 = !DIDerivedType(tag: DW_TAG_member, scope: !15, file: !16, line: 144, baseType: !37, size: 64, offset: 1088)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !15, file: !16, line: 144, size: 64, elements: !38)
!38 = !{!39, !45, !49}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !37, file: !16, line: 146, baseType: !40, size: 16)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !41, line: 19, baseType: !42)
!41 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !43, line: 24, baseType: !44)
!43 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !37, file: !16, line: 148, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !41, line: 23, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !43, line: 31, baseType: !48)
!48 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !37, file: !16, line: 150, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !16, line: 59, size: 64, elements: !51)
!51 = !{!52, !53, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !50, file: !16, line: 61, baseType: !46, size: 16, flags: DIFlagBitField, extraData: i64 0)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !50, file: !16, line: 63, baseType: !46, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !50, file: !16, line: 65, baseType: !46, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !15, file: !16, line: 153, baseType: !19, size: 64, offset: 1152)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !15, file: !16, line: 154, baseType: !19, size: 64, offset: 1216)
!57 = !DIDerivedType(tag: DW_TAG_member, scope: !15, file: !16, line: 156, baseType: !58, size: 64, offset: 1280)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !15, file: !16, line: 156, size: 64, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !58, file: !16, line: 158, baseType: !40, size: 16)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !58, file: !16, line: 160, baseType: !46, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !58, file: !16, line: 162, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !16, line: 69, size: 64, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !63, file: !16, line: 71, baseType: !46, size: 16, flags: DIFlagBitField, extraData: i64 0)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !63, file: !16, line: 73, baseType: !46, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !63, file: !16, line: 75, baseType: !46, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !63, file: !16, line: 77, baseType: !46, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !63, file: !16, line: 80, baseType: !46, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !63, file: !16, line: 83, baseType: !46, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !63, file: !16, line: 86, baseType: !46, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !63, file: !16, line: 88, baseType: !46, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !63, file: !16, line: 93, baseType: !46, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !63, file: !16, line: 100, baseType: !46, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!75 = !{!76}
!76 = !DISubrange(count: 454)
!77 = !{i32 7, !"Dwarf Version", i32 5}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 8, !"cf-protection-branch", i32 1}
!81 = !{i32 4, !"function_return_thunk_extern", i32 1}
!82 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!83 = !{i32 1, !"Code Model", i32 2}
!84 = !{i32 1, !"override-stack-alignment", i32 8}
!85 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!86 = !DISubprogram(name: "__x64_sys_read", scope: !87, file: !87, line: 1, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!87 = !DIFile(filename: "./arch/x86/include/generated/asm/syscalls_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7860a273998f2c6177d5c11dcd4f94bf")
!88 = !DISubprogram(name: "__x64_sys_write", scope: !87, file: !87, line: 2, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!89 = !DISubprogram(name: "__x64_sys_open", scope: !87, file: !87, line: 3, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!90 = !DISubprogram(name: "__x64_sys_close", scope: !87, file: !87, line: 4, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!91 = !DISubprogram(name: "__x64_sys_newstat", scope: !87, file: !87, line: 5, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!92 = !DISubprogram(name: "__x64_sys_newfstat", scope: !87, file: !87, line: 6, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!93 = !DISubprogram(name: "__x64_sys_newlstat", scope: !87, file: !87, line: 7, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!94 = !DISubprogram(name: "__x64_sys_poll", scope: !87, file: !87, line: 8, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!95 = !DISubprogram(name: "__x64_sys_lseek", scope: !87, file: !87, line: 9, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!96 = !DISubprogram(name: "__x64_sys_mmap", scope: !87, file: !87, line: 10, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DISubprogram(name: "__x64_sys_mprotect", scope: !87, file: !87, line: 11, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!98 = !DISubprogram(name: "__x64_sys_munmap", scope: !87, file: !87, line: 12, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!99 = !DISubprogram(name: "__x64_sys_brk", scope: !87, file: !87, line: 13, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!100 = !DISubprogram(name: "__x64_sys_rt_sigaction", scope: !87, file: !87, line: 14, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!101 = !DISubprogram(name: "__x64_sys_rt_sigprocmask", scope: !87, file: !87, line: 15, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!102 = !DISubprogram(name: "__x64_sys_rt_sigreturn", scope: !87, file: !87, line: 16, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DISubprogram(name: "__x64_sys_ioctl", scope: !87, file: !87, line: 17, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!104 = !DISubprogram(name: "__x64_sys_pread64", scope: !87, file: !87, line: 18, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!105 = !DISubprogram(name: "__x64_sys_pwrite64", scope: !87, file: !87, line: 19, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!106 = !DISubprogram(name: "__x64_sys_readv", scope: !87, file: !87, line: 20, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!107 = !DISubprogram(name: "__x64_sys_writev", scope: !87, file: !87, line: 21, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!108 = !DISubprogram(name: "__x64_sys_access", scope: !87, file: !87, line: 22, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DISubprogram(name: "__x64_sys_pipe", scope: !87, file: !87, line: 23, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubprogram(name: "__x64_sys_select", scope: !87, file: !87, line: 24, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!111 = !DISubprogram(name: "__x64_sys_sched_yield", scope: !87, file: !87, line: 25, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!112 = !DISubprogram(name: "__x64_sys_mremap", scope: !87, file: !87, line: 26, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DISubprogram(name: "__x64_sys_msync", scope: !87, file: !87, line: 27, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!114 = !DISubprogram(name: "__x64_sys_mincore", scope: !87, file: !87, line: 28, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubprogram(name: "__x64_sys_madvise", scope: !87, file: !87, line: 29, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!116 = !DISubprogram(name: "__x64_sys_shmget", scope: !87, file: !87, line: 30, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubprogram(name: "__x64_sys_shmat", scope: !87, file: !87, line: 31, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !DISubprogram(name: "__x64_sys_shmctl", scope: !87, file: !87, line: 32, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubprogram(name: "__x64_sys_dup", scope: !87, file: !87, line: 33, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!120 = !DISubprogram(name: "__x64_sys_dup2", scope: !87, file: !87, line: 34, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DISubprogram(name: "__x64_sys_pause", scope: !87, file: !87, line: 35, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!122 = !DISubprogram(name: "__x64_sys_nanosleep", scope: !87, file: !87, line: 36, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DISubprogram(name: "__x64_sys_getitimer", scope: !87, file: !87, line: 37, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!124 = !DISubprogram(name: "__x64_sys_alarm", scope: !87, file: !87, line: 38, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!125 = !DISubprogram(name: "__x64_sys_setitimer", scope: !87, file: !87, line: 39, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!126 = !DISubprogram(name: "__x64_sys_getpid", scope: !87, file: !87, line: 40, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!127 = !DISubprogram(name: "__x64_sys_sendfile64", scope: !87, file: !87, line: 41, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!128 = !DISubprogram(name: "__x64_sys_socket", scope: !87, file: !87, line: 42, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DISubprogram(name: "__x64_sys_connect", scope: !87, file: !87, line: 43, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!130 = !DISubprogram(name: "__x64_sys_accept", scope: !87, file: !87, line: 44, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!131 = !DISubprogram(name: "__x64_sys_sendto", scope: !87, file: !87, line: 45, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!132 = !DISubprogram(name: "__x64_sys_recvfrom", scope: !87, file: !87, line: 46, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DISubprogram(name: "__x64_sys_sendmsg", scope: !87, file: !87, line: 47, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DISubprogram(name: "__x64_sys_recvmsg", scope: !87, file: !87, line: 48, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DISubprogram(name: "__x64_sys_shutdown", scope: !87, file: !87, line: 49, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DISubprogram(name: "__x64_sys_bind", scope: !87, file: !87, line: 50, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!137 = !DISubprogram(name: "__x64_sys_listen", scope: !87, file: !87, line: 51, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!138 = !DISubprogram(name: "__x64_sys_getsockname", scope: !87, file: !87, line: 52, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DISubprogram(name: "__x64_sys_getpeername", scope: !87, file: !87, line: 53, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!140 = !DISubprogram(name: "__x64_sys_socketpair", scope: !87, file: !87, line: 54, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!141 = !DISubprogram(name: "__x64_sys_setsockopt", scope: !87, file: !87, line: 55, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!142 = !DISubprogram(name: "__x64_sys_getsockopt", scope: !87, file: !87, line: 56, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DISubprogram(name: "__x64_sys_clone", scope: !87, file: !87, line: 57, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!144 = !DISubprogram(name: "__x64_sys_fork", scope: !87, file: !87, line: 58, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!145 = !DISubprogram(name: "__x64_sys_vfork", scope: !87, file: !87, line: 59, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!146 = !DISubprogram(name: "__x64_sys_execve", scope: !87, file: !87, line: 60, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!147 = !DISubprogram(name: "__x64_sys_exit", scope: !87, file: !87, line: 61, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubprogram(name: "__x64_sys_wait4", scope: !87, file: !87, line: 62, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!149 = !DISubprogram(name: "__x64_sys_kill", scope: !87, file: !87, line: 63, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!150 = !DISubprogram(name: "__x64_sys_newuname", scope: !87, file: !87, line: 64, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DISubprogram(name: "__x64_sys_semget", scope: !87, file: !87, line: 65, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DISubprogram(name: "__x64_sys_semop", scope: !87, file: !87, line: 66, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!153 = !DISubprogram(name: "__x64_sys_semctl", scope: !87, file: !87, line: 67, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!154 = !DISubprogram(name: "__x64_sys_shmdt", scope: !87, file: !87, line: 68, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!155 = !DISubprogram(name: "__x64_sys_msgget", scope: !87, file: !87, line: 69, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = !DISubprogram(name: "__x64_sys_msgsnd", scope: !87, file: !87, line: 70, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!157 = !DISubprogram(name: "__x64_sys_msgrcv", scope: !87, file: !87, line: 71, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DISubprogram(name: "__x64_sys_msgctl", scope: !87, file: !87, line: 72, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!159 = !DISubprogram(name: "__x64_sys_fcntl", scope: !87, file: !87, line: 73, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubprogram(name: "__x64_sys_flock", scope: !87, file: !87, line: 74, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DISubprogram(name: "__x64_sys_fsync", scope: !87, file: !87, line: 75, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!162 = !DISubprogram(name: "__x64_sys_fdatasync", scope: !87, file: !87, line: 76, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DISubprogram(name: "__x64_sys_truncate", scope: !87, file: !87, line: 77, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!164 = !DISubprogram(name: "__x64_sys_ftruncate", scope: !87, file: !87, line: 78, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DISubprogram(name: "__x64_sys_getdents", scope: !87, file: !87, line: 79, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DISubprogram(name: "__x64_sys_getcwd", scope: !87, file: !87, line: 80, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!167 = !DISubprogram(name: "__x64_sys_chdir", scope: !87, file: !87, line: 81, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!168 = !DISubprogram(name: "__x64_sys_fchdir", scope: !87, file: !87, line: 82, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DISubprogram(name: "__x64_sys_rename", scope: !87, file: !87, line: 83, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DISubprogram(name: "__x64_sys_mkdir", scope: !87, file: !87, line: 84, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DISubprogram(name: "__x64_sys_rmdir", scope: !87, file: !87, line: 85, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!172 = !DISubprogram(name: "__x64_sys_creat", scope: !87, file: !87, line: 86, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!173 = !DISubprogram(name: "__x64_sys_link", scope: !87, file: !87, line: 87, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubprogram(name: "__x64_sys_unlink", scope: !87, file: !87, line: 88, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DISubprogram(name: "__x64_sys_symlink", scope: !87, file: !87, line: 89, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DISubprogram(name: "__x64_sys_readlink", scope: !87, file: !87, line: 90, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!177 = !DISubprogram(name: "__x64_sys_chmod", scope: !87, file: !87, line: 91, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubprogram(name: "__x64_sys_fchmod", scope: !87, file: !87, line: 92, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DISubprogram(name: "__x64_sys_chown", scope: !87, file: !87, line: 93, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!180 = !DISubprogram(name: "__x64_sys_fchown", scope: !87, file: !87, line: 94, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DISubprogram(name: "__x64_sys_lchown", scope: !87, file: !87, line: 95, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DISubprogram(name: "__x64_sys_umask", scope: !87, file: !87, line: 96, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!183 = !DISubprogram(name: "__x64_sys_gettimeofday", scope: !87, file: !87, line: 97, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!184 = !DISubprogram(name: "__x64_sys_getrlimit", scope: !87, file: !87, line: 98, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubprogram(name: "__x64_sys_getrusage", scope: !87, file: !87, line: 99, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubprogram(name: "__x64_sys_sysinfo", scope: !87, file: !87, line: 100, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = !DISubprogram(name: "__x64_sys_times", scope: !87, file: !87, line: 101, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DISubprogram(name: "__x64_sys_ptrace", scope: !87, file: !87, line: 102, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubprogram(name: "__x64_sys_getuid", scope: !87, file: !87, line: 103, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !DISubprogram(name: "__x64_sys_syslog", scope: !87, file: !87, line: 104, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!191 = !DISubprogram(name: "__x64_sys_getgid", scope: !87, file: !87, line: 105, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!192 = !DISubprogram(name: "__x64_sys_setuid", scope: !87, file: !87, line: 106, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DISubprogram(name: "__x64_sys_setgid", scope: !87, file: !87, line: 107, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!194 = !DISubprogram(name: "__x64_sys_geteuid", scope: !87, file: !87, line: 108, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DISubprogram(name: "__x64_sys_getegid", scope: !87, file: !87, line: 109, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!196 = !DISubprogram(name: "__x64_sys_setpgid", scope: !87, file: !87, line: 110, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!197 = !DISubprogram(name: "__x64_sys_getppid", scope: !87, file: !87, line: 111, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!198 = !DISubprogram(name: "__x64_sys_getpgrp", scope: !87, file: !87, line: 112, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DISubprogram(name: "__x64_sys_setsid", scope: !87, file: !87, line: 113, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubprogram(name: "__x64_sys_setreuid", scope: !87, file: !87, line: 114, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!201 = !DISubprogram(name: "__x64_sys_setregid", scope: !87, file: !87, line: 115, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!202 = !DISubprogram(name: "__x64_sys_getgroups", scope: !87, file: !87, line: 116, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!203 = !DISubprogram(name: "__x64_sys_setgroups", scope: !87, file: !87, line: 117, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!204 = !DISubprogram(name: "__x64_sys_setresuid", scope: !87, file: !87, line: 118, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!205 = !DISubprogram(name: "__x64_sys_getresuid", scope: !87, file: !87, line: 119, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubprogram(name: "__x64_sys_setresgid", scope: !87, file: !87, line: 120, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!207 = !DISubprogram(name: "__x64_sys_getresgid", scope: !87, file: !87, line: 121, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!208 = !DISubprogram(name: "__x64_sys_getpgid", scope: !87, file: !87, line: 122, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!209 = !DISubprogram(name: "__x64_sys_setfsuid", scope: !87, file: !87, line: 123, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = !DISubprogram(name: "__x64_sys_setfsgid", scope: !87, file: !87, line: 124, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!211 = !DISubprogram(name: "__x64_sys_getsid", scope: !87, file: !87, line: 125, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DISubprogram(name: "__x64_sys_capget", scope: !87, file: !87, line: 126, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!213 = !DISubprogram(name: "__x64_sys_capset", scope: !87, file: !87, line: 127, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DISubprogram(name: "__x64_sys_rt_sigpending", scope: !87, file: !87, line: 128, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DISubprogram(name: "__x64_sys_rt_sigtimedwait", scope: !87, file: !87, line: 129, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DISubprogram(name: "__x64_sys_rt_sigqueueinfo", scope: !87, file: !87, line: 130, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DISubprogram(name: "__x64_sys_rt_sigsuspend", scope: !87, file: !87, line: 131, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubprogram(name: "__x64_sys_sigaltstack", scope: !87, file: !87, line: 132, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = !DISubprogram(name: "__x64_sys_utime", scope: !87, file: !87, line: 133, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubprogram(name: "__x64_sys_mknod", scope: !87, file: !87, line: 134, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubprogram(name: "__x64_sys_ni_syscall", scope: !87, file: !87, line: 424, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DISubprogram(name: "__x64_sys_personality", scope: !87, file: !87, line: 136, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = !DISubprogram(name: "__x64_sys_ustat", scope: !87, file: !87, line: 137, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!224 = !DISubprogram(name: "__x64_sys_statfs", scope: !87, file: !87, line: 138, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DISubprogram(name: "__x64_sys_fstatfs", scope: !87, file: !87, line: 139, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DISubprogram(name: "__x64_sys_sysfs", scope: !87, file: !87, line: 140, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!227 = !DISubprogram(name: "__x64_sys_getpriority", scope: !87, file: !87, line: 141, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubprogram(name: "__x64_sys_setpriority", scope: !87, file: !87, line: 142, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DISubprogram(name: "__x64_sys_sched_setparam", scope: !87, file: !87, line: 143, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubprogram(name: "__x64_sys_sched_getparam", scope: !87, file: !87, line: 144, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DISubprogram(name: "__x64_sys_sched_setscheduler", scope: !87, file: !87, line: 145, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubprogram(name: "__x64_sys_sched_getscheduler", scope: !87, file: !87, line: 146, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!233 = !DISubprogram(name: "__x64_sys_sched_get_priority_max", scope: !87, file: !87, line: 147, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubprogram(name: "__x64_sys_sched_get_priority_min", scope: !87, file: !87, line: 148, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DISubprogram(name: "__x64_sys_sched_rr_get_interval", scope: !87, file: !87, line: 149, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DISubprogram(name: "__x64_sys_mlock", scope: !87, file: !87, line: 150, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!237 = !DISubprogram(name: "__x64_sys_munlock", scope: !87, file: !87, line: 151, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubprogram(name: "__x64_sys_mlockall", scope: !87, file: !87, line: 152, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DISubprogram(name: "__x64_sys_munlockall", scope: !87, file: !87, line: 153, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DISubprogram(name: "__x64_sys_vhangup", scope: !87, file: !87, line: 154, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubprogram(name: "__x64_sys_modify_ldt", scope: !87, file: !87, line: 155, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = !DISubprogram(name: "__x64_sys_pivot_root", scope: !87, file: !87, line: 156, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DISubprogram(name: "__x64_sys_prctl", scope: !87, file: !87, line: 158, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubprogram(name: "__x64_sys_arch_prctl", scope: !87, file: !87, line: 159, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubprogram(name: "__x64_sys_adjtimex", scope: !87, file: !87, line: 160, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubprogram(name: "__x64_sys_setrlimit", scope: !87, file: !87, line: 161, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DISubprogram(name: "__x64_sys_chroot", scope: !87, file: !87, line: 162, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DISubprogram(name: "__x64_sys_sync", scope: !87, file: !87, line: 163, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DISubprogram(name: "__x64_sys_acct", scope: !87, file: !87, line: 164, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DISubprogram(name: "__x64_sys_settimeofday", scope: !87, file: !87, line: 165, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!251 = !DISubprogram(name: "__x64_sys_mount", scope: !87, file: !87, line: 166, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!252 = !DISubprogram(name: "__x64_sys_umount", scope: !87, file: !87, line: 167, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubprogram(name: "__x64_sys_swapon", scope: !87, file: !87, line: 168, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubprogram(name: "__x64_sys_swapoff", scope: !87, file: !87, line: 169, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubprogram(name: "__x64_sys_reboot", scope: !87, file: !87, line: 170, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DISubprogram(name: "__x64_sys_sethostname", scope: !87, file: !87, line: 171, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubprogram(name: "__x64_sys_setdomainname", scope: !87, file: !87, line: 172, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DISubprogram(name: "__x64_sys_iopl", scope: !87, file: !87, line: 173, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubprogram(name: "__x64_sys_ioperm", scope: !87, file: !87, line: 174, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!260 = !DISubprogram(name: "__x64_sys_init_module", scope: !87, file: !87, line: 176, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubprogram(name: "__x64_sys_delete_module", scope: !87, file: !87, line: 177, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubprogram(name: "__x64_sys_quotactl", scope: !87, file: !87, line: 180, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DISubprogram(name: "__x64_sys_gettid", scope: !87, file: !87, line: 187, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubprogram(name: "__x64_sys_readahead", scope: !87, file: !87, line: 188, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!265 = !DISubprogram(name: "__x64_sys_setxattr", scope: !87, file: !87, line: 189, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubprogram(name: "__x64_sys_lsetxattr", scope: !87, file: !87, line: 190, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubprogram(name: "__x64_sys_fsetxattr", scope: !87, file: !87, line: 191, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!268 = !DISubprogram(name: "__x64_sys_getxattr", scope: !87, file: !87, line: 192, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!269 = !DISubprogram(name: "__x64_sys_lgetxattr", scope: !87, file: !87, line: 193, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!270 = !DISubprogram(name: "__x64_sys_fgetxattr", scope: !87, file: !87, line: 194, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubprogram(name: "__x64_sys_listxattr", scope: !87, file: !87, line: 195, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!272 = !DISubprogram(name: "__x64_sys_llistxattr", scope: !87, file: !87, line: 196, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubprogram(name: "__x64_sys_flistxattr", scope: !87, file: !87, line: 197, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DISubprogram(name: "__x64_sys_removexattr", scope: !87, file: !87, line: 198, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!275 = !DISubprogram(name: "__x64_sys_lremovexattr", scope: !87, file: !87, line: 199, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DISubprogram(name: "__x64_sys_fremovexattr", scope: !87, file: !87, line: 200, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubprogram(name: "__x64_sys_tkill", scope: !87, file: !87, line: 201, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DISubprogram(name: "__x64_sys_time", scope: !87, file: !87, line: 202, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DISubprogram(name: "__x64_sys_futex", scope: !87, file: !87, line: 203, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = !DISubprogram(name: "__x64_sys_sched_setaffinity", scope: !87, file: !87, line: 204, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DISubprogram(name: "__x64_sys_sched_getaffinity", scope: !87, file: !87, line: 205, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DISubprogram(name: "__x64_sys_io_setup", scope: !87, file: !87, line: 207, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!283 = !DISubprogram(name: "__x64_sys_io_destroy", scope: !87, file: !87, line: 208, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubprogram(name: "__x64_sys_io_getevents", scope: !87, file: !87, line: 209, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!285 = !DISubprogram(name: "__x64_sys_io_submit", scope: !87, file: !87, line: 210, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DISubprogram(name: "__x64_sys_io_cancel", scope: !87, file: !87, line: 211, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DISubprogram(name: "__x64_sys_lookup_dcookie", scope: !87, file: !87, line: 213, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !DISubprogram(name: "__x64_sys_epoll_create", scope: !87, file: !87, line: 214, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DISubprogram(name: "__x64_sys_remap_file_pages", scope: !87, file: !87, line: 217, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!290 = !DISubprogram(name: "__x64_sys_getdents64", scope: !87, file: !87, line: 218, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!291 = !DISubprogram(name: "__x64_sys_set_tid_address", scope: !87, file: !87, line: 219, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubprogram(name: "__x64_sys_restart_syscall", scope: !87, file: !87, line: 220, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DISubprogram(name: "__x64_sys_semtimedop", scope: !87, file: !87, line: 221, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = !DISubprogram(name: "__x64_sys_fadvise64", scope: !87, file: !87, line: 222, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DISubprogram(name: "__x64_sys_timer_create", scope: !87, file: !87, line: 223, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DISubprogram(name: "__x64_sys_timer_settime", scope: !87, file: !87, line: 224, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DISubprogram(name: "__x64_sys_timer_gettime", scope: !87, file: !87, line: 225, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DISubprogram(name: "__x64_sys_timer_getoverrun", scope: !87, file: !87, line: 226, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DISubprogram(name: "__x64_sys_timer_delete", scope: !87, file: !87, line: 227, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DISubprogram(name: "__x64_sys_clock_settime", scope: !87, file: !87, line: 228, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubprogram(name: "__x64_sys_clock_gettime", scope: !87, file: !87, line: 229, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DISubprogram(name: "__x64_sys_clock_getres", scope: !87, file: !87, line: 230, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DISubprogram(name: "__x64_sys_clock_nanosleep", scope: !87, file: !87, line: 231, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubprogram(name: "__x64_sys_exit_group", scope: !87, file: !87, line: 232, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DISubprogram(name: "__x64_sys_epoll_wait", scope: !87, file: !87, line: 233, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DISubprogram(name: "__x64_sys_epoll_ctl", scope: !87, file: !87, line: 234, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubprogram(name: "__x64_sys_tgkill", scope: !87, file: !87, line: 235, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DISubprogram(name: "__x64_sys_utimes", scope: !87, file: !87, line: 236, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!309 = !DISubprogram(name: "__x64_sys_mbind", scope: !87, file: !87, line: 238, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DISubprogram(name: "__x64_sys_set_mempolicy", scope: !87, file: !87, line: 239, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DISubprogram(name: "__x64_sys_get_mempolicy", scope: !87, file: !87, line: 240, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DISubprogram(name: "__x64_sys_mq_open", scope: !87, file: !87, line: 241, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!313 = !DISubprogram(name: "__x64_sys_mq_unlink", scope: !87, file: !87, line: 242, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubprogram(name: "__x64_sys_mq_timedsend", scope: !87, file: !87, line: 243, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!315 = !DISubprogram(name: "__x64_sys_mq_timedreceive", scope: !87, file: !87, line: 244, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DISubprogram(name: "__x64_sys_mq_notify", scope: !87, file: !87, line: 245, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!317 = !DISubprogram(name: "__x64_sys_mq_getsetattr", scope: !87, file: !87, line: 246, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubprogram(name: "__x64_sys_kexec_load", scope: !87, file: !87, line: 247, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubprogram(name: "__x64_sys_waitid", scope: !87, file: !87, line: 248, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DISubprogram(name: "__x64_sys_add_key", scope: !87, file: !87, line: 249, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DISubprogram(name: "__x64_sys_request_key", scope: !87, file: !87, line: 250, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubprogram(name: "__x64_sys_keyctl", scope: !87, file: !87, line: 251, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = !DISubprogram(name: "__x64_sys_ioprio_set", scope: !87, file: !87, line: 252, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DISubprogram(name: "__x64_sys_ioprio_get", scope: !87, file: !87, line: 253, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!325 = !DISubprogram(name: "__x64_sys_inotify_init", scope: !87, file: !87, line: 254, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DISubprogram(name: "__x64_sys_inotify_add_watch", scope: !87, file: !87, line: 255, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DISubprogram(name: "__x64_sys_inotify_rm_watch", scope: !87, file: !87, line: 256, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DISubprogram(name: "__x64_sys_migrate_pages", scope: !87, file: !87, line: 257, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DISubprogram(name: "__x64_sys_openat", scope: !87, file: !87, line: 258, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = !DISubprogram(name: "__x64_sys_mkdirat", scope: !87, file: !87, line: 259, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!331 = !DISubprogram(name: "__x64_sys_mknodat", scope: !87, file: !87, line: 260, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!332 = !DISubprogram(name: "__x64_sys_fchownat", scope: !87, file: !87, line: 261, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DISubprogram(name: "__x64_sys_futimesat", scope: !87, file: !87, line: 262, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DISubprogram(name: "__x64_sys_newfstatat", scope: !87, file: !87, line: 263, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!335 = !DISubprogram(name: "__x64_sys_unlinkat", scope: !87, file: !87, line: 264, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DISubprogram(name: "__x64_sys_renameat", scope: !87, file: !87, line: 265, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubprogram(name: "__x64_sys_linkat", scope: !87, file: !87, line: 266, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = !DISubprogram(name: "__x64_sys_symlinkat", scope: !87, file: !87, line: 267, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!339 = !DISubprogram(name: "__x64_sys_readlinkat", scope: !87, file: !87, line: 268, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DISubprogram(name: "__x64_sys_fchmodat", scope: !87, file: !87, line: 269, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = !DISubprogram(name: "__x64_sys_faccessat", scope: !87, file: !87, line: 270, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DISubprogram(name: "__x64_sys_pselect6", scope: !87, file: !87, line: 271, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = !DISubprogram(name: "__x64_sys_ppoll", scope: !87, file: !87, line: 272, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DISubprogram(name: "__x64_sys_unshare", scope: !87, file: !87, line: 273, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DISubprogram(name: "__x64_sys_set_robust_list", scope: !87, file: !87, line: 274, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!346 = !DISubprogram(name: "__x64_sys_get_robust_list", scope: !87, file: !87, line: 275, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DISubprogram(name: "__x64_sys_splice", scope: !87, file: !87, line: 276, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DISubprogram(name: "__x64_sys_tee", scope: !87, file: !87, line: 277, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!349 = !DISubprogram(name: "__x64_sys_sync_file_range", scope: !87, file: !87, line: 278, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DISubprogram(name: "__x64_sys_vmsplice", scope: !87, file: !87, line: 279, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DISubprogram(name: "__x64_sys_move_pages", scope: !87, file: !87, line: 280, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DISubprogram(name: "__x64_sys_utimensat", scope: !87, file: !87, line: 281, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!353 = !DISubprogram(name: "__x64_sys_epoll_pwait", scope: !87, file: !87, line: 282, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DISubprogram(name: "__x64_sys_signalfd", scope: !87, file: !87, line: 283, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubprogram(name: "__x64_sys_timerfd_create", scope: !87, file: !87, line: 284, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DISubprogram(name: "__x64_sys_eventfd", scope: !87, file: !87, line: 285, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubprogram(name: "__x64_sys_fallocate", scope: !87, file: !87, line: 286, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubprogram(name: "__x64_sys_timerfd_settime", scope: !87, file: !87, line: 287, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DISubprogram(name: "__x64_sys_timerfd_gettime", scope: !87, file: !87, line: 288, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DISubprogram(name: "__x64_sys_accept4", scope: !87, file: !87, line: 289, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = !DISubprogram(name: "__x64_sys_signalfd4", scope: !87, file: !87, line: 290, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DISubprogram(name: "__x64_sys_eventfd2", scope: !87, file: !87, line: 291, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DISubprogram(name: "__x64_sys_epoll_create1", scope: !87, file: !87, line: 292, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!364 = !DISubprogram(name: "__x64_sys_dup3", scope: !87, file: !87, line: 293, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!365 = !DISubprogram(name: "__x64_sys_pipe2", scope: !87, file: !87, line: 294, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = !DISubprogram(name: "__x64_sys_inotify_init1", scope: !87, file: !87, line: 295, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DISubprogram(name: "__x64_sys_preadv", scope: !87, file: !87, line: 296, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!368 = !DISubprogram(name: "__x64_sys_pwritev", scope: !87, file: !87, line: 297, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!369 = !DISubprogram(name: "__x64_sys_rt_tgsigqueueinfo", scope: !87, file: !87, line: 298, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DISubprogram(name: "__x64_sys_perf_event_open", scope: !87, file: !87, line: 299, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!371 = !DISubprogram(name: "__x64_sys_recvmmsg", scope: !87, file: !87, line: 300, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!372 = !DISubprogram(name: "__x64_sys_fanotify_init", scope: !87, file: !87, line: 301, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DISubprogram(name: "__x64_sys_fanotify_mark", scope: !87, file: !87, line: 302, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!374 = !DISubprogram(name: "__x64_sys_prlimit64", scope: !87, file: !87, line: 303, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DISubprogram(name: "__x64_sys_name_to_handle_at", scope: !87, file: !87, line: 304, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DISubprogram(name: "__x64_sys_open_by_handle_at", scope: !87, file: !87, line: 305, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DISubprogram(name: "__x64_sys_clock_adjtime", scope: !87, file: !87, line: 306, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DISubprogram(name: "__x64_sys_syncfs", scope: !87, file: !87, line: 307, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!379 = !DISubprogram(name: "__x64_sys_sendmmsg", scope: !87, file: !87, line: 308, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!380 = !DISubprogram(name: "__x64_sys_setns", scope: !87, file: !87, line: 309, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!381 = !DISubprogram(name: "__x64_sys_getcpu", scope: !87, file: !87, line: 310, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DISubprogram(name: "__x64_sys_process_vm_readv", scope: !87, file: !87, line: 311, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DISubprogram(name: "__x64_sys_process_vm_writev", scope: !87, file: !87, line: 312, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!384 = !DISubprogram(name: "__x64_sys_kcmp", scope: !87, file: !87, line: 313, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DISubprogram(name: "__x64_sys_finit_module", scope: !87, file: !87, line: 314, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!386 = !DISubprogram(name: "__x64_sys_sched_setattr", scope: !87, file: !87, line: 315, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!387 = !DISubprogram(name: "__x64_sys_sched_getattr", scope: !87, file: !87, line: 316, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!388 = !DISubprogram(name: "__x64_sys_renameat2", scope: !87, file: !87, line: 317, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!389 = !DISubprogram(name: "__x64_sys_seccomp", scope: !87, file: !87, line: 318, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DISubprogram(name: "__x64_sys_getrandom", scope: !87, file: !87, line: 319, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!391 = !DISubprogram(name: "__x64_sys_memfd_create", scope: !87, file: !87, line: 320, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!392 = !DISubprogram(name: "__x64_sys_kexec_file_load", scope: !87, file: !87, line: 321, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubprogram(name: "__x64_sys_bpf", scope: !87, file: !87, line: 322, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DISubprogram(name: "__x64_sys_execveat", scope: !87, file: !87, line: 323, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!395 = !DISubprogram(name: "__x64_sys_userfaultfd", scope: !87, file: !87, line: 324, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!396 = !DISubprogram(name: "__x64_sys_membarrier", scope: !87, file: !87, line: 325, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DISubprogram(name: "__x64_sys_mlock2", scope: !87, file: !87, line: 326, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!398 = !DISubprogram(name: "__x64_sys_copy_file_range", scope: !87, file: !87, line: 327, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!399 = !DISubprogram(name: "__x64_sys_preadv2", scope: !87, file: !87, line: 328, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!400 = !DISubprogram(name: "__x64_sys_pwritev2", scope: !87, file: !87, line: 329, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!401 = !DISubprogram(name: "__x64_sys_pkey_mprotect", scope: !87, file: !87, line: 330, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!402 = !DISubprogram(name: "__x64_sys_pkey_alloc", scope: !87, file: !87, line: 331, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!403 = !DISubprogram(name: "__x64_sys_pkey_free", scope: !87, file: !87, line: 332, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!404 = !DISubprogram(name: "__x64_sys_statx", scope: !87, file: !87, line: 333, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!405 = !DISubprogram(name: "__x64_sys_io_pgetevents", scope: !87, file: !87, line: 334, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DISubprogram(name: "__x64_sys_rseq", scope: !87, file: !87, line: 335, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!407 = !DISubprogram(name: "__x64_sys_pidfd_send_signal", scope: !87, file: !87, line: 425, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!408 = !DISubprogram(name: "__x64_sys_io_uring_setup", scope: !87, file: !87, line: 426, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!409 = !DISubprogram(name: "__x64_sys_io_uring_enter", scope: !87, file: !87, line: 427, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!410 = !DISubprogram(name: "__x64_sys_io_uring_register", scope: !87, file: !87, line: 428, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!411 = !DISubprogram(name: "__x64_sys_open_tree", scope: !87, file: !87, line: 429, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DISubprogram(name: "__x64_sys_move_mount", scope: !87, file: !87, line: 430, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DISubprogram(name: "__x64_sys_fsopen", scope: !87, file: !87, line: 431, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!414 = !DISubprogram(name: "__x64_sys_fsconfig", scope: !87, file: !87, line: 432, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!415 = !DISubprogram(name: "__x64_sys_fsmount", scope: !87, file: !87, line: 433, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!416 = !DISubprogram(name: "__x64_sys_fspick", scope: !87, file: !87, line: 434, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!417 = !DISubprogram(name: "__x64_sys_pidfd_open", scope: !87, file: !87, line: 435, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!418 = !DISubprogram(name: "__x64_sys_clone3", scope: !87, file: !87, line: 436, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = !DISubprogram(name: "__x64_sys_close_range", scope: !87, file: !87, line: 437, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!420 = !DISubprogram(name: "__x64_sys_openat2", scope: !87, file: !87, line: 438, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!421 = !DISubprogram(name: "__x64_sys_pidfd_getfd", scope: !87, file: !87, line: 439, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!422 = !DISubprogram(name: "__x64_sys_faccessat2", scope: !87, file: !87, line: 440, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!423 = !DISubprogram(name: "__x64_sys_process_madvise", scope: !87, file: !87, line: 441, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!424 = !DISubprogram(name: "__x64_sys_epoll_pwait2", scope: !87, file: !87, line: 442, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!425 = !DISubprogram(name: "__x64_sys_mount_setattr", scope: !87, file: !87, line: 443, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DISubprogram(name: "__x64_sys_quotactl_fd", scope: !87, file: !87, line: 444, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = !DISubprogram(name: "__x64_sys_landlock_create_ruleset", scope: !87, file: !87, line: 445, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!428 = !DISubprogram(name: "__x64_sys_landlock_add_rule", scope: !87, file: !87, line: 446, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!429 = !DISubprogram(name: "__x64_sys_landlock_restrict_self", scope: !87, file: !87, line: 447, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DISubprogram(name: "__x64_sys_memfd_secret", scope: !87, file: !87, line: 448, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!431 = !DISubprogram(name: "__x64_sys_process_mrelease", scope: !87, file: !87, line: 449, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DISubprogram(name: "__x64_sys_futex_waitv", scope: !87, file: !87, line: 450, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!433 = !DISubprogram(name: "__x64_sys_set_mempolicy_home_node", scope: !87, file: !87, line: 451, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DISubprogram(name: "__x64_sys_cachestat", scope: !87, file: !87, line: 452, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!435 = !DISubprogram(name: "__x64_sys_fchmodat2", scope: !87, file: !87, line: 453, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DISubprogram(name: "__x64_sys_map_shadow_stack", scope: !87, file: !87, line: 454, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!437 = distinct !DISubprogram(name: "x64_sys_call", scope: !3, file: !3, line: 27, type: !438, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !441)
!438 = !DISubroutineType(types: !439)
!439 = !{!12, !13, !440}
!440 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!441 = !{!442, !443}
!442 = !DILocalVariable(name: "regs", arg: 1, scope: !437, file: !3, line: 27, type: !13)
!443 = !DILocalVariable(name: "nr", arg: 2, scope: !437, file: !3, line: 27, type: !440)
!444 = !DILocation(line: 27, column: 41, scope: !437)
!445 = !DILocation(line: 27, column: 60, scope: !437)
!446 = !DILocation(line: 29, column: 10, scope: !437)
!447 = !DILocation(line: 29, column: 2, scope: !437)
!448 = !DILocation(line: 1, column: 1, scope: !449)
!449 = !DILexicalBlockFile(scope: !450, file: !87, discriminator: 0)
!450 = distinct !DILexicalBlock(scope: !437, file: !3, line: 29, column: 14)
!451 = !DILocation(line: 2, column: 1, scope: !449)
!452 = !DILocation(line: 3, column: 1, scope: !449)
!453 = !DILocation(line: 4, column: 1, scope: !449)
!454 = !DILocation(line: 5, column: 1, scope: !449)
!455 = !DILocation(line: 6, column: 1, scope: !449)
!456 = !DILocation(line: 7, column: 1, scope: !449)
!457 = !DILocation(line: 8, column: 1, scope: !449)
!458 = !DILocation(line: 9, column: 1, scope: !449)
!459 = !DILocation(line: 10, column: 1, scope: !449)
!460 = !DILocation(line: 11, column: 1, scope: !449)
!461 = !DILocation(line: 12, column: 1, scope: !449)
!462 = !DILocation(line: 13, column: 1, scope: !449)
!463 = !DILocation(line: 14, column: 1, scope: !449)
!464 = !DILocation(line: 15, column: 1, scope: !449)
!465 = !DILocation(line: 16, column: 1, scope: !449)
!466 = !DILocation(line: 17, column: 1, scope: !449)
!467 = !DILocation(line: 18, column: 1, scope: !449)
!468 = !DILocation(line: 19, column: 1, scope: !449)
!469 = !DILocation(line: 20, column: 1, scope: !449)
!470 = !DILocation(line: 21, column: 1, scope: !449)
!471 = !DILocation(line: 22, column: 1, scope: !449)
!472 = !DILocation(line: 23, column: 1, scope: !449)
!473 = !DILocation(line: 24, column: 1, scope: !449)
!474 = !DILocation(line: 25, column: 1, scope: !449)
!475 = !DILocation(line: 26, column: 1, scope: !449)
!476 = !DILocation(line: 27, column: 1, scope: !449)
!477 = !DILocation(line: 28, column: 1, scope: !449)
!478 = !DILocation(line: 29, column: 1, scope: !449)
!479 = !DILocation(line: 30, column: 1, scope: !449)
!480 = !DILocation(line: 31, column: 1, scope: !449)
!481 = !DILocation(line: 32, column: 1, scope: !449)
!482 = !DILocation(line: 33, column: 1, scope: !449)
!483 = !DILocation(line: 34, column: 1, scope: !449)
!484 = !DILocation(line: 35, column: 1, scope: !449)
!485 = !DILocation(line: 36, column: 1, scope: !449)
!486 = !DILocation(line: 37, column: 1, scope: !449)
!487 = !DILocation(line: 38, column: 1, scope: !449)
!488 = !DILocation(line: 39, column: 1, scope: !449)
!489 = !DILocation(line: 40, column: 1, scope: !449)
!490 = !DILocation(line: 41, column: 1, scope: !449)
!491 = !DILocation(line: 42, column: 1, scope: !449)
!492 = !DILocation(line: 43, column: 1, scope: !449)
!493 = !DILocation(line: 44, column: 1, scope: !449)
!494 = !DILocation(line: 45, column: 1, scope: !449)
!495 = !DILocation(line: 46, column: 1, scope: !449)
!496 = !DILocation(line: 47, column: 1, scope: !449)
!497 = !DILocation(line: 48, column: 1, scope: !449)
!498 = !DILocation(line: 49, column: 1, scope: !449)
!499 = !DILocation(line: 50, column: 1, scope: !449)
!500 = !DILocation(line: 51, column: 1, scope: !449)
!501 = !DILocation(line: 52, column: 1, scope: !449)
!502 = !DILocation(line: 53, column: 1, scope: !449)
!503 = !DILocation(line: 54, column: 1, scope: !449)
!504 = !DILocation(line: 55, column: 1, scope: !449)
!505 = !DILocation(line: 56, column: 1, scope: !449)
!506 = !DILocation(line: 57, column: 1, scope: !449)
!507 = !DILocation(line: 58, column: 1, scope: !449)
!508 = !DILocation(line: 59, column: 1, scope: !449)
!509 = !DILocation(line: 60, column: 1, scope: !449)
!510 = !DILocation(line: 61, column: 1, scope: !449)
!511 = !DILocation(line: 62, column: 1, scope: !449)
!512 = !DILocation(line: 63, column: 1, scope: !449)
!513 = !DILocation(line: 64, column: 1, scope: !449)
!514 = !DILocation(line: 65, column: 1, scope: !449)
!515 = !DILocation(line: 66, column: 1, scope: !449)
!516 = !DILocation(line: 67, column: 1, scope: !449)
!517 = !DILocation(line: 68, column: 1, scope: !449)
!518 = !DILocation(line: 69, column: 1, scope: !449)
!519 = !DILocation(line: 70, column: 1, scope: !449)
!520 = !DILocation(line: 71, column: 1, scope: !449)
!521 = !DILocation(line: 72, column: 1, scope: !449)
!522 = !DILocation(line: 73, column: 1, scope: !449)
!523 = !DILocation(line: 74, column: 1, scope: !449)
!524 = !DILocation(line: 75, column: 1, scope: !449)
!525 = !DILocation(line: 76, column: 1, scope: !449)
!526 = !DILocation(line: 77, column: 1, scope: !449)
!527 = !DILocation(line: 78, column: 1, scope: !449)
!528 = !DILocation(line: 79, column: 1, scope: !449)
!529 = !DILocation(line: 80, column: 1, scope: !449)
!530 = !DILocation(line: 81, column: 1, scope: !449)
!531 = !DILocation(line: 82, column: 1, scope: !449)
!532 = !DILocation(line: 83, column: 1, scope: !449)
!533 = !DILocation(line: 84, column: 1, scope: !449)
!534 = !DILocation(line: 85, column: 1, scope: !449)
!535 = !DILocation(line: 86, column: 1, scope: !449)
!536 = !DILocation(line: 87, column: 1, scope: !449)
!537 = !DILocation(line: 88, column: 1, scope: !449)
!538 = !DILocation(line: 89, column: 1, scope: !449)
!539 = !DILocation(line: 90, column: 1, scope: !449)
!540 = !DILocation(line: 91, column: 1, scope: !449)
!541 = !DILocation(line: 92, column: 1, scope: !449)
!542 = !DILocation(line: 93, column: 1, scope: !449)
!543 = !DILocation(line: 94, column: 1, scope: !449)
!544 = !DILocation(line: 95, column: 1, scope: !449)
!545 = !DILocation(line: 96, column: 1, scope: !449)
!546 = !DILocation(line: 97, column: 1, scope: !449)
!547 = !DILocation(line: 98, column: 1, scope: !449)
!548 = !DILocation(line: 99, column: 1, scope: !449)
!549 = !DILocation(line: 100, column: 1, scope: !449)
!550 = !DILocation(line: 101, column: 1, scope: !449)
!551 = !DILocation(line: 102, column: 1, scope: !449)
!552 = !DILocation(line: 103, column: 1, scope: !449)
!553 = !DILocation(line: 104, column: 1, scope: !449)
!554 = !DILocation(line: 105, column: 1, scope: !449)
!555 = !DILocation(line: 106, column: 1, scope: !449)
!556 = !DILocation(line: 107, column: 1, scope: !449)
!557 = !DILocation(line: 108, column: 1, scope: !449)
!558 = !DILocation(line: 109, column: 1, scope: !449)
!559 = !DILocation(line: 110, column: 1, scope: !449)
!560 = !DILocation(line: 111, column: 1, scope: !449)
!561 = !DILocation(line: 112, column: 1, scope: !449)
!562 = !DILocation(line: 113, column: 1, scope: !449)
!563 = !DILocation(line: 114, column: 1, scope: !449)
!564 = !DILocation(line: 115, column: 1, scope: !449)
!565 = !DILocation(line: 116, column: 1, scope: !449)
!566 = !DILocation(line: 117, column: 1, scope: !449)
!567 = !DILocation(line: 118, column: 1, scope: !449)
!568 = !DILocation(line: 119, column: 1, scope: !449)
!569 = !DILocation(line: 120, column: 1, scope: !449)
!570 = !DILocation(line: 121, column: 1, scope: !449)
!571 = !DILocation(line: 122, column: 1, scope: !449)
!572 = !DILocation(line: 123, column: 1, scope: !449)
!573 = !DILocation(line: 124, column: 1, scope: !449)
!574 = !DILocation(line: 125, column: 1, scope: !449)
!575 = !DILocation(line: 126, column: 1, scope: !449)
!576 = !DILocation(line: 127, column: 1, scope: !449)
!577 = !DILocation(line: 128, column: 1, scope: !449)
!578 = !DILocation(line: 129, column: 1, scope: !449)
!579 = !DILocation(line: 130, column: 1, scope: !449)
!580 = !DILocation(line: 131, column: 1, scope: !449)
!581 = !DILocation(line: 132, column: 1, scope: !449)
!582 = !DILocation(line: 133, column: 1, scope: !449)
!583 = !DILocation(line: 134, column: 1, scope: !449)
!584 = !DILocation(line: 135, column: 1, scope: !449)
!585 = !DILocation(line: 136, column: 1, scope: !449)
!586 = !DILocation(line: 137, column: 1, scope: !449)
!587 = !DILocation(line: 138, column: 1, scope: !449)
!588 = !DILocation(line: 139, column: 1, scope: !449)
!589 = !DILocation(line: 140, column: 1, scope: !449)
!590 = !DILocation(line: 141, column: 1, scope: !449)
!591 = !DILocation(line: 142, column: 1, scope: !449)
!592 = !DILocation(line: 143, column: 1, scope: !449)
!593 = !DILocation(line: 144, column: 1, scope: !449)
!594 = !DILocation(line: 145, column: 1, scope: !449)
!595 = !DILocation(line: 146, column: 1, scope: !449)
!596 = !DILocation(line: 147, column: 1, scope: !449)
!597 = !DILocation(line: 148, column: 1, scope: !449)
!598 = !DILocation(line: 149, column: 1, scope: !449)
!599 = !DILocation(line: 150, column: 1, scope: !449)
!600 = !DILocation(line: 151, column: 1, scope: !449)
!601 = !DILocation(line: 152, column: 1, scope: !449)
!602 = !DILocation(line: 153, column: 1, scope: !449)
!603 = !DILocation(line: 154, column: 1, scope: !449)
!604 = !DILocation(line: 155, column: 1, scope: !449)
!605 = !DILocation(line: 156, column: 1, scope: !449)
!606 = !DILocation(line: 157, column: 1, scope: !449)
!607 = !DILocation(line: 158, column: 1, scope: !449)
!608 = !DILocation(line: 159, column: 1, scope: !449)
!609 = !DILocation(line: 160, column: 1, scope: !449)
!610 = !DILocation(line: 161, column: 1, scope: !449)
!611 = !DILocation(line: 162, column: 1, scope: !449)
!612 = !DILocation(line: 163, column: 1, scope: !449)
!613 = !DILocation(line: 164, column: 1, scope: !449)
!614 = !DILocation(line: 165, column: 1, scope: !449)
!615 = !DILocation(line: 166, column: 1, scope: !449)
!616 = !DILocation(line: 167, column: 1, scope: !449)
!617 = !DILocation(line: 168, column: 1, scope: !449)
!618 = !DILocation(line: 169, column: 1, scope: !449)
!619 = !DILocation(line: 170, column: 1, scope: !449)
!620 = !DILocation(line: 171, column: 1, scope: !449)
!621 = !DILocation(line: 172, column: 1, scope: !449)
!622 = !DILocation(line: 173, column: 1, scope: !449)
!623 = !DILocation(line: 174, column: 1, scope: !449)
!624 = !DILocation(line: 175, column: 1, scope: !449)
!625 = !DILocation(line: 176, column: 1, scope: !449)
!626 = !DILocation(line: 177, column: 1, scope: !449)
!627 = !DILocation(line: 178, column: 1, scope: !449)
!628 = !DILocation(line: 179, column: 1, scope: !449)
!629 = !DILocation(line: 180, column: 1, scope: !449)
!630 = !DILocation(line: 181, column: 1, scope: !449)
!631 = !DILocation(line: 182, column: 1, scope: !449)
!632 = !DILocation(line: 183, column: 1, scope: !449)
!633 = !DILocation(line: 184, column: 1, scope: !449)
!634 = !DILocation(line: 185, column: 1, scope: !449)
!635 = !DILocation(line: 186, column: 1, scope: !449)
!636 = !DILocation(line: 187, column: 1, scope: !449)
!637 = !DILocation(line: 188, column: 1, scope: !449)
!638 = !DILocation(line: 189, column: 1, scope: !449)
!639 = !DILocation(line: 190, column: 1, scope: !449)
!640 = !DILocation(line: 191, column: 1, scope: !449)
!641 = !DILocation(line: 192, column: 1, scope: !449)
!642 = !DILocation(line: 193, column: 1, scope: !449)
!643 = !DILocation(line: 194, column: 1, scope: !449)
!644 = !DILocation(line: 195, column: 1, scope: !449)
!645 = !DILocation(line: 196, column: 1, scope: !449)
!646 = !DILocation(line: 197, column: 1, scope: !449)
!647 = !DILocation(line: 198, column: 1, scope: !449)
!648 = !DILocation(line: 199, column: 1, scope: !449)
!649 = !DILocation(line: 200, column: 1, scope: !449)
!650 = !DILocation(line: 201, column: 1, scope: !449)
!651 = !DILocation(line: 202, column: 1, scope: !449)
!652 = !DILocation(line: 203, column: 1, scope: !449)
!653 = !DILocation(line: 204, column: 1, scope: !449)
!654 = !DILocation(line: 205, column: 1, scope: !449)
!655 = !DILocation(line: 206, column: 1, scope: !449)
!656 = !DILocation(line: 207, column: 1, scope: !449)
!657 = !DILocation(line: 208, column: 1, scope: !449)
!658 = !DILocation(line: 209, column: 1, scope: !449)
!659 = !DILocation(line: 210, column: 1, scope: !449)
!660 = !DILocation(line: 211, column: 1, scope: !449)
!661 = !DILocation(line: 212, column: 1, scope: !449)
!662 = !DILocation(line: 213, column: 1, scope: !449)
!663 = !DILocation(line: 214, column: 1, scope: !449)
!664 = !DILocation(line: 215, column: 1, scope: !449)
!665 = !DILocation(line: 216, column: 1, scope: !449)
!666 = !DILocation(line: 217, column: 1, scope: !449)
!667 = !DILocation(line: 218, column: 1, scope: !449)
!668 = !DILocation(line: 219, column: 1, scope: !449)
!669 = !DILocation(line: 220, column: 1, scope: !449)
!670 = !DILocation(line: 221, column: 1, scope: !449)
!671 = !DILocation(line: 222, column: 1, scope: !449)
!672 = !DILocation(line: 223, column: 1, scope: !449)
!673 = !DILocation(line: 224, column: 1, scope: !449)
!674 = !DILocation(line: 225, column: 1, scope: !449)
!675 = !DILocation(line: 226, column: 1, scope: !449)
!676 = !DILocation(line: 227, column: 1, scope: !449)
!677 = !DILocation(line: 228, column: 1, scope: !449)
!678 = !DILocation(line: 229, column: 1, scope: !449)
!679 = !DILocation(line: 230, column: 1, scope: !449)
!680 = !DILocation(line: 231, column: 1, scope: !449)
!681 = !DILocation(line: 232, column: 1, scope: !449)
!682 = !DILocation(line: 233, column: 1, scope: !449)
!683 = !DILocation(line: 234, column: 1, scope: !449)
!684 = !DILocation(line: 235, column: 1, scope: !449)
!685 = !DILocation(line: 236, column: 1, scope: !449)
!686 = !DILocation(line: 237, column: 1, scope: !449)
!687 = !DILocation(line: 238, column: 1, scope: !449)
!688 = !DILocation(line: 239, column: 1, scope: !449)
!689 = !DILocation(line: 240, column: 1, scope: !449)
!690 = !DILocation(line: 241, column: 1, scope: !449)
!691 = !DILocation(line: 242, column: 1, scope: !449)
!692 = !DILocation(line: 243, column: 1, scope: !449)
!693 = !DILocation(line: 244, column: 1, scope: !449)
!694 = !DILocation(line: 245, column: 1, scope: !449)
!695 = !DILocation(line: 246, column: 1, scope: !449)
!696 = !DILocation(line: 247, column: 1, scope: !449)
!697 = !DILocation(line: 248, column: 1, scope: !449)
!698 = !DILocation(line: 249, column: 1, scope: !449)
!699 = !DILocation(line: 250, column: 1, scope: !449)
!700 = !DILocation(line: 251, column: 1, scope: !449)
!701 = !DILocation(line: 252, column: 1, scope: !449)
!702 = !DILocation(line: 253, column: 1, scope: !449)
!703 = !DILocation(line: 254, column: 1, scope: !449)
!704 = !DILocation(line: 255, column: 1, scope: !449)
!705 = !DILocation(line: 256, column: 1, scope: !449)
!706 = !DILocation(line: 257, column: 1, scope: !449)
!707 = !DILocation(line: 258, column: 1, scope: !449)
!708 = !DILocation(line: 259, column: 1, scope: !449)
!709 = !DILocation(line: 260, column: 1, scope: !449)
!710 = !DILocation(line: 261, column: 1, scope: !449)
!711 = !DILocation(line: 262, column: 1, scope: !449)
!712 = !DILocation(line: 263, column: 1, scope: !449)
!713 = !DILocation(line: 264, column: 1, scope: !449)
!714 = !DILocation(line: 265, column: 1, scope: !449)
!715 = !DILocation(line: 266, column: 1, scope: !449)
!716 = !DILocation(line: 267, column: 1, scope: !449)
!717 = !DILocation(line: 268, column: 1, scope: !449)
!718 = !DILocation(line: 269, column: 1, scope: !449)
!719 = !DILocation(line: 270, column: 1, scope: !449)
!720 = !DILocation(line: 271, column: 1, scope: !449)
!721 = !DILocation(line: 272, column: 1, scope: !449)
!722 = !DILocation(line: 273, column: 1, scope: !449)
!723 = !DILocation(line: 274, column: 1, scope: !449)
!724 = !DILocation(line: 275, column: 1, scope: !449)
!725 = !DILocation(line: 276, column: 1, scope: !449)
!726 = !DILocation(line: 277, column: 1, scope: !449)
!727 = !DILocation(line: 278, column: 1, scope: !449)
!728 = !DILocation(line: 279, column: 1, scope: !449)
!729 = !DILocation(line: 280, column: 1, scope: !449)
!730 = !DILocation(line: 281, column: 1, scope: !449)
!731 = !DILocation(line: 282, column: 1, scope: !449)
!732 = !DILocation(line: 283, column: 1, scope: !449)
!733 = !DILocation(line: 284, column: 1, scope: !449)
!734 = !DILocation(line: 285, column: 1, scope: !449)
!735 = !DILocation(line: 286, column: 1, scope: !449)
!736 = !DILocation(line: 287, column: 1, scope: !449)
!737 = !DILocation(line: 288, column: 1, scope: !449)
!738 = !DILocation(line: 289, column: 1, scope: !449)
!739 = !DILocation(line: 290, column: 1, scope: !449)
!740 = !DILocation(line: 291, column: 1, scope: !449)
!741 = !DILocation(line: 292, column: 1, scope: !449)
!742 = !DILocation(line: 293, column: 1, scope: !449)
!743 = !DILocation(line: 294, column: 1, scope: !449)
!744 = !DILocation(line: 295, column: 1, scope: !449)
!745 = !DILocation(line: 296, column: 1, scope: !449)
!746 = !DILocation(line: 297, column: 1, scope: !449)
!747 = !DILocation(line: 298, column: 1, scope: !449)
!748 = !DILocation(line: 299, column: 1, scope: !449)
!749 = !DILocation(line: 300, column: 1, scope: !449)
!750 = !DILocation(line: 301, column: 1, scope: !449)
!751 = !DILocation(line: 302, column: 1, scope: !449)
!752 = !DILocation(line: 303, column: 1, scope: !449)
!753 = !DILocation(line: 304, column: 1, scope: !449)
!754 = !DILocation(line: 305, column: 1, scope: !449)
!755 = !DILocation(line: 306, column: 1, scope: !449)
!756 = !DILocation(line: 307, column: 1, scope: !449)
!757 = !DILocation(line: 308, column: 1, scope: !449)
!758 = !DILocation(line: 309, column: 1, scope: !449)
!759 = !DILocation(line: 310, column: 1, scope: !449)
!760 = !DILocation(line: 311, column: 1, scope: !449)
!761 = !DILocation(line: 312, column: 1, scope: !449)
!762 = !DILocation(line: 313, column: 1, scope: !449)
!763 = !DILocation(line: 314, column: 1, scope: !449)
!764 = !DILocation(line: 315, column: 1, scope: !449)
!765 = !DILocation(line: 316, column: 1, scope: !449)
!766 = !DILocation(line: 317, column: 1, scope: !449)
!767 = !DILocation(line: 318, column: 1, scope: !449)
!768 = !DILocation(line: 319, column: 1, scope: !449)
!769 = !DILocation(line: 320, column: 1, scope: !449)
!770 = !DILocation(line: 321, column: 1, scope: !449)
!771 = !DILocation(line: 322, column: 1, scope: !449)
!772 = !DILocation(line: 323, column: 1, scope: !449)
!773 = !DILocation(line: 324, column: 1, scope: !449)
!774 = !DILocation(line: 325, column: 1, scope: !449)
!775 = !DILocation(line: 326, column: 1, scope: !449)
!776 = !DILocation(line: 327, column: 1, scope: !449)
!777 = !DILocation(line: 328, column: 1, scope: !449)
!778 = !DILocation(line: 329, column: 1, scope: !449)
!779 = !DILocation(line: 330, column: 1, scope: !449)
!780 = !DILocation(line: 331, column: 1, scope: !449)
!781 = !DILocation(line: 332, column: 1, scope: !449)
!782 = !DILocation(line: 333, column: 1, scope: !449)
!783 = !DILocation(line: 334, column: 1, scope: !449)
!784 = !DILocation(line: 335, column: 1, scope: !449)
!785 = !DILocation(line: 336, column: 1, scope: !449)
!786 = !DILocation(line: 337, column: 1, scope: !449)
!787 = !DILocation(line: 338, column: 1, scope: !449)
!788 = !DILocation(line: 339, column: 1, scope: !449)
!789 = !DILocation(line: 340, column: 1, scope: !449)
!790 = !DILocation(line: 341, column: 1, scope: !449)
!791 = !DILocation(line: 342, column: 1, scope: !449)
!792 = !DILocation(line: 343, column: 1, scope: !449)
!793 = !DILocation(line: 344, column: 1, scope: !449)
!794 = !DILocation(line: 345, column: 1, scope: !449)
!795 = !DILocation(line: 346, column: 1, scope: !449)
!796 = !DILocation(line: 347, column: 1, scope: !449)
!797 = !DILocation(line: 348, column: 1, scope: !449)
!798 = !DILocation(line: 349, column: 1, scope: !449)
!799 = !DILocation(line: 350, column: 1, scope: !449)
!800 = !DILocation(line: 351, column: 1, scope: !449)
!801 = !DILocation(line: 352, column: 1, scope: !449)
!802 = !DILocation(line: 353, column: 1, scope: !449)
!803 = !DILocation(line: 354, column: 1, scope: !449)
!804 = !DILocation(line: 355, column: 1, scope: !449)
!805 = !DILocation(line: 356, column: 1, scope: !449)
!806 = !DILocation(line: 357, column: 1, scope: !449)
!807 = !DILocation(line: 358, column: 1, scope: !449)
!808 = !DILocation(line: 359, column: 1, scope: !449)
!809 = !DILocation(line: 360, column: 1, scope: !449)
!810 = !DILocation(line: 361, column: 1, scope: !449)
!811 = !DILocation(line: 362, column: 1, scope: !449)
!812 = !DILocation(line: 363, column: 1, scope: !449)
!813 = !DILocation(line: 364, column: 1, scope: !449)
!814 = !DILocation(line: 365, column: 1, scope: !449)
!815 = !DILocation(line: 366, column: 1, scope: !449)
!816 = !DILocation(line: 367, column: 1, scope: !449)
!817 = !DILocation(line: 368, column: 1, scope: !449)
!818 = !DILocation(line: 369, column: 1, scope: !449)
!819 = !DILocation(line: 370, column: 1, scope: !449)
!820 = !DILocation(line: 371, column: 1, scope: !449)
!821 = !DILocation(line: 372, column: 1, scope: !449)
!822 = !DILocation(line: 373, column: 1, scope: !449)
!823 = !DILocation(line: 374, column: 1, scope: !449)
!824 = !DILocation(line: 375, column: 1, scope: !449)
!825 = !DILocation(line: 376, column: 1, scope: !449)
!826 = !DILocation(line: 377, column: 1, scope: !449)
!827 = !DILocation(line: 378, column: 1, scope: !449)
!828 = !DILocation(line: 379, column: 1, scope: !449)
!829 = !DILocation(line: 380, column: 1, scope: !449)
!830 = !DILocation(line: 381, column: 1, scope: !449)
!831 = !DILocation(line: 382, column: 1, scope: !449)
!832 = !DILocation(line: 383, column: 1, scope: !449)
!833 = !DILocation(line: 384, column: 1, scope: !449)
!834 = !DILocation(line: 385, column: 1, scope: !449)
!835 = !DILocation(line: 386, column: 1, scope: !449)
!836 = !DILocation(line: 387, column: 1, scope: !449)
!837 = !DILocation(line: 388, column: 1, scope: !449)
!838 = !DILocation(line: 389, column: 1, scope: !449)
!839 = !DILocation(line: 390, column: 1, scope: !449)
!840 = !DILocation(line: 391, column: 1, scope: !449)
!841 = !DILocation(line: 392, column: 1, scope: !449)
!842 = !DILocation(line: 393, column: 1, scope: !449)
!843 = !DILocation(line: 394, column: 1, scope: !449)
!844 = !DILocation(line: 395, column: 1, scope: !449)
!845 = !DILocation(line: 396, column: 1, scope: !449)
!846 = !DILocation(line: 397, column: 1, scope: !449)
!847 = !DILocation(line: 398, column: 1, scope: !449)
!848 = !DILocation(line: 399, column: 1, scope: !449)
!849 = !DILocation(line: 400, column: 1, scope: !449)
!850 = !DILocation(line: 401, column: 1, scope: !449)
!851 = !DILocation(line: 402, column: 1, scope: !449)
!852 = !DILocation(line: 403, column: 1, scope: !449)
!853 = !DILocation(line: 404, column: 1, scope: !449)
!854 = !DILocation(line: 405, column: 1, scope: !449)
!855 = !DILocation(line: 406, column: 1, scope: !449)
!856 = !DILocation(line: 407, column: 1, scope: !449)
!857 = !DILocation(line: 408, column: 1, scope: !449)
!858 = !DILocation(line: 409, column: 1, scope: !449)
!859 = !DILocation(line: 410, column: 1, scope: !449)
!860 = !DILocation(line: 411, column: 1, scope: !449)
!861 = !DILocation(line: 412, column: 1, scope: !449)
!862 = !DILocation(line: 413, column: 1, scope: !449)
!863 = !DILocation(line: 414, column: 1, scope: !449)
!864 = !DILocation(line: 415, column: 1, scope: !449)
!865 = !DILocation(line: 416, column: 1, scope: !449)
!866 = !DILocation(line: 417, column: 1, scope: !449)
!867 = !DILocation(line: 418, column: 1, scope: !449)
!868 = !DILocation(line: 419, column: 1, scope: !449)
!869 = !DILocation(line: 420, column: 1, scope: !449)
!870 = !DILocation(line: 421, column: 1, scope: !449)
!871 = !DILocation(line: 422, column: 1, scope: !449)
!872 = !DILocation(line: 423, column: 1, scope: !449)
!873 = !DILocation(line: 424, column: 1, scope: !449)
!874 = !DILocation(line: 425, column: 1, scope: !449)
!875 = !DILocation(line: 426, column: 1, scope: !449)
!876 = !DILocation(line: 427, column: 1, scope: !449)
!877 = !DILocation(line: 428, column: 1, scope: !449)
!878 = !DILocation(line: 429, column: 1, scope: !449)
!879 = !DILocation(line: 430, column: 1, scope: !449)
!880 = !DILocation(line: 431, column: 1, scope: !449)
!881 = !DILocation(line: 432, column: 1, scope: !449)
!882 = !DILocation(line: 433, column: 1, scope: !449)
!883 = !DILocation(line: 434, column: 1, scope: !449)
!884 = !DILocation(line: 435, column: 1, scope: !449)
!885 = !DILocation(line: 436, column: 1, scope: !449)
!886 = !DILocation(line: 437, column: 1, scope: !449)
!887 = !DILocation(line: 438, column: 1, scope: !449)
!888 = !DILocation(line: 439, column: 1, scope: !449)
!889 = !DILocation(line: 440, column: 1, scope: !449)
!890 = !DILocation(line: 441, column: 1, scope: !449)
!891 = !DILocation(line: 442, column: 1, scope: !449)
!892 = !DILocation(line: 443, column: 1, scope: !449)
!893 = !DILocation(line: 444, column: 1, scope: !449)
!894 = !DILocation(line: 445, column: 1, scope: !449)
!895 = !DILocation(line: 446, column: 1, scope: !449)
!896 = !DILocation(line: 447, column: 1, scope: !449)
!897 = !DILocation(line: 448, column: 1, scope: !449)
!898 = !DILocation(line: 449, column: 1, scope: !449)
!899 = !DILocation(line: 450, column: 1, scope: !449)
!900 = !DILocation(line: 451, column: 1, scope: !449)
!901 = !DILocation(line: 452, column: 1, scope: !449)
!902 = !DILocation(line: 453, column: 1, scope: !449)
!903 = !DILocation(line: 454, column: 1, scope: !449)
!904 = !DILocation(line: 31, column: 39, scope: !905)
!905 = !DILexicalBlockFile(scope: !450, file: !3, discriminator: 0)
!906 = !DILocation(line: 31, column: 18, scope: !905)
!907 = !DILocation(line: 31, column: 11, scope: !905)
!908 = !DILocation(line: 33, column: 1, scope: !437)
