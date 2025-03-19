; ModuleID = 'kernel/sys_ni.c'
source_filename = "kernel/sys_ni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @sys_ni_syscall() #0 align 16 !dbg !11 {
entry:
  ret i64 -38, !dbg !15
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_io_setup(ptr noundef %__unused) #0 align 16 !dbg !16 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !82, metadata !DIExpression()), !dbg !83
  %call = call i64 @sys_ni_syscall() #2, !dbg !83
  ret i64 %call, !dbg !83
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_io_setup(ptr noundef %__unused) #0 align 16 !dbg !84 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !86, metadata !DIExpression()), !dbg !87
  %call = call i64 @sys_ni_syscall() #2, !dbg !87
  ret i64 %call, !dbg !87
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_io_setup(ptr noundef %__unused) #0 align 16 !dbg !88 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !90, metadata !DIExpression()), !dbg !91
  %call = call i64 @sys_ni_syscall() #2, !dbg !91
  ret i64 %call, !dbg !91
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_io_destroy(ptr noundef %__unused) #0 align 16 !dbg !92 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !94, metadata !DIExpression()), !dbg !95
  %call = call i64 @sys_ni_syscall() #2, !dbg !95
  ret i64 %call, !dbg !95
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_io_destroy(ptr noundef %__unused) #0 align 16 !dbg !96 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !98, metadata !DIExpression()), !dbg !99
  %call = call i64 @sys_ni_syscall() #2, !dbg !99
  ret i64 %call, !dbg !99
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_io_submit(ptr noundef %__unused) #0 align 16 !dbg !100 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !102, metadata !DIExpression()), !dbg !103
  %call = call i64 @sys_ni_syscall() #2, !dbg !103
  ret i64 %call, !dbg !103
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_io_submit(ptr noundef %__unused) #0 align 16 !dbg !104 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !106, metadata !DIExpression()), !dbg !107
  %call = call i64 @sys_ni_syscall() #2, !dbg !107
  ret i64 %call, !dbg !107
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_io_submit(ptr noundef %__unused) #0 align 16 !dbg !108 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !110, metadata !DIExpression()), !dbg !111
  %call = call i64 @sys_ni_syscall() #2, !dbg !111
  ret i64 %call, !dbg !111
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_io_cancel(ptr noundef %__unused) #0 align 16 !dbg !112 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !114, metadata !DIExpression()), !dbg !115
  %call = call i64 @sys_ni_syscall() #2, !dbg !115
  ret i64 %call, !dbg !115
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_io_cancel(ptr noundef %__unused) #0 align 16 !dbg !116 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !118, metadata !DIExpression()), !dbg !119
  %call = call i64 @sys_ni_syscall() #2, !dbg !119
  ret i64 %call, !dbg !119
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_io_getevents_time32(ptr noundef %__unused) #0 align 16 !dbg !120 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !122, metadata !DIExpression()), !dbg !123
  %call = call i64 @sys_ni_syscall() #2, !dbg !123
  ret i64 %call, !dbg !123
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_io_getevents_time32(ptr noundef %__unused) #0 align 16 !dbg !124 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !126, metadata !DIExpression()), !dbg !127
  %call = call i64 @sys_ni_syscall() #2, !dbg !127
  ret i64 %call, !dbg !127
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_io_getevents(ptr noundef %__unused) #0 align 16 !dbg !128 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !130, metadata !DIExpression()), !dbg !131
  %call = call i64 @sys_ni_syscall() #2, !dbg !131
  ret i64 %call, !dbg !131
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_io_getevents(ptr noundef %__unused) #0 align 16 !dbg !132 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !134, metadata !DIExpression()), !dbg !135
  %call = call i64 @sys_ni_syscall() #2, !dbg !135
  ret i64 %call, !dbg !135
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_io_pgetevents_time32(ptr noundef %__unused) #0 align 16 !dbg !136 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !138, metadata !DIExpression()), !dbg !139
  %call = call i64 @sys_ni_syscall() #2, !dbg !139
  ret i64 %call, !dbg !139
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_io_pgetevents_time32(ptr noundef %__unused) #0 align 16 !dbg !140 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !142, metadata !DIExpression()), !dbg !143
  %call = call i64 @sys_ni_syscall() #2, !dbg !143
  ret i64 %call, !dbg !143
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_io_pgetevents(ptr noundef %__unused) #0 align 16 !dbg !144 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !146, metadata !DIExpression()), !dbg !147
  %call = call i64 @sys_ni_syscall() #2, !dbg !147
  ret i64 %call, !dbg !147
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_io_pgetevents(ptr noundef %__unused) #0 align 16 !dbg !148 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !150, metadata !DIExpression()), !dbg !151
  %call = call i64 @sys_ni_syscall() #2, !dbg !151
  ret i64 %call, !dbg !151
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_io_pgetevents(ptr noundef %__unused) #0 align 16 !dbg !152 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !154, metadata !DIExpression()), !dbg !155
  %call = call i64 @sys_ni_syscall() #2, !dbg !155
  ret i64 %call, !dbg !155
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_io_pgetevents_time64(ptr noundef %__unused) #0 align 16 !dbg !156 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !158, metadata !DIExpression()), !dbg !159
  %call = call i64 @sys_ni_syscall() #2, !dbg !159
  ret i64 %call, !dbg !159
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_io_uring_setup(ptr noundef %__unused) #0 align 16 !dbg !160 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !162, metadata !DIExpression()), !dbg !163
  %call = call i64 @sys_ni_syscall() #2, !dbg !163
  ret i64 %call, !dbg !163
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_io_uring_setup(ptr noundef %__unused) #0 align 16 !dbg !164 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !166, metadata !DIExpression()), !dbg !167
  %call = call i64 @sys_ni_syscall() #2, !dbg !167
  ret i64 %call, !dbg !167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_io_uring_enter(ptr noundef %__unused) #0 align 16 !dbg !168 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !170, metadata !DIExpression()), !dbg !171
  %call = call i64 @sys_ni_syscall() #2, !dbg !171
  ret i64 %call, !dbg !171
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_io_uring_enter(ptr noundef %__unused) #0 align 16 !dbg !172 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !174, metadata !DIExpression()), !dbg !175
  %call = call i64 @sys_ni_syscall() #2, !dbg !175
  ret i64 %call, !dbg !175
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_io_uring_register(ptr noundef %__unused) #0 align 16 !dbg !176 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !178, metadata !DIExpression()), !dbg !179
  %call = call i64 @sys_ni_syscall() #2, !dbg !179
  ret i64 %call, !dbg !179
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_io_uring_register(ptr noundef %__unused) #0 align 16 !dbg !180 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !182, metadata !DIExpression()), !dbg !183
  %call = call i64 @sys_ni_syscall() #2, !dbg !183
  ret i64 %call, !dbg !183
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_lookup_dcookie(ptr noundef %__unused) #0 align 16 !dbg !184 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !186, metadata !DIExpression()), !dbg !187
  %call = call i64 @sys_ni_syscall() #2, !dbg !187
  ret i64 %call, !dbg !187
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_lookup_dcookie(ptr noundef %__unused) #0 align 16 !dbg !188 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !190, metadata !DIExpression()), !dbg !191
  %call = call i64 @sys_ni_syscall() #2, !dbg !191
  ret i64 %call, !dbg !191
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_lookup_dcookie(ptr noundef %__unused) #0 align 16 !dbg !192 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !194, metadata !DIExpression()), !dbg !195
  %call = call i64 @sys_ni_syscall() #2, !dbg !195
  ret i64 %call, !dbg !195
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_eventfd2(ptr noundef %__unused) #0 align 16 !dbg !196 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !198, metadata !DIExpression()), !dbg !199
  %call = call i64 @sys_ni_syscall() #2, !dbg !199
  ret i64 %call, !dbg !199
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_eventfd2(ptr noundef %__unused) #0 align 16 !dbg !200 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !202, metadata !DIExpression()), !dbg !203
  %call = call i64 @sys_ni_syscall() #2, !dbg !203
  ret i64 %call, !dbg !203
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_epoll_create1(ptr noundef %__unused) #0 align 16 !dbg !204 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !206, metadata !DIExpression()), !dbg !207
  %call = call i64 @sys_ni_syscall() #2, !dbg !207
  ret i64 %call, !dbg !207
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_epoll_create1(ptr noundef %__unused) #0 align 16 !dbg !208 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !210, metadata !DIExpression()), !dbg !211
  %call = call i64 @sys_ni_syscall() #2, !dbg !211
  ret i64 %call, !dbg !211
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_epoll_ctl(ptr noundef %__unused) #0 align 16 !dbg !212 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !214, metadata !DIExpression()), !dbg !215
  %call = call i64 @sys_ni_syscall() #2, !dbg !215
  ret i64 %call, !dbg !215
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_epoll_ctl(ptr noundef %__unused) #0 align 16 !dbg !216 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !218, metadata !DIExpression()), !dbg !219
  %call = call i64 @sys_ni_syscall() #2, !dbg !219
  ret i64 %call, !dbg !219
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_epoll_pwait(ptr noundef %__unused) #0 align 16 !dbg !220 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !222, metadata !DIExpression()), !dbg !223
  %call = call i64 @sys_ni_syscall() #2, !dbg !223
  ret i64 %call, !dbg !223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_epoll_pwait(ptr noundef %__unused) #0 align 16 !dbg !224 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !226, metadata !DIExpression()), !dbg !227
  %call = call i64 @sys_ni_syscall() #2, !dbg !227
  ret i64 %call, !dbg !227
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_epoll_pwait(ptr noundef %__unused) #0 align 16 !dbg !228 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !230, metadata !DIExpression()), !dbg !231
  %call = call i64 @sys_ni_syscall() #2, !dbg !231
  ret i64 %call, !dbg !231
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_epoll_pwait2(ptr noundef %__unused) #0 align 16 !dbg !232 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !234, metadata !DIExpression()), !dbg !235
  %call = call i64 @sys_ni_syscall() #2, !dbg !235
  ret i64 %call, !dbg !235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_epoll_pwait2(ptr noundef %__unused) #0 align 16 !dbg !236 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !238, metadata !DIExpression()), !dbg !239
  %call = call i64 @sys_ni_syscall() #2, !dbg !239
  ret i64 %call, !dbg !239
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_epoll_pwait2(ptr noundef %__unused) #0 align 16 !dbg !240 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !242, metadata !DIExpression()), !dbg !243
  %call = call i64 @sys_ni_syscall() #2, !dbg !243
  ret i64 %call, !dbg !243
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_inotify_init1(ptr noundef %__unused) #0 align 16 !dbg !244 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !246, metadata !DIExpression()), !dbg !247
  %call = call i64 @sys_ni_syscall() #2, !dbg !247
  ret i64 %call, !dbg !247
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_inotify_init1(ptr noundef %__unused) #0 align 16 !dbg !248 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !250, metadata !DIExpression()), !dbg !251
  %call = call i64 @sys_ni_syscall() #2, !dbg !251
  ret i64 %call, !dbg !251
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_inotify_add_watch(ptr noundef %__unused) #0 align 16 !dbg !252 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !254, metadata !DIExpression()), !dbg !255
  %call = call i64 @sys_ni_syscall() #2, !dbg !255
  ret i64 %call, !dbg !255
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_inotify_add_watch(ptr noundef %__unused) #0 align 16 !dbg !256 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !258, metadata !DIExpression()), !dbg !259
  %call = call i64 @sys_ni_syscall() #2, !dbg !259
  ret i64 %call, !dbg !259
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_inotify_rm_watch(ptr noundef %__unused) #0 align 16 !dbg !260 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !262, metadata !DIExpression()), !dbg !263
  %call = call i64 @sys_ni_syscall() #2, !dbg !263
  ret i64 %call, !dbg !263
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_inotify_rm_watch(ptr noundef %__unused) #0 align 16 !dbg !264 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !266, metadata !DIExpression()), !dbg !267
  %call = call i64 @sys_ni_syscall() #2, !dbg !267
  ret i64 %call, !dbg !267
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_ioprio_set(ptr noundef %__unused) #0 align 16 !dbg !268 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !270, metadata !DIExpression()), !dbg !271
  %call = call i64 @sys_ni_syscall() #2, !dbg !271
  ret i64 %call, !dbg !271
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_ioprio_set(ptr noundef %__unused) #0 align 16 !dbg !272 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !274, metadata !DIExpression()), !dbg !275
  %call = call i64 @sys_ni_syscall() #2, !dbg !275
  ret i64 %call, !dbg !275
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_ioprio_get(ptr noundef %__unused) #0 align 16 !dbg !276 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !278, metadata !DIExpression()), !dbg !279
  %call = call i64 @sys_ni_syscall() #2, !dbg !279
  ret i64 %call, !dbg !279
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_ioprio_get(ptr noundef %__unused) #0 align 16 !dbg !280 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !282, metadata !DIExpression()), !dbg !283
  %call = call i64 @sys_ni_syscall() #2, !dbg !283
  ret i64 %call, !dbg !283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_flock(ptr noundef %__unused) #0 align 16 !dbg !284 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !286, metadata !DIExpression()), !dbg !287
  %call = call i64 @sys_ni_syscall() #2, !dbg !287
  ret i64 %call, !dbg !287
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_flock(ptr noundef %__unused) #0 align 16 !dbg !288 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !290, metadata !DIExpression()), !dbg !291
  %call = call i64 @sys_ni_syscall() #2, !dbg !291
  ret i64 %call, !dbg !291
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_quotactl(ptr noundef %__unused) #0 align 16 !dbg !292 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !294, metadata !DIExpression()), !dbg !295
  %call = call i64 @sys_ni_syscall() #2, !dbg !295
  ret i64 %call, !dbg !295
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_quotactl(ptr noundef %__unused) #0 align 16 !dbg !296 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !298, metadata !DIExpression()), !dbg !299
  %call = call i64 @sys_ni_syscall() #2, !dbg !299
  ret i64 %call, !dbg !299
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_quotactl_fd(ptr noundef %__unused) #0 align 16 !dbg !300 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %call = call i64 @sys_ni_syscall() #2, !dbg !303
  ret i64 %call, !dbg !303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_quotactl_fd(ptr noundef %__unused) #0 align 16 !dbg !304 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %call = call i64 @sys_ni_syscall() #2, !dbg !307
  ret i64 %call, !dbg !307
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_signalfd4(ptr noundef %__unused) #0 align 16 !dbg !308 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !310, metadata !DIExpression()), !dbg !311
  %call = call i64 @sys_ni_syscall() #2, !dbg !311
  ret i64 %call, !dbg !311
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_signalfd4(ptr noundef %__unused) #0 align 16 !dbg !312 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %call = call i64 @sys_ni_syscall() #2, !dbg !315
  ret i64 %call, !dbg !315
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_signalfd4(ptr noundef %__unused) #0 align 16 !dbg !316 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !318, metadata !DIExpression()), !dbg !319
  %call = call i64 @sys_ni_syscall() #2, !dbg !319
  ret i64 %call, !dbg !319
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_timerfd_create(ptr noundef %__unused) #0 align 16 !dbg !320 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !322, metadata !DIExpression()), !dbg !323
  %call = call i64 @sys_ni_syscall() #2, !dbg !323
  ret i64 %call, !dbg !323
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_timerfd_create(ptr noundef %__unused) #0 align 16 !dbg !324 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !326, metadata !DIExpression()), !dbg !327
  %call = call i64 @sys_ni_syscall() #2, !dbg !327
  ret i64 %call, !dbg !327
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_timerfd_settime(ptr noundef %__unused) #0 align 16 !dbg !328 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %call = call i64 @sys_ni_syscall() #2, !dbg !331
  ret i64 %call, !dbg !331
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_timerfd_settime(ptr noundef %__unused) #0 align 16 !dbg !332 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !334, metadata !DIExpression()), !dbg !335
  %call = call i64 @sys_ni_syscall() #2, !dbg !335
  ret i64 %call, !dbg !335
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_timerfd_settime32(ptr noundef %__unused) #0 align 16 !dbg !336 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !338, metadata !DIExpression()), !dbg !339
  %call = call i64 @sys_ni_syscall() #2, !dbg !339
  ret i64 %call, !dbg !339
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_timerfd_settime32(ptr noundef %__unused) #0 align 16 !dbg !340 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %call = call i64 @sys_ni_syscall() #2, !dbg !343
  ret i64 %call, !dbg !343
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_timerfd_gettime(ptr noundef %__unused) #0 align 16 !dbg !344 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !346, metadata !DIExpression()), !dbg !347
  %call = call i64 @sys_ni_syscall() #2, !dbg !347
  ret i64 %call, !dbg !347
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_timerfd_gettime(ptr noundef %__unused) #0 align 16 !dbg !348 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %call = call i64 @sys_ni_syscall() #2, !dbg !351
  ret i64 %call, !dbg !351
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_timerfd_gettime32(ptr noundef %__unused) #0 align 16 !dbg !352 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !354, metadata !DIExpression()), !dbg !355
  %call = call i64 @sys_ni_syscall() #2, !dbg !355
  ret i64 %call, !dbg !355
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_timerfd_gettime32(ptr noundef %__unused) #0 align 16 !dbg !356 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %call = call i64 @sys_ni_syscall() #2, !dbg !359
  ret i64 %call, !dbg !359
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_acct(ptr noundef %__unused) #0 align 16 !dbg !360 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %call = call i64 @sys_ni_syscall() #2, !dbg !363
  ret i64 %call, !dbg !363
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_acct(ptr noundef %__unused) #0 align 16 !dbg !364 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %call = call i64 @sys_ni_syscall() #2, !dbg !367
  ret i64 %call, !dbg !367
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_capget(ptr noundef %__unused) #0 align 16 !dbg !368 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %call = call i64 @sys_ni_syscall() #2, !dbg !371
  ret i64 %call, !dbg !371
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_capget(ptr noundef %__unused) #0 align 16 !dbg !372 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %call = call i64 @sys_ni_syscall() #2, !dbg !375
  ret i64 %call, !dbg !375
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_capset(ptr noundef %__unused) #0 align 16 !dbg !376 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %call = call i64 @sys_ni_syscall() #2, !dbg !379
  ret i64 %call, !dbg !379
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_capset(ptr noundef %__unused) #0 align 16 !dbg !380 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %call = call i64 @sys_ni_syscall() #2, !dbg !383
  ret i64 %call, !dbg !383
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_clone3(ptr noundef %__unused) #0 align 16 !dbg !384 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %call = call i64 @sys_ni_syscall() #2, !dbg !387
  ret i64 %call, !dbg !387
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_clone3(ptr noundef %__unused) #0 align 16 !dbg !388 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !390, metadata !DIExpression()), !dbg !391
  %call = call i64 @sys_ni_syscall() #2, !dbg !391
  ret i64 %call, !dbg !391
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_futex(ptr noundef %__unused) #0 align 16 !dbg !392 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %call = call i64 @sys_ni_syscall() #2, !dbg !395
  ret i64 %call, !dbg !395
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_futex(ptr noundef %__unused) #0 align 16 !dbg !396 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %call = call i64 @sys_ni_syscall() #2, !dbg !399
  ret i64 %call, !dbg !399
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_futex_time32(ptr noundef %__unused) #0 align 16 !dbg !400 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %call = call i64 @sys_ni_syscall() #2, !dbg !403
  ret i64 %call, !dbg !403
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_futex_time32(ptr noundef %__unused) #0 align 16 !dbg !404 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %call = call i64 @sys_ni_syscall() #2, !dbg !407
  ret i64 %call, !dbg !407
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_set_robust_list(ptr noundef %__unused) #0 align 16 !dbg !408 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %call = call i64 @sys_ni_syscall() #2, !dbg !411
  ret i64 %call, !dbg !411
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_set_robust_list(ptr noundef %__unused) #0 align 16 !dbg !412 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %call = call i64 @sys_ni_syscall() #2, !dbg !415
  ret i64 %call, !dbg !415
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_set_robust_list(ptr noundef %__unused) #0 align 16 !dbg !416 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !418, metadata !DIExpression()), !dbg !419
  %call = call i64 @sys_ni_syscall() #2, !dbg !419
  ret i64 %call, !dbg !419
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_get_robust_list(ptr noundef %__unused) #0 align 16 !dbg !420 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %call = call i64 @sys_ni_syscall() #2, !dbg !423
  ret i64 %call, !dbg !423
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_get_robust_list(ptr noundef %__unused) #0 align 16 !dbg !424 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !426, metadata !DIExpression()), !dbg !427
  %call = call i64 @sys_ni_syscall() #2, !dbg !427
  ret i64 %call, !dbg !427
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_get_robust_list(ptr noundef %__unused) #0 align 16 !dbg !428 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %call = call i64 @sys_ni_syscall() #2, !dbg !431
  ret i64 %call, !dbg !431
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_futex_waitv(ptr noundef %__unused) #0 align 16 !dbg !432 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %call = call i64 @sys_ni_syscall() #2, !dbg !435
  ret i64 %call, !dbg !435
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_futex_waitv(ptr noundef %__unused) #0 align 16 !dbg !436 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !438, metadata !DIExpression()), !dbg !439
  %call = call i64 @sys_ni_syscall() #2, !dbg !439
  ret i64 %call, !dbg !439
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_kexec_load(ptr noundef %__unused) #0 align 16 !dbg !440 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %call = call i64 @sys_ni_syscall() #2, !dbg !443
  ret i64 %call, !dbg !443
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_kexec_load(ptr noundef %__unused) #0 align 16 !dbg !444 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %call = call i64 @sys_ni_syscall() #2, !dbg !447
  ret i64 %call, !dbg !447
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_kexec_load(ptr noundef %__unused) #0 align 16 !dbg !448 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %call = call i64 @sys_ni_syscall() #2, !dbg !451
  ret i64 %call, !dbg !451
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_init_module(ptr noundef %__unused) #0 align 16 !dbg !452 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %call = call i64 @sys_ni_syscall() #2, !dbg !455
  ret i64 %call, !dbg !455
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_init_module(ptr noundef %__unused) #0 align 16 !dbg !456 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !458, metadata !DIExpression()), !dbg !459
  %call = call i64 @sys_ni_syscall() #2, !dbg !459
  ret i64 %call, !dbg !459
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_delete_module(ptr noundef %__unused) #0 align 16 !dbg !460 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !462, metadata !DIExpression()), !dbg !463
  %call = call i64 @sys_ni_syscall() #2, !dbg !463
  ret i64 %call, !dbg !463
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_delete_module(ptr noundef %__unused) #0 align 16 !dbg !464 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !466, metadata !DIExpression()), !dbg !467
  %call = call i64 @sys_ni_syscall() #2, !dbg !467
  ret i64 %call, !dbg !467
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_syslog(ptr noundef %__unused) #0 align 16 !dbg !468 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !470, metadata !DIExpression()), !dbg !471
  %call = call i64 @sys_ni_syscall() #2, !dbg !471
  ret i64 %call, !dbg !471
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_syslog(ptr noundef %__unused) #0 align 16 !dbg !472 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %call = call i64 @sys_ni_syscall() #2, !dbg !475
  ret i64 %call, !dbg !475
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setregid(ptr noundef %__unused) #0 align 16 !dbg !476 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !478, metadata !DIExpression()), !dbg !479
  %call = call i64 @sys_ni_syscall() #2, !dbg !479
  ret i64 %call, !dbg !479
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setregid(ptr noundef %__unused) #0 align 16 !dbg !480 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !482, metadata !DIExpression()), !dbg !483
  %call = call i64 @sys_ni_syscall() #2, !dbg !483
  ret i64 %call, !dbg !483
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setgid(ptr noundef %__unused) #0 align 16 !dbg !484 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !486, metadata !DIExpression()), !dbg !487
  %call = call i64 @sys_ni_syscall() #2, !dbg !487
  ret i64 %call, !dbg !487
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setgid(ptr noundef %__unused) #0 align 16 !dbg !488 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !490, metadata !DIExpression()), !dbg !491
  %call = call i64 @sys_ni_syscall() #2, !dbg !491
  ret i64 %call, !dbg !491
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setreuid(ptr noundef %__unused) #0 align 16 !dbg !492 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %call = call i64 @sys_ni_syscall() #2, !dbg !495
  ret i64 %call, !dbg !495
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setreuid(ptr noundef %__unused) #0 align 16 !dbg !496 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !498, metadata !DIExpression()), !dbg !499
  %call = call i64 @sys_ni_syscall() #2, !dbg !499
  ret i64 %call, !dbg !499
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setuid(ptr noundef %__unused) #0 align 16 !dbg !500 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !502, metadata !DIExpression()), !dbg !503
  %call = call i64 @sys_ni_syscall() #2, !dbg !503
  ret i64 %call, !dbg !503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setuid(ptr noundef %__unused) #0 align 16 !dbg !504 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %call = call i64 @sys_ni_syscall() #2, !dbg !507
  ret i64 %call, !dbg !507
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setresuid(ptr noundef %__unused) #0 align 16 !dbg !508 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %call = call i64 @sys_ni_syscall() #2, !dbg !511
  ret i64 %call, !dbg !511
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setresuid(ptr noundef %__unused) #0 align 16 !dbg !512 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !514, metadata !DIExpression()), !dbg !515
  %call = call i64 @sys_ni_syscall() #2, !dbg !515
  ret i64 %call, !dbg !515
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_getresuid(ptr noundef %__unused) #0 align 16 !dbg !516 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !518, metadata !DIExpression()), !dbg !519
  %call = call i64 @sys_ni_syscall() #2, !dbg !519
  ret i64 %call, !dbg !519
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_getresuid(ptr noundef %__unused) #0 align 16 !dbg !520 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !522, metadata !DIExpression()), !dbg !523
  %call = call i64 @sys_ni_syscall() #2, !dbg !523
  ret i64 %call, !dbg !523
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setresgid(ptr noundef %__unused) #0 align 16 !dbg !524 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !526, metadata !DIExpression()), !dbg !527
  %call = call i64 @sys_ni_syscall() #2, !dbg !527
  ret i64 %call, !dbg !527
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setresgid(ptr noundef %__unused) #0 align 16 !dbg !528 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !530, metadata !DIExpression()), !dbg !531
  %call = call i64 @sys_ni_syscall() #2, !dbg !531
  ret i64 %call, !dbg !531
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_getresgid(ptr noundef %__unused) #0 align 16 !dbg !532 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !534, metadata !DIExpression()), !dbg !535
  %call = call i64 @sys_ni_syscall() #2, !dbg !535
  ret i64 %call, !dbg !535
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_getresgid(ptr noundef %__unused) #0 align 16 !dbg !536 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !538, metadata !DIExpression()), !dbg !539
  %call = call i64 @sys_ni_syscall() #2, !dbg !539
  ret i64 %call, !dbg !539
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setfsuid(ptr noundef %__unused) #0 align 16 !dbg !540 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !542, metadata !DIExpression()), !dbg !543
  %call = call i64 @sys_ni_syscall() #2, !dbg !543
  ret i64 %call, !dbg !543
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setfsuid(ptr noundef %__unused) #0 align 16 !dbg !544 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !546, metadata !DIExpression()), !dbg !547
  %call = call i64 @sys_ni_syscall() #2, !dbg !547
  ret i64 %call, !dbg !547
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setfsgid(ptr noundef %__unused) #0 align 16 !dbg !548 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !550, metadata !DIExpression()), !dbg !551
  %call = call i64 @sys_ni_syscall() #2, !dbg !551
  ret i64 %call, !dbg !551
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setfsgid(ptr noundef %__unused) #0 align 16 !dbg !552 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !554, metadata !DIExpression()), !dbg !555
  %call = call i64 @sys_ni_syscall() #2, !dbg !555
  ret i64 %call, !dbg !555
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setgroups(ptr noundef %__unused) #0 align 16 !dbg !556 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !558, metadata !DIExpression()), !dbg !559
  %call = call i64 @sys_ni_syscall() #2, !dbg !559
  ret i64 %call, !dbg !559
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setgroups(ptr noundef %__unused) #0 align 16 !dbg !560 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !562, metadata !DIExpression()), !dbg !563
  %call = call i64 @sys_ni_syscall() #2, !dbg !563
  ret i64 %call, !dbg !563
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_getgroups(ptr noundef %__unused) #0 align 16 !dbg !564 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !566, metadata !DIExpression()), !dbg !567
  %call = call i64 @sys_ni_syscall() #2, !dbg !567
  ret i64 %call, !dbg !567
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_getgroups(ptr noundef %__unused) #0 align 16 !dbg !568 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !570, metadata !DIExpression()), !dbg !571
  %call = call i64 @sys_ni_syscall() #2, !dbg !571
  ret i64 %call, !dbg !571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mq_open(ptr noundef %__unused) #0 align 16 !dbg !572 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !574, metadata !DIExpression()), !dbg !575
  %call = call i64 @sys_ni_syscall() #2, !dbg !575
  ret i64 %call, !dbg !575
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mq_open(ptr noundef %__unused) #0 align 16 !dbg !576 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !578, metadata !DIExpression()), !dbg !579
  %call = call i64 @sys_ni_syscall() #2, !dbg !579
  ret i64 %call, !dbg !579
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_mq_open(ptr noundef %__unused) #0 align 16 !dbg !580 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !582, metadata !DIExpression()), !dbg !583
  %call = call i64 @sys_ni_syscall() #2, !dbg !583
  ret i64 %call, !dbg !583
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mq_unlink(ptr noundef %__unused) #0 align 16 !dbg !584 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !586, metadata !DIExpression()), !dbg !587
  %call = call i64 @sys_ni_syscall() #2, !dbg !587
  ret i64 %call, !dbg !587
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mq_unlink(ptr noundef %__unused) #0 align 16 !dbg !588 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !590, metadata !DIExpression()), !dbg !591
  %call = call i64 @sys_ni_syscall() #2, !dbg !591
  ret i64 %call, !dbg !591
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mq_timedsend(ptr noundef %__unused) #0 align 16 !dbg !592 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !594, metadata !DIExpression()), !dbg !595
  %call = call i64 @sys_ni_syscall() #2, !dbg !595
  ret i64 %call, !dbg !595
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mq_timedsend(ptr noundef %__unused) #0 align 16 !dbg !596 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !598, metadata !DIExpression()), !dbg !599
  %call = call i64 @sys_ni_syscall() #2, !dbg !599
  ret i64 %call, !dbg !599
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mq_timedsend_time32(ptr noundef %__unused) #0 align 16 !dbg !600 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !602, metadata !DIExpression()), !dbg !603
  %call = call i64 @sys_ni_syscall() #2, !dbg !603
  ret i64 %call, !dbg !603
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mq_timedsend_time32(ptr noundef %__unused) #0 align 16 !dbg !604 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !606, metadata !DIExpression()), !dbg !607
  %call = call i64 @sys_ni_syscall() #2, !dbg !607
  ret i64 %call, !dbg !607
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mq_timedreceive(ptr noundef %__unused) #0 align 16 !dbg !608 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !610, metadata !DIExpression()), !dbg !611
  %call = call i64 @sys_ni_syscall() #2, !dbg !611
  ret i64 %call, !dbg !611
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mq_timedreceive(ptr noundef %__unused) #0 align 16 !dbg !612 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !614, metadata !DIExpression()), !dbg !615
  %call = call i64 @sys_ni_syscall() #2, !dbg !615
  ret i64 %call, !dbg !615
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mq_timedreceive_time32(ptr noundef %__unused) #0 align 16 !dbg !616 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !618, metadata !DIExpression()), !dbg !619
  %call = call i64 @sys_ni_syscall() #2, !dbg !619
  ret i64 %call, !dbg !619
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mq_timedreceive_time32(ptr noundef %__unused) #0 align 16 !dbg !620 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !622, metadata !DIExpression()), !dbg !623
  %call = call i64 @sys_ni_syscall() #2, !dbg !623
  ret i64 %call, !dbg !623
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mq_notify(ptr noundef %__unused) #0 align 16 !dbg !624 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !626, metadata !DIExpression()), !dbg !627
  %call = call i64 @sys_ni_syscall() #2, !dbg !627
  ret i64 %call, !dbg !627
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mq_notify(ptr noundef %__unused) #0 align 16 !dbg !628 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !630, metadata !DIExpression()), !dbg !631
  %call = call i64 @sys_ni_syscall() #2, !dbg !631
  ret i64 %call, !dbg !631
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_mq_notify(ptr noundef %__unused) #0 align 16 !dbg !632 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !634, metadata !DIExpression()), !dbg !635
  %call = call i64 @sys_ni_syscall() #2, !dbg !635
  ret i64 %call, !dbg !635
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mq_getsetattr(ptr noundef %__unused) #0 align 16 !dbg !636 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !638, metadata !DIExpression()), !dbg !639
  %call = call i64 @sys_ni_syscall() #2, !dbg !639
  ret i64 %call, !dbg !639
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mq_getsetattr(ptr noundef %__unused) #0 align 16 !dbg !640 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !642, metadata !DIExpression()), !dbg !643
  %call = call i64 @sys_ni_syscall() #2, !dbg !643
  ret i64 %call, !dbg !643
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_mq_getsetattr(ptr noundef %__unused) #0 align 16 !dbg !644 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !646, metadata !DIExpression()), !dbg !647
  %call = call i64 @sys_ni_syscall() #2, !dbg !647
  ret i64 %call, !dbg !647
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_msgget(ptr noundef %__unused) #0 align 16 !dbg !648 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !650, metadata !DIExpression()), !dbg !651
  %call = call i64 @sys_ni_syscall() #2, !dbg !651
  ret i64 %call, !dbg !651
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_msgget(ptr noundef %__unused) #0 align 16 !dbg !652 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !654, metadata !DIExpression()), !dbg !655
  %call = call i64 @sys_ni_syscall() #2, !dbg !655
  ret i64 %call, !dbg !655
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_old_msgctl(ptr noundef %__unused) #0 align 16 !dbg !656 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !658, metadata !DIExpression()), !dbg !659
  %call = call i64 @sys_ni_syscall() #2, !dbg !659
  ret i64 %call, !dbg !659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_old_msgctl(ptr noundef %__unused) #0 align 16 !dbg !660 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !662, metadata !DIExpression()), !dbg !663
  %call = call i64 @sys_ni_syscall() #2, !dbg !663
  ret i64 %call, !dbg !663
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_msgctl(ptr noundef %__unused) #0 align 16 !dbg !664 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !666, metadata !DIExpression()), !dbg !667
  %call = call i64 @sys_ni_syscall() #2, !dbg !667
  ret i64 %call, !dbg !667
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_msgctl(ptr noundef %__unused) #0 align 16 !dbg !668 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !670, metadata !DIExpression()), !dbg !671
  %call = call i64 @sys_ni_syscall() #2, !dbg !671
  ret i64 %call, !dbg !671
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_msgctl(ptr noundef %__unused) #0 align 16 !dbg !672 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !674, metadata !DIExpression()), !dbg !675
  %call = call i64 @sys_ni_syscall() #2, !dbg !675
  ret i64 %call, !dbg !675
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_old_msgctl(ptr noundef %__unused) #0 align 16 !dbg !676 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !678, metadata !DIExpression()), !dbg !679
  %call = call i64 @sys_ni_syscall() #2, !dbg !679
  ret i64 %call, !dbg !679
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_msgrcv(ptr noundef %__unused) #0 align 16 !dbg !680 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !682, metadata !DIExpression()), !dbg !683
  %call = call i64 @sys_ni_syscall() #2, !dbg !683
  ret i64 %call, !dbg !683
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_msgrcv(ptr noundef %__unused) #0 align 16 !dbg !684 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !686, metadata !DIExpression()), !dbg !687
  %call = call i64 @sys_ni_syscall() #2, !dbg !687
  ret i64 %call, !dbg !687
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_msgrcv(ptr noundef %__unused) #0 align 16 !dbg !688 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !690, metadata !DIExpression()), !dbg !691
  %call = call i64 @sys_ni_syscall() #2, !dbg !691
  ret i64 %call, !dbg !691
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_msgsnd(ptr noundef %__unused) #0 align 16 !dbg !692 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !694, metadata !DIExpression()), !dbg !695
  %call = call i64 @sys_ni_syscall() #2, !dbg !695
  ret i64 %call, !dbg !695
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_msgsnd(ptr noundef %__unused) #0 align 16 !dbg !696 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !698, metadata !DIExpression()), !dbg !699
  %call = call i64 @sys_ni_syscall() #2, !dbg !699
  ret i64 %call, !dbg !699
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_msgsnd(ptr noundef %__unused) #0 align 16 !dbg !700 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !702, metadata !DIExpression()), !dbg !703
  %call = call i64 @sys_ni_syscall() #2, !dbg !703
  ret i64 %call, !dbg !703
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_semget(ptr noundef %__unused) #0 align 16 !dbg !704 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !706, metadata !DIExpression()), !dbg !707
  %call = call i64 @sys_ni_syscall() #2, !dbg !707
  ret i64 %call, !dbg !707
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_semget(ptr noundef %__unused) #0 align 16 !dbg !708 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !710, metadata !DIExpression()), !dbg !711
  %call = call i64 @sys_ni_syscall() #2, !dbg !711
  ret i64 %call, !dbg !711
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_old_semctl(ptr noundef %__unused) #0 align 16 !dbg !712 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !714, metadata !DIExpression()), !dbg !715
  %call = call i64 @sys_ni_syscall() #2, !dbg !715
  ret i64 %call, !dbg !715
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_old_semctl(ptr noundef %__unused) #0 align 16 !dbg !716 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !718, metadata !DIExpression()), !dbg !719
  %call = call i64 @sys_ni_syscall() #2, !dbg !719
  ret i64 %call, !dbg !719
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_semctl(ptr noundef %__unused) #0 align 16 !dbg !720 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !722, metadata !DIExpression()), !dbg !723
  %call = call i64 @sys_ni_syscall() #2, !dbg !723
  ret i64 %call, !dbg !723
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_semctl(ptr noundef %__unused) #0 align 16 !dbg !724 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !726, metadata !DIExpression()), !dbg !727
  %call = call i64 @sys_ni_syscall() #2, !dbg !727
  ret i64 %call, !dbg !727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_semctl(ptr noundef %__unused) #0 align 16 !dbg !728 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !730, metadata !DIExpression()), !dbg !731
  %call = call i64 @sys_ni_syscall() #2, !dbg !731
  ret i64 %call, !dbg !731
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_old_semctl(ptr noundef %__unused) #0 align 16 !dbg !732 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !734, metadata !DIExpression()), !dbg !735
  %call = call i64 @sys_ni_syscall() #2, !dbg !735
  ret i64 %call, !dbg !735
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_semtimedop(ptr noundef %__unused) #0 align 16 !dbg !736 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !738, metadata !DIExpression()), !dbg !739
  %call = call i64 @sys_ni_syscall() #2, !dbg !739
  ret i64 %call, !dbg !739
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_semtimedop(ptr noundef %__unused) #0 align 16 !dbg !740 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !742, metadata !DIExpression()), !dbg !743
  %call = call i64 @sys_ni_syscall() #2, !dbg !743
  ret i64 %call, !dbg !743
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_semtimedop_time32(ptr noundef %__unused) #0 align 16 !dbg !744 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !746, metadata !DIExpression()), !dbg !747
  %call = call i64 @sys_ni_syscall() #2, !dbg !747
  ret i64 %call, !dbg !747
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_semtimedop_time32(ptr noundef %__unused) #0 align 16 !dbg !748 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !750, metadata !DIExpression()), !dbg !751
  %call = call i64 @sys_ni_syscall() #2, !dbg !751
  ret i64 %call, !dbg !751
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_semop(ptr noundef %__unused) #0 align 16 !dbg !752 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !754, metadata !DIExpression()), !dbg !755
  %call = call i64 @sys_ni_syscall() #2, !dbg !755
  ret i64 %call, !dbg !755
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_semop(ptr noundef %__unused) #0 align 16 !dbg !756 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !758, metadata !DIExpression()), !dbg !759
  %call = call i64 @sys_ni_syscall() #2, !dbg !759
  ret i64 %call, !dbg !759
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_shmget(ptr noundef %__unused) #0 align 16 !dbg !760 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !762, metadata !DIExpression()), !dbg !763
  %call = call i64 @sys_ni_syscall() #2, !dbg !763
  ret i64 %call, !dbg !763
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_shmget(ptr noundef %__unused) #0 align 16 !dbg !764 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !766, metadata !DIExpression()), !dbg !767
  %call = call i64 @sys_ni_syscall() #2, !dbg !767
  ret i64 %call, !dbg !767
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_old_shmctl(ptr noundef %__unused) #0 align 16 !dbg !768 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !770, metadata !DIExpression()), !dbg !771
  %call = call i64 @sys_ni_syscall() #2, !dbg !771
  ret i64 %call, !dbg !771
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_old_shmctl(ptr noundef %__unused) #0 align 16 !dbg !772 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !774, metadata !DIExpression()), !dbg !775
  %call = call i64 @sys_ni_syscall() #2, !dbg !775
  ret i64 %call, !dbg !775
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_shmctl(ptr noundef %__unused) #0 align 16 !dbg !776 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !778, metadata !DIExpression()), !dbg !779
  %call = call i64 @sys_ni_syscall() #2, !dbg !779
  ret i64 %call, !dbg !779
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_shmctl(ptr noundef %__unused) #0 align 16 !dbg !780 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !782, metadata !DIExpression()), !dbg !783
  %call = call i64 @sys_ni_syscall() #2, !dbg !783
  ret i64 %call, !dbg !783
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_shmctl(ptr noundef %__unused) #0 align 16 !dbg !784 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !786, metadata !DIExpression()), !dbg !787
  %call = call i64 @sys_ni_syscall() #2, !dbg !787
  ret i64 %call, !dbg !787
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_old_shmctl(ptr noundef %__unused) #0 align 16 !dbg !788 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !790, metadata !DIExpression()), !dbg !791
  %call = call i64 @sys_ni_syscall() #2, !dbg !791
  ret i64 %call, !dbg !791
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_shmat(ptr noundef %__unused) #0 align 16 !dbg !792 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !794, metadata !DIExpression()), !dbg !795
  %call = call i64 @sys_ni_syscall() #2, !dbg !795
  ret i64 %call, !dbg !795
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_shmat(ptr noundef %__unused) #0 align 16 !dbg !796 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !798, metadata !DIExpression()), !dbg !799
  %call = call i64 @sys_ni_syscall() #2, !dbg !799
  ret i64 %call, !dbg !799
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_shmat(ptr noundef %__unused) #0 align 16 !dbg !800 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !802, metadata !DIExpression()), !dbg !803
  %call = call i64 @sys_ni_syscall() #2, !dbg !803
  ret i64 %call, !dbg !803
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_shmdt(ptr noundef %__unused) #0 align 16 !dbg !804 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !806, metadata !DIExpression()), !dbg !807
  %call = call i64 @sys_ni_syscall() #2, !dbg !807
  ret i64 %call, !dbg !807
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_shmdt(ptr noundef %__unused) #0 align 16 !dbg !808 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !810, metadata !DIExpression()), !dbg !811
  %call = call i64 @sys_ni_syscall() #2, !dbg !811
  ret i64 %call, !dbg !811
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_socket(ptr noundef %__unused) #0 align 16 !dbg !812 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !814, metadata !DIExpression()), !dbg !815
  %call = call i64 @sys_ni_syscall() #2, !dbg !815
  ret i64 %call, !dbg !815
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_socket(ptr noundef %__unused) #0 align 16 !dbg !816 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !818, metadata !DIExpression()), !dbg !819
  %call = call i64 @sys_ni_syscall() #2, !dbg !819
  ret i64 %call, !dbg !819
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_socketpair(ptr noundef %__unused) #0 align 16 !dbg !820 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !822, metadata !DIExpression()), !dbg !823
  %call = call i64 @sys_ni_syscall() #2, !dbg !823
  ret i64 %call, !dbg !823
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_socketpair(ptr noundef %__unused) #0 align 16 !dbg !824 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !826, metadata !DIExpression()), !dbg !827
  %call = call i64 @sys_ni_syscall() #2, !dbg !827
  ret i64 %call, !dbg !827
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_bind(ptr noundef %__unused) #0 align 16 !dbg !828 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !830, metadata !DIExpression()), !dbg !831
  %call = call i64 @sys_ni_syscall() #2, !dbg !831
  ret i64 %call, !dbg !831
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_bind(ptr noundef %__unused) #0 align 16 !dbg !832 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !834, metadata !DIExpression()), !dbg !835
  %call = call i64 @sys_ni_syscall() #2, !dbg !835
  ret i64 %call, !dbg !835
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_listen(ptr noundef %__unused) #0 align 16 !dbg !836 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !838, metadata !DIExpression()), !dbg !839
  %call = call i64 @sys_ni_syscall() #2, !dbg !839
  ret i64 %call, !dbg !839
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_listen(ptr noundef %__unused) #0 align 16 !dbg !840 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !842, metadata !DIExpression()), !dbg !843
  %call = call i64 @sys_ni_syscall() #2, !dbg !843
  ret i64 %call, !dbg !843
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_accept(ptr noundef %__unused) #0 align 16 !dbg !844 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !846, metadata !DIExpression()), !dbg !847
  %call = call i64 @sys_ni_syscall() #2, !dbg !847
  ret i64 %call, !dbg !847
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_accept(ptr noundef %__unused) #0 align 16 !dbg !848 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !850, metadata !DIExpression()), !dbg !851
  %call = call i64 @sys_ni_syscall() #2, !dbg !851
  ret i64 %call, !dbg !851
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_connect(ptr noundef %__unused) #0 align 16 !dbg !852 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !854, metadata !DIExpression()), !dbg !855
  %call = call i64 @sys_ni_syscall() #2, !dbg !855
  ret i64 %call, !dbg !855
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_connect(ptr noundef %__unused) #0 align 16 !dbg !856 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !858, metadata !DIExpression()), !dbg !859
  %call = call i64 @sys_ni_syscall() #2, !dbg !859
  ret i64 %call, !dbg !859
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_getsockname(ptr noundef %__unused) #0 align 16 !dbg !860 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !862, metadata !DIExpression()), !dbg !863
  %call = call i64 @sys_ni_syscall() #2, !dbg !863
  ret i64 %call, !dbg !863
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_getsockname(ptr noundef %__unused) #0 align 16 !dbg !864 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !866, metadata !DIExpression()), !dbg !867
  %call = call i64 @sys_ni_syscall() #2, !dbg !867
  ret i64 %call, !dbg !867
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_getpeername(ptr noundef %__unused) #0 align 16 !dbg !868 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !870, metadata !DIExpression()), !dbg !871
  %call = call i64 @sys_ni_syscall() #2, !dbg !871
  ret i64 %call, !dbg !871
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_getpeername(ptr noundef %__unused) #0 align 16 !dbg !872 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !874, metadata !DIExpression()), !dbg !875
  %call = call i64 @sys_ni_syscall() #2, !dbg !875
  ret i64 %call, !dbg !875
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setsockopt(ptr noundef %__unused) #0 align 16 !dbg !876 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !878, metadata !DIExpression()), !dbg !879
  %call = call i64 @sys_ni_syscall() #2, !dbg !879
  ret i64 %call, !dbg !879
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setsockopt(ptr noundef %__unused) #0 align 16 !dbg !880 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !882, metadata !DIExpression()), !dbg !883
  %call = call i64 @sys_ni_syscall() #2, !dbg !883
  ret i64 %call, !dbg !883
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_setsockopt(ptr noundef %__unused) #0 align 16 !dbg !884 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !886, metadata !DIExpression()), !dbg !887
  %call = call i64 @sys_ni_syscall() #2, !dbg !887
  ret i64 %call, !dbg !887
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_getsockopt(ptr noundef %__unused) #0 align 16 !dbg !888 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !890, metadata !DIExpression()), !dbg !891
  %call = call i64 @sys_ni_syscall() #2, !dbg !891
  ret i64 %call, !dbg !891
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_getsockopt(ptr noundef %__unused) #0 align 16 !dbg !892 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !894, metadata !DIExpression()), !dbg !895
  %call = call i64 @sys_ni_syscall() #2, !dbg !895
  ret i64 %call, !dbg !895
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_getsockopt(ptr noundef %__unused) #0 align 16 !dbg !896 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !898, metadata !DIExpression()), !dbg !899
  %call = call i64 @sys_ni_syscall() #2, !dbg !899
  ret i64 %call, !dbg !899
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_sendto(ptr noundef %__unused) #0 align 16 !dbg !900 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !902, metadata !DIExpression()), !dbg !903
  %call = call i64 @sys_ni_syscall() #2, !dbg !903
  ret i64 %call, !dbg !903
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_sendto(ptr noundef %__unused) #0 align 16 !dbg !904 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !906, metadata !DIExpression()), !dbg !907
  %call = call i64 @sys_ni_syscall() #2, !dbg !907
  ret i64 %call, !dbg !907
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_shutdown(ptr noundef %__unused) #0 align 16 !dbg !908 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !910, metadata !DIExpression()), !dbg !911
  %call = call i64 @sys_ni_syscall() #2, !dbg !911
  ret i64 %call, !dbg !911
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_shutdown(ptr noundef %__unused) #0 align 16 !dbg !912 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !914, metadata !DIExpression()), !dbg !915
  %call = call i64 @sys_ni_syscall() #2, !dbg !915
  ret i64 %call, !dbg !915
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_recvfrom(ptr noundef %__unused) #0 align 16 !dbg !916 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !918, metadata !DIExpression()), !dbg !919
  %call = call i64 @sys_ni_syscall() #2, !dbg !919
  ret i64 %call, !dbg !919
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_recvfrom(ptr noundef %__unused) #0 align 16 !dbg !920 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !922, metadata !DIExpression()), !dbg !923
  %call = call i64 @sys_ni_syscall() #2, !dbg !923
  ret i64 %call, !dbg !923
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_recvfrom(ptr noundef %__unused) #0 align 16 !dbg !924 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !926, metadata !DIExpression()), !dbg !927
  %call = call i64 @sys_ni_syscall() #2, !dbg !927
  ret i64 %call, !dbg !927
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_sendmsg(ptr noundef %__unused) #0 align 16 !dbg !928 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !930, metadata !DIExpression()), !dbg !931
  %call = call i64 @sys_ni_syscall() #2, !dbg !931
  ret i64 %call, !dbg !931
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_sendmsg(ptr noundef %__unused) #0 align 16 !dbg !932 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !934, metadata !DIExpression()), !dbg !935
  %call = call i64 @sys_ni_syscall() #2, !dbg !935
  ret i64 %call, !dbg !935
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_sendmsg(ptr noundef %__unused) #0 align 16 !dbg !936 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !938, metadata !DIExpression()), !dbg !939
  %call = call i64 @sys_ni_syscall() #2, !dbg !939
  ret i64 %call, !dbg !939
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_recvmsg(ptr noundef %__unused) #0 align 16 !dbg !940 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !942, metadata !DIExpression()), !dbg !943
  %call = call i64 @sys_ni_syscall() #2, !dbg !943
  ret i64 %call, !dbg !943
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_recvmsg(ptr noundef %__unused) #0 align 16 !dbg !944 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !946, metadata !DIExpression()), !dbg !947
  %call = call i64 @sys_ni_syscall() #2, !dbg !947
  ret i64 %call, !dbg !947
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_recvmsg(ptr noundef %__unused) #0 align 16 !dbg !948 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !950, metadata !DIExpression()), !dbg !951
  %call = call i64 @sys_ni_syscall() #2, !dbg !951
  ret i64 %call, !dbg !951
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mremap(ptr noundef %__unused) #0 align 16 !dbg !952 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !954, metadata !DIExpression()), !dbg !955
  %call = call i64 @sys_ni_syscall() #2, !dbg !955
  ret i64 %call, !dbg !955
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mremap(ptr noundef %__unused) #0 align 16 !dbg !956 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !958, metadata !DIExpression()), !dbg !959
  %call = call i64 @sys_ni_syscall() #2, !dbg !959
  ret i64 %call, !dbg !959
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_add_key(ptr noundef %__unused) #0 align 16 !dbg !960 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !962, metadata !DIExpression()), !dbg !963
  %call = call i64 @sys_ni_syscall() #2, !dbg !963
  ret i64 %call, !dbg !963
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_add_key(ptr noundef %__unused) #0 align 16 !dbg !964 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !966, metadata !DIExpression()), !dbg !967
  %call = call i64 @sys_ni_syscall() #2, !dbg !967
  ret i64 %call, !dbg !967
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_request_key(ptr noundef %__unused) #0 align 16 !dbg !968 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !970, metadata !DIExpression()), !dbg !971
  %call = call i64 @sys_ni_syscall() #2, !dbg !971
  ret i64 %call, !dbg !971
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_request_key(ptr noundef %__unused) #0 align 16 !dbg !972 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !974, metadata !DIExpression()), !dbg !975
  %call = call i64 @sys_ni_syscall() #2, !dbg !975
  ret i64 %call, !dbg !975
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_keyctl(ptr noundef %__unused) #0 align 16 !dbg !976 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !978, metadata !DIExpression()), !dbg !979
  %call = call i64 @sys_ni_syscall() #2, !dbg !979
  ret i64 %call, !dbg !979
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_keyctl(ptr noundef %__unused) #0 align 16 !dbg !980 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !982, metadata !DIExpression()), !dbg !983
  %call = call i64 @sys_ni_syscall() #2, !dbg !983
  ret i64 %call, !dbg !983
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_keyctl(ptr noundef %__unused) #0 align 16 !dbg !984 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !986, metadata !DIExpression()), !dbg !987
  %call = call i64 @sys_ni_syscall() #2, !dbg !987
  ret i64 %call, !dbg !987
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_landlock_create_ruleset(ptr noundef %__unused) #0 align 16 !dbg !988 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !990, metadata !DIExpression()), !dbg !991
  %call = call i64 @sys_ni_syscall() #2, !dbg !991
  ret i64 %call, !dbg !991
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_landlock_create_ruleset(ptr noundef %__unused) #0 align 16 !dbg !992 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !994, metadata !DIExpression()), !dbg !995
  %call = call i64 @sys_ni_syscall() #2, !dbg !995
  ret i64 %call, !dbg !995
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_landlock_add_rule(ptr noundef %__unused) #0 align 16 !dbg !996 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !998, metadata !DIExpression()), !dbg !999
  %call = call i64 @sys_ni_syscall() #2, !dbg !999
  ret i64 %call, !dbg !999
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_landlock_add_rule(ptr noundef %__unused) #0 align 16 !dbg !1000 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1002, metadata !DIExpression()), !dbg !1003
  %call = call i64 @sys_ni_syscall() #2, !dbg !1003
  ret i64 %call, !dbg !1003
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_landlock_restrict_self(ptr noundef %__unused) #0 align 16 !dbg !1004 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1006, metadata !DIExpression()), !dbg !1007
  %call = call i64 @sys_ni_syscall() #2, !dbg !1007
  ret i64 %call, !dbg !1007
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_landlock_restrict_self(ptr noundef %__unused) #0 align 16 !dbg !1008 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1010, metadata !DIExpression()), !dbg !1011
  %call = call i64 @sys_ni_syscall() #2, !dbg !1011
  ret i64 %call, !dbg !1011
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_fadvise64_64(ptr noundef %__unused) #0 align 16 !dbg !1012 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1014, metadata !DIExpression()), !dbg !1015
  %call = call i64 @sys_ni_syscall() #2, !dbg !1015
  ret i64 %call, !dbg !1015
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_fadvise64_64(ptr noundef %__unused) #0 align 16 !dbg !1016 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1018, metadata !DIExpression()), !dbg !1019
  %call = call i64 @sys_ni_syscall() #2, !dbg !1019
  ret i64 %call, !dbg !1019
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_fadvise64_64(ptr noundef %__unused) #0 align 16 !dbg !1020 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1022, metadata !DIExpression()), !dbg !1023
  %call = call i64 @sys_ni_syscall() #2, !dbg !1023
  ret i64 %call, !dbg !1023
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_swapon(ptr noundef %__unused) #0 align 16 !dbg !1024 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1026, metadata !DIExpression()), !dbg !1027
  %call = call i64 @sys_ni_syscall() #2, !dbg !1027
  ret i64 %call, !dbg !1027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_swapon(ptr noundef %__unused) #0 align 16 !dbg !1028 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1030, metadata !DIExpression()), !dbg !1031
  %call = call i64 @sys_ni_syscall() #2, !dbg !1031
  ret i64 %call, !dbg !1031
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_swapoff(ptr noundef %__unused) #0 align 16 !dbg !1032 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1034, metadata !DIExpression()), !dbg !1035
  %call = call i64 @sys_ni_syscall() #2, !dbg !1035
  ret i64 %call, !dbg !1035
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_swapoff(ptr noundef %__unused) #0 align 16 !dbg !1036 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1038, metadata !DIExpression()), !dbg !1039
  %call = call i64 @sys_ni_syscall() #2, !dbg !1039
  ret i64 %call, !dbg !1039
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mprotect(ptr noundef %__unused) #0 align 16 !dbg !1040 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1042, metadata !DIExpression()), !dbg !1043
  %call = call i64 @sys_ni_syscall() #2, !dbg !1043
  ret i64 %call, !dbg !1043
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mprotect(ptr noundef %__unused) #0 align 16 !dbg !1044 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1046, metadata !DIExpression()), !dbg !1047
  %call = call i64 @sys_ni_syscall() #2, !dbg !1047
  ret i64 %call, !dbg !1047
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_msync(ptr noundef %__unused) #0 align 16 !dbg !1048 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1050, metadata !DIExpression()), !dbg !1051
  %call = call i64 @sys_ni_syscall() #2, !dbg !1051
  ret i64 %call, !dbg !1051
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_msync(ptr noundef %__unused) #0 align 16 !dbg !1052 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1054, metadata !DIExpression()), !dbg !1055
  %call = call i64 @sys_ni_syscall() #2, !dbg !1055
  ret i64 %call, !dbg !1055
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mlock(ptr noundef %__unused) #0 align 16 !dbg !1056 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1058, metadata !DIExpression()), !dbg !1059
  %call = call i64 @sys_ni_syscall() #2, !dbg !1059
  ret i64 %call, !dbg !1059
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mlock(ptr noundef %__unused) #0 align 16 !dbg !1060 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1062, metadata !DIExpression()), !dbg !1063
  %call = call i64 @sys_ni_syscall() #2, !dbg !1063
  ret i64 %call, !dbg !1063
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_munlock(ptr noundef %__unused) #0 align 16 !dbg !1064 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1066, metadata !DIExpression()), !dbg !1067
  %call = call i64 @sys_ni_syscall() #2, !dbg !1067
  ret i64 %call, !dbg !1067
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_munlock(ptr noundef %__unused) #0 align 16 !dbg !1068 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1070, metadata !DIExpression()), !dbg !1071
  %call = call i64 @sys_ni_syscall() #2, !dbg !1071
  ret i64 %call, !dbg !1071
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mlockall(ptr noundef %__unused) #0 align 16 !dbg !1072 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1074, metadata !DIExpression()), !dbg !1075
  %call = call i64 @sys_ni_syscall() #2, !dbg !1075
  ret i64 %call, !dbg !1075
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mlockall(ptr noundef %__unused) #0 align 16 !dbg !1076 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1078, metadata !DIExpression()), !dbg !1079
  %call = call i64 @sys_ni_syscall() #2, !dbg !1079
  ret i64 %call, !dbg !1079
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_munlockall(ptr noundef %__unused) #0 align 16 !dbg !1080 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1082, metadata !DIExpression()), !dbg !1083
  %call = call i64 @sys_ni_syscall() #2, !dbg !1083
  ret i64 %call, !dbg !1083
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_munlockall(ptr noundef %__unused) #0 align 16 !dbg !1084 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1086, metadata !DIExpression()), !dbg !1087
  %call = call i64 @sys_ni_syscall() #2, !dbg !1087
  ret i64 %call, !dbg !1087
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mincore(ptr noundef %__unused) #0 align 16 !dbg !1088 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1090, metadata !DIExpression()), !dbg !1091
  %call = call i64 @sys_ni_syscall() #2, !dbg !1091
  ret i64 %call, !dbg !1091
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mincore(ptr noundef %__unused) #0 align 16 !dbg !1092 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1094, metadata !DIExpression()), !dbg !1095
  %call = call i64 @sys_ni_syscall() #2, !dbg !1095
  ret i64 %call, !dbg !1095
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_madvise(ptr noundef %__unused) #0 align 16 !dbg !1096 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1098, metadata !DIExpression()), !dbg !1099
  %call = call i64 @sys_ni_syscall() #2, !dbg !1099
  ret i64 %call, !dbg !1099
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_madvise(ptr noundef %__unused) #0 align 16 !dbg !1100 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1102, metadata !DIExpression()), !dbg !1103
  %call = call i64 @sys_ni_syscall() #2, !dbg !1103
  ret i64 %call, !dbg !1103
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_process_madvise(ptr noundef %__unused) #0 align 16 !dbg !1104 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1106, metadata !DIExpression()), !dbg !1107
  %call = call i64 @sys_ni_syscall() #2, !dbg !1107
  ret i64 %call, !dbg !1107
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_process_madvise(ptr noundef %__unused) #0 align 16 !dbg !1108 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1110, metadata !DIExpression()), !dbg !1111
  %call = call i64 @sys_ni_syscall() #2, !dbg !1111
  ret i64 %call, !dbg !1111
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_process_mrelease(ptr noundef %__unused) #0 align 16 !dbg !1112 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1114, metadata !DIExpression()), !dbg !1115
  %call = call i64 @sys_ni_syscall() #2, !dbg !1115
  ret i64 %call, !dbg !1115
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_process_mrelease(ptr noundef %__unused) #0 align 16 !dbg !1116 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1118, metadata !DIExpression()), !dbg !1119
  %call = call i64 @sys_ni_syscall() #2, !dbg !1119
  ret i64 %call, !dbg !1119
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_remap_file_pages(ptr noundef %__unused) #0 align 16 !dbg !1120 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1122, metadata !DIExpression()), !dbg !1123
  %call = call i64 @sys_ni_syscall() #2, !dbg !1123
  ret i64 %call, !dbg !1123
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_remap_file_pages(ptr noundef %__unused) #0 align 16 !dbg !1124 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1126, metadata !DIExpression()), !dbg !1127
  %call = call i64 @sys_ni_syscall() #2, !dbg !1127
  ret i64 %call, !dbg !1127
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mbind(ptr noundef %__unused) #0 align 16 !dbg !1128 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1130, metadata !DIExpression()), !dbg !1131
  %call = call i64 @sys_ni_syscall() #2, !dbg !1131
  ret i64 %call, !dbg !1131
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mbind(ptr noundef %__unused) #0 align 16 !dbg !1132 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1134, metadata !DIExpression()), !dbg !1135
  %call = call i64 @sys_ni_syscall() #2, !dbg !1135
  ret i64 %call, !dbg !1135
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_get_mempolicy(ptr noundef %__unused) #0 align 16 !dbg !1136 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1138, metadata !DIExpression()), !dbg !1139
  %call = call i64 @sys_ni_syscall() #2, !dbg !1139
  ret i64 %call, !dbg !1139
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_get_mempolicy(ptr noundef %__unused) #0 align 16 !dbg !1140 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1142, metadata !DIExpression()), !dbg !1143
  %call = call i64 @sys_ni_syscall() #2, !dbg !1143
  ret i64 %call, !dbg !1143
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_set_mempolicy(ptr noundef %__unused) #0 align 16 !dbg !1144 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1146, metadata !DIExpression()), !dbg !1147
  %call = call i64 @sys_ni_syscall() #2, !dbg !1147
  ret i64 %call, !dbg !1147
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_set_mempolicy(ptr noundef %__unused) #0 align 16 !dbg !1148 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1150, metadata !DIExpression()), !dbg !1151
  %call = call i64 @sys_ni_syscall() #2, !dbg !1151
  ret i64 %call, !dbg !1151
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_migrate_pages(ptr noundef %__unused) #0 align 16 !dbg !1152 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1154, metadata !DIExpression()), !dbg !1155
  %call = call i64 @sys_ni_syscall() #2, !dbg !1155
  ret i64 %call, !dbg !1155
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_migrate_pages(ptr noundef %__unused) #0 align 16 !dbg !1156 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1158, metadata !DIExpression()), !dbg !1159
  %call = call i64 @sys_ni_syscall() #2, !dbg !1159
  ret i64 %call, !dbg !1159
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_move_pages(ptr noundef %__unused) #0 align 16 !dbg !1160 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1162, metadata !DIExpression()), !dbg !1163
  %call = call i64 @sys_ni_syscall() #2, !dbg !1163
  ret i64 %call, !dbg !1163
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_move_pages(ptr noundef %__unused) #0 align 16 !dbg !1164 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1166, metadata !DIExpression()), !dbg !1167
  %call = call i64 @sys_ni_syscall() #2, !dbg !1167
  ret i64 %call, !dbg !1167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_set_mempolicy_home_node(ptr noundef %__unused) #0 align 16 !dbg !1168 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1170, metadata !DIExpression()), !dbg !1171
  %call = call i64 @sys_ni_syscall() #2, !dbg !1171
  ret i64 %call, !dbg !1171
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_set_mempolicy_home_node(ptr noundef %__unused) #0 align 16 !dbg !1172 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1174, metadata !DIExpression()), !dbg !1175
  %call = call i64 @sys_ni_syscall() #2, !dbg !1175
  ret i64 %call, !dbg !1175
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_cachestat(ptr noundef %__unused) #0 align 16 !dbg !1176 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1178, metadata !DIExpression()), !dbg !1179
  %call = call i64 @sys_ni_syscall() #2, !dbg !1179
  ret i64 %call, !dbg !1179
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_cachestat(ptr noundef %__unused) #0 align 16 !dbg !1180 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  %call = call i64 @sys_ni_syscall() #2, !dbg !1183
  ret i64 %call, !dbg !1183
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_perf_event_open(ptr noundef %__unused) #0 align 16 !dbg !1184 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1186, metadata !DIExpression()), !dbg !1187
  %call = call i64 @sys_ni_syscall() #2, !dbg !1187
  ret i64 %call, !dbg !1187
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_perf_event_open(ptr noundef %__unused) #0 align 16 !dbg !1188 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1190, metadata !DIExpression()), !dbg !1191
  %call = call i64 @sys_ni_syscall() #2, !dbg !1191
  ret i64 %call, !dbg !1191
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_accept4(ptr noundef %__unused) #0 align 16 !dbg !1192 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1194, metadata !DIExpression()), !dbg !1195
  %call = call i64 @sys_ni_syscall() #2, !dbg !1195
  ret i64 %call, !dbg !1195
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_accept4(ptr noundef %__unused) #0 align 16 !dbg !1196 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1198, metadata !DIExpression()), !dbg !1199
  %call = call i64 @sys_ni_syscall() #2, !dbg !1199
  ret i64 %call, !dbg !1199
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_recvmmsg(ptr noundef %__unused) #0 align 16 !dbg !1200 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1202, metadata !DIExpression()), !dbg !1203
  %call = call i64 @sys_ni_syscall() #2, !dbg !1203
  ret i64 %call, !dbg !1203
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_recvmmsg(ptr noundef %__unused) #0 align 16 !dbg !1204 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1206, metadata !DIExpression()), !dbg !1207
  %call = call i64 @sys_ni_syscall() #2, !dbg !1207
  ret i64 %call, !dbg !1207
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_recvmmsg_time32(ptr noundef %__unused) #0 align 16 !dbg !1208 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1210, metadata !DIExpression()), !dbg !1211
  %call = call i64 @sys_ni_syscall() #2, !dbg !1211
  ret i64 %call, !dbg !1211
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_recvmmsg_time32(ptr noundef %__unused) #0 align 16 !dbg !1212 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1214, metadata !DIExpression()), !dbg !1215
  %call = call i64 @sys_ni_syscall() #2, !dbg !1215
  ret i64 %call, !dbg !1215
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_recvmmsg_time32(ptr noundef %__unused) #0 align 16 !dbg !1216 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1218, metadata !DIExpression()), !dbg !1219
  %call = call i64 @sys_ni_syscall() #2, !dbg !1219
  ret i64 %call, !dbg !1219
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_recvmmsg_time64(ptr noundef %__unused) #0 align 16 !dbg !1220 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1222, metadata !DIExpression()), !dbg !1223
  %call = call i64 @sys_ni_syscall() #2, !dbg !1223
  ret i64 %call, !dbg !1223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_timer_create(ptr noundef %__unused) #0 align 16 !dbg !1224 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1226, metadata !DIExpression()), !dbg !1227
  %call = call i64 @sys_ni_syscall() #2, !dbg !1227
  ret i64 %call, !dbg !1227
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_timer_create(ptr noundef %__unused) #0 align 16 !dbg !1228 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1230, metadata !DIExpression()), !dbg !1231
  %call = call i64 @sys_ni_syscall() #2, !dbg !1231
  ret i64 %call, !dbg !1231
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_timer_gettime(ptr noundef %__unused) #0 align 16 !dbg !1232 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1234, metadata !DIExpression()), !dbg !1235
  %call = call i64 @sys_ni_syscall() #2, !dbg !1235
  ret i64 %call, !dbg !1235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_timer_gettime(ptr noundef %__unused) #0 align 16 !dbg !1236 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1238, metadata !DIExpression()), !dbg !1239
  %call = call i64 @sys_ni_syscall() #2, !dbg !1239
  ret i64 %call, !dbg !1239
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_timer_getoverrun(ptr noundef %__unused) #0 align 16 !dbg !1240 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1242, metadata !DIExpression()), !dbg !1243
  %call = call i64 @sys_ni_syscall() #2, !dbg !1243
  ret i64 %call, !dbg !1243
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_timer_getoverrun(ptr noundef %__unused) #0 align 16 !dbg !1244 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1246, metadata !DIExpression()), !dbg !1247
  %call = call i64 @sys_ni_syscall() #2, !dbg !1247
  ret i64 %call, !dbg !1247
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_timer_settime(ptr noundef %__unused) #0 align 16 !dbg !1248 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1250, metadata !DIExpression()), !dbg !1251
  %call = call i64 @sys_ni_syscall() #2, !dbg !1251
  ret i64 %call, !dbg !1251
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_timer_settime(ptr noundef %__unused) #0 align 16 !dbg !1252 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1254, metadata !DIExpression()), !dbg !1255
  %call = call i64 @sys_ni_syscall() #2, !dbg !1255
  ret i64 %call, !dbg !1255
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_timer_delete(ptr noundef %__unused) #0 align 16 !dbg !1256 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1258, metadata !DIExpression()), !dbg !1259
  %call = call i64 @sys_ni_syscall() #2, !dbg !1259
  ret i64 %call, !dbg !1259
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_timer_delete(ptr noundef %__unused) #0 align 16 !dbg !1260 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1262, metadata !DIExpression()), !dbg !1263
  %call = call i64 @sys_ni_syscall() #2, !dbg !1263
  ret i64 %call, !dbg !1263
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_clock_adjtime(ptr noundef %__unused) #0 align 16 !dbg !1264 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1266, metadata !DIExpression()), !dbg !1267
  %call = call i64 @sys_ni_syscall() #2, !dbg !1267
  ret i64 %call, !dbg !1267
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_clock_adjtime(ptr noundef %__unused) #0 align 16 !dbg !1268 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1270, metadata !DIExpression()), !dbg !1271
  %call = call i64 @sys_ni_syscall() #2, !dbg !1271
  ret i64 %call, !dbg !1271
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_getitimer(ptr noundef %__unused) #0 align 16 !dbg !1272 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1274, metadata !DIExpression()), !dbg !1275
  %call = call i64 @sys_ni_syscall() #2, !dbg !1275
  ret i64 %call, !dbg !1275
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_getitimer(ptr noundef %__unused) #0 align 16 !dbg !1276 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1278, metadata !DIExpression()), !dbg !1279
  %call = call i64 @sys_ni_syscall() #2, !dbg !1279
  ret i64 %call, !dbg !1279
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setitimer(ptr noundef %__unused) #0 align 16 !dbg !1280 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1282, metadata !DIExpression()), !dbg !1283
  %call = call i64 @sys_ni_syscall() #2, !dbg !1283
  ret i64 %call, !dbg !1283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setitimer(ptr noundef %__unused) #0 align 16 !dbg !1284 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1286, metadata !DIExpression()), !dbg !1287
  %call = call i64 @sys_ni_syscall() #2, !dbg !1287
  ret i64 %call, !dbg !1287
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_alarm(ptr noundef %__unused) #0 align 16 !dbg !1288 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1290, metadata !DIExpression()), !dbg !1291
  %call = call i64 @sys_ni_syscall() #2, !dbg !1291
  ret i64 %call, !dbg !1291
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_alarm(ptr noundef %__unused) #0 align 16 !dbg !1292 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1294, metadata !DIExpression()), !dbg !1295
  %call = call i64 @sys_ni_syscall() #2, !dbg !1295
  ret i64 %call, !dbg !1295
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_timer_create(ptr noundef %__unused) #0 align 16 !dbg !1296 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1298, metadata !DIExpression()), !dbg !1299
  %call = call i64 @sys_ni_syscall() #2, !dbg !1299
  ret i64 %call, !dbg !1299
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_getitimer(ptr noundef %__unused) #0 align 16 !dbg !1300 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1302, metadata !DIExpression()), !dbg !1303
  %call = call i64 @sys_ni_syscall() #2, !dbg !1303
  ret i64 %call, !dbg !1303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_setitimer(ptr noundef %__unused) #0 align 16 !dbg !1304 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1306, metadata !DIExpression()), !dbg !1307
  %call = call i64 @sys_ni_syscall() #2, !dbg !1307
  ret i64 %call, !dbg !1307
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_fanotify_init(ptr noundef %__unused) #0 align 16 !dbg !1308 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1310, metadata !DIExpression()), !dbg !1311
  %call = call i64 @sys_ni_syscall() #2, !dbg !1311
  ret i64 %call, !dbg !1311
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_fanotify_init(ptr noundef %__unused) #0 align 16 !dbg !1312 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1314, metadata !DIExpression()), !dbg !1315
  %call = call i64 @sys_ni_syscall() #2, !dbg !1315
  ret i64 %call, !dbg !1315
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_fanotify_mark(ptr noundef %__unused) #0 align 16 !dbg !1316 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1318, metadata !DIExpression()), !dbg !1319
  %call = call i64 @sys_ni_syscall() #2, !dbg !1319
  ret i64 %call, !dbg !1319
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_fanotify_mark(ptr noundef %__unused) #0 align 16 !dbg !1320 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1322, metadata !DIExpression()), !dbg !1323
  %call = call i64 @sys_ni_syscall() #2, !dbg !1323
  ret i64 %call, !dbg !1323
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_name_to_handle_at(ptr noundef %__unused) #0 align 16 !dbg !1324 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1326, metadata !DIExpression()), !dbg !1327
  %call = call i64 @sys_ni_syscall() #2, !dbg !1327
  ret i64 %call, !dbg !1327
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_name_to_handle_at(ptr noundef %__unused) #0 align 16 !dbg !1328 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1330, metadata !DIExpression()), !dbg !1331
  %call = call i64 @sys_ni_syscall() #2, !dbg !1331
  ret i64 %call, !dbg !1331
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_open_by_handle_at(ptr noundef %__unused) #0 align 16 !dbg !1332 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1334, metadata !DIExpression()), !dbg !1335
  %call = call i64 @sys_ni_syscall() #2, !dbg !1335
  ret i64 %call, !dbg !1335
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_open_by_handle_at(ptr noundef %__unused) #0 align 16 !dbg !1336 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1338, metadata !DIExpression()), !dbg !1339
  %call = call i64 @sys_ni_syscall() #2, !dbg !1339
  ret i64 %call, !dbg !1339
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_open_by_handle_at(ptr noundef %__unused) #0 align 16 !dbg !1340 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1342, metadata !DIExpression()), !dbg !1343
  %call = call i64 @sys_ni_syscall() #2, !dbg !1343
  ret i64 %call, !dbg !1343
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_sendmmsg(ptr noundef %__unused) #0 align 16 !dbg !1344 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1346, metadata !DIExpression()), !dbg !1347
  %call = call i64 @sys_ni_syscall() #2, !dbg !1347
  ret i64 %call, !dbg !1347
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_sendmmsg(ptr noundef %__unused) #0 align 16 !dbg !1348 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1350, metadata !DIExpression()), !dbg !1351
  %call = call i64 @sys_ni_syscall() #2, !dbg !1351
  ret i64 %call, !dbg !1351
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_sendmmsg(ptr noundef %__unused) #0 align 16 !dbg !1352 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1354, metadata !DIExpression()), !dbg !1355
  %call = call i64 @sys_ni_syscall() #2, !dbg !1355
  ret i64 %call, !dbg !1355
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_process_vm_readv(ptr noundef %__unused) #0 align 16 !dbg !1356 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1358, metadata !DIExpression()), !dbg !1359
  %call = call i64 @sys_ni_syscall() #2, !dbg !1359
  ret i64 %call, !dbg !1359
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_process_vm_readv(ptr noundef %__unused) #0 align 16 !dbg !1360 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1362, metadata !DIExpression()), !dbg !1363
  %call = call i64 @sys_ni_syscall() #2, !dbg !1363
  ret i64 %call, !dbg !1363
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_process_vm_readv(ptr noundef %__unused) #0 align 16 !dbg !1364 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1366, metadata !DIExpression()), !dbg !1367
  %call = call i64 @sys_ni_syscall() #2, !dbg !1367
  ret i64 %call, !dbg !1367
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_process_vm_writev(ptr noundef %__unused) #0 align 16 !dbg !1368 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1370, metadata !DIExpression()), !dbg !1371
  %call = call i64 @sys_ni_syscall() #2, !dbg !1371
  ret i64 %call, !dbg !1371
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_process_vm_writev(ptr noundef %__unused) #0 align 16 !dbg !1372 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1374, metadata !DIExpression()), !dbg !1375
  %call = call i64 @sys_ni_syscall() #2, !dbg !1375
  ret i64 %call, !dbg !1375
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_process_vm_writev(ptr noundef %__unused) #0 align 16 !dbg !1376 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1378, metadata !DIExpression()), !dbg !1379
  %call = call i64 @sys_ni_syscall() #2, !dbg !1379
  ret i64 %call, !dbg !1379
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_kcmp(ptr noundef %__unused) #0 align 16 !dbg !1380 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1382, metadata !DIExpression()), !dbg !1383
  %call = call i64 @sys_ni_syscall() #2, !dbg !1383
  ret i64 %call, !dbg !1383
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_kcmp(ptr noundef %__unused) #0 align 16 !dbg !1384 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1386, metadata !DIExpression()), !dbg !1387
  %call = call i64 @sys_ni_syscall() #2, !dbg !1387
  ret i64 %call, !dbg !1387
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_finit_module(ptr noundef %__unused) #0 align 16 !dbg !1388 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1390, metadata !DIExpression()), !dbg !1391
  %call = call i64 @sys_ni_syscall() #2, !dbg !1391
  ret i64 %call, !dbg !1391
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_finit_module(ptr noundef %__unused) #0 align 16 !dbg !1392 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1394, metadata !DIExpression()), !dbg !1395
  %call = call i64 @sys_ni_syscall() #2, !dbg !1395
  ret i64 %call, !dbg !1395
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_seccomp(ptr noundef %__unused) #0 align 16 !dbg !1396 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1398, metadata !DIExpression()), !dbg !1399
  %call = call i64 @sys_ni_syscall() #2, !dbg !1399
  ret i64 %call, !dbg !1399
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_seccomp(ptr noundef %__unused) #0 align 16 !dbg !1400 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1402, metadata !DIExpression()), !dbg !1403
  %call = call i64 @sys_ni_syscall() #2, !dbg !1403
  ret i64 %call, !dbg !1403
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_memfd_create(ptr noundef %__unused) #0 align 16 !dbg !1404 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1406, metadata !DIExpression()), !dbg !1407
  %call = call i64 @sys_ni_syscall() #2, !dbg !1407
  ret i64 %call, !dbg !1407
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_memfd_create(ptr noundef %__unused) #0 align 16 !dbg !1408 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1410, metadata !DIExpression()), !dbg !1411
  %call = call i64 @sys_ni_syscall() #2, !dbg !1411
  ret i64 %call, !dbg !1411
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_bpf(ptr noundef %__unused) #0 align 16 !dbg !1412 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1414, metadata !DIExpression()), !dbg !1415
  %call = call i64 @sys_ni_syscall() #2, !dbg !1415
  ret i64 %call, !dbg !1415
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_bpf(ptr noundef %__unused) #0 align 16 !dbg !1416 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1418, metadata !DIExpression()), !dbg !1419
  %call = call i64 @sys_ni_syscall() #2, !dbg !1419
  ret i64 %call, !dbg !1419
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_execveat(ptr noundef %__unused) #0 align 16 !dbg !1420 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1422, metadata !DIExpression()), !dbg !1423
  %call = call i64 @sys_ni_syscall() #2, !dbg !1423
  ret i64 %call, !dbg !1423
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_execveat(ptr noundef %__unused) #0 align 16 !dbg !1424 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1426, metadata !DIExpression()), !dbg !1427
  %call = call i64 @sys_ni_syscall() #2, !dbg !1427
  ret i64 %call, !dbg !1427
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_userfaultfd(ptr noundef %__unused) #0 align 16 !dbg !1428 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1430, metadata !DIExpression()), !dbg !1431
  %call = call i64 @sys_ni_syscall() #2, !dbg !1431
  ret i64 %call, !dbg !1431
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_userfaultfd(ptr noundef %__unused) #0 align 16 !dbg !1432 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1434, metadata !DIExpression()), !dbg !1435
  %call = call i64 @sys_ni_syscall() #2, !dbg !1435
  ret i64 %call, !dbg !1435
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_membarrier(ptr noundef %__unused) #0 align 16 !dbg !1436 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1438, metadata !DIExpression()), !dbg !1439
  %call = call i64 @sys_ni_syscall() #2, !dbg !1439
  ret i64 %call, !dbg !1439
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_membarrier(ptr noundef %__unused) #0 align 16 !dbg !1440 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1442, metadata !DIExpression()), !dbg !1443
  %call = call i64 @sys_ni_syscall() #2, !dbg !1443
  ret i64 %call, !dbg !1443
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_mlock2(ptr noundef %__unused) #0 align 16 !dbg !1444 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1446, metadata !DIExpression()), !dbg !1447
  %call = call i64 @sys_ni_syscall() #2, !dbg !1447
  ret i64 %call, !dbg !1447
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_mlock2(ptr noundef %__unused) #0 align 16 !dbg !1448 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1450, metadata !DIExpression()), !dbg !1451
  %call = call i64 @sys_ni_syscall() #2, !dbg !1451
  ret i64 %call, !dbg !1451
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_copy_file_range(ptr noundef %__unused) #0 align 16 !dbg !1452 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1454, metadata !DIExpression()), !dbg !1455
  %call = call i64 @sys_ni_syscall() #2, !dbg !1455
  ret i64 %call, !dbg !1455
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_copy_file_range(ptr noundef %__unused) #0 align 16 !dbg !1456 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1458, metadata !DIExpression()), !dbg !1459
  %call = call i64 @sys_ni_syscall() #2, !dbg !1459
  ret i64 %call, !dbg !1459
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_pkey_mprotect(ptr noundef %__unused) #0 align 16 !dbg !1460 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1462, metadata !DIExpression()), !dbg !1463
  %call = call i64 @sys_ni_syscall() #2, !dbg !1463
  ret i64 %call, !dbg !1463
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_pkey_mprotect(ptr noundef %__unused) #0 align 16 !dbg !1464 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1466, metadata !DIExpression()), !dbg !1467
  %call = call i64 @sys_ni_syscall() #2, !dbg !1467
  ret i64 %call, !dbg !1467
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_pkey_alloc(ptr noundef %__unused) #0 align 16 !dbg !1468 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1470, metadata !DIExpression()), !dbg !1471
  %call = call i64 @sys_ni_syscall() #2, !dbg !1471
  ret i64 %call, !dbg !1471
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_pkey_alloc(ptr noundef %__unused) #0 align 16 !dbg !1472 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1474, metadata !DIExpression()), !dbg !1475
  %call = call i64 @sys_ni_syscall() #2, !dbg !1475
  ret i64 %call, !dbg !1475
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_pkey_free(ptr noundef %__unused) #0 align 16 !dbg !1476 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1478, metadata !DIExpression()), !dbg !1479
  %call = call i64 @sys_ni_syscall() #2, !dbg !1479
  ret i64 %call, !dbg !1479
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_pkey_free(ptr noundef %__unused) #0 align 16 !dbg !1480 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1482, metadata !DIExpression()), !dbg !1483
  %call = call i64 @sys_ni_syscall() #2, !dbg !1483
  ret i64 %call, !dbg !1483
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_memfd_secret(ptr noundef %__unused) #0 align 16 !dbg !1484 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1486, metadata !DIExpression()), !dbg !1487
  %call = call i64 @sys_ni_syscall() #2, !dbg !1487
  ret i64 %call, !dbg !1487
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_memfd_secret(ptr noundef %__unused) #0 align 16 !dbg !1488 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1490, metadata !DIExpression()), !dbg !1491
  %call = call i64 @sys_ni_syscall() #2, !dbg !1491
  ret i64 %call, !dbg !1491
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_pciconfig_read(ptr noundef %__unused) #0 align 16 !dbg !1492 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1494, metadata !DIExpression()), !dbg !1495
  %call = call i64 @sys_ni_syscall() #2, !dbg !1495
  ret i64 %call, !dbg !1495
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_pciconfig_read(ptr noundef %__unused) #0 align 16 !dbg !1496 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1498, metadata !DIExpression()), !dbg !1499
  %call = call i64 @sys_ni_syscall() #2, !dbg !1499
  ret i64 %call, !dbg !1499
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_pciconfig_write(ptr noundef %__unused) #0 align 16 !dbg !1500 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1502, metadata !DIExpression()), !dbg !1503
  %call = call i64 @sys_ni_syscall() #2, !dbg !1503
  ret i64 %call, !dbg !1503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_pciconfig_write(ptr noundef %__unused) #0 align 16 !dbg !1504 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1506, metadata !DIExpression()), !dbg !1507
  %call = call i64 @sys_ni_syscall() #2, !dbg !1507
  ret i64 %call, !dbg !1507
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_pciconfig_iobase(ptr noundef %__unused) #0 align 16 !dbg !1508 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1510, metadata !DIExpression()), !dbg !1511
  %call = call i64 @sys_ni_syscall() #2, !dbg !1511
  ret i64 %call, !dbg !1511
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_pciconfig_iobase(ptr noundef %__unused) #0 align 16 !dbg !1512 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1514, metadata !DIExpression()), !dbg !1515
  %call = call i64 @sys_ni_syscall() #2, !dbg !1515
  ret i64 %call, !dbg !1515
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_socketcall(ptr noundef %__unused) #0 align 16 !dbg !1516 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1518, metadata !DIExpression()), !dbg !1519
  %call = call i64 @sys_ni_syscall() #2, !dbg !1519
  ret i64 %call, !dbg !1519
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_socketcall(ptr noundef %__unused) #0 align 16 !dbg !1520 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1522, metadata !DIExpression()), !dbg !1523
  %call = call i64 @sys_ni_syscall() #2, !dbg !1523
  ret i64 %call, !dbg !1523
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_socketcall(ptr noundef %__unused) #0 align 16 !dbg !1524 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1526, metadata !DIExpression()), !dbg !1527
  %call = call i64 @sys_ni_syscall() #2, !dbg !1527
  ret i64 %call, !dbg !1527
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_fanotify_mark(ptr noundef %__unused) #0 align 16 !dbg !1528 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1530, metadata !DIExpression()), !dbg !1531
  %call = call i64 @sys_ni_syscall() #2, !dbg !1531
  ret i64 %call, !dbg !1531
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_vm86old(ptr noundef %__unused) #0 align 16 !dbg !1532 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1534, metadata !DIExpression()), !dbg !1535
  %call = call i64 @sys_ni_syscall() #2, !dbg !1535
  ret i64 %call, !dbg !1535
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_vm86old(ptr noundef %__unused) #0 align 16 !dbg !1536 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1538, metadata !DIExpression()), !dbg !1539
  %call = call i64 @sys_ni_syscall() #2, !dbg !1539
  ret i64 %call, !dbg !1539
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_modify_ldt(ptr noundef %__unused) #0 align 16 !dbg !1540 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1542, metadata !DIExpression()), !dbg !1543
  %call = call i64 @sys_ni_syscall() #2, !dbg !1543
  ret i64 %call, !dbg !1543
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_modify_ldt(ptr noundef %__unused) #0 align 16 !dbg !1544 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1546, metadata !DIExpression()), !dbg !1547
  %call = call i64 @sys_ni_syscall() #2, !dbg !1547
  ret i64 %call, !dbg !1547
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_vm86(ptr noundef %__unused) #0 align 16 !dbg !1548 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1550, metadata !DIExpression()), !dbg !1551
  %call = call i64 @sys_ni_syscall() #2, !dbg !1551
  ret i64 %call, !dbg !1551
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_vm86(ptr noundef %__unused) #0 align 16 !dbg !1552 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1554, metadata !DIExpression()), !dbg !1555
  %call = call i64 @sys_ni_syscall() #2, !dbg !1555
  ret i64 %call, !dbg !1555
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_kexec_file_load(ptr noundef %__unused) #0 align 16 !dbg !1556 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1558, metadata !DIExpression()), !dbg !1559
  %call = call i64 @sys_ni_syscall() #2, !dbg !1559
  ret i64 %call, !dbg !1559
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_kexec_file_load(ptr noundef %__unused) #0 align 16 !dbg !1560 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1562, metadata !DIExpression()), !dbg !1563
  %call = call i64 @sys_ni_syscall() #2, !dbg !1563
  ret i64 %call, !dbg !1563
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_map_shadow_stack(ptr noundef %__unused) #0 align 16 !dbg !1564 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1566, metadata !DIExpression()), !dbg !1567
  %call = call i64 @sys_ni_syscall() #2, !dbg !1567
  ret i64 %call, !dbg !1567
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_map_shadow_stack(ptr noundef %__unused) #0 align 16 !dbg !1568 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1570, metadata !DIExpression()), !dbg !1571
  %call = call i64 @sys_ni_syscall() #2, !dbg !1571
  ret i64 %call, !dbg !1571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_s390_pci_mmio_read(ptr noundef %__unused) #0 align 16 !dbg !1572 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1574, metadata !DIExpression()), !dbg !1575
  %call = call i64 @sys_ni_syscall() #2, !dbg !1575
  ret i64 %call, !dbg !1575
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_s390_pci_mmio_read(ptr noundef %__unused) #0 align 16 !dbg !1576 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1578, metadata !DIExpression()), !dbg !1579
  %call = call i64 @sys_ni_syscall() #2, !dbg !1579
  ret i64 %call, !dbg !1579
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_s390_pci_mmio_write(ptr noundef %__unused) #0 align 16 !dbg !1580 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1582, metadata !DIExpression()), !dbg !1583
  %call = call i64 @sys_ni_syscall() #2, !dbg !1583
  ret i64 %call, !dbg !1583
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_s390_pci_mmio_write(ptr noundef %__unused) #0 align 16 !dbg !1584 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1586, metadata !DIExpression()), !dbg !1587
  %call = call i64 @sys_ni_syscall() #2, !dbg !1587
  ret i64 %call, !dbg !1587
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_s390_ipc(ptr noundef %__unused) #0 align 16 !dbg !1588 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1590, metadata !DIExpression()), !dbg !1591
  %call = call i64 @sys_ni_syscall() #2, !dbg !1591
  ret i64 %call, !dbg !1591
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_s390_ipc(ptr noundef %__unused) #0 align 16 !dbg !1592 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1594, metadata !DIExpression()), !dbg !1595
  %call = call i64 @sys_ni_syscall() #2, !dbg !1595
  ret i64 %call, !dbg !1595
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_s390_ipc(ptr noundef %__unused) #0 align 16 !dbg !1596 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1598, metadata !DIExpression()), !dbg !1599
  %call = call i64 @sys_ni_syscall() #2, !dbg !1599
  ret i64 %call, !dbg !1599
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_rtas(ptr noundef %__unused) #0 align 16 !dbg !1600 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1602, metadata !DIExpression()), !dbg !1603
  %call = call i64 @sys_ni_syscall() #2, !dbg !1603
  ret i64 %call, !dbg !1603
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_rtas(ptr noundef %__unused) #0 align 16 !dbg !1604 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1606, metadata !DIExpression()), !dbg !1607
  %call = call i64 @sys_ni_syscall() #2, !dbg !1607
  ret i64 %call, !dbg !1607
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_spu_run(ptr noundef %__unused) #0 align 16 !dbg !1608 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1610, metadata !DIExpression()), !dbg !1611
  %call = call i64 @sys_ni_syscall() #2, !dbg !1611
  ret i64 %call, !dbg !1611
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_spu_run(ptr noundef %__unused) #0 align 16 !dbg !1612 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1614, metadata !DIExpression()), !dbg !1615
  %call = call i64 @sys_ni_syscall() #2, !dbg !1615
  ret i64 %call, !dbg !1615
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_spu_create(ptr noundef %__unused) #0 align 16 !dbg !1616 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1618, metadata !DIExpression()), !dbg !1619
  %call = call i64 @sys_ni_syscall() #2, !dbg !1619
  ret i64 %call, !dbg !1619
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_spu_create(ptr noundef %__unused) #0 align 16 !dbg !1620 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1622, metadata !DIExpression()), !dbg !1623
  %call = call i64 @sys_ni_syscall() #2, !dbg !1623
  ret i64 %call, !dbg !1623
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_subpage_prot(ptr noundef %__unused) #0 align 16 !dbg !1624 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1626, metadata !DIExpression()), !dbg !1627
  %call = call i64 @sys_ni_syscall() #2, !dbg !1627
  ret i64 %call, !dbg !1627
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_subpage_prot(ptr noundef %__unused) #0 align 16 !dbg !1628 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1630, metadata !DIExpression()), !dbg !1631
  %call = call i64 @sys_ni_syscall() #2, !dbg !1631
  ret i64 %call, !dbg !1631
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_epoll_create(ptr noundef %__unused) #0 align 16 !dbg !1632 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1634, metadata !DIExpression()), !dbg !1635
  %call = call i64 @sys_ni_syscall() #2, !dbg !1635
  ret i64 %call, !dbg !1635
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_epoll_create(ptr noundef %__unused) #0 align 16 !dbg !1636 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1638, metadata !DIExpression()), !dbg !1639
  %call = call i64 @sys_ni_syscall() #2, !dbg !1639
  ret i64 %call, !dbg !1639
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_inotify_init(ptr noundef %__unused) #0 align 16 !dbg !1640 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1642, metadata !DIExpression()), !dbg !1643
  %call = call i64 @sys_ni_syscall() #2, !dbg !1643
  ret i64 %call, !dbg !1643
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_inotify_init(ptr noundef %__unused) #0 align 16 !dbg !1644 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1646, metadata !DIExpression()), !dbg !1647
  %call = call i64 @sys_ni_syscall() #2, !dbg !1647
  ret i64 %call, !dbg !1647
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_eventfd(ptr noundef %__unused) #0 align 16 !dbg !1648 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1650, metadata !DIExpression()), !dbg !1651
  %call = call i64 @sys_ni_syscall() #2, !dbg !1651
  ret i64 %call, !dbg !1651
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_eventfd(ptr noundef %__unused) #0 align 16 !dbg !1652 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1654, metadata !DIExpression()), !dbg !1655
  %call = call i64 @sys_ni_syscall() #2, !dbg !1655
  ret i64 %call, !dbg !1655
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_signalfd(ptr noundef %__unused) #0 align 16 !dbg !1656 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1658, metadata !DIExpression()), !dbg !1659
  %call = call i64 @sys_ni_syscall() #2, !dbg !1659
  ret i64 %call, !dbg !1659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_signalfd(ptr noundef %__unused) #0 align 16 !dbg !1660 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1662, metadata !DIExpression()), !dbg !1663
  %call = call i64 @sys_ni_syscall() #2, !dbg !1663
  ret i64 %call, !dbg !1663
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_signalfd(ptr noundef %__unused) #0 align 16 !dbg !1664 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1666, metadata !DIExpression()), !dbg !1667
  %call = call i64 @sys_ni_syscall() #2, !dbg !1667
  ret i64 %call, !dbg !1667
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_fadvise64(ptr noundef %__unused) #0 align 16 !dbg !1668 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1670, metadata !DIExpression()), !dbg !1671
  %call = call i64 @sys_ni_syscall() #2, !dbg !1671
  ret i64 %call, !dbg !1671
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_fadvise64(ptr noundef %__unused) #0 align 16 !dbg !1672 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1674, metadata !DIExpression()), !dbg !1675
  %call = call i64 @sys_ni_syscall() #2, !dbg !1675
  ret i64 %call, !dbg !1675
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_epoll_wait(ptr noundef %__unused) #0 align 16 !dbg !1676 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1678, metadata !DIExpression()), !dbg !1679
  %call = call i64 @sys_ni_syscall() #2, !dbg !1679
  ret i64 %call, !dbg !1679
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_epoll_wait(ptr noundef %__unused) #0 align 16 !dbg !1680 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1682, metadata !DIExpression()), !dbg !1683
  %call = call i64 @sys_ni_syscall() #2, !dbg !1683
  ret i64 %call, !dbg !1683
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_recv(ptr noundef %__unused) #0 align 16 !dbg !1684 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1686, metadata !DIExpression()), !dbg !1687
  %call = call i64 @sys_ni_syscall() #2, !dbg !1687
  ret i64 %call, !dbg !1687
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_recv(ptr noundef %__unused) #0 align 16 !dbg !1688 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1690, metadata !DIExpression()), !dbg !1691
  %call = call i64 @sys_ni_syscall() #2, !dbg !1691
  ret i64 %call, !dbg !1691
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_recv(ptr noundef %__unused) #0 align 16 !dbg !1692 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1694, metadata !DIExpression()), !dbg !1695
  %call = call i64 @sys_ni_syscall() #2, !dbg !1695
  ret i64 %call, !dbg !1695
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_send(ptr noundef %__unused) #0 align 16 !dbg !1696 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1698, metadata !DIExpression()), !dbg !1699
  %call = call i64 @sys_ni_syscall() #2, !dbg !1699
  ret i64 %call, !dbg !1699
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_send(ptr noundef %__unused) #0 align 16 !dbg !1700 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1702, metadata !DIExpression()), !dbg !1703
  %call = call i64 @sys_ni_syscall() #2, !dbg !1703
  ret i64 %call, !dbg !1703
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_uselib(ptr noundef %__unused) #0 align 16 !dbg !1704 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1706, metadata !DIExpression()), !dbg !1707
  %call = call i64 @sys_ni_syscall() #2, !dbg !1707
  ret i64 %call, !dbg !1707
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_uselib(ptr noundef %__unused) #0 align 16 !dbg !1708 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1710, metadata !DIExpression()), !dbg !1711
  %call = call i64 @sys_ni_syscall() #2, !dbg !1711
  ret i64 %call, !dbg !1711
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_time32(ptr noundef %__unused) #0 align 16 !dbg !1712 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1714, metadata !DIExpression()), !dbg !1715
  %call = call i64 @sys_ni_syscall() #2, !dbg !1715
  ret i64 %call, !dbg !1715
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_time32(ptr noundef %__unused) #0 align 16 !dbg !1716 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1718, metadata !DIExpression()), !dbg !1719
  %call = call i64 @sys_ni_syscall() #2, !dbg !1719
  ret i64 %call, !dbg !1719
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_stime32(ptr noundef %__unused) #0 align 16 !dbg !1720 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1722, metadata !DIExpression()), !dbg !1723
  %call = call i64 @sys_ni_syscall() #2, !dbg !1723
  ret i64 %call, !dbg !1723
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_stime32(ptr noundef %__unused) #0 align 16 !dbg !1724 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1726, metadata !DIExpression()), !dbg !1727
  %call = call i64 @sys_ni_syscall() #2, !dbg !1727
  ret i64 %call, !dbg !1727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_utime32(ptr noundef %__unused) #0 align 16 !dbg !1728 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1730, metadata !DIExpression()), !dbg !1731
  %call = call i64 @sys_ni_syscall() #2, !dbg !1731
  ret i64 %call, !dbg !1731
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_utime32(ptr noundef %__unused) #0 align 16 !dbg !1732 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1734, metadata !DIExpression()), !dbg !1735
  %call = call i64 @sys_ni_syscall() #2, !dbg !1735
  ret i64 %call, !dbg !1735
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_adjtimex_time32(ptr noundef %__unused) #0 align 16 !dbg !1736 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1738, metadata !DIExpression()), !dbg !1739
  %call = call i64 @sys_ni_syscall() #2, !dbg !1739
  ret i64 %call, !dbg !1739
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_adjtimex_time32(ptr noundef %__unused) #0 align 16 !dbg !1740 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1742, metadata !DIExpression()), !dbg !1743
  %call = call i64 @sys_ni_syscall() #2, !dbg !1743
  ret i64 %call, !dbg !1743
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_sched_rr_get_interval_time32(ptr noundef %__unused) #0 align 16 !dbg !1744 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1746, metadata !DIExpression()), !dbg !1747
  %call = call i64 @sys_ni_syscall() #2, !dbg !1747
  ret i64 %call, !dbg !1747
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_sched_rr_get_interval_time32(ptr noundef %__unused) #0 align 16 !dbg !1748 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1750, metadata !DIExpression()), !dbg !1751
  %call = call i64 @sys_ni_syscall() #2, !dbg !1751
  ret i64 %call, !dbg !1751
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_nanosleep_time32(ptr noundef %__unused) #0 align 16 !dbg !1752 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1754, metadata !DIExpression()), !dbg !1755
  %call = call i64 @sys_ni_syscall() #2, !dbg !1755
  ret i64 %call, !dbg !1755
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_nanosleep_time32(ptr noundef %__unused) #0 align 16 !dbg !1756 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1758, metadata !DIExpression()), !dbg !1759
  %call = call i64 @sys_ni_syscall() #2, !dbg !1759
  ret i64 %call, !dbg !1759
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_rt_sigtimedwait_time32(ptr noundef %__unused) #0 align 16 !dbg !1760 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1762, metadata !DIExpression()), !dbg !1763
  %call = call i64 @sys_ni_syscall() #2, !dbg !1763
  ret i64 %call, !dbg !1763
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_rt_sigtimedwait_time32(ptr noundef %__unused) #0 align 16 !dbg !1764 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1766, metadata !DIExpression()), !dbg !1767
  %call = call i64 @sys_ni_syscall() #2, !dbg !1767
  ret i64 %call, !dbg !1767
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_rt_sigtimedwait_time32(ptr noundef %__unused) #0 align 16 !dbg !1768 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1770, metadata !DIExpression()), !dbg !1771
  %call = call i64 @sys_ni_syscall() #2, !dbg !1771
  ret i64 %call, !dbg !1771
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_timer_settime32(ptr noundef %__unused) #0 align 16 !dbg !1772 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1774, metadata !DIExpression()), !dbg !1775
  %call = call i64 @sys_ni_syscall() #2, !dbg !1775
  ret i64 %call, !dbg !1775
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_timer_settime32(ptr noundef %__unused) #0 align 16 !dbg !1776 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1778, metadata !DIExpression()), !dbg !1779
  %call = call i64 @sys_ni_syscall() #2, !dbg !1779
  ret i64 %call, !dbg !1779
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_timer_gettime32(ptr noundef %__unused) #0 align 16 !dbg !1780 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1782, metadata !DIExpression()), !dbg !1783
  %call = call i64 @sys_ni_syscall() #2, !dbg !1783
  ret i64 %call, !dbg !1783
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_timer_gettime32(ptr noundef %__unused) #0 align 16 !dbg !1784 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1786, metadata !DIExpression()), !dbg !1787
  %call = call i64 @sys_ni_syscall() #2, !dbg !1787
  ret i64 %call, !dbg !1787
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_clock_settime32(ptr noundef %__unused) #0 align 16 !dbg !1788 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1790, metadata !DIExpression()), !dbg !1791
  %call = call i64 @sys_ni_syscall() #2, !dbg !1791
  ret i64 %call, !dbg !1791
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_clock_settime32(ptr noundef %__unused) #0 align 16 !dbg !1792 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1794, metadata !DIExpression()), !dbg !1795
  %call = call i64 @sys_ni_syscall() #2, !dbg !1795
  ret i64 %call, !dbg !1795
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_clock_gettime32(ptr noundef %__unused) #0 align 16 !dbg !1796 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1798, metadata !DIExpression()), !dbg !1799
  %call = call i64 @sys_ni_syscall() #2, !dbg !1799
  ret i64 %call, !dbg !1799
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_clock_gettime32(ptr noundef %__unused) #0 align 16 !dbg !1800 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1802, metadata !DIExpression()), !dbg !1803
  %call = call i64 @sys_ni_syscall() #2, !dbg !1803
  ret i64 %call, !dbg !1803
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_clock_getres_time32(ptr noundef %__unused) #0 align 16 !dbg !1804 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1806, metadata !DIExpression()), !dbg !1807
  %call = call i64 @sys_ni_syscall() #2, !dbg !1807
  ret i64 %call, !dbg !1807
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_clock_getres_time32(ptr noundef %__unused) #0 align 16 !dbg !1808 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1810, metadata !DIExpression()), !dbg !1811
  %call = call i64 @sys_ni_syscall() #2, !dbg !1811
  ret i64 %call, !dbg !1811
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_clock_nanosleep_time32(ptr noundef %__unused) #0 align 16 !dbg !1812 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1814, metadata !DIExpression()), !dbg !1815
  %call = call i64 @sys_ni_syscall() #2, !dbg !1815
  ret i64 %call, !dbg !1815
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_clock_nanosleep_time32(ptr noundef %__unused) #0 align 16 !dbg !1816 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1818, metadata !DIExpression()), !dbg !1819
  %call = call i64 @sys_ni_syscall() #2, !dbg !1819
  ret i64 %call, !dbg !1819
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_utimes_time32(ptr noundef %__unused) #0 align 16 !dbg !1820 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1822, metadata !DIExpression()), !dbg !1823
  %call = call i64 @sys_ni_syscall() #2, !dbg !1823
  ret i64 %call, !dbg !1823
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_utimes_time32(ptr noundef %__unused) #0 align 16 !dbg !1824 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1826, metadata !DIExpression()), !dbg !1827
  %call = call i64 @sys_ni_syscall() #2, !dbg !1827
  ret i64 %call, !dbg !1827
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_futimesat_time32(ptr noundef %__unused) #0 align 16 !dbg !1828 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1830, metadata !DIExpression()), !dbg !1831
  %call = call i64 @sys_ni_syscall() #2, !dbg !1831
  ret i64 %call, !dbg !1831
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_futimesat_time32(ptr noundef %__unused) #0 align 16 !dbg !1832 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1834, metadata !DIExpression()), !dbg !1835
  %call = call i64 @sys_ni_syscall() #2, !dbg !1835
  ret i64 %call, !dbg !1835
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_pselect6_time32(ptr noundef %__unused) #0 align 16 !dbg !1836 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1838, metadata !DIExpression()), !dbg !1839
  %call = call i64 @sys_ni_syscall() #2, !dbg !1839
  ret i64 %call, !dbg !1839
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_pselect6_time32(ptr noundef %__unused) #0 align 16 !dbg !1840 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1842, metadata !DIExpression()), !dbg !1843
  %call = call i64 @sys_ni_syscall() #2, !dbg !1843
  ret i64 %call, !dbg !1843
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_pselect6_time32(ptr noundef %__unused) #0 align 16 !dbg !1844 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1846, metadata !DIExpression()), !dbg !1847
  %call = call i64 @sys_ni_syscall() #2, !dbg !1847
  ret i64 %call, !dbg !1847
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_ppoll_time32(ptr noundef %__unused) #0 align 16 !dbg !1848 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1850, metadata !DIExpression()), !dbg !1851
  %call = call i64 @sys_ni_syscall() #2, !dbg !1851
  ret i64 %call, !dbg !1851
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_ppoll_time32(ptr noundef %__unused) #0 align 16 !dbg !1852 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1854, metadata !DIExpression()), !dbg !1855
  %call = call i64 @sys_ni_syscall() #2, !dbg !1855
  ret i64 %call, !dbg !1855
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_ppoll_time32(ptr noundef %__unused) #0 align 16 !dbg !1856 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1858, metadata !DIExpression()), !dbg !1859
  %call = call i64 @sys_ni_syscall() #2, !dbg !1859
  ret i64 %call, !dbg !1859
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_utimensat_time32(ptr noundef %__unused) #0 align 16 !dbg !1860 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1862, metadata !DIExpression()), !dbg !1863
  %call = call i64 @sys_ni_syscall() #2, !dbg !1863
  ret i64 %call, !dbg !1863
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_utimensat_time32(ptr noundef %__unused) #0 align 16 !dbg !1864 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1866, metadata !DIExpression()), !dbg !1867
  %call = call i64 @sys_ni_syscall() #2, !dbg !1867
  ret i64 %call, !dbg !1867
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_clock_adjtime32(ptr noundef %__unused) #0 align 16 !dbg !1868 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1870, metadata !DIExpression()), !dbg !1871
  %call = call i64 @sys_ni_syscall() #2, !dbg !1871
  ret i64 %call, !dbg !1871
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_clock_adjtime32(ptr noundef %__unused) #0 align 16 !dbg !1872 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1874, metadata !DIExpression()), !dbg !1875
  %call = call i64 @sys_ni_syscall() #2, !dbg !1875
  ret i64 %call, !dbg !1875
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_sgetmask(ptr noundef %__unused) #0 align 16 !dbg !1876 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1878, metadata !DIExpression()), !dbg !1879
  %call = call i64 @sys_ni_syscall() #2, !dbg !1879
  ret i64 %call, !dbg !1879
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_sgetmask(ptr noundef %__unused) #0 align 16 !dbg !1880 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1882, metadata !DIExpression()), !dbg !1883
  %call = call i64 @sys_ni_syscall() #2, !dbg !1883
  ret i64 %call, !dbg !1883
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_ssetmask(ptr noundef %__unused) #0 align 16 !dbg !1884 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1886, metadata !DIExpression()), !dbg !1887
  %call = call i64 @sys_ni_syscall() #2, !dbg !1887
  ret i64 %call, !dbg !1887
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_ssetmask(ptr noundef %__unused) #0 align 16 !dbg !1888 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1890, metadata !DIExpression()), !dbg !1891
  %call = call i64 @sys_ni_syscall() #2, !dbg !1891
  ret i64 %call, !dbg !1891
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_sysfs(ptr noundef %__unused) #0 align 16 !dbg !1892 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1894, metadata !DIExpression()), !dbg !1895
  %call = call i64 @sys_ni_syscall() #2, !dbg !1895
  ret i64 %call, !dbg !1895
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_sysfs(ptr noundef %__unused) #0 align 16 !dbg !1896 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1898, metadata !DIExpression()), !dbg !1899
  %call = call i64 @sys_ni_syscall() #2, !dbg !1899
  ret i64 %call, !dbg !1899
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_ipc(ptr noundef %__unused) #0 align 16 !dbg !1900 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1902, metadata !DIExpression()), !dbg !1903
  %call = call i64 @sys_ni_syscall() #2, !dbg !1903
  ret i64 %call, !dbg !1903
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_ipc(ptr noundef %__unused) #0 align 16 !dbg !1904 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1906, metadata !DIExpression()), !dbg !1907
  %call = call i64 @sys_ni_syscall() #2, !dbg !1907
  ret i64 %call, !dbg !1907
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_compat_sys_ipc(ptr noundef %__unused) #0 align 16 !dbg !1908 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1910, metadata !DIExpression()), !dbg !1911
  %call = call i64 @sys_ni_syscall() #2, !dbg !1911
  ret i64 %call, !dbg !1911
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_chown16(ptr noundef %__unused) #0 align 16 !dbg !1912 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1914, metadata !DIExpression()), !dbg !1915
  %call = call i64 @sys_ni_syscall() #2, !dbg !1915
  ret i64 %call, !dbg !1915
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_chown16(ptr noundef %__unused) #0 align 16 !dbg !1916 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1918, metadata !DIExpression()), !dbg !1919
  %call = call i64 @sys_ni_syscall() #2, !dbg !1919
  ret i64 %call, !dbg !1919
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_fchown16(ptr noundef %__unused) #0 align 16 !dbg !1920 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1922, metadata !DIExpression()), !dbg !1923
  %call = call i64 @sys_ni_syscall() #2, !dbg !1923
  ret i64 %call, !dbg !1923
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_fchown16(ptr noundef %__unused) #0 align 16 !dbg !1924 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1926, metadata !DIExpression()), !dbg !1927
  %call = call i64 @sys_ni_syscall() #2, !dbg !1927
  ret i64 %call, !dbg !1927
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_getegid16(ptr noundef %__unused) #0 align 16 !dbg !1928 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1930, metadata !DIExpression()), !dbg !1931
  %call = call i64 @sys_ni_syscall() #2, !dbg !1931
  ret i64 %call, !dbg !1931
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_getegid16(ptr noundef %__unused) #0 align 16 !dbg !1932 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1934, metadata !DIExpression()), !dbg !1935
  %call = call i64 @sys_ni_syscall() #2, !dbg !1935
  ret i64 %call, !dbg !1935
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_geteuid16(ptr noundef %__unused) #0 align 16 !dbg !1936 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1938, metadata !DIExpression()), !dbg !1939
  %call = call i64 @sys_ni_syscall() #2, !dbg !1939
  ret i64 %call, !dbg !1939
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_geteuid16(ptr noundef %__unused) #0 align 16 !dbg !1940 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1942, metadata !DIExpression()), !dbg !1943
  %call = call i64 @sys_ni_syscall() #2, !dbg !1943
  ret i64 %call, !dbg !1943
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_getgid16(ptr noundef %__unused) #0 align 16 !dbg !1944 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1946, metadata !DIExpression()), !dbg !1947
  %call = call i64 @sys_ni_syscall() #2, !dbg !1947
  ret i64 %call, !dbg !1947
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_getgid16(ptr noundef %__unused) #0 align 16 !dbg !1948 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1950, metadata !DIExpression()), !dbg !1951
  %call = call i64 @sys_ni_syscall() #2, !dbg !1951
  ret i64 %call, !dbg !1951
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_getgroups16(ptr noundef %__unused) #0 align 16 !dbg !1952 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1954, metadata !DIExpression()), !dbg !1955
  %call = call i64 @sys_ni_syscall() #2, !dbg !1955
  ret i64 %call, !dbg !1955
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_getgroups16(ptr noundef %__unused) #0 align 16 !dbg !1956 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1958, metadata !DIExpression()), !dbg !1959
  %call = call i64 @sys_ni_syscall() #2, !dbg !1959
  ret i64 %call, !dbg !1959
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_getresgid16(ptr noundef %__unused) #0 align 16 !dbg !1960 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1962, metadata !DIExpression()), !dbg !1963
  %call = call i64 @sys_ni_syscall() #2, !dbg !1963
  ret i64 %call, !dbg !1963
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_getresgid16(ptr noundef %__unused) #0 align 16 !dbg !1964 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1966, metadata !DIExpression()), !dbg !1967
  %call = call i64 @sys_ni_syscall() #2, !dbg !1967
  ret i64 %call, !dbg !1967
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_getresuid16(ptr noundef %__unused) #0 align 16 !dbg !1968 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1970, metadata !DIExpression()), !dbg !1971
  %call = call i64 @sys_ni_syscall() #2, !dbg !1971
  ret i64 %call, !dbg !1971
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_getresuid16(ptr noundef %__unused) #0 align 16 !dbg !1972 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1974, metadata !DIExpression()), !dbg !1975
  %call = call i64 @sys_ni_syscall() #2, !dbg !1975
  ret i64 %call, !dbg !1975
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_getuid16(ptr noundef %__unused) #0 align 16 !dbg !1976 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1978, metadata !DIExpression()), !dbg !1979
  %call = call i64 @sys_ni_syscall() #2, !dbg !1979
  ret i64 %call, !dbg !1979
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_getuid16(ptr noundef %__unused) #0 align 16 !dbg !1980 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1982, metadata !DIExpression()), !dbg !1983
  %call = call i64 @sys_ni_syscall() #2, !dbg !1983
  ret i64 %call, !dbg !1983
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_lchown16(ptr noundef %__unused) #0 align 16 !dbg !1984 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1986, metadata !DIExpression()), !dbg !1987
  %call = call i64 @sys_ni_syscall() #2, !dbg !1987
  ret i64 %call, !dbg !1987
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_lchown16(ptr noundef %__unused) #0 align 16 !dbg !1988 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1990, metadata !DIExpression()), !dbg !1991
  %call = call i64 @sys_ni_syscall() #2, !dbg !1991
  ret i64 %call, !dbg !1991
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setfsgid16(ptr noundef %__unused) #0 align 16 !dbg !1992 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1994, metadata !DIExpression()), !dbg !1995
  %call = call i64 @sys_ni_syscall() #2, !dbg !1995
  ret i64 %call, !dbg !1995
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setfsgid16(ptr noundef %__unused) #0 align 16 !dbg !1996 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !1998, metadata !DIExpression()), !dbg !1999
  %call = call i64 @sys_ni_syscall() #2, !dbg !1999
  ret i64 %call, !dbg !1999
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setfsuid16(ptr noundef %__unused) #0 align 16 !dbg !2000 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2002, metadata !DIExpression()), !dbg !2003
  %call = call i64 @sys_ni_syscall() #2, !dbg !2003
  ret i64 %call, !dbg !2003
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setfsuid16(ptr noundef %__unused) #0 align 16 !dbg !2004 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2006, metadata !DIExpression()), !dbg !2007
  %call = call i64 @sys_ni_syscall() #2, !dbg !2007
  ret i64 %call, !dbg !2007
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setgid16(ptr noundef %__unused) #0 align 16 !dbg !2008 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2010, metadata !DIExpression()), !dbg !2011
  %call = call i64 @sys_ni_syscall() #2, !dbg !2011
  ret i64 %call, !dbg !2011
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setgid16(ptr noundef %__unused) #0 align 16 !dbg !2012 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2014, metadata !DIExpression()), !dbg !2015
  %call = call i64 @sys_ni_syscall() #2, !dbg !2015
  ret i64 %call, !dbg !2015
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setgroups16(ptr noundef %__unused) #0 align 16 !dbg !2016 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2018, metadata !DIExpression()), !dbg !2019
  %call = call i64 @sys_ni_syscall() #2, !dbg !2019
  ret i64 %call, !dbg !2019
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setgroups16(ptr noundef %__unused) #0 align 16 !dbg !2020 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2022, metadata !DIExpression()), !dbg !2023
  %call = call i64 @sys_ni_syscall() #2, !dbg !2023
  ret i64 %call, !dbg !2023
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setregid16(ptr noundef %__unused) #0 align 16 !dbg !2024 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2026, metadata !DIExpression()), !dbg !2027
  %call = call i64 @sys_ni_syscall() #2, !dbg !2027
  ret i64 %call, !dbg !2027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setregid16(ptr noundef %__unused) #0 align 16 !dbg !2028 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2030, metadata !DIExpression()), !dbg !2031
  %call = call i64 @sys_ni_syscall() #2, !dbg !2031
  ret i64 %call, !dbg !2031
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setresgid16(ptr noundef %__unused) #0 align 16 !dbg !2032 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2034, metadata !DIExpression()), !dbg !2035
  %call = call i64 @sys_ni_syscall() #2, !dbg !2035
  ret i64 %call, !dbg !2035
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setresgid16(ptr noundef %__unused) #0 align 16 !dbg !2036 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2038, metadata !DIExpression()), !dbg !2039
  %call = call i64 @sys_ni_syscall() #2, !dbg !2039
  ret i64 %call, !dbg !2039
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setresuid16(ptr noundef %__unused) #0 align 16 !dbg !2040 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2042, metadata !DIExpression()), !dbg !2043
  %call = call i64 @sys_ni_syscall() #2, !dbg !2043
  ret i64 %call, !dbg !2043
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setresuid16(ptr noundef %__unused) #0 align 16 !dbg !2044 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2046, metadata !DIExpression()), !dbg !2047
  %call = call i64 @sys_ni_syscall() #2, !dbg !2047
  ret i64 %call, !dbg !2047
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setreuid16(ptr noundef %__unused) #0 align 16 !dbg !2048 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2050, metadata !DIExpression()), !dbg !2051
  %call = call i64 @sys_ni_syscall() #2, !dbg !2051
  ret i64 %call, !dbg !2051
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setreuid16(ptr noundef %__unused) #0 align 16 !dbg !2052 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2054, metadata !DIExpression()), !dbg !2055
  %call = call i64 @sys_ni_syscall() #2, !dbg !2055
  ret i64 %call, !dbg !2055
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_setuid16(ptr noundef %__unused) #0 align 16 !dbg !2056 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2058, metadata !DIExpression()), !dbg !2059
  %call = call i64 @sys_ni_syscall() #2, !dbg !2059
  ret i64 %call, !dbg !2059
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_setuid16(ptr noundef %__unused) #0 align 16 !dbg !2060 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2062, metadata !DIExpression()), !dbg !2063
  %call = call i64 @sys_ni_syscall() #2, !dbg !2063
  ret i64 %call, !dbg !2063
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__x64_sys_rseq(ptr noundef %__unused) #0 align 16 !dbg !2064 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2066, metadata !DIExpression()), !dbg !2067
  %call = call i64 @sys_ni_syscall() #2, !dbg !2067
  ret i64 %call, !dbg !2067
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @__ia32_sys_rseq(ptr noundef %__unused) #0 align 16 !dbg !2068 {
entry:
  %__unused.addr = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !2070, metadata !DIExpression()), !dbg !2071
  %call = call i64 @sys_ni_syscall() #2, !dbg !2071
  ret i64 %call, !dbg !2071
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.sys_ni.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/sys_ni\22 -D KBUILD_BASENAME=\22sys_ni\22 -D KBUILD_MODNAME=\22sys_ni\22 -D __KBUILD_MODNAME=kmod_sys_ni -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/sys_ni.ll kernel/sys_ni.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "kernel/sys_ni.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "469a6a883917d0f89f5d698bcffb5de9")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "sys_ni_syscall", scope: !1, file: !1, line: 20, type: !12, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!15 = !DILocation(line: 22, column: 2, scope: !11)
!16 = distinct !DISubprogram(name: "__x64_sys_io_setup", scope: !1, file: !1, line: 39, type: !17, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!17 = !DISubroutineType(types: !18)
!18 = !{!14, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !22, line: 103, size: 1344, elements: !23)
!22 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!23 = !{!24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !61, !62, !63}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !21, file: !22, line: 109, baseType: !25, size: 64)
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !21, file: !22, line: 110, baseType: !25, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !21, file: !22, line: 111, baseType: !25, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !21, file: !22, line: 112, baseType: !25, size: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !21, file: !22, line: 113, baseType: !25, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !21, file: !22, line: 114, baseType: !25, size: 64, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !21, file: !22, line: 117, baseType: !25, size: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !21, file: !22, line: 118, baseType: !25, size: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !21, file: !22, line: 119, baseType: !25, size: 64, offset: 512)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !21, file: !22, line: 120, baseType: !25, size: 64, offset: 576)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !21, file: !22, line: 121, baseType: !25, size: 64, offset: 640)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !21, file: !22, line: 122, baseType: !25, size: 64, offset: 704)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !21, file: !22, line: 123, baseType: !25, size: 64, offset: 768)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !21, file: !22, line: 124, baseType: !25, size: 64, offset: 832)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !21, file: !22, line: 125, baseType: !25, size: 64, offset: 896)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !21, file: !22, line: 139, baseType: !25, size: 64, offset: 960)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !21, file: !22, line: 142, baseType: !25, size: 64, offset: 1024)
!42 = !DIDerivedType(tag: DW_TAG_member, scope: !21, file: !22, line: 144, baseType: !43, size: 64, offset: 1088)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !21, file: !22, line: 144, size: 64, elements: !44)
!44 = !{!45, !51, !55}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !43, file: !22, line: 146, baseType: !46, size: 16)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !47, line: 19, baseType: !48)
!47 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !49, line: 24, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !43, file: !22, line: 148, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !47, line: 23, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !49, line: 31, baseType: !54)
!54 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !43, file: !22, line: 150, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !22, line: 59, size: 64, elements: !57)
!57 = !{!58, !59, !60}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !56, file: !22, line: 61, baseType: !52, size: 16, flags: DIFlagBitField, extraData: i64 0)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !56, file: !22, line: 63, baseType: !52, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !56, file: !22, line: 65, baseType: !52, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !21, file: !22, line: 153, baseType: !25, size: 64, offset: 1152)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !21, file: !22, line: 154, baseType: !25, size: 64, offset: 1216)
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !21, file: !22, line: 156, baseType: !64, size: 64, offset: 1280)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !21, file: !22, line: 156, size: 64, elements: !65)
!65 = !{!66, !67, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !64, file: !22, line: 158, baseType: !46, size: 16)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !64, file: !22, line: 160, baseType: !52, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !64, file: !22, line: 162, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !22, line: 69, size: 64, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !69, file: !22, line: 71, baseType: !52, size: 16, flags: DIFlagBitField, extraData: i64 0)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !69, file: !22, line: 73, baseType: !52, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !69, file: !22, line: 75, baseType: !52, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !69, file: !22, line: 77, baseType: !52, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !69, file: !22, line: 80, baseType: !52, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !22, line: 83, baseType: !52, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !69, file: !22, line: 86, baseType: !52, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !69, file: !22, line: 88, baseType: !52, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !69, file: !22, line: 93, baseType: !52, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !69, file: !22, line: 100, baseType: !52, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!81 = !{!82}
!82 = !DILocalVariable(name: "__unused", arg: 1, scope: !16, file: !1, line: 39, type: !19)
!83 = !DILocation(line: 39, column: 1, scope: !16)
!84 = distinct !DISubprogram(name: "__ia32_sys_io_setup", scope: !1, file: !1, line: 39, type: !17, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!85 = !{!86}
!86 = !DILocalVariable(name: "__unused", arg: 1, scope: !84, file: !1, line: 39, type: !19)
!87 = !DILocation(line: 39, column: 1, scope: !84)
!88 = distinct !DISubprogram(name: "__ia32_compat_sys_io_setup", scope: !1, file: !1, line: 40, type: !17, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !89)
!89 = !{!90}
!90 = !DILocalVariable(name: "__unused", arg: 1, scope: !88, file: !1, line: 40, type: !19)
!91 = !DILocation(line: 40, column: 1, scope: !88)
!92 = distinct !DISubprogram(name: "__x64_sys_io_destroy", scope: !1, file: !1, line: 41, type: !17, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!93 = !{!94}
!94 = !DILocalVariable(name: "__unused", arg: 1, scope: !92, file: !1, line: 41, type: !19)
!95 = !DILocation(line: 41, column: 1, scope: !92)
!96 = distinct !DISubprogram(name: "__ia32_sys_io_destroy", scope: !1, file: !1, line: 41, type: !17, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !97)
!97 = !{!98}
!98 = !DILocalVariable(name: "__unused", arg: 1, scope: !96, file: !1, line: 41, type: !19)
!99 = !DILocation(line: 41, column: 1, scope: !96)
!100 = distinct !DISubprogram(name: "__x64_sys_io_submit", scope: !1, file: !1, line: 42, type: !17, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !101)
!101 = !{!102}
!102 = !DILocalVariable(name: "__unused", arg: 1, scope: !100, file: !1, line: 42, type: !19)
!103 = !DILocation(line: 42, column: 1, scope: !100)
!104 = distinct !DISubprogram(name: "__ia32_sys_io_submit", scope: !1, file: !1, line: 42, type: !17, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !105)
!105 = !{!106}
!106 = !DILocalVariable(name: "__unused", arg: 1, scope: !104, file: !1, line: 42, type: !19)
!107 = !DILocation(line: 42, column: 1, scope: !104)
!108 = distinct !DISubprogram(name: "__ia32_compat_sys_io_submit", scope: !1, file: !1, line: 43, type: !17, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !109)
!109 = !{!110}
!110 = !DILocalVariable(name: "__unused", arg: 1, scope: !108, file: !1, line: 43, type: !19)
!111 = !DILocation(line: 43, column: 1, scope: !108)
!112 = distinct !DISubprogram(name: "__x64_sys_io_cancel", scope: !1, file: !1, line: 44, type: !17, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !113)
!113 = !{!114}
!114 = !DILocalVariable(name: "__unused", arg: 1, scope: !112, file: !1, line: 44, type: !19)
!115 = !DILocation(line: 44, column: 1, scope: !112)
!116 = distinct !DISubprogram(name: "__ia32_sys_io_cancel", scope: !1, file: !1, line: 44, type: !17, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!117 = !{!118}
!118 = !DILocalVariable(name: "__unused", arg: 1, scope: !116, file: !1, line: 44, type: !19)
!119 = !DILocation(line: 44, column: 1, scope: !116)
!120 = distinct !DISubprogram(name: "__x64_sys_io_getevents_time32", scope: !1, file: !1, line: 45, type: !17, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!121 = !{!122}
!122 = !DILocalVariable(name: "__unused", arg: 1, scope: !120, file: !1, line: 45, type: !19)
!123 = !DILocation(line: 45, column: 1, scope: !120)
!124 = distinct !DISubprogram(name: "__ia32_sys_io_getevents_time32", scope: !1, file: !1, line: 45, type: !17, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !125)
!125 = !{!126}
!126 = !DILocalVariable(name: "__unused", arg: 1, scope: !124, file: !1, line: 45, type: !19)
!127 = !DILocation(line: 45, column: 1, scope: !124)
!128 = distinct !DISubprogram(name: "__x64_sys_io_getevents", scope: !1, file: !1, line: 46, type: !17, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!129 = !{!130}
!130 = !DILocalVariable(name: "__unused", arg: 1, scope: !128, file: !1, line: 46, type: !19)
!131 = !DILocation(line: 46, column: 1, scope: !128)
!132 = distinct !DISubprogram(name: "__ia32_sys_io_getevents", scope: !1, file: !1, line: 46, type: !17, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !133)
!133 = !{!134}
!134 = !DILocalVariable(name: "__unused", arg: 1, scope: !132, file: !1, line: 46, type: !19)
!135 = !DILocation(line: 46, column: 1, scope: !132)
!136 = distinct !DISubprogram(name: "__x64_sys_io_pgetevents_time32", scope: !1, file: !1, line: 47, type: !17, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!137 = !{!138}
!138 = !DILocalVariable(name: "__unused", arg: 1, scope: !136, file: !1, line: 47, type: !19)
!139 = !DILocation(line: 47, column: 1, scope: !136)
!140 = distinct !DISubprogram(name: "__ia32_sys_io_pgetevents_time32", scope: !1, file: !1, line: 47, type: !17, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !141)
!141 = !{!142}
!142 = !DILocalVariable(name: "__unused", arg: 1, scope: !140, file: !1, line: 47, type: !19)
!143 = !DILocation(line: 47, column: 1, scope: !140)
!144 = distinct !DISubprogram(name: "__x64_sys_io_pgetevents", scope: !1, file: !1, line: 48, type: !17, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146}
!146 = !DILocalVariable(name: "__unused", arg: 1, scope: !144, file: !1, line: 48, type: !19)
!147 = !DILocation(line: 48, column: 1, scope: !144)
!148 = distinct !DISubprogram(name: "__ia32_sys_io_pgetevents", scope: !1, file: !1, line: 48, type: !17, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !149)
!149 = !{!150}
!150 = !DILocalVariable(name: "__unused", arg: 1, scope: !148, file: !1, line: 48, type: !19)
!151 = !DILocation(line: 48, column: 1, scope: !148)
!152 = distinct !DISubprogram(name: "__ia32_compat_sys_io_pgetevents", scope: !1, file: !1, line: 49, type: !17, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !153)
!153 = !{!154}
!154 = !DILocalVariable(name: "__unused", arg: 1, scope: !152, file: !1, line: 49, type: !19)
!155 = !DILocation(line: 49, column: 1, scope: !152)
!156 = distinct !DISubprogram(name: "__ia32_compat_sys_io_pgetevents_time64", scope: !1, file: !1, line: 50, type: !17, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !157)
!157 = !{!158}
!158 = !DILocalVariable(name: "__unused", arg: 1, scope: !156, file: !1, line: 50, type: !19)
!159 = !DILocation(line: 50, column: 1, scope: !156)
!160 = distinct !DISubprogram(name: "__x64_sys_io_uring_setup", scope: !1, file: !1, line: 51, type: !17, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !161)
!161 = !{!162}
!162 = !DILocalVariable(name: "__unused", arg: 1, scope: !160, file: !1, line: 51, type: !19)
!163 = !DILocation(line: 51, column: 1, scope: !160)
!164 = distinct !DISubprogram(name: "__ia32_sys_io_uring_setup", scope: !1, file: !1, line: 51, type: !17, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !165)
!165 = !{!166}
!166 = !DILocalVariable(name: "__unused", arg: 1, scope: !164, file: !1, line: 51, type: !19)
!167 = !DILocation(line: 51, column: 1, scope: !164)
!168 = distinct !DISubprogram(name: "__x64_sys_io_uring_enter", scope: !1, file: !1, line: 52, type: !17, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !169)
!169 = !{!170}
!170 = !DILocalVariable(name: "__unused", arg: 1, scope: !168, file: !1, line: 52, type: !19)
!171 = !DILocation(line: 52, column: 1, scope: !168)
!172 = distinct !DISubprogram(name: "__ia32_sys_io_uring_enter", scope: !1, file: !1, line: 52, type: !17, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !173)
!173 = !{!174}
!174 = !DILocalVariable(name: "__unused", arg: 1, scope: !172, file: !1, line: 52, type: !19)
!175 = !DILocation(line: 52, column: 1, scope: !172)
!176 = distinct !DISubprogram(name: "__x64_sys_io_uring_register", scope: !1, file: !1, line: 53, type: !17, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !177)
!177 = !{!178}
!178 = !DILocalVariable(name: "__unused", arg: 1, scope: !176, file: !1, line: 53, type: !19)
!179 = !DILocation(line: 53, column: 1, scope: !176)
!180 = distinct !DISubprogram(name: "__ia32_sys_io_uring_register", scope: !1, file: !1, line: 53, type: !17, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !181)
!181 = !{!182}
!182 = !DILocalVariable(name: "__unused", arg: 1, scope: !180, file: !1, line: 53, type: !19)
!183 = !DILocation(line: 53, column: 1, scope: !180)
!184 = distinct !DISubprogram(name: "__x64_sys_lookup_dcookie", scope: !1, file: !1, line: 54, type: !17, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !185)
!185 = !{!186}
!186 = !DILocalVariable(name: "__unused", arg: 1, scope: !184, file: !1, line: 54, type: !19)
!187 = !DILocation(line: 54, column: 1, scope: !184)
!188 = distinct !DISubprogram(name: "__ia32_sys_lookup_dcookie", scope: !1, file: !1, line: 54, type: !17, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !189)
!189 = !{!190}
!190 = !DILocalVariable(name: "__unused", arg: 1, scope: !188, file: !1, line: 54, type: !19)
!191 = !DILocation(line: 54, column: 1, scope: !188)
!192 = distinct !DISubprogram(name: "__ia32_compat_sys_lookup_dcookie", scope: !1, file: !1, line: 55, type: !17, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !193)
!193 = !{!194}
!194 = !DILocalVariable(name: "__unused", arg: 1, scope: !192, file: !1, line: 55, type: !19)
!195 = !DILocation(line: 55, column: 1, scope: !192)
!196 = distinct !DISubprogram(name: "__x64_sys_eventfd2", scope: !1, file: !1, line: 56, type: !17, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !197)
!197 = !{!198}
!198 = !DILocalVariable(name: "__unused", arg: 1, scope: !196, file: !1, line: 56, type: !19)
!199 = !DILocation(line: 56, column: 1, scope: !196)
!200 = distinct !DISubprogram(name: "__ia32_sys_eventfd2", scope: !1, file: !1, line: 56, type: !17, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !201)
!201 = !{!202}
!202 = !DILocalVariable(name: "__unused", arg: 1, scope: !200, file: !1, line: 56, type: !19)
!203 = !DILocation(line: 56, column: 1, scope: !200)
!204 = distinct !DISubprogram(name: "__x64_sys_epoll_create1", scope: !1, file: !1, line: 57, type: !17, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !205)
!205 = !{!206}
!206 = !DILocalVariable(name: "__unused", arg: 1, scope: !204, file: !1, line: 57, type: !19)
!207 = !DILocation(line: 57, column: 1, scope: !204)
!208 = distinct !DISubprogram(name: "__ia32_sys_epoll_create1", scope: !1, file: !1, line: 57, type: !17, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !209)
!209 = !{!210}
!210 = !DILocalVariable(name: "__unused", arg: 1, scope: !208, file: !1, line: 57, type: !19)
!211 = !DILocation(line: 57, column: 1, scope: !208)
!212 = distinct !DISubprogram(name: "__x64_sys_epoll_ctl", scope: !1, file: !1, line: 58, type: !17, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !213)
!213 = !{!214}
!214 = !DILocalVariable(name: "__unused", arg: 1, scope: !212, file: !1, line: 58, type: !19)
!215 = !DILocation(line: 58, column: 1, scope: !212)
!216 = distinct !DISubprogram(name: "__ia32_sys_epoll_ctl", scope: !1, file: !1, line: 58, type: !17, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!217 = !{!218}
!218 = !DILocalVariable(name: "__unused", arg: 1, scope: !216, file: !1, line: 58, type: !19)
!219 = !DILocation(line: 58, column: 1, scope: !216)
!220 = distinct !DISubprogram(name: "__x64_sys_epoll_pwait", scope: !1, file: !1, line: 59, type: !17, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !221)
!221 = !{!222}
!222 = !DILocalVariable(name: "__unused", arg: 1, scope: !220, file: !1, line: 59, type: !19)
!223 = !DILocation(line: 59, column: 1, scope: !220)
!224 = distinct !DISubprogram(name: "__ia32_sys_epoll_pwait", scope: !1, file: !1, line: 59, type: !17, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !225)
!225 = !{!226}
!226 = !DILocalVariable(name: "__unused", arg: 1, scope: !224, file: !1, line: 59, type: !19)
!227 = !DILocation(line: 59, column: 1, scope: !224)
!228 = distinct !DISubprogram(name: "__ia32_compat_sys_epoll_pwait", scope: !1, file: !1, line: 60, type: !17, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !229)
!229 = !{!230}
!230 = !DILocalVariable(name: "__unused", arg: 1, scope: !228, file: !1, line: 60, type: !19)
!231 = !DILocation(line: 60, column: 1, scope: !228)
!232 = distinct !DISubprogram(name: "__x64_sys_epoll_pwait2", scope: !1, file: !1, line: 61, type: !17, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!233 = !{!234}
!234 = !DILocalVariable(name: "__unused", arg: 1, scope: !232, file: !1, line: 61, type: !19)
!235 = !DILocation(line: 61, column: 1, scope: !232)
!236 = distinct !DISubprogram(name: "__ia32_sys_epoll_pwait2", scope: !1, file: !1, line: 61, type: !17, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !237)
!237 = !{!238}
!238 = !DILocalVariable(name: "__unused", arg: 1, scope: !236, file: !1, line: 61, type: !19)
!239 = !DILocation(line: 61, column: 1, scope: !236)
!240 = distinct !DISubprogram(name: "__ia32_compat_sys_epoll_pwait2", scope: !1, file: !1, line: 62, type: !17, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !241)
!241 = !{!242}
!242 = !DILocalVariable(name: "__unused", arg: 1, scope: !240, file: !1, line: 62, type: !19)
!243 = !DILocation(line: 62, column: 1, scope: !240)
!244 = distinct !DISubprogram(name: "__x64_sys_inotify_init1", scope: !1, file: !1, line: 63, type: !17, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !245)
!245 = !{!246}
!246 = !DILocalVariable(name: "__unused", arg: 1, scope: !244, file: !1, line: 63, type: !19)
!247 = !DILocation(line: 63, column: 1, scope: !244)
!248 = distinct !DISubprogram(name: "__ia32_sys_inotify_init1", scope: !1, file: !1, line: 63, type: !17, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !249)
!249 = !{!250}
!250 = !DILocalVariable(name: "__unused", arg: 1, scope: !248, file: !1, line: 63, type: !19)
!251 = !DILocation(line: 63, column: 1, scope: !248)
!252 = distinct !DISubprogram(name: "__x64_sys_inotify_add_watch", scope: !1, file: !1, line: 64, type: !17, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !253)
!253 = !{!254}
!254 = !DILocalVariable(name: "__unused", arg: 1, scope: !252, file: !1, line: 64, type: !19)
!255 = !DILocation(line: 64, column: 1, scope: !252)
!256 = distinct !DISubprogram(name: "__ia32_sys_inotify_add_watch", scope: !1, file: !1, line: 64, type: !17, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !257)
!257 = !{!258}
!258 = !DILocalVariable(name: "__unused", arg: 1, scope: !256, file: !1, line: 64, type: !19)
!259 = !DILocation(line: 64, column: 1, scope: !256)
!260 = distinct !DISubprogram(name: "__x64_sys_inotify_rm_watch", scope: !1, file: !1, line: 65, type: !17, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !261)
!261 = !{!262}
!262 = !DILocalVariable(name: "__unused", arg: 1, scope: !260, file: !1, line: 65, type: !19)
!263 = !DILocation(line: 65, column: 1, scope: !260)
!264 = distinct !DISubprogram(name: "__ia32_sys_inotify_rm_watch", scope: !1, file: !1, line: 65, type: !17, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !265)
!265 = !{!266}
!266 = !DILocalVariable(name: "__unused", arg: 1, scope: !264, file: !1, line: 65, type: !19)
!267 = !DILocation(line: 65, column: 1, scope: !264)
!268 = distinct !DISubprogram(name: "__x64_sys_ioprio_set", scope: !1, file: !1, line: 66, type: !17, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !269)
!269 = !{!270}
!270 = !DILocalVariable(name: "__unused", arg: 1, scope: !268, file: !1, line: 66, type: !19)
!271 = !DILocation(line: 66, column: 1, scope: !268)
!272 = distinct !DISubprogram(name: "__ia32_sys_ioprio_set", scope: !1, file: !1, line: 66, type: !17, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!273 = !{!274}
!274 = !DILocalVariable(name: "__unused", arg: 1, scope: !272, file: !1, line: 66, type: !19)
!275 = !DILocation(line: 66, column: 1, scope: !272)
!276 = distinct !DISubprogram(name: "__x64_sys_ioprio_get", scope: !1, file: !1, line: 67, type: !17, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !277)
!277 = !{!278}
!278 = !DILocalVariable(name: "__unused", arg: 1, scope: !276, file: !1, line: 67, type: !19)
!279 = !DILocation(line: 67, column: 1, scope: !276)
!280 = distinct !DISubprogram(name: "__ia32_sys_ioprio_get", scope: !1, file: !1, line: 67, type: !17, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !281)
!281 = !{!282}
!282 = !DILocalVariable(name: "__unused", arg: 1, scope: !280, file: !1, line: 67, type: !19)
!283 = !DILocation(line: 67, column: 1, scope: !280)
!284 = distinct !DISubprogram(name: "__x64_sys_flock", scope: !1, file: !1, line: 68, type: !17, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !285)
!285 = !{!286}
!286 = !DILocalVariable(name: "__unused", arg: 1, scope: !284, file: !1, line: 68, type: !19)
!287 = !DILocation(line: 68, column: 1, scope: !284)
!288 = distinct !DISubprogram(name: "__ia32_sys_flock", scope: !1, file: !1, line: 68, type: !17, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !289)
!289 = !{!290}
!290 = !DILocalVariable(name: "__unused", arg: 1, scope: !288, file: !1, line: 68, type: !19)
!291 = !DILocation(line: 68, column: 1, scope: !288)
!292 = distinct !DISubprogram(name: "__x64_sys_quotactl", scope: !1, file: !1, line: 69, type: !17, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !293)
!293 = !{!294}
!294 = !DILocalVariable(name: "__unused", arg: 1, scope: !292, file: !1, line: 69, type: !19)
!295 = !DILocation(line: 69, column: 1, scope: !292)
!296 = distinct !DISubprogram(name: "__ia32_sys_quotactl", scope: !1, file: !1, line: 69, type: !17, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !297)
!297 = !{!298}
!298 = !DILocalVariable(name: "__unused", arg: 1, scope: !296, file: !1, line: 69, type: !19)
!299 = !DILocation(line: 69, column: 1, scope: !296)
!300 = distinct !DISubprogram(name: "__x64_sys_quotactl_fd", scope: !1, file: !1, line: 70, type: !17, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !301)
!301 = !{!302}
!302 = !DILocalVariable(name: "__unused", arg: 1, scope: !300, file: !1, line: 70, type: !19)
!303 = !DILocation(line: 70, column: 1, scope: !300)
!304 = distinct !DISubprogram(name: "__ia32_sys_quotactl_fd", scope: !1, file: !1, line: 70, type: !17, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !305)
!305 = !{!306}
!306 = !DILocalVariable(name: "__unused", arg: 1, scope: !304, file: !1, line: 70, type: !19)
!307 = !DILocation(line: 70, column: 1, scope: !304)
!308 = distinct !DISubprogram(name: "__x64_sys_signalfd4", scope: !1, file: !1, line: 71, type: !17, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !309)
!309 = !{!310}
!310 = !DILocalVariable(name: "__unused", arg: 1, scope: !308, file: !1, line: 71, type: !19)
!311 = !DILocation(line: 71, column: 1, scope: !308)
!312 = distinct !DISubprogram(name: "__ia32_sys_signalfd4", scope: !1, file: !1, line: 71, type: !17, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !313)
!313 = !{!314}
!314 = !DILocalVariable(name: "__unused", arg: 1, scope: !312, file: !1, line: 71, type: !19)
!315 = !DILocation(line: 71, column: 1, scope: !312)
!316 = distinct !DISubprogram(name: "__ia32_compat_sys_signalfd4", scope: !1, file: !1, line: 72, type: !17, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !317)
!317 = !{!318}
!318 = !DILocalVariable(name: "__unused", arg: 1, scope: !316, file: !1, line: 72, type: !19)
!319 = !DILocation(line: 72, column: 1, scope: !316)
!320 = distinct !DISubprogram(name: "__x64_sys_timerfd_create", scope: !1, file: !1, line: 73, type: !17, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !321)
!321 = !{!322}
!322 = !DILocalVariable(name: "__unused", arg: 1, scope: !320, file: !1, line: 73, type: !19)
!323 = !DILocation(line: 73, column: 1, scope: !320)
!324 = distinct !DISubprogram(name: "__ia32_sys_timerfd_create", scope: !1, file: !1, line: 73, type: !17, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !325)
!325 = !{!326}
!326 = !DILocalVariable(name: "__unused", arg: 1, scope: !324, file: !1, line: 73, type: !19)
!327 = !DILocation(line: 73, column: 1, scope: !324)
!328 = distinct !DISubprogram(name: "__x64_sys_timerfd_settime", scope: !1, file: !1, line: 74, type: !17, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !329)
!329 = !{!330}
!330 = !DILocalVariable(name: "__unused", arg: 1, scope: !328, file: !1, line: 74, type: !19)
!331 = !DILocation(line: 74, column: 1, scope: !328)
!332 = distinct !DISubprogram(name: "__ia32_sys_timerfd_settime", scope: !1, file: !1, line: 74, type: !17, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !333)
!333 = !{!334}
!334 = !DILocalVariable(name: "__unused", arg: 1, scope: !332, file: !1, line: 74, type: !19)
!335 = !DILocation(line: 74, column: 1, scope: !332)
!336 = distinct !DISubprogram(name: "__x64_sys_timerfd_settime32", scope: !1, file: !1, line: 75, type: !17, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !337)
!337 = !{!338}
!338 = !DILocalVariable(name: "__unused", arg: 1, scope: !336, file: !1, line: 75, type: !19)
!339 = !DILocation(line: 75, column: 1, scope: !336)
!340 = distinct !DISubprogram(name: "__ia32_sys_timerfd_settime32", scope: !1, file: !1, line: 75, type: !17, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !341)
!341 = !{!342}
!342 = !DILocalVariable(name: "__unused", arg: 1, scope: !340, file: !1, line: 75, type: !19)
!343 = !DILocation(line: 75, column: 1, scope: !340)
!344 = distinct !DISubprogram(name: "__x64_sys_timerfd_gettime", scope: !1, file: !1, line: 76, type: !17, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !345)
!345 = !{!346}
!346 = !DILocalVariable(name: "__unused", arg: 1, scope: !344, file: !1, line: 76, type: !19)
!347 = !DILocation(line: 76, column: 1, scope: !344)
!348 = distinct !DISubprogram(name: "__ia32_sys_timerfd_gettime", scope: !1, file: !1, line: 76, type: !17, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !349)
!349 = !{!350}
!350 = !DILocalVariable(name: "__unused", arg: 1, scope: !348, file: !1, line: 76, type: !19)
!351 = !DILocation(line: 76, column: 1, scope: !348)
!352 = distinct !DISubprogram(name: "__x64_sys_timerfd_gettime32", scope: !1, file: !1, line: 77, type: !17, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !353)
!353 = !{!354}
!354 = !DILocalVariable(name: "__unused", arg: 1, scope: !352, file: !1, line: 77, type: !19)
!355 = !DILocation(line: 77, column: 1, scope: !352)
!356 = distinct !DISubprogram(name: "__ia32_sys_timerfd_gettime32", scope: !1, file: !1, line: 77, type: !17, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !357)
!357 = !{!358}
!358 = !DILocalVariable(name: "__unused", arg: 1, scope: !356, file: !1, line: 77, type: !19)
!359 = !DILocation(line: 77, column: 1, scope: !356)
!360 = distinct !DISubprogram(name: "__x64_sys_acct", scope: !1, file: !1, line: 78, type: !17, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !361)
!361 = !{!362}
!362 = !DILocalVariable(name: "__unused", arg: 1, scope: !360, file: !1, line: 78, type: !19)
!363 = !DILocation(line: 78, column: 1, scope: !360)
!364 = distinct !DISubprogram(name: "__ia32_sys_acct", scope: !1, file: !1, line: 78, type: !17, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !365)
!365 = !{!366}
!366 = !DILocalVariable(name: "__unused", arg: 1, scope: !364, file: !1, line: 78, type: !19)
!367 = !DILocation(line: 78, column: 1, scope: !364)
!368 = distinct !DISubprogram(name: "__x64_sys_capget", scope: !1, file: !1, line: 79, type: !17, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !369)
!369 = !{!370}
!370 = !DILocalVariable(name: "__unused", arg: 1, scope: !368, file: !1, line: 79, type: !19)
!371 = !DILocation(line: 79, column: 1, scope: !368)
!372 = distinct !DISubprogram(name: "__ia32_sys_capget", scope: !1, file: !1, line: 79, type: !17, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !373)
!373 = !{!374}
!374 = !DILocalVariable(name: "__unused", arg: 1, scope: !372, file: !1, line: 79, type: !19)
!375 = !DILocation(line: 79, column: 1, scope: !372)
!376 = distinct !DISubprogram(name: "__x64_sys_capset", scope: !1, file: !1, line: 80, type: !17, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !377)
!377 = !{!378}
!378 = !DILocalVariable(name: "__unused", arg: 1, scope: !376, file: !1, line: 80, type: !19)
!379 = !DILocation(line: 80, column: 1, scope: !376)
!380 = distinct !DISubprogram(name: "__ia32_sys_capset", scope: !1, file: !1, line: 80, type: !17, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !381)
!381 = !{!382}
!382 = !DILocalVariable(name: "__unused", arg: 1, scope: !380, file: !1, line: 80, type: !19)
!383 = !DILocation(line: 80, column: 1, scope: !380)
!384 = distinct !DISubprogram(name: "__x64_sys_clone3", scope: !1, file: !1, line: 82, type: !17, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !385)
!385 = !{!386}
!386 = !DILocalVariable(name: "__unused", arg: 1, scope: !384, file: !1, line: 82, type: !19)
!387 = !DILocation(line: 82, column: 1, scope: !384)
!388 = distinct !DISubprogram(name: "__ia32_sys_clone3", scope: !1, file: !1, line: 82, type: !17, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !389)
!389 = !{!390}
!390 = !DILocalVariable(name: "__unused", arg: 1, scope: !388, file: !1, line: 82, type: !19)
!391 = !DILocation(line: 82, column: 1, scope: !388)
!392 = distinct !DISubprogram(name: "__x64_sys_futex", scope: !1, file: !1, line: 83, type: !17, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !393)
!393 = !{!394}
!394 = !DILocalVariable(name: "__unused", arg: 1, scope: !392, file: !1, line: 83, type: !19)
!395 = !DILocation(line: 83, column: 1, scope: !392)
!396 = distinct !DISubprogram(name: "__ia32_sys_futex", scope: !1, file: !1, line: 83, type: !17, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !397)
!397 = !{!398}
!398 = !DILocalVariable(name: "__unused", arg: 1, scope: !396, file: !1, line: 83, type: !19)
!399 = !DILocation(line: 83, column: 1, scope: !396)
!400 = distinct !DISubprogram(name: "__x64_sys_futex_time32", scope: !1, file: !1, line: 84, type: !17, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !401)
!401 = !{!402}
!402 = !DILocalVariable(name: "__unused", arg: 1, scope: !400, file: !1, line: 84, type: !19)
!403 = !DILocation(line: 84, column: 1, scope: !400)
!404 = distinct !DISubprogram(name: "__ia32_sys_futex_time32", scope: !1, file: !1, line: 84, type: !17, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !405)
!405 = !{!406}
!406 = !DILocalVariable(name: "__unused", arg: 1, scope: !404, file: !1, line: 84, type: !19)
!407 = !DILocation(line: 84, column: 1, scope: !404)
!408 = distinct !DISubprogram(name: "__x64_sys_set_robust_list", scope: !1, file: !1, line: 85, type: !17, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !409)
!409 = !{!410}
!410 = !DILocalVariable(name: "__unused", arg: 1, scope: !408, file: !1, line: 85, type: !19)
!411 = !DILocation(line: 85, column: 1, scope: !408)
!412 = distinct !DISubprogram(name: "__ia32_sys_set_robust_list", scope: !1, file: !1, line: 85, type: !17, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !413)
!413 = !{!414}
!414 = !DILocalVariable(name: "__unused", arg: 1, scope: !412, file: !1, line: 85, type: !19)
!415 = !DILocation(line: 85, column: 1, scope: !412)
!416 = distinct !DISubprogram(name: "__ia32_compat_sys_set_robust_list", scope: !1, file: !1, line: 86, type: !17, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !417)
!417 = !{!418}
!418 = !DILocalVariable(name: "__unused", arg: 1, scope: !416, file: !1, line: 86, type: !19)
!419 = !DILocation(line: 86, column: 1, scope: !416)
!420 = distinct !DISubprogram(name: "__x64_sys_get_robust_list", scope: !1, file: !1, line: 87, type: !17, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !421)
!421 = !{!422}
!422 = !DILocalVariable(name: "__unused", arg: 1, scope: !420, file: !1, line: 87, type: !19)
!423 = !DILocation(line: 87, column: 1, scope: !420)
!424 = distinct !DISubprogram(name: "__ia32_sys_get_robust_list", scope: !1, file: !1, line: 87, type: !17, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !425)
!425 = !{!426}
!426 = !DILocalVariable(name: "__unused", arg: 1, scope: !424, file: !1, line: 87, type: !19)
!427 = !DILocation(line: 87, column: 1, scope: !424)
!428 = distinct !DISubprogram(name: "__ia32_compat_sys_get_robust_list", scope: !1, file: !1, line: 88, type: !17, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !429)
!429 = !{!430}
!430 = !DILocalVariable(name: "__unused", arg: 1, scope: !428, file: !1, line: 88, type: !19)
!431 = !DILocation(line: 88, column: 1, scope: !428)
!432 = distinct !DISubprogram(name: "__x64_sys_futex_waitv", scope: !1, file: !1, line: 89, type: !17, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !433)
!433 = !{!434}
!434 = !DILocalVariable(name: "__unused", arg: 1, scope: !432, file: !1, line: 89, type: !19)
!435 = !DILocation(line: 89, column: 1, scope: !432)
!436 = distinct !DISubprogram(name: "__ia32_sys_futex_waitv", scope: !1, file: !1, line: 89, type: !17, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !437)
!437 = !{!438}
!438 = !DILocalVariable(name: "__unused", arg: 1, scope: !436, file: !1, line: 89, type: !19)
!439 = !DILocation(line: 89, column: 1, scope: !436)
!440 = distinct !DISubprogram(name: "__x64_sys_kexec_load", scope: !1, file: !1, line: 90, type: !17, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !441)
!441 = !{!442}
!442 = !DILocalVariable(name: "__unused", arg: 1, scope: !440, file: !1, line: 90, type: !19)
!443 = !DILocation(line: 90, column: 1, scope: !440)
!444 = distinct !DISubprogram(name: "__ia32_sys_kexec_load", scope: !1, file: !1, line: 90, type: !17, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !445)
!445 = !{!446}
!446 = !DILocalVariable(name: "__unused", arg: 1, scope: !444, file: !1, line: 90, type: !19)
!447 = !DILocation(line: 90, column: 1, scope: !444)
!448 = distinct !DISubprogram(name: "__ia32_compat_sys_kexec_load", scope: !1, file: !1, line: 91, type: !17, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !449)
!449 = !{!450}
!450 = !DILocalVariable(name: "__unused", arg: 1, scope: !448, file: !1, line: 91, type: !19)
!451 = !DILocation(line: 91, column: 1, scope: !448)
!452 = distinct !DISubprogram(name: "__x64_sys_init_module", scope: !1, file: !1, line: 92, type: !17, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !453)
!453 = !{!454}
!454 = !DILocalVariable(name: "__unused", arg: 1, scope: !452, file: !1, line: 92, type: !19)
!455 = !DILocation(line: 92, column: 1, scope: !452)
!456 = distinct !DISubprogram(name: "__ia32_sys_init_module", scope: !1, file: !1, line: 92, type: !17, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !457)
!457 = !{!458}
!458 = !DILocalVariable(name: "__unused", arg: 1, scope: !456, file: !1, line: 92, type: !19)
!459 = !DILocation(line: 92, column: 1, scope: !456)
!460 = distinct !DISubprogram(name: "__x64_sys_delete_module", scope: !1, file: !1, line: 93, type: !17, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !461)
!461 = !{!462}
!462 = !DILocalVariable(name: "__unused", arg: 1, scope: !460, file: !1, line: 93, type: !19)
!463 = !DILocation(line: 93, column: 1, scope: !460)
!464 = distinct !DISubprogram(name: "__ia32_sys_delete_module", scope: !1, file: !1, line: 93, type: !17, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !465)
!465 = !{!466}
!466 = !DILocalVariable(name: "__unused", arg: 1, scope: !464, file: !1, line: 93, type: !19)
!467 = !DILocation(line: 93, column: 1, scope: !464)
!468 = distinct !DISubprogram(name: "__x64_sys_syslog", scope: !1, file: !1, line: 94, type: !17, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !469)
!469 = !{!470}
!470 = !DILocalVariable(name: "__unused", arg: 1, scope: !468, file: !1, line: 94, type: !19)
!471 = !DILocation(line: 94, column: 1, scope: !468)
!472 = distinct !DISubprogram(name: "__ia32_sys_syslog", scope: !1, file: !1, line: 94, type: !17, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !473)
!473 = !{!474}
!474 = !DILocalVariable(name: "__unused", arg: 1, scope: !472, file: !1, line: 94, type: !19)
!475 = !DILocation(line: 94, column: 1, scope: !472)
!476 = distinct !DISubprogram(name: "__x64_sys_setregid", scope: !1, file: !1, line: 95, type: !17, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !477)
!477 = !{!478}
!478 = !DILocalVariable(name: "__unused", arg: 1, scope: !476, file: !1, line: 95, type: !19)
!479 = !DILocation(line: 95, column: 1, scope: !476)
!480 = distinct !DISubprogram(name: "__ia32_sys_setregid", scope: !1, file: !1, line: 95, type: !17, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !481)
!481 = !{!482}
!482 = !DILocalVariable(name: "__unused", arg: 1, scope: !480, file: !1, line: 95, type: !19)
!483 = !DILocation(line: 95, column: 1, scope: !480)
!484 = distinct !DISubprogram(name: "__x64_sys_setgid", scope: !1, file: !1, line: 96, type: !17, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !485)
!485 = !{!486}
!486 = !DILocalVariable(name: "__unused", arg: 1, scope: !484, file: !1, line: 96, type: !19)
!487 = !DILocation(line: 96, column: 1, scope: !484)
!488 = distinct !DISubprogram(name: "__ia32_sys_setgid", scope: !1, file: !1, line: 96, type: !17, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !489)
!489 = !{!490}
!490 = !DILocalVariable(name: "__unused", arg: 1, scope: !488, file: !1, line: 96, type: !19)
!491 = !DILocation(line: 96, column: 1, scope: !488)
!492 = distinct !DISubprogram(name: "__x64_sys_setreuid", scope: !1, file: !1, line: 97, type: !17, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !493)
!493 = !{!494}
!494 = !DILocalVariable(name: "__unused", arg: 1, scope: !492, file: !1, line: 97, type: !19)
!495 = !DILocation(line: 97, column: 1, scope: !492)
!496 = distinct !DISubprogram(name: "__ia32_sys_setreuid", scope: !1, file: !1, line: 97, type: !17, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !497)
!497 = !{!498}
!498 = !DILocalVariable(name: "__unused", arg: 1, scope: !496, file: !1, line: 97, type: !19)
!499 = !DILocation(line: 97, column: 1, scope: !496)
!500 = distinct !DISubprogram(name: "__x64_sys_setuid", scope: !1, file: !1, line: 98, type: !17, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !501)
!501 = !{!502}
!502 = !DILocalVariable(name: "__unused", arg: 1, scope: !500, file: !1, line: 98, type: !19)
!503 = !DILocation(line: 98, column: 1, scope: !500)
!504 = distinct !DISubprogram(name: "__ia32_sys_setuid", scope: !1, file: !1, line: 98, type: !17, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !505)
!505 = !{!506}
!506 = !DILocalVariable(name: "__unused", arg: 1, scope: !504, file: !1, line: 98, type: !19)
!507 = !DILocation(line: 98, column: 1, scope: !504)
!508 = distinct !DISubprogram(name: "__x64_sys_setresuid", scope: !1, file: !1, line: 99, type: !17, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !509)
!509 = !{!510}
!510 = !DILocalVariable(name: "__unused", arg: 1, scope: !508, file: !1, line: 99, type: !19)
!511 = !DILocation(line: 99, column: 1, scope: !508)
!512 = distinct !DISubprogram(name: "__ia32_sys_setresuid", scope: !1, file: !1, line: 99, type: !17, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !513)
!513 = !{!514}
!514 = !DILocalVariable(name: "__unused", arg: 1, scope: !512, file: !1, line: 99, type: !19)
!515 = !DILocation(line: 99, column: 1, scope: !512)
!516 = distinct !DISubprogram(name: "__x64_sys_getresuid", scope: !1, file: !1, line: 100, type: !17, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !517)
!517 = !{!518}
!518 = !DILocalVariable(name: "__unused", arg: 1, scope: !516, file: !1, line: 100, type: !19)
!519 = !DILocation(line: 100, column: 1, scope: !516)
!520 = distinct !DISubprogram(name: "__ia32_sys_getresuid", scope: !1, file: !1, line: 100, type: !17, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !521)
!521 = !{!522}
!522 = !DILocalVariable(name: "__unused", arg: 1, scope: !520, file: !1, line: 100, type: !19)
!523 = !DILocation(line: 100, column: 1, scope: !520)
!524 = distinct !DISubprogram(name: "__x64_sys_setresgid", scope: !1, file: !1, line: 101, type: !17, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !525)
!525 = !{!526}
!526 = !DILocalVariable(name: "__unused", arg: 1, scope: !524, file: !1, line: 101, type: !19)
!527 = !DILocation(line: 101, column: 1, scope: !524)
!528 = distinct !DISubprogram(name: "__ia32_sys_setresgid", scope: !1, file: !1, line: 101, type: !17, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !529)
!529 = !{!530}
!530 = !DILocalVariable(name: "__unused", arg: 1, scope: !528, file: !1, line: 101, type: !19)
!531 = !DILocation(line: 101, column: 1, scope: !528)
!532 = distinct !DISubprogram(name: "__x64_sys_getresgid", scope: !1, file: !1, line: 102, type: !17, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !533)
!533 = !{!534}
!534 = !DILocalVariable(name: "__unused", arg: 1, scope: !532, file: !1, line: 102, type: !19)
!535 = !DILocation(line: 102, column: 1, scope: !532)
!536 = distinct !DISubprogram(name: "__ia32_sys_getresgid", scope: !1, file: !1, line: 102, type: !17, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !537)
!537 = !{!538}
!538 = !DILocalVariable(name: "__unused", arg: 1, scope: !536, file: !1, line: 102, type: !19)
!539 = !DILocation(line: 102, column: 1, scope: !536)
!540 = distinct !DISubprogram(name: "__x64_sys_setfsuid", scope: !1, file: !1, line: 103, type: !17, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !541)
!541 = !{!542}
!542 = !DILocalVariable(name: "__unused", arg: 1, scope: !540, file: !1, line: 103, type: !19)
!543 = !DILocation(line: 103, column: 1, scope: !540)
!544 = distinct !DISubprogram(name: "__ia32_sys_setfsuid", scope: !1, file: !1, line: 103, type: !17, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !545)
!545 = !{!546}
!546 = !DILocalVariable(name: "__unused", arg: 1, scope: !544, file: !1, line: 103, type: !19)
!547 = !DILocation(line: 103, column: 1, scope: !544)
!548 = distinct !DISubprogram(name: "__x64_sys_setfsgid", scope: !1, file: !1, line: 104, type: !17, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !549)
!549 = !{!550}
!550 = !DILocalVariable(name: "__unused", arg: 1, scope: !548, file: !1, line: 104, type: !19)
!551 = !DILocation(line: 104, column: 1, scope: !548)
!552 = distinct !DISubprogram(name: "__ia32_sys_setfsgid", scope: !1, file: !1, line: 104, type: !17, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !553)
!553 = !{!554}
!554 = !DILocalVariable(name: "__unused", arg: 1, scope: !552, file: !1, line: 104, type: !19)
!555 = !DILocation(line: 104, column: 1, scope: !552)
!556 = distinct !DISubprogram(name: "__x64_sys_setgroups", scope: !1, file: !1, line: 105, type: !17, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !557)
!557 = !{!558}
!558 = !DILocalVariable(name: "__unused", arg: 1, scope: !556, file: !1, line: 105, type: !19)
!559 = !DILocation(line: 105, column: 1, scope: !556)
!560 = distinct !DISubprogram(name: "__ia32_sys_setgroups", scope: !1, file: !1, line: 105, type: !17, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !561)
!561 = !{!562}
!562 = !DILocalVariable(name: "__unused", arg: 1, scope: !560, file: !1, line: 105, type: !19)
!563 = !DILocation(line: 105, column: 1, scope: !560)
!564 = distinct !DISubprogram(name: "__x64_sys_getgroups", scope: !1, file: !1, line: 106, type: !17, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !565)
!565 = !{!566}
!566 = !DILocalVariable(name: "__unused", arg: 1, scope: !564, file: !1, line: 106, type: !19)
!567 = !DILocation(line: 106, column: 1, scope: !564)
!568 = distinct !DISubprogram(name: "__ia32_sys_getgroups", scope: !1, file: !1, line: 106, type: !17, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !569)
!569 = !{!570}
!570 = !DILocalVariable(name: "__unused", arg: 1, scope: !568, file: !1, line: 106, type: !19)
!571 = !DILocation(line: 106, column: 1, scope: !568)
!572 = distinct !DISubprogram(name: "__x64_sys_mq_open", scope: !1, file: !1, line: 107, type: !17, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !573)
!573 = !{!574}
!574 = !DILocalVariable(name: "__unused", arg: 1, scope: !572, file: !1, line: 107, type: !19)
!575 = !DILocation(line: 107, column: 1, scope: !572)
!576 = distinct !DISubprogram(name: "__ia32_sys_mq_open", scope: !1, file: !1, line: 107, type: !17, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !577)
!577 = !{!578}
!578 = !DILocalVariable(name: "__unused", arg: 1, scope: !576, file: !1, line: 107, type: !19)
!579 = !DILocation(line: 107, column: 1, scope: !576)
!580 = distinct !DISubprogram(name: "__ia32_compat_sys_mq_open", scope: !1, file: !1, line: 108, type: !17, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !581)
!581 = !{!582}
!582 = !DILocalVariable(name: "__unused", arg: 1, scope: !580, file: !1, line: 108, type: !19)
!583 = !DILocation(line: 108, column: 1, scope: !580)
!584 = distinct !DISubprogram(name: "__x64_sys_mq_unlink", scope: !1, file: !1, line: 109, type: !17, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !585)
!585 = !{!586}
!586 = !DILocalVariable(name: "__unused", arg: 1, scope: !584, file: !1, line: 109, type: !19)
!587 = !DILocation(line: 109, column: 1, scope: !584)
!588 = distinct !DISubprogram(name: "__ia32_sys_mq_unlink", scope: !1, file: !1, line: 109, type: !17, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !589)
!589 = !{!590}
!590 = !DILocalVariable(name: "__unused", arg: 1, scope: !588, file: !1, line: 109, type: !19)
!591 = !DILocation(line: 109, column: 1, scope: !588)
!592 = distinct !DISubprogram(name: "__x64_sys_mq_timedsend", scope: !1, file: !1, line: 110, type: !17, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !593)
!593 = !{!594}
!594 = !DILocalVariable(name: "__unused", arg: 1, scope: !592, file: !1, line: 110, type: !19)
!595 = !DILocation(line: 110, column: 1, scope: !592)
!596 = distinct !DISubprogram(name: "__ia32_sys_mq_timedsend", scope: !1, file: !1, line: 110, type: !17, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !597)
!597 = !{!598}
!598 = !DILocalVariable(name: "__unused", arg: 1, scope: !596, file: !1, line: 110, type: !19)
!599 = !DILocation(line: 110, column: 1, scope: !596)
!600 = distinct !DISubprogram(name: "__x64_sys_mq_timedsend_time32", scope: !1, file: !1, line: 111, type: !17, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !601)
!601 = !{!602}
!602 = !DILocalVariable(name: "__unused", arg: 1, scope: !600, file: !1, line: 111, type: !19)
!603 = !DILocation(line: 111, column: 1, scope: !600)
!604 = distinct !DISubprogram(name: "__ia32_sys_mq_timedsend_time32", scope: !1, file: !1, line: 111, type: !17, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !605)
!605 = !{!606}
!606 = !DILocalVariable(name: "__unused", arg: 1, scope: !604, file: !1, line: 111, type: !19)
!607 = !DILocation(line: 111, column: 1, scope: !604)
!608 = distinct !DISubprogram(name: "__x64_sys_mq_timedreceive", scope: !1, file: !1, line: 112, type: !17, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !609)
!609 = !{!610}
!610 = !DILocalVariable(name: "__unused", arg: 1, scope: !608, file: !1, line: 112, type: !19)
!611 = !DILocation(line: 112, column: 1, scope: !608)
!612 = distinct !DISubprogram(name: "__ia32_sys_mq_timedreceive", scope: !1, file: !1, line: 112, type: !17, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !613)
!613 = !{!614}
!614 = !DILocalVariable(name: "__unused", arg: 1, scope: !612, file: !1, line: 112, type: !19)
!615 = !DILocation(line: 112, column: 1, scope: !612)
!616 = distinct !DISubprogram(name: "__x64_sys_mq_timedreceive_time32", scope: !1, file: !1, line: 113, type: !17, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !617)
!617 = !{!618}
!618 = !DILocalVariable(name: "__unused", arg: 1, scope: !616, file: !1, line: 113, type: !19)
!619 = !DILocation(line: 113, column: 1, scope: !616)
!620 = distinct !DISubprogram(name: "__ia32_sys_mq_timedreceive_time32", scope: !1, file: !1, line: 113, type: !17, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !621)
!621 = !{!622}
!622 = !DILocalVariable(name: "__unused", arg: 1, scope: !620, file: !1, line: 113, type: !19)
!623 = !DILocation(line: 113, column: 1, scope: !620)
!624 = distinct !DISubprogram(name: "__x64_sys_mq_notify", scope: !1, file: !1, line: 114, type: !17, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !625)
!625 = !{!626}
!626 = !DILocalVariable(name: "__unused", arg: 1, scope: !624, file: !1, line: 114, type: !19)
!627 = !DILocation(line: 114, column: 1, scope: !624)
!628 = distinct !DISubprogram(name: "__ia32_sys_mq_notify", scope: !1, file: !1, line: 114, type: !17, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !629)
!629 = !{!630}
!630 = !DILocalVariable(name: "__unused", arg: 1, scope: !628, file: !1, line: 114, type: !19)
!631 = !DILocation(line: 114, column: 1, scope: !628)
!632 = distinct !DISubprogram(name: "__ia32_compat_sys_mq_notify", scope: !1, file: !1, line: 115, type: !17, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !633)
!633 = !{!634}
!634 = !DILocalVariable(name: "__unused", arg: 1, scope: !632, file: !1, line: 115, type: !19)
!635 = !DILocation(line: 115, column: 1, scope: !632)
!636 = distinct !DISubprogram(name: "__x64_sys_mq_getsetattr", scope: !1, file: !1, line: 116, type: !17, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !637)
!637 = !{!638}
!638 = !DILocalVariable(name: "__unused", arg: 1, scope: !636, file: !1, line: 116, type: !19)
!639 = !DILocation(line: 116, column: 1, scope: !636)
!640 = distinct !DISubprogram(name: "__ia32_sys_mq_getsetattr", scope: !1, file: !1, line: 116, type: !17, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !641)
!641 = !{!642}
!642 = !DILocalVariable(name: "__unused", arg: 1, scope: !640, file: !1, line: 116, type: !19)
!643 = !DILocation(line: 116, column: 1, scope: !640)
!644 = distinct !DISubprogram(name: "__ia32_compat_sys_mq_getsetattr", scope: !1, file: !1, line: 117, type: !17, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !645)
!645 = !{!646}
!646 = !DILocalVariable(name: "__unused", arg: 1, scope: !644, file: !1, line: 117, type: !19)
!647 = !DILocation(line: 117, column: 1, scope: !644)
!648 = distinct !DISubprogram(name: "__x64_sys_msgget", scope: !1, file: !1, line: 118, type: !17, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !649)
!649 = !{!650}
!650 = !DILocalVariable(name: "__unused", arg: 1, scope: !648, file: !1, line: 118, type: !19)
!651 = !DILocation(line: 118, column: 1, scope: !648)
!652 = distinct !DISubprogram(name: "__ia32_sys_msgget", scope: !1, file: !1, line: 118, type: !17, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !653)
!653 = !{!654}
!654 = !DILocalVariable(name: "__unused", arg: 1, scope: !652, file: !1, line: 118, type: !19)
!655 = !DILocation(line: 118, column: 1, scope: !652)
!656 = distinct !DISubprogram(name: "__x64_sys_old_msgctl", scope: !1, file: !1, line: 119, type: !17, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !657)
!657 = !{!658}
!658 = !DILocalVariable(name: "__unused", arg: 1, scope: !656, file: !1, line: 119, type: !19)
!659 = !DILocation(line: 119, column: 1, scope: !656)
!660 = distinct !DISubprogram(name: "__ia32_sys_old_msgctl", scope: !1, file: !1, line: 119, type: !17, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !661)
!661 = !{!662}
!662 = !DILocalVariable(name: "__unused", arg: 1, scope: !660, file: !1, line: 119, type: !19)
!663 = !DILocation(line: 119, column: 1, scope: !660)
!664 = distinct !DISubprogram(name: "__x64_sys_msgctl", scope: !1, file: !1, line: 120, type: !17, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !665)
!665 = !{!666}
!666 = !DILocalVariable(name: "__unused", arg: 1, scope: !664, file: !1, line: 120, type: !19)
!667 = !DILocation(line: 120, column: 1, scope: !664)
!668 = distinct !DISubprogram(name: "__ia32_sys_msgctl", scope: !1, file: !1, line: 120, type: !17, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !669)
!669 = !{!670}
!670 = !DILocalVariable(name: "__unused", arg: 1, scope: !668, file: !1, line: 120, type: !19)
!671 = !DILocation(line: 120, column: 1, scope: !668)
!672 = distinct !DISubprogram(name: "__ia32_compat_sys_msgctl", scope: !1, file: !1, line: 121, type: !17, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !673)
!673 = !{!674}
!674 = !DILocalVariable(name: "__unused", arg: 1, scope: !672, file: !1, line: 121, type: !19)
!675 = !DILocation(line: 121, column: 1, scope: !672)
!676 = distinct !DISubprogram(name: "__ia32_compat_sys_old_msgctl", scope: !1, file: !1, line: 122, type: !17, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !677)
!677 = !{!678}
!678 = !DILocalVariable(name: "__unused", arg: 1, scope: !676, file: !1, line: 122, type: !19)
!679 = !DILocation(line: 122, column: 1, scope: !676)
!680 = distinct !DISubprogram(name: "__x64_sys_msgrcv", scope: !1, file: !1, line: 123, type: !17, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !681)
!681 = !{!682}
!682 = !DILocalVariable(name: "__unused", arg: 1, scope: !680, file: !1, line: 123, type: !19)
!683 = !DILocation(line: 123, column: 1, scope: !680)
!684 = distinct !DISubprogram(name: "__ia32_sys_msgrcv", scope: !1, file: !1, line: 123, type: !17, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !685)
!685 = !{!686}
!686 = !DILocalVariable(name: "__unused", arg: 1, scope: !684, file: !1, line: 123, type: !19)
!687 = !DILocation(line: 123, column: 1, scope: !684)
!688 = distinct !DISubprogram(name: "__ia32_compat_sys_msgrcv", scope: !1, file: !1, line: 124, type: !17, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !689)
!689 = !{!690}
!690 = !DILocalVariable(name: "__unused", arg: 1, scope: !688, file: !1, line: 124, type: !19)
!691 = !DILocation(line: 124, column: 1, scope: !688)
!692 = distinct !DISubprogram(name: "__x64_sys_msgsnd", scope: !1, file: !1, line: 125, type: !17, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !693)
!693 = !{!694}
!694 = !DILocalVariable(name: "__unused", arg: 1, scope: !692, file: !1, line: 125, type: !19)
!695 = !DILocation(line: 125, column: 1, scope: !692)
!696 = distinct !DISubprogram(name: "__ia32_sys_msgsnd", scope: !1, file: !1, line: 125, type: !17, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !697)
!697 = !{!698}
!698 = !DILocalVariable(name: "__unused", arg: 1, scope: !696, file: !1, line: 125, type: !19)
!699 = !DILocation(line: 125, column: 1, scope: !696)
!700 = distinct !DISubprogram(name: "__ia32_compat_sys_msgsnd", scope: !1, file: !1, line: 126, type: !17, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !701)
!701 = !{!702}
!702 = !DILocalVariable(name: "__unused", arg: 1, scope: !700, file: !1, line: 126, type: !19)
!703 = !DILocation(line: 126, column: 1, scope: !700)
!704 = distinct !DISubprogram(name: "__x64_sys_semget", scope: !1, file: !1, line: 127, type: !17, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !705)
!705 = !{!706}
!706 = !DILocalVariable(name: "__unused", arg: 1, scope: !704, file: !1, line: 127, type: !19)
!707 = !DILocation(line: 127, column: 1, scope: !704)
!708 = distinct !DISubprogram(name: "__ia32_sys_semget", scope: !1, file: !1, line: 127, type: !17, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !709)
!709 = !{!710}
!710 = !DILocalVariable(name: "__unused", arg: 1, scope: !708, file: !1, line: 127, type: !19)
!711 = !DILocation(line: 127, column: 1, scope: !708)
!712 = distinct !DISubprogram(name: "__x64_sys_old_semctl", scope: !1, file: !1, line: 128, type: !17, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !713)
!713 = !{!714}
!714 = !DILocalVariable(name: "__unused", arg: 1, scope: !712, file: !1, line: 128, type: !19)
!715 = !DILocation(line: 128, column: 1, scope: !712)
!716 = distinct !DISubprogram(name: "__ia32_sys_old_semctl", scope: !1, file: !1, line: 128, type: !17, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !717)
!717 = !{!718}
!718 = !DILocalVariable(name: "__unused", arg: 1, scope: !716, file: !1, line: 128, type: !19)
!719 = !DILocation(line: 128, column: 1, scope: !716)
!720 = distinct !DISubprogram(name: "__x64_sys_semctl", scope: !1, file: !1, line: 129, type: !17, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !721)
!721 = !{!722}
!722 = !DILocalVariable(name: "__unused", arg: 1, scope: !720, file: !1, line: 129, type: !19)
!723 = !DILocation(line: 129, column: 1, scope: !720)
!724 = distinct !DISubprogram(name: "__ia32_sys_semctl", scope: !1, file: !1, line: 129, type: !17, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !725)
!725 = !{!726}
!726 = !DILocalVariable(name: "__unused", arg: 1, scope: !724, file: !1, line: 129, type: !19)
!727 = !DILocation(line: 129, column: 1, scope: !724)
!728 = distinct !DISubprogram(name: "__ia32_compat_sys_semctl", scope: !1, file: !1, line: 130, type: !17, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !729)
!729 = !{!730}
!730 = !DILocalVariable(name: "__unused", arg: 1, scope: !728, file: !1, line: 130, type: !19)
!731 = !DILocation(line: 130, column: 1, scope: !728)
!732 = distinct !DISubprogram(name: "__ia32_compat_sys_old_semctl", scope: !1, file: !1, line: 131, type: !17, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !733)
!733 = !{!734}
!734 = !DILocalVariable(name: "__unused", arg: 1, scope: !732, file: !1, line: 131, type: !19)
!735 = !DILocation(line: 131, column: 1, scope: !732)
!736 = distinct !DISubprogram(name: "__x64_sys_semtimedop", scope: !1, file: !1, line: 132, type: !17, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !737)
!737 = !{!738}
!738 = !DILocalVariable(name: "__unused", arg: 1, scope: !736, file: !1, line: 132, type: !19)
!739 = !DILocation(line: 132, column: 1, scope: !736)
!740 = distinct !DISubprogram(name: "__ia32_sys_semtimedop", scope: !1, file: !1, line: 132, type: !17, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !741)
!741 = !{!742}
!742 = !DILocalVariable(name: "__unused", arg: 1, scope: !740, file: !1, line: 132, type: !19)
!743 = !DILocation(line: 132, column: 1, scope: !740)
!744 = distinct !DISubprogram(name: "__x64_sys_semtimedop_time32", scope: !1, file: !1, line: 133, type: !17, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !745)
!745 = !{!746}
!746 = !DILocalVariable(name: "__unused", arg: 1, scope: !744, file: !1, line: 133, type: !19)
!747 = !DILocation(line: 133, column: 1, scope: !744)
!748 = distinct !DISubprogram(name: "__ia32_sys_semtimedop_time32", scope: !1, file: !1, line: 133, type: !17, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !749)
!749 = !{!750}
!750 = !DILocalVariable(name: "__unused", arg: 1, scope: !748, file: !1, line: 133, type: !19)
!751 = !DILocation(line: 133, column: 1, scope: !748)
!752 = distinct !DISubprogram(name: "__x64_sys_semop", scope: !1, file: !1, line: 134, type: !17, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !753)
!753 = !{!754}
!754 = !DILocalVariable(name: "__unused", arg: 1, scope: !752, file: !1, line: 134, type: !19)
!755 = !DILocation(line: 134, column: 1, scope: !752)
!756 = distinct !DISubprogram(name: "__ia32_sys_semop", scope: !1, file: !1, line: 134, type: !17, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !757)
!757 = !{!758}
!758 = !DILocalVariable(name: "__unused", arg: 1, scope: !756, file: !1, line: 134, type: !19)
!759 = !DILocation(line: 134, column: 1, scope: !756)
!760 = distinct !DISubprogram(name: "__x64_sys_shmget", scope: !1, file: !1, line: 135, type: !17, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !761)
!761 = !{!762}
!762 = !DILocalVariable(name: "__unused", arg: 1, scope: !760, file: !1, line: 135, type: !19)
!763 = !DILocation(line: 135, column: 1, scope: !760)
!764 = distinct !DISubprogram(name: "__ia32_sys_shmget", scope: !1, file: !1, line: 135, type: !17, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !765)
!765 = !{!766}
!766 = !DILocalVariable(name: "__unused", arg: 1, scope: !764, file: !1, line: 135, type: !19)
!767 = !DILocation(line: 135, column: 1, scope: !764)
!768 = distinct !DISubprogram(name: "__x64_sys_old_shmctl", scope: !1, file: !1, line: 136, type: !17, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !769)
!769 = !{!770}
!770 = !DILocalVariable(name: "__unused", arg: 1, scope: !768, file: !1, line: 136, type: !19)
!771 = !DILocation(line: 136, column: 1, scope: !768)
!772 = distinct !DISubprogram(name: "__ia32_sys_old_shmctl", scope: !1, file: !1, line: 136, type: !17, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !773)
!773 = !{!774}
!774 = !DILocalVariable(name: "__unused", arg: 1, scope: !772, file: !1, line: 136, type: !19)
!775 = !DILocation(line: 136, column: 1, scope: !772)
!776 = distinct !DISubprogram(name: "__x64_sys_shmctl", scope: !1, file: !1, line: 137, type: !17, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !777)
!777 = !{!778}
!778 = !DILocalVariable(name: "__unused", arg: 1, scope: !776, file: !1, line: 137, type: !19)
!779 = !DILocation(line: 137, column: 1, scope: !776)
!780 = distinct !DISubprogram(name: "__ia32_sys_shmctl", scope: !1, file: !1, line: 137, type: !17, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !781)
!781 = !{!782}
!782 = !DILocalVariable(name: "__unused", arg: 1, scope: !780, file: !1, line: 137, type: !19)
!783 = !DILocation(line: 137, column: 1, scope: !780)
!784 = distinct !DISubprogram(name: "__ia32_compat_sys_shmctl", scope: !1, file: !1, line: 138, type: !17, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !785)
!785 = !{!786}
!786 = !DILocalVariable(name: "__unused", arg: 1, scope: !784, file: !1, line: 138, type: !19)
!787 = !DILocation(line: 138, column: 1, scope: !784)
!788 = distinct !DISubprogram(name: "__ia32_compat_sys_old_shmctl", scope: !1, file: !1, line: 139, type: !17, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !789)
!789 = !{!790}
!790 = !DILocalVariable(name: "__unused", arg: 1, scope: !788, file: !1, line: 139, type: !19)
!791 = !DILocation(line: 139, column: 1, scope: !788)
!792 = distinct !DISubprogram(name: "__x64_sys_shmat", scope: !1, file: !1, line: 140, type: !17, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !793)
!793 = !{!794}
!794 = !DILocalVariable(name: "__unused", arg: 1, scope: !792, file: !1, line: 140, type: !19)
!795 = !DILocation(line: 140, column: 1, scope: !792)
!796 = distinct !DISubprogram(name: "__ia32_sys_shmat", scope: !1, file: !1, line: 140, type: !17, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !797)
!797 = !{!798}
!798 = !DILocalVariable(name: "__unused", arg: 1, scope: !796, file: !1, line: 140, type: !19)
!799 = !DILocation(line: 140, column: 1, scope: !796)
!800 = distinct !DISubprogram(name: "__ia32_compat_sys_shmat", scope: !1, file: !1, line: 141, type: !17, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !801)
!801 = !{!802}
!802 = !DILocalVariable(name: "__unused", arg: 1, scope: !800, file: !1, line: 141, type: !19)
!803 = !DILocation(line: 141, column: 1, scope: !800)
!804 = distinct !DISubprogram(name: "__x64_sys_shmdt", scope: !1, file: !1, line: 142, type: !17, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !805)
!805 = !{!806}
!806 = !DILocalVariable(name: "__unused", arg: 1, scope: !804, file: !1, line: 142, type: !19)
!807 = !DILocation(line: 142, column: 1, scope: !804)
!808 = distinct !DISubprogram(name: "__ia32_sys_shmdt", scope: !1, file: !1, line: 142, type: !17, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !809)
!809 = !{!810}
!810 = !DILocalVariable(name: "__unused", arg: 1, scope: !808, file: !1, line: 142, type: !19)
!811 = !DILocation(line: 142, column: 1, scope: !808)
!812 = distinct !DISubprogram(name: "__x64_sys_socket", scope: !1, file: !1, line: 143, type: !17, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !813)
!813 = !{!814}
!814 = !DILocalVariable(name: "__unused", arg: 1, scope: !812, file: !1, line: 143, type: !19)
!815 = !DILocation(line: 143, column: 1, scope: !812)
!816 = distinct !DISubprogram(name: "__ia32_sys_socket", scope: !1, file: !1, line: 143, type: !17, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !817)
!817 = !{!818}
!818 = !DILocalVariable(name: "__unused", arg: 1, scope: !816, file: !1, line: 143, type: !19)
!819 = !DILocation(line: 143, column: 1, scope: !816)
!820 = distinct !DISubprogram(name: "__x64_sys_socketpair", scope: !1, file: !1, line: 144, type: !17, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !821)
!821 = !{!822}
!822 = !DILocalVariable(name: "__unused", arg: 1, scope: !820, file: !1, line: 144, type: !19)
!823 = !DILocation(line: 144, column: 1, scope: !820)
!824 = distinct !DISubprogram(name: "__ia32_sys_socketpair", scope: !1, file: !1, line: 144, type: !17, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !825)
!825 = !{!826}
!826 = !DILocalVariable(name: "__unused", arg: 1, scope: !824, file: !1, line: 144, type: !19)
!827 = !DILocation(line: 144, column: 1, scope: !824)
!828 = distinct !DISubprogram(name: "__x64_sys_bind", scope: !1, file: !1, line: 145, type: !17, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !829)
!829 = !{!830}
!830 = !DILocalVariable(name: "__unused", arg: 1, scope: !828, file: !1, line: 145, type: !19)
!831 = !DILocation(line: 145, column: 1, scope: !828)
!832 = distinct !DISubprogram(name: "__ia32_sys_bind", scope: !1, file: !1, line: 145, type: !17, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !833)
!833 = !{!834}
!834 = !DILocalVariable(name: "__unused", arg: 1, scope: !832, file: !1, line: 145, type: !19)
!835 = !DILocation(line: 145, column: 1, scope: !832)
!836 = distinct !DISubprogram(name: "__x64_sys_listen", scope: !1, file: !1, line: 146, type: !17, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !837)
!837 = !{!838}
!838 = !DILocalVariable(name: "__unused", arg: 1, scope: !836, file: !1, line: 146, type: !19)
!839 = !DILocation(line: 146, column: 1, scope: !836)
!840 = distinct !DISubprogram(name: "__ia32_sys_listen", scope: !1, file: !1, line: 146, type: !17, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !841)
!841 = !{!842}
!842 = !DILocalVariable(name: "__unused", arg: 1, scope: !840, file: !1, line: 146, type: !19)
!843 = !DILocation(line: 146, column: 1, scope: !840)
!844 = distinct !DISubprogram(name: "__x64_sys_accept", scope: !1, file: !1, line: 147, type: !17, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !845)
!845 = !{!846}
!846 = !DILocalVariable(name: "__unused", arg: 1, scope: !844, file: !1, line: 147, type: !19)
!847 = !DILocation(line: 147, column: 1, scope: !844)
!848 = distinct !DISubprogram(name: "__ia32_sys_accept", scope: !1, file: !1, line: 147, type: !17, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !849)
!849 = !{!850}
!850 = !DILocalVariable(name: "__unused", arg: 1, scope: !848, file: !1, line: 147, type: !19)
!851 = !DILocation(line: 147, column: 1, scope: !848)
!852 = distinct !DISubprogram(name: "__x64_sys_connect", scope: !1, file: !1, line: 148, type: !17, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !853)
!853 = !{!854}
!854 = !DILocalVariable(name: "__unused", arg: 1, scope: !852, file: !1, line: 148, type: !19)
!855 = !DILocation(line: 148, column: 1, scope: !852)
!856 = distinct !DISubprogram(name: "__ia32_sys_connect", scope: !1, file: !1, line: 148, type: !17, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !857)
!857 = !{!858}
!858 = !DILocalVariable(name: "__unused", arg: 1, scope: !856, file: !1, line: 148, type: !19)
!859 = !DILocation(line: 148, column: 1, scope: !856)
!860 = distinct !DISubprogram(name: "__x64_sys_getsockname", scope: !1, file: !1, line: 149, type: !17, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !861)
!861 = !{!862}
!862 = !DILocalVariable(name: "__unused", arg: 1, scope: !860, file: !1, line: 149, type: !19)
!863 = !DILocation(line: 149, column: 1, scope: !860)
!864 = distinct !DISubprogram(name: "__ia32_sys_getsockname", scope: !1, file: !1, line: 149, type: !17, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !865)
!865 = !{!866}
!866 = !DILocalVariable(name: "__unused", arg: 1, scope: !864, file: !1, line: 149, type: !19)
!867 = !DILocation(line: 149, column: 1, scope: !864)
!868 = distinct !DISubprogram(name: "__x64_sys_getpeername", scope: !1, file: !1, line: 150, type: !17, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !869)
!869 = !{!870}
!870 = !DILocalVariable(name: "__unused", arg: 1, scope: !868, file: !1, line: 150, type: !19)
!871 = !DILocation(line: 150, column: 1, scope: !868)
!872 = distinct !DISubprogram(name: "__ia32_sys_getpeername", scope: !1, file: !1, line: 150, type: !17, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !873)
!873 = !{!874}
!874 = !DILocalVariable(name: "__unused", arg: 1, scope: !872, file: !1, line: 150, type: !19)
!875 = !DILocation(line: 150, column: 1, scope: !872)
!876 = distinct !DISubprogram(name: "__x64_sys_setsockopt", scope: !1, file: !1, line: 151, type: !17, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !877)
!877 = !{!878}
!878 = !DILocalVariable(name: "__unused", arg: 1, scope: !876, file: !1, line: 151, type: !19)
!879 = !DILocation(line: 151, column: 1, scope: !876)
!880 = distinct !DISubprogram(name: "__ia32_sys_setsockopt", scope: !1, file: !1, line: 151, type: !17, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !881)
!881 = !{!882}
!882 = !DILocalVariable(name: "__unused", arg: 1, scope: !880, file: !1, line: 151, type: !19)
!883 = !DILocation(line: 151, column: 1, scope: !880)
!884 = distinct !DISubprogram(name: "__ia32_compat_sys_setsockopt", scope: !1, file: !1, line: 152, type: !17, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !885)
!885 = !{!886}
!886 = !DILocalVariable(name: "__unused", arg: 1, scope: !884, file: !1, line: 152, type: !19)
!887 = !DILocation(line: 152, column: 1, scope: !884)
!888 = distinct !DISubprogram(name: "__x64_sys_getsockopt", scope: !1, file: !1, line: 153, type: !17, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !889)
!889 = !{!890}
!890 = !DILocalVariable(name: "__unused", arg: 1, scope: !888, file: !1, line: 153, type: !19)
!891 = !DILocation(line: 153, column: 1, scope: !888)
!892 = distinct !DISubprogram(name: "__ia32_sys_getsockopt", scope: !1, file: !1, line: 153, type: !17, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !893)
!893 = !{!894}
!894 = !DILocalVariable(name: "__unused", arg: 1, scope: !892, file: !1, line: 153, type: !19)
!895 = !DILocation(line: 153, column: 1, scope: !892)
!896 = distinct !DISubprogram(name: "__ia32_compat_sys_getsockopt", scope: !1, file: !1, line: 154, type: !17, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !897)
!897 = !{!898}
!898 = !DILocalVariable(name: "__unused", arg: 1, scope: !896, file: !1, line: 154, type: !19)
!899 = !DILocation(line: 154, column: 1, scope: !896)
!900 = distinct !DISubprogram(name: "__x64_sys_sendto", scope: !1, file: !1, line: 155, type: !17, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !901)
!901 = !{!902}
!902 = !DILocalVariable(name: "__unused", arg: 1, scope: !900, file: !1, line: 155, type: !19)
!903 = !DILocation(line: 155, column: 1, scope: !900)
!904 = distinct !DISubprogram(name: "__ia32_sys_sendto", scope: !1, file: !1, line: 155, type: !17, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !905)
!905 = !{!906}
!906 = !DILocalVariable(name: "__unused", arg: 1, scope: !904, file: !1, line: 155, type: !19)
!907 = !DILocation(line: 155, column: 1, scope: !904)
!908 = distinct !DISubprogram(name: "__x64_sys_shutdown", scope: !1, file: !1, line: 156, type: !17, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !909)
!909 = !{!910}
!910 = !DILocalVariable(name: "__unused", arg: 1, scope: !908, file: !1, line: 156, type: !19)
!911 = !DILocation(line: 156, column: 1, scope: !908)
!912 = distinct !DISubprogram(name: "__ia32_sys_shutdown", scope: !1, file: !1, line: 156, type: !17, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !913)
!913 = !{!914}
!914 = !DILocalVariable(name: "__unused", arg: 1, scope: !912, file: !1, line: 156, type: !19)
!915 = !DILocation(line: 156, column: 1, scope: !912)
!916 = distinct !DISubprogram(name: "__x64_sys_recvfrom", scope: !1, file: !1, line: 157, type: !17, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !917)
!917 = !{!918}
!918 = !DILocalVariable(name: "__unused", arg: 1, scope: !916, file: !1, line: 157, type: !19)
!919 = !DILocation(line: 157, column: 1, scope: !916)
!920 = distinct !DISubprogram(name: "__ia32_sys_recvfrom", scope: !1, file: !1, line: 157, type: !17, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !921)
!921 = !{!922}
!922 = !DILocalVariable(name: "__unused", arg: 1, scope: !920, file: !1, line: 157, type: !19)
!923 = !DILocation(line: 157, column: 1, scope: !920)
!924 = distinct !DISubprogram(name: "__ia32_compat_sys_recvfrom", scope: !1, file: !1, line: 158, type: !17, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !925)
!925 = !{!926}
!926 = !DILocalVariable(name: "__unused", arg: 1, scope: !924, file: !1, line: 158, type: !19)
!927 = !DILocation(line: 158, column: 1, scope: !924)
!928 = distinct !DISubprogram(name: "__x64_sys_sendmsg", scope: !1, file: !1, line: 159, type: !17, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !929)
!929 = !{!930}
!930 = !DILocalVariable(name: "__unused", arg: 1, scope: !928, file: !1, line: 159, type: !19)
!931 = !DILocation(line: 159, column: 1, scope: !928)
!932 = distinct !DISubprogram(name: "__ia32_sys_sendmsg", scope: !1, file: !1, line: 159, type: !17, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !933)
!933 = !{!934}
!934 = !DILocalVariable(name: "__unused", arg: 1, scope: !932, file: !1, line: 159, type: !19)
!935 = !DILocation(line: 159, column: 1, scope: !932)
!936 = distinct !DISubprogram(name: "__ia32_compat_sys_sendmsg", scope: !1, file: !1, line: 160, type: !17, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !937)
!937 = !{!938}
!938 = !DILocalVariable(name: "__unused", arg: 1, scope: !936, file: !1, line: 160, type: !19)
!939 = !DILocation(line: 160, column: 1, scope: !936)
!940 = distinct !DISubprogram(name: "__x64_sys_recvmsg", scope: !1, file: !1, line: 161, type: !17, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !941)
!941 = !{!942}
!942 = !DILocalVariable(name: "__unused", arg: 1, scope: !940, file: !1, line: 161, type: !19)
!943 = !DILocation(line: 161, column: 1, scope: !940)
!944 = distinct !DISubprogram(name: "__ia32_sys_recvmsg", scope: !1, file: !1, line: 161, type: !17, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !945)
!945 = !{!946}
!946 = !DILocalVariable(name: "__unused", arg: 1, scope: !944, file: !1, line: 161, type: !19)
!947 = !DILocation(line: 161, column: 1, scope: !944)
!948 = distinct !DISubprogram(name: "__ia32_compat_sys_recvmsg", scope: !1, file: !1, line: 162, type: !17, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !949)
!949 = !{!950}
!950 = !DILocalVariable(name: "__unused", arg: 1, scope: !948, file: !1, line: 162, type: !19)
!951 = !DILocation(line: 162, column: 1, scope: !948)
!952 = distinct !DISubprogram(name: "__x64_sys_mremap", scope: !1, file: !1, line: 163, type: !17, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !953)
!953 = !{!954}
!954 = !DILocalVariable(name: "__unused", arg: 1, scope: !952, file: !1, line: 163, type: !19)
!955 = !DILocation(line: 163, column: 1, scope: !952)
!956 = distinct !DISubprogram(name: "__ia32_sys_mremap", scope: !1, file: !1, line: 163, type: !17, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !957)
!957 = !{!958}
!958 = !DILocalVariable(name: "__unused", arg: 1, scope: !956, file: !1, line: 163, type: !19)
!959 = !DILocation(line: 163, column: 1, scope: !956)
!960 = distinct !DISubprogram(name: "__x64_sys_add_key", scope: !1, file: !1, line: 164, type: !17, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !961)
!961 = !{!962}
!962 = !DILocalVariable(name: "__unused", arg: 1, scope: !960, file: !1, line: 164, type: !19)
!963 = !DILocation(line: 164, column: 1, scope: !960)
!964 = distinct !DISubprogram(name: "__ia32_sys_add_key", scope: !1, file: !1, line: 164, type: !17, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !965)
!965 = !{!966}
!966 = !DILocalVariable(name: "__unused", arg: 1, scope: !964, file: !1, line: 164, type: !19)
!967 = !DILocation(line: 164, column: 1, scope: !964)
!968 = distinct !DISubprogram(name: "__x64_sys_request_key", scope: !1, file: !1, line: 165, type: !17, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !969)
!969 = !{!970}
!970 = !DILocalVariable(name: "__unused", arg: 1, scope: !968, file: !1, line: 165, type: !19)
!971 = !DILocation(line: 165, column: 1, scope: !968)
!972 = distinct !DISubprogram(name: "__ia32_sys_request_key", scope: !1, file: !1, line: 165, type: !17, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !973)
!973 = !{!974}
!974 = !DILocalVariable(name: "__unused", arg: 1, scope: !972, file: !1, line: 165, type: !19)
!975 = !DILocation(line: 165, column: 1, scope: !972)
!976 = distinct !DISubprogram(name: "__x64_sys_keyctl", scope: !1, file: !1, line: 166, type: !17, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !977)
!977 = !{!978}
!978 = !DILocalVariable(name: "__unused", arg: 1, scope: !976, file: !1, line: 166, type: !19)
!979 = !DILocation(line: 166, column: 1, scope: !976)
!980 = distinct !DISubprogram(name: "__ia32_sys_keyctl", scope: !1, file: !1, line: 166, type: !17, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !981)
!981 = !{!982}
!982 = !DILocalVariable(name: "__unused", arg: 1, scope: !980, file: !1, line: 166, type: !19)
!983 = !DILocation(line: 166, column: 1, scope: !980)
!984 = distinct !DISubprogram(name: "__ia32_compat_sys_keyctl", scope: !1, file: !1, line: 167, type: !17, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !985)
!985 = !{!986}
!986 = !DILocalVariable(name: "__unused", arg: 1, scope: !984, file: !1, line: 167, type: !19)
!987 = !DILocation(line: 167, column: 1, scope: !984)
!988 = distinct !DISubprogram(name: "__x64_sys_landlock_create_ruleset", scope: !1, file: !1, line: 168, type: !17, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !989)
!989 = !{!990}
!990 = !DILocalVariable(name: "__unused", arg: 1, scope: !988, file: !1, line: 168, type: !19)
!991 = !DILocation(line: 168, column: 1, scope: !988)
!992 = distinct !DISubprogram(name: "__ia32_sys_landlock_create_ruleset", scope: !1, file: !1, line: 168, type: !17, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !993)
!993 = !{!994}
!994 = !DILocalVariable(name: "__unused", arg: 1, scope: !992, file: !1, line: 168, type: !19)
!995 = !DILocation(line: 168, column: 1, scope: !992)
!996 = distinct !DISubprogram(name: "__x64_sys_landlock_add_rule", scope: !1, file: !1, line: 169, type: !17, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !997)
!997 = !{!998}
!998 = !DILocalVariable(name: "__unused", arg: 1, scope: !996, file: !1, line: 169, type: !19)
!999 = !DILocation(line: 169, column: 1, scope: !996)
!1000 = distinct !DISubprogram(name: "__ia32_sys_landlock_add_rule", scope: !1, file: !1, line: 169, type: !17, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1001)
!1001 = !{!1002}
!1002 = !DILocalVariable(name: "__unused", arg: 1, scope: !1000, file: !1, line: 169, type: !19)
!1003 = !DILocation(line: 169, column: 1, scope: !1000)
!1004 = distinct !DISubprogram(name: "__x64_sys_landlock_restrict_self", scope: !1, file: !1, line: 170, type: !17, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1005)
!1005 = !{!1006}
!1006 = !DILocalVariable(name: "__unused", arg: 1, scope: !1004, file: !1, line: 170, type: !19)
!1007 = !DILocation(line: 170, column: 1, scope: !1004)
!1008 = distinct !DISubprogram(name: "__ia32_sys_landlock_restrict_self", scope: !1, file: !1, line: 170, type: !17, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1009)
!1009 = !{!1010}
!1010 = !DILocalVariable(name: "__unused", arg: 1, scope: !1008, file: !1, line: 170, type: !19)
!1011 = !DILocation(line: 170, column: 1, scope: !1008)
!1012 = distinct !DISubprogram(name: "__x64_sys_fadvise64_64", scope: !1, file: !1, line: 171, type: !17, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1013)
!1013 = !{!1014}
!1014 = !DILocalVariable(name: "__unused", arg: 1, scope: !1012, file: !1, line: 171, type: !19)
!1015 = !DILocation(line: 171, column: 1, scope: !1012)
!1016 = distinct !DISubprogram(name: "__ia32_sys_fadvise64_64", scope: !1, file: !1, line: 171, type: !17, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1017)
!1017 = !{!1018}
!1018 = !DILocalVariable(name: "__unused", arg: 1, scope: !1016, file: !1, line: 171, type: !19)
!1019 = !DILocation(line: 171, column: 1, scope: !1016)
!1020 = distinct !DISubprogram(name: "__ia32_compat_sys_fadvise64_64", scope: !1, file: !1, line: 172, type: !17, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1021)
!1021 = !{!1022}
!1022 = !DILocalVariable(name: "__unused", arg: 1, scope: !1020, file: !1, line: 172, type: !19)
!1023 = !DILocation(line: 172, column: 1, scope: !1020)
!1024 = distinct !DISubprogram(name: "__x64_sys_swapon", scope: !1, file: !1, line: 175, type: !17, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1025)
!1025 = !{!1026}
!1026 = !DILocalVariable(name: "__unused", arg: 1, scope: !1024, file: !1, line: 175, type: !19)
!1027 = !DILocation(line: 175, column: 1, scope: !1024)
!1028 = distinct !DISubprogram(name: "__ia32_sys_swapon", scope: !1, file: !1, line: 175, type: !17, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1029)
!1029 = !{!1030}
!1030 = !DILocalVariable(name: "__unused", arg: 1, scope: !1028, file: !1, line: 175, type: !19)
!1031 = !DILocation(line: 175, column: 1, scope: !1028)
!1032 = distinct !DISubprogram(name: "__x64_sys_swapoff", scope: !1, file: !1, line: 176, type: !17, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1033)
!1033 = !{!1034}
!1034 = !DILocalVariable(name: "__unused", arg: 1, scope: !1032, file: !1, line: 176, type: !19)
!1035 = !DILocation(line: 176, column: 1, scope: !1032)
!1036 = distinct !DISubprogram(name: "__ia32_sys_swapoff", scope: !1, file: !1, line: 176, type: !17, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1037)
!1037 = !{!1038}
!1038 = !DILocalVariable(name: "__unused", arg: 1, scope: !1036, file: !1, line: 176, type: !19)
!1039 = !DILocation(line: 176, column: 1, scope: !1036)
!1040 = distinct !DISubprogram(name: "__x64_sys_mprotect", scope: !1, file: !1, line: 177, type: !17, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1041)
!1041 = !{!1042}
!1042 = !DILocalVariable(name: "__unused", arg: 1, scope: !1040, file: !1, line: 177, type: !19)
!1043 = !DILocation(line: 177, column: 1, scope: !1040)
!1044 = distinct !DISubprogram(name: "__ia32_sys_mprotect", scope: !1, file: !1, line: 177, type: !17, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1045)
!1045 = !{!1046}
!1046 = !DILocalVariable(name: "__unused", arg: 1, scope: !1044, file: !1, line: 177, type: !19)
!1047 = !DILocation(line: 177, column: 1, scope: !1044)
!1048 = distinct !DISubprogram(name: "__x64_sys_msync", scope: !1, file: !1, line: 178, type: !17, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1049)
!1049 = !{!1050}
!1050 = !DILocalVariable(name: "__unused", arg: 1, scope: !1048, file: !1, line: 178, type: !19)
!1051 = !DILocation(line: 178, column: 1, scope: !1048)
!1052 = distinct !DISubprogram(name: "__ia32_sys_msync", scope: !1, file: !1, line: 178, type: !17, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1053)
!1053 = !{!1054}
!1054 = !DILocalVariable(name: "__unused", arg: 1, scope: !1052, file: !1, line: 178, type: !19)
!1055 = !DILocation(line: 178, column: 1, scope: !1052)
!1056 = distinct !DISubprogram(name: "__x64_sys_mlock", scope: !1, file: !1, line: 179, type: !17, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1057)
!1057 = !{!1058}
!1058 = !DILocalVariable(name: "__unused", arg: 1, scope: !1056, file: !1, line: 179, type: !19)
!1059 = !DILocation(line: 179, column: 1, scope: !1056)
!1060 = distinct !DISubprogram(name: "__ia32_sys_mlock", scope: !1, file: !1, line: 179, type: !17, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1061)
!1061 = !{!1062}
!1062 = !DILocalVariable(name: "__unused", arg: 1, scope: !1060, file: !1, line: 179, type: !19)
!1063 = !DILocation(line: 179, column: 1, scope: !1060)
!1064 = distinct !DISubprogram(name: "__x64_sys_munlock", scope: !1, file: !1, line: 180, type: !17, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1065)
!1065 = !{!1066}
!1066 = !DILocalVariable(name: "__unused", arg: 1, scope: !1064, file: !1, line: 180, type: !19)
!1067 = !DILocation(line: 180, column: 1, scope: !1064)
!1068 = distinct !DISubprogram(name: "__ia32_sys_munlock", scope: !1, file: !1, line: 180, type: !17, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1069)
!1069 = !{!1070}
!1070 = !DILocalVariable(name: "__unused", arg: 1, scope: !1068, file: !1, line: 180, type: !19)
!1071 = !DILocation(line: 180, column: 1, scope: !1068)
!1072 = distinct !DISubprogram(name: "__x64_sys_mlockall", scope: !1, file: !1, line: 181, type: !17, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1073)
!1073 = !{!1074}
!1074 = !DILocalVariable(name: "__unused", arg: 1, scope: !1072, file: !1, line: 181, type: !19)
!1075 = !DILocation(line: 181, column: 1, scope: !1072)
!1076 = distinct !DISubprogram(name: "__ia32_sys_mlockall", scope: !1, file: !1, line: 181, type: !17, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1077)
!1077 = !{!1078}
!1078 = !DILocalVariable(name: "__unused", arg: 1, scope: !1076, file: !1, line: 181, type: !19)
!1079 = !DILocation(line: 181, column: 1, scope: !1076)
!1080 = distinct !DISubprogram(name: "__x64_sys_munlockall", scope: !1, file: !1, line: 182, type: !17, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1081)
!1081 = !{!1082}
!1082 = !DILocalVariable(name: "__unused", arg: 1, scope: !1080, file: !1, line: 182, type: !19)
!1083 = !DILocation(line: 182, column: 1, scope: !1080)
!1084 = distinct !DISubprogram(name: "__ia32_sys_munlockall", scope: !1, file: !1, line: 182, type: !17, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1085)
!1085 = !{!1086}
!1086 = !DILocalVariable(name: "__unused", arg: 1, scope: !1084, file: !1, line: 182, type: !19)
!1087 = !DILocation(line: 182, column: 1, scope: !1084)
!1088 = distinct !DISubprogram(name: "__x64_sys_mincore", scope: !1, file: !1, line: 183, type: !17, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1089)
!1089 = !{!1090}
!1090 = !DILocalVariable(name: "__unused", arg: 1, scope: !1088, file: !1, line: 183, type: !19)
!1091 = !DILocation(line: 183, column: 1, scope: !1088)
!1092 = distinct !DISubprogram(name: "__ia32_sys_mincore", scope: !1, file: !1, line: 183, type: !17, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1093)
!1093 = !{!1094}
!1094 = !DILocalVariable(name: "__unused", arg: 1, scope: !1092, file: !1, line: 183, type: !19)
!1095 = !DILocation(line: 183, column: 1, scope: !1092)
!1096 = distinct !DISubprogram(name: "__x64_sys_madvise", scope: !1, file: !1, line: 184, type: !17, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1097)
!1097 = !{!1098}
!1098 = !DILocalVariable(name: "__unused", arg: 1, scope: !1096, file: !1, line: 184, type: !19)
!1099 = !DILocation(line: 184, column: 1, scope: !1096)
!1100 = distinct !DISubprogram(name: "__ia32_sys_madvise", scope: !1, file: !1, line: 184, type: !17, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1101)
!1101 = !{!1102}
!1102 = !DILocalVariable(name: "__unused", arg: 1, scope: !1100, file: !1, line: 184, type: !19)
!1103 = !DILocation(line: 184, column: 1, scope: !1100)
!1104 = distinct !DISubprogram(name: "__x64_sys_process_madvise", scope: !1, file: !1, line: 185, type: !17, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1105)
!1105 = !{!1106}
!1106 = !DILocalVariable(name: "__unused", arg: 1, scope: !1104, file: !1, line: 185, type: !19)
!1107 = !DILocation(line: 185, column: 1, scope: !1104)
!1108 = distinct !DISubprogram(name: "__ia32_sys_process_madvise", scope: !1, file: !1, line: 185, type: !17, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1109)
!1109 = !{!1110}
!1110 = !DILocalVariable(name: "__unused", arg: 1, scope: !1108, file: !1, line: 185, type: !19)
!1111 = !DILocation(line: 185, column: 1, scope: !1108)
!1112 = distinct !DISubprogram(name: "__x64_sys_process_mrelease", scope: !1, file: !1, line: 186, type: !17, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1113)
!1113 = !{!1114}
!1114 = !DILocalVariable(name: "__unused", arg: 1, scope: !1112, file: !1, line: 186, type: !19)
!1115 = !DILocation(line: 186, column: 1, scope: !1112)
!1116 = distinct !DISubprogram(name: "__ia32_sys_process_mrelease", scope: !1, file: !1, line: 186, type: !17, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1117)
!1117 = !{!1118}
!1118 = !DILocalVariable(name: "__unused", arg: 1, scope: !1116, file: !1, line: 186, type: !19)
!1119 = !DILocation(line: 186, column: 1, scope: !1116)
!1120 = distinct !DISubprogram(name: "__x64_sys_remap_file_pages", scope: !1, file: !1, line: 187, type: !17, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1121)
!1121 = !{!1122}
!1122 = !DILocalVariable(name: "__unused", arg: 1, scope: !1120, file: !1, line: 187, type: !19)
!1123 = !DILocation(line: 187, column: 1, scope: !1120)
!1124 = distinct !DISubprogram(name: "__ia32_sys_remap_file_pages", scope: !1, file: !1, line: 187, type: !17, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1125)
!1125 = !{!1126}
!1126 = !DILocalVariable(name: "__unused", arg: 1, scope: !1124, file: !1, line: 187, type: !19)
!1127 = !DILocation(line: 187, column: 1, scope: !1124)
!1128 = distinct !DISubprogram(name: "__x64_sys_mbind", scope: !1, file: !1, line: 188, type: !17, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1129)
!1129 = !{!1130}
!1130 = !DILocalVariable(name: "__unused", arg: 1, scope: !1128, file: !1, line: 188, type: !19)
!1131 = !DILocation(line: 188, column: 1, scope: !1128)
!1132 = distinct !DISubprogram(name: "__ia32_sys_mbind", scope: !1, file: !1, line: 188, type: !17, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1133)
!1133 = !{!1134}
!1134 = !DILocalVariable(name: "__unused", arg: 1, scope: !1132, file: !1, line: 188, type: !19)
!1135 = !DILocation(line: 188, column: 1, scope: !1132)
!1136 = distinct !DISubprogram(name: "__x64_sys_get_mempolicy", scope: !1, file: !1, line: 189, type: !17, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1137)
!1137 = !{!1138}
!1138 = !DILocalVariable(name: "__unused", arg: 1, scope: !1136, file: !1, line: 189, type: !19)
!1139 = !DILocation(line: 189, column: 1, scope: !1136)
!1140 = distinct !DISubprogram(name: "__ia32_sys_get_mempolicy", scope: !1, file: !1, line: 189, type: !17, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1141)
!1141 = !{!1142}
!1142 = !DILocalVariable(name: "__unused", arg: 1, scope: !1140, file: !1, line: 189, type: !19)
!1143 = !DILocation(line: 189, column: 1, scope: !1140)
!1144 = distinct !DISubprogram(name: "__x64_sys_set_mempolicy", scope: !1, file: !1, line: 190, type: !17, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1145)
!1145 = !{!1146}
!1146 = !DILocalVariable(name: "__unused", arg: 1, scope: !1144, file: !1, line: 190, type: !19)
!1147 = !DILocation(line: 190, column: 1, scope: !1144)
!1148 = distinct !DISubprogram(name: "__ia32_sys_set_mempolicy", scope: !1, file: !1, line: 190, type: !17, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1149)
!1149 = !{!1150}
!1150 = !DILocalVariable(name: "__unused", arg: 1, scope: !1148, file: !1, line: 190, type: !19)
!1151 = !DILocation(line: 190, column: 1, scope: !1148)
!1152 = distinct !DISubprogram(name: "__x64_sys_migrate_pages", scope: !1, file: !1, line: 191, type: !17, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1153)
!1153 = !{!1154}
!1154 = !DILocalVariable(name: "__unused", arg: 1, scope: !1152, file: !1, line: 191, type: !19)
!1155 = !DILocation(line: 191, column: 1, scope: !1152)
!1156 = distinct !DISubprogram(name: "__ia32_sys_migrate_pages", scope: !1, file: !1, line: 191, type: !17, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1157)
!1157 = !{!1158}
!1158 = !DILocalVariable(name: "__unused", arg: 1, scope: !1156, file: !1, line: 191, type: !19)
!1159 = !DILocation(line: 191, column: 1, scope: !1156)
!1160 = distinct !DISubprogram(name: "__x64_sys_move_pages", scope: !1, file: !1, line: 192, type: !17, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1161)
!1161 = !{!1162}
!1162 = !DILocalVariable(name: "__unused", arg: 1, scope: !1160, file: !1, line: 192, type: !19)
!1163 = !DILocation(line: 192, column: 1, scope: !1160)
!1164 = distinct !DISubprogram(name: "__ia32_sys_move_pages", scope: !1, file: !1, line: 192, type: !17, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1165)
!1165 = !{!1166}
!1166 = !DILocalVariable(name: "__unused", arg: 1, scope: !1164, file: !1, line: 192, type: !19)
!1167 = !DILocation(line: 192, column: 1, scope: !1164)
!1168 = distinct !DISubprogram(name: "__x64_sys_set_mempolicy_home_node", scope: !1, file: !1, line: 193, type: !17, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1169)
!1169 = !{!1170}
!1170 = !DILocalVariable(name: "__unused", arg: 1, scope: !1168, file: !1, line: 193, type: !19)
!1171 = !DILocation(line: 193, column: 1, scope: !1168)
!1172 = distinct !DISubprogram(name: "__ia32_sys_set_mempolicy_home_node", scope: !1, file: !1, line: 193, type: !17, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1173)
!1173 = !{!1174}
!1174 = !DILocalVariable(name: "__unused", arg: 1, scope: !1172, file: !1, line: 193, type: !19)
!1175 = !DILocation(line: 193, column: 1, scope: !1172)
!1176 = distinct !DISubprogram(name: "__x64_sys_cachestat", scope: !1, file: !1, line: 194, type: !17, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1177)
!1177 = !{!1178}
!1178 = !DILocalVariable(name: "__unused", arg: 1, scope: !1176, file: !1, line: 194, type: !19)
!1179 = !DILocation(line: 194, column: 1, scope: !1176)
!1180 = distinct !DISubprogram(name: "__ia32_sys_cachestat", scope: !1, file: !1, line: 194, type: !17, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1181)
!1181 = !{!1182}
!1182 = !DILocalVariable(name: "__unused", arg: 1, scope: !1180, file: !1, line: 194, type: !19)
!1183 = !DILocation(line: 194, column: 1, scope: !1180)
!1184 = distinct !DISubprogram(name: "__x64_sys_perf_event_open", scope: !1, file: !1, line: 196, type: !17, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1185)
!1185 = !{!1186}
!1186 = !DILocalVariable(name: "__unused", arg: 1, scope: !1184, file: !1, line: 196, type: !19)
!1187 = !DILocation(line: 196, column: 1, scope: !1184)
!1188 = distinct !DISubprogram(name: "__ia32_sys_perf_event_open", scope: !1, file: !1, line: 196, type: !17, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1189)
!1189 = !{!1190}
!1190 = !DILocalVariable(name: "__unused", arg: 1, scope: !1188, file: !1, line: 196, type: !19)
!1191 = !DILocation(line: 196, column: 1, scope: !1188)
!1192 = distinct !DISubprogram(name: "__x64_sys_accept4", scope: !1, file: !1, line: 197, type: !17, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1193)
!1193 = !{!1194}
!1194 = !DILocalVariable(name: "__unused", arg: 1, scope: !1192, file: !1, line: 197, type: !19)
!1195 = !DILocation(line: 197, column: 1, scope: !1192)
!1196 = distinct !DISubprogram(name: "__ia32_sys_accept4", scope: !1, file: !1, line: 197, type: !17, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1197)
!1197 = !{!1198}
!1198 = !DILocalVariable(name: "__unused", arg: 1, scope: !1196, file: !1, line: 197, type: !19)
!1199 = !DILocation(line: 197, column: 1, scope: !1196)
!1200 = distinct !DISubprogram(name: "__x64_sys_recvmmsg", scope: !1, file: !1, line: 198, type: !17, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1201)
!1201 = !{!1202}
!1202 = !DILocalVariable(name: "__unused", arg: 1, scope: !1200, file: !1, line: 198, type: !19)
!1203 = !DILocation(line: 198, column: 1, scope: !1200)
!1204 = distinct !DISubprogram(name: "__ia32_sys_recvmmsg", scope: !1, file: !1, line: 198, type: !17, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1205)
!1205 = !{!1206}
!1206 = !DILocalVariable(name: "__unused", arg: 1, scope: !1204, file: !1, line: 198, type: !19)
!1207 = !DILocation(line: 198, column: 1, scope: !1204)
!1208 = distinct !DISubprogram(name: "__x64_sys_recvmmsg_time32", scope: !1, file: !1, line: 199, type: !17, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1209)
!1209 = !{!1210}
!1210 = !DILocalVariable(name: "__unused", arg: 1, scope: !1208, file: !1, line: 199, type: !19)
!1211 = !DILocation(line: 199, column: 1, scope: !1208)
!1212 = distinct !DISubprogram(name: "__ia32_sys_recvmmsg_time32", scope: !1, file: !1, line: 199, type: !17, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1213)
!1213 = !{!1214}
!1214 = !DILocalVariable(name: "__unused", arg: 1, scope: !1212, file: !1, line: 199, type: !19)
!1215 = !DILocation(line: 199, column: 1, scope: !1212)
!1216 = distinct !DISubprogram(name: "__ia32_compat_sys_recvmmsg_time32", scope: !1, file: !1, line: 200, type: !17, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1217)
!1217 = !{!1218}
!1218 = !DILocalVariable(name: "__unused", arg: 1, scope: !1216, file: !1, line: 200, type: !19)
!1219 = !DILocation(line: 200, column: 1, scope: !1216)
!1220 = distinct !DISubprogram(name: "__ia32_compat_sys_recvmmsg_time64", scope: !1, file: !1, line: 201, type: !17, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1221)
!1221 = !{!1222}
!1222 = !DILocalVariable(name: "__unused", arg: 1, scope: !1220, file: !1, line: 201, type: !19)
!1223 = !DILocation(line: 201, column: 1, scope: !1220)
!1224 = distinct !DISubprogram(name: "__x64_sys_timer_create", scope: !1, file: !1, line: 204, type: !17, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1225)
!1225 = !{!1226}
!1226 = !DILocalVariable(name: "__unused", arg: 1, scope: !1224, file: !1, line: 204, type: !19)
!1227 = !DILocation(line: 204, column: 1, scope: !1224)
!1228 = distinct !DISubprogram(name: "__ia32_sys_timer_create", scope: !1, file: !1, line: 204, type: !17, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1229)
!1229 = !{!1230}
!1230 = !DILocalVariable(name: "__unused", arg: 1, scope: !1228, file: !1, line: 204, type: !19)
!1231 = !DILocation(line: 204, column: 1, scope: !1228)
!1232 = distinct !DISubprogram(name: "__x64_sys_timer_gettime", scope: !1, file: !1, line: 205, type: !17, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1233)
!1233 = !{!1234}
!1234 = !DILocalVariable(name: "__unused", arg: 1, scope: !1232, file: !1, line: 205, type: !19)
!1235 = !DILocation(line: 205, column: 1, scope: !1232)
!1236 = distinct !DISubprogram(name: "__ia32_sys_timer_gettime", scope: !1, file: !1, line: 205, type: !17, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1237)
!1237 = !{!1238}
!1238 = !DILocalVariable(name: "__unused", arg: 1, scope: !1236, file: !1, line: 205, type: !19)
!1239 = !DILocation(line: 205, column: 1, scope: !1236)
!1240 = distinct !DISubprogram(name: "__x64_sys_timer_getoverrun", scope: !1, file: !1, line: 206, type: !17, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1241)
!1241 = !{!1242}
!1242 = !DILocalVariable(name: "__unused", arg: 1, scope: !1240, file: !1, line: 206, type: !19)
!1243 = !DILocation(line: 206, column: 1, scope: !1240)
!1244 = distinct !DISubprogram(name: "__ia32_sys_timer_getoverrun", scope: !1, file: !1, line: 206, type: !17, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1245)
!1245 = !{!1246}
!1246 = !DILocalVariable(name: "__unused", arg: 1, scope: !1244, file: !1, line: 206, type: !19)
!1247 = !DILocation(line: 206, column: 1, scope: !1244)
!1248 = distinct !DISubprogram(name: "__x64_sys_timer_settime", scope: !1, file: !1, line: 207, type: !17, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1249)
!1249 = !{!1250}
!1250 = !DILocalVariable(name: "__unused", arg: 1, scope: !1248, file: !1, line: 207, type: !19)
!1251 = !DILocation(line: 207, column: 1, scope: !1248)
!1252 = distinct !DISubprogram(name: "__ia32_sys_timer_settime", scope: !1, file: !1, line: 207, type: !17, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1253)
!1253 = !{!1254}
!1254 = !DILocalVariable(name: "__unused", arg: 1, scope: !1252, file: !1, line: 207, type: !19)
!1255 = !DILocation(line: 207, column: 1, scope: !1252)
!1256 = distinct !DISubprogram(name: "__x64_sys_timer_delete", scope: !1, file: !1, line: 208, type: !17, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1257)
!1257 = !{!1258}
!1258 = !DILocalVariable(name: "__unused", arg: 1, scope: !1256, file: !1, line: 208, type: !19)
!1259 = !DILocation(line: 208, column: 1, scope: !1256)
!1260 = distinct !DISubprogram(name: "__ia32_sys_timer_delete", scope: !1, file: !1, line: 208, type: !17, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1261)
!1261 = !{!1262}
!1262 = !DILocalVariable(name: "__unused", arg: 1, scope: !1260, file: !1, line: 208, type: !19)
!1263 = !DILocation(line: 208, column: 1, scope: !1260)
!1264 = distinct !DISubprogram(name: "__x64_sys_clock_adjtime", scope: !1, file: !1, line: 209, type: !17, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1265)
!1265 = !{!1266}
!1266 = !DILocalVariable(name: "__unused", arg: 1, scope: !1264, file: !1, line: 209, type: !19)
!1267 = !DILocation(line: 209, column: 1, scope: !1264)
!1268 = distinct !DISubprogram(name: "__ia32_sys_clock_adjtime", scope: !1, file: !1, line: 209, type: !17, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1269)
!1269 = !{!1270}
!1270 = !DILocalVariable(name: "__unused", arg: 1, scope: !1268, file: !1, line: 209, type: !19)
!1271 = !DILocation(line: 209, column: 1, scope: !1268)
!1272 = distinct !DISubprogram(name: "__x64_sys_getitimer", scope: !1, file: !1, line: 210, type: !17, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1273)
!1273 = !{!1274}
!1274 = !DILocalVariable(name: "__unused", arg: 1, scope: !1272, file: !1, line: 210, type: !19)
!1275 = !DILocation(line: 210, column: 1, scope: !1272)
!1276 = distinct !DISubprogram(name: "__ia32_sys_getitimer", scope: !1, file: !1, line: 210, type: !17, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1277)
!1277 = !{!1278}
!1278 = !DILocalVariable(name: "__unused", arg: 1, scope: !1276, file: !1, line: 210, type: !19)
!1279 = !DILocation(line: 210, column: 1, scope: !1276)
!1280 = distinct !DISubprogram(name: "__x64_sys_setitimer", scope: !1, file: !1, line: 211, type: !17, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1281)
!1281 = !{!1282}
!1282 = !DILocalVariable(name: "__unused", arg: 1, scope: !1280, file: !1, line: 211, type: !19)
!1283 = !DILocation(line: 211, column: 1, scope: !1280)
!1284 = distinct !DISubprogram(name: "__ia32_sys_setitimer", scope: !1, file: !1, line: 211, type: !17, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1285)
!1285 = !{!1286}
!1286 = !DILocalVariable(name: "__unused", arg: 1, scope: !1284, file: !1, line: 211, type: !19)
!1287 = !DILocation(line: 211, column: 1, scope: !1284)
!1288 = distinct !DISubprogram(name: "__x64_sys_alarm", scope: !1, file: !1, line: 212, type: !17, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1289)
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "__unused", arg: 1, scope: !1288, file: !1, line: 212, type: !19)
!1291 = !DILocation(line: 212, column: 1, scope: !1288)
!1292 = distinct !DISubprogram(name: "__ia32_sys_alarm", scope: !1, file: !1, line: 212, type: !17, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1293)
!1293 = !{!1294}
!1294 = !DILocalVariable(name: "__unused", arg: 1, scope: !1292, file: !1, line: 212, type: !19)
!1295 = !DILocation(line: 212, column: 1, scope: !1292)
!1296 = distinct !DISubprogram(name: "__ia32_compat_sys_timer_create", scope: !1, file: !1, line: 213, type: !17, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1297)
!1297 = !{!1298}
!1298 = !DILocalVariable(name: "__unused", arg: 1, scope: !1296, file: !1, line: 213, type: !19)
!1299 = !DILocation(line: 213, column: 1, scope: !1296)
!1300 = distinct !DISubprogram(name: "__ia32_compat_sys_getitimer", scope: !1, file: !1, line: 214, type: !17, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1301)
!1301 = !{!1302}
!1302 = !DILocalVariable(name: "__unused", arg: 1, scope: !1300, file: !1, line: 214, type: !19)
!1303 = !DILocation(line: 214, column: 1, scope: !1300)
!1304 = distinct !DISubprogram(name: "__ia32_compat_sys_setitimer", scope: !1, file: !1, line: 215, type: !17, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1305)
!1305 = !{!1306}
!1306 = !DILocalVariable(name: "__unused", arg: 1, scope: !1304, file: !1, line: 215, type: !19)
!1307 = !DILocation(line: 215, column: 1, scope: !1304)
!1308 = distinct !DISubprogram(name: "__x64_sys_fanotify_init", scope: !1, file: !1, line: 222, type: !17, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1309)
!1309 = !{!1310}
!1310 = !DILocalVariable(name: "__unused", arg: 1, scope: !1308, file: !1, line: 222, type: !19)
!1311 = !DILocation(line: 222, column: 1, scope: !1308)
!1312 = distinct !DISubprogram(name: "__ia32_sys_fanotify_init", scope: !1, file: !1, line: 222, type: !17, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1313)
!1313 = !{!1314}
!1314 = !DILocalVariable(name: "__unused", arg: 1, scope: !1312, file: !1, line: 222, type: !19)
!1315 = !DILocation(line: 222, column: 1, scope: !1312)
!1316 = distinct !DISubprogram(name: "__x64_sys_fanotify_mark", scope: !1, file: !1, line: 223, type: !17, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1317)
!1317 = !{!1318}
!1318 = !DILocalVariable(name: "__unused", arg: 1, scope: !1316, file: !1, line: 223, type: !19)
!1319 = !DILocation(line: 223, column: 1, scope: !1316)
!1320 = distinct !DISubprogram(name: "__ia32_sys_fanotify_mark", scope: !1, file: !1, line: 223, type: !17, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1321)
!1321 = !{!1322}
!1322 = !DILocalVariable(name: "__unused", arg: 1, scope: !1320, file: !1, line: 223, type: !19)
!1323 = !DILocation(line: 223, column: 1, scope: !1320)
!1324 = distinct !DISubprogram(name: "__x64_sys_name_to_handle_at", scope: !1, file: !1, line: 226, type: !17, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1325)
!1325 = !{!1326}
!1326 = !DILocalVariable(name: "__unused", arg: 1, scope: !1324, file: !1, line: 226, type: !19)
!1327 = !DILocation(line: 226, column: 1, scope: !1324)
!1328 = distinct !DISubprogram(name: "__ia32_sys_name_to_handle_at", scope: !1, file: !1, line: 226, type: !17, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1329)
!1329 = !{!1330}
!1330 = !DILocalVariable(name: "__unused", arg: 1, scope: !1328, file: !1, line: 226, type: !19)
!1331 = !DILocation(line: 226, column: 1, scope: !1328)
!1332 = distinct !DISubprogram(name: "__x64_sys_open_by_handle_at", scope: !1, file: !1, line: 227, type: !17, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1333)
!1333 = !{!1334}
!1334 = !DILocalVariable(name: "__unused", arg: 1, scope: !1332, file: !1, line: 227, type: !19)
!1335 = !DILocation(line: 227, column: 1, scope: !1332)
!1336 = distinct !DISubprogram(name: "__ia32_sys_open_by_handle_at", scope: !1, file: !1, line: 227, type: !17, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1337)
!1337 = !{!1338}
!1338 = !DILocalVariable(name: "__unused", arg: 1, scope: !1336, file: !1, line: 227, type: !19)
!1339 = !DILocation(line: 227, column: 1, scope: !1336)
!1340 = distinct !DISubprogram(name: "__ia32_compat_sys_open_by_handle_at", scope: !1, file: !1, line: 228, type: !17, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1341)
!1341 = !{!1342}
!1342 = !DILocalVariable(name: "__unused", arg: 1, scope: !1340, file: !1, line: 228, type: !19)
!1343 = !DILocation(line: 228, column: 1, scope: !1340)
!1344 = distinct !DISubprogram(name: "__x64_sys_sendmmsg", scope: !1, file: !1, line: 230, type: !17, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1345)
!1345 = !{!1346}
!1346 = !DILocalVariable(name: "__unused", arg: 1, scope: !1344, file: !1, line: 230, type: !19)
!1347 = !DILocation(line: 230, column: 1, scope: !1344)
!1348 = distinct !DISubprogram(name: "__ia32_sys_sendmmsg", scope: !1, file: !1, line: 230, type: !17, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1349)
!1349 = !{!1350}
!1350 = !DILocalVariable(name: "__unused", arg: 1, scope: !1348, file: !1, line: 230, type: !19)
!1351 = !DILocation(line: 230, column: 1, scope: !1348)
!1352 = distinct !DISubprogram(name: "__ia32_compat_sys_sendmmsg", scope: !1, file: !1, line: 231, type: !17, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1353)
!1353 = !{!1354}
!1354 = !DILocalVariable(name: "__unused", arg: 1, scope: !1352, file: !1, line: 231, type: !19)
!1355 = !DILocation(line: 231, column: 1, scope: !1352)
!1356 = distinct !DISubprogram(name: "__x64_sys_process_vm_readv", scope: !1, file: !1, line: 232, type: !17, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1357)
!1357 = !{!1358}
!1358 = !DILocalVariable(name: "__unused", arg: 1, scope: !1356, file: !1, line: 232, type: !19)
!1359 = !DILocation(line: 232, column: 1, scope: !1356)
!1360 = distinct !DISubprogram(name: "__ia32_sys_process_vm_readv", scope: !1, file: !1, line: 232, type: !17, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1361)
!1361 = !{!1362}
!1362 = !DILocalVariable(name: "__unused", arg: 1, scope: !1360, file: !1, line: 232, type: !19)
!1363 = !DILocation(line: 232, column: 1, scope: !1360)
!1364 = distinct !DISubprogram(name: "__ia32_compat_sys_process_vm_readv", scope: !1, file: !1, line: 233, type: !17, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1365)
!1365 = !{!1366}
!1366 = !DILocalVariable(name: "__unused", arg: 1, scope: !1364, file: !1, line: 233, type: !19)
!1367 = !DILocation(line: 233, column: 1, scope: !1364)
!1368 = distinct !DISubprogram(name: "__x64_sys_process_vm_writev", scope: !1, file: !1, line: 234, type: !17, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1369)
!1369 = !{!1370}
!1370 = !DILocalVariable(name: "__unused", arg: 1, scope: !1368, file: !1, line: 234, type: !19)
!1371 = !DILocation(line: 234, column: 1, scope: !1368)
!1372 = distinct !DISubprogram(name: "__ia32_sys_process_vm_writev", scope: !1, file: !1, line: 234, type: !17, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1373)
!1373 = !{!1374}
!1374 = !DILocalVariable(name: "__unused", arg: 1, scope: !1372, file: !1, line: 234, type: !19)
!1375 = !DILocation(line: 234, column: 1, scope: !1372)
!1376 = distinct !DISubprogram(name: "__ia32_compat_sys_process_vm_writev", scope: !1, file: !1, line: 235, type: !17, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1377)
!1377 = !{!1378}
!1378 = !DILocalVariable(name: "__unused", arg: 1, scope: !1376, file: !1, line: 235, type: !19)
!1379 = !DILocation(line: 235, column: 1, scope: !1376)
!1380 = distinct !DISubprogram(name: "__x64_sys_kcmp", scope: !1, file: !1, line: 238, type: !17, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1381)
!1381 = !{!1382}
!1382 = !DILocalVariable(name: "__unused", arg: 1, scope: !1380, file: !1, line: 238, type: !19)
!1383 = !DILocation(line: 238, column: 1, scope: !1380)
!1384 = distinct !DISubprogram(name: "__ia32_sys_kcmp", scope: !1, file: !1, line: 238, type: !17, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1385)
!1385 = !{!1386}
!1386 = !DILocalVariable(name: "__unused", arg: 1, scope: !1384, file: !1, line: 238, type: !19)
!1387 = !DILocation(line: 238, column: 1, scope: !1384)
!1388 = distinct !DISubprogram(name: "__x64_sys_finit_module", scope: !1, file: !1, line: 240, type: !17, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1389)
!1389 = !{!1390}
!1390 = !DILocalVariable(name: "__unused", arg: 1, scope: !1388, file: !1, line: 240, type: !19)
!1391 = !DILocation(line: 240, column: 1, scope: !1388)
!1392 = distinct !DISubprogram(name: "__ia32_sys_finit_module", scope: !1, file: !1, line: 240, type: !17, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1393)
!1393 = !{!1394}
!1394 = !DILocalVariable(name: "__unused", arg: 1, scope: !1392, file: !1, line: 240, type: !19)
!1395 = !DILocation(line: 240, column: 1, scope: !1392)
!1396 = distinct !DISubprogram(name: "__x64_sys_seccomp", scope: !1, file: !1, line: 243, type: !17, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1397)
!1397 = !{!1398}
!1398 = !DILocalVariable(name: "__unused", arg: 1, scope: !1396, file: !1, line: 243, type: !19)
!1399 = !DILocation(line: 243, column: 1, scope: !1396)
!1400 = distinct !DISubprogram(name: "__ia32_sys_seccomp", scope: !1, file: !1, line: 243, type: !17, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1401)
!1401 = !{!1402}
!1402 = !DILocalVariable(name: "__unused", arg: 1, scope: !1400, file: !1, line: 243, type: !19)
!1403 = !DILocation(line: 243, column: 1, scope: !1400)
!1404 = distinct !DISubprogram(name: "__x64_sys_memfd_create", scope: !1, file: !1, line: 245, type: !17, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1405)
!1405 = !{!1406}
!1406 = !DILocalVariable(name: "__unused", arg: 1, scope: !1404, file: !1, line: 245, type: !19)
!1407 = !DILocation(line: 245, column: 1, scope: !1404)
!1408 = distinct !DISubprogram(name: "__ia32_sys_memfd_create", scope: !1, file: !1, line: 245, type: !17, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1409)
!1409 = !{!1410}
!1410 = !DILocalVariable(name: "__unused", arg: 1, scope: !1408, file: !1, line: 245, type: !19)
!1411 = !DILocation(line: 245, column: 1, scope: !1408)
!1412 = distinct !DISubprogram(name: "__x64_sys_bpf", scope: !1, file: !1, line: 248, type: !17, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1413)
!1413 = !{!1414}
!1414 = !DILocalVariable(name: "__unused", arg: 1, scope: !1412, file: !1, line: 248, type: !19)
!1415 = !DILocation(line: 248, column: 1, scope: !1412)
!1416 = distinct !DISubprogram(name: "__ia32_sys_bpf", scope: !1, file: !1, line: 248, type: !17, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1417)
!1417 = !{!1418}
!1418 = !DILocalVariable(name: "__unused", arg: 1, scope: !1416, file: !1, line: 248, type: !19)
!1419 = !DILocation(line: 248, column: 1, scope: !1416)
!1420 = distinct !DISubprogram(name: "__x64_sys_execveat", scope: !1, file: !1, line: 251, type: !17, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1421)
!1421 = !{!1422}
!1422 = !DILocalVariable(name: "__unused", arg: 1, scope: !1420, file: !1, line: 251, type: !19)
!1423 = !DILocation(line: 251, column: 1, scope: !1420)
!1424 = distinct !DISubprogram(name: "__ia32_sys_execveat", scope: !1, file: !1, line: 251, type: !17, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1425)
!1425 = !{!1426}
!1426 = !DILocalVariable(name: "__unused", arg: 1, scope: !1424, file: !1, line: 251, type: !19)
!1427 = !DILocation(line: 251, column: 1, scope: !1424)
!1428 = distinct !DISubprogram(name: "__x64_sys_userfaultfd", scope: !1, file: !1, line: 253, type: !17, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1429)
!1429 = !{!1430}
!1430 = !DILocalVariable(name: "__unused", arg: 1, scope: !1428, file: !1, line: 253, type: !19)
!1431 = !DILocation(line: 253, column: 1, scope: !1428)
!1432 = distinct !DISubprogram(name: "__ia32_sys_userfaultfd", scope: !1, file: !1, line: 253, type: !17, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1433)
!1433 = !{!1434}
!1434 = !DILocalVariable(name: "__unused", arg: 1, scope: !1432, file: !1, line: 253, type: !19)
!1435 = !DILocation(line: 253, column: 1, scope: !1432)
!1436 = distinct !DISubprogram(name: "__x64_sys_membarrier", scope: !1, file: !1, line: 256, type: !17, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1437)
!1437 = !{!1438}
!1438 = !DILocalVariable(name: "__unused", arg: 1, scope: !1436, file: !1, line: 256, type: !19)
!1439 = !DILocation(line: 256, column: 1, scope: !1436)
!1440 = distinct !DISubprogram(name: "__ia32_sys_membarrier", scope: !1, file: !1, line: 256, type: !17, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1441)
!1441 = !{!1442}
!1442 = !DILocalVariable(name: "__unused", arg: 1, scope: !1440, file: !1, line: 256, type: !19)
!1443 = !DILocation(line: 256, column: 1, scope: !1440)
!1444 = distinct !DISubprogram(name: "__x64_sys_mlock2", scope: !1, file: !1, line: 258, type: !17, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1445)
!1445 = !{!1446}
!1446 = !DILocalVariable(name: "__unused", arg: 1, scope: !1444, file: !1, line: 258, type: !19)
!1447 = !DILocation(line: 258, column: 1, scope: !1444)
!1448 = distinct !DISubprogram(name: "__ia32_sys_mlock2", scope: !1, file: !1, line: 258, type: !17, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1449)
!1449 = !{!1450}
!1450 = !DILocalVariable(name: "__unused", arg: 1, scope: !1448, file: !1, line: 258, type: !19)
!1451 = !DILocation(line: 258, column: 1, scope: !1448)
!1452 = distinct !DISubprogram(name: "__x64_sys_copy_file_range", scope: !1, file: !1, line: 260, type: !17, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1453)
!1453 = !{!1454}
!1454 = !DILocalVariable(name: "__unused", arg: 1, scope: !1452, file: !1, line: 260, type: !19)
!1455 = !DILocation(line: 260, column: 1, scope: !1452)
!1456 = distinct !DISubprogram(name: "__ia32_sys_copy_file_range", scope: !1, file: !1, line: 260, type: !17, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1457)
!1457 = !{!1458}
!1458 = !DILocalVariable(name: "__unused", arg: 1, scope: !1456, file: !1, line: 260, type: !19)
!1459 = !DILocation(line: 260, column: 1, scope: !1456)
!1460 = distinct !DISubprogram(name: "__x64_sys_pkey_mprotect", scope: !1, file: !1, line: 263, type: !17, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1461)
!1461 = !{!1462}
!1462 = !DILocalVariable(name: "__unused", arg: 1, scope: !1460, file: !1, line: 263, type: !19)
!1463 = !DILocation(line: 263, column: 1, scope: !1460)
!1464 = distinct !DISubprogram(name: "__ia32_sys_pkey_mprotect", scope: !1, file: !1, line: 263, type: !17, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1465)
!1465 = !{!1466}
!1466 = !DILocalVariable(name: "__unused", arg: 1, scope: !1464, file: !1, line: 263, type: !19)
!1467 = !DILocation(line: 263, column: 1, scope: !1464)
!1468 = distinct !DISubprogram(name: "__x64_sys_pkey_alloc", scope: !1, file: !1, line: 264, type: !17, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1469)
!1469 = !{!1470}
!1470 = !DILocalVariable(name: "__unused", arg: 1, scope: !1468, file: !1, line: 264, type: !19)
!1471 = !DILocation(line: 264, column: 1, scope: !1468)
!1472 = distinct !DISubprogram(name: "__ia32_sys_pkey_alloc", scope: !1, file: !1, line: 264, type: !17, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1473)
!1473 = !{!1474}
!1474 = !DILocalVariable(name: "__unused", arg: 1, scope: !1472, file: !1, line: 264, type: !19)
!1475 = !DILocation(line: 264, column: 1, scope: !1472)
!1476 = distinct !DISubprogram(name: "__x64_sys_pkey_free", scope: !1, file: !1, line: 265, type: !17, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1477)
!1477 = !{!1478}
!1478 = !DILocalVariable(name: "__unused", arg: 1, scope: !1476, file: !1, line: 265, type: !19)
!1479 = !DILocation(line: 265, column: 1, scope: !1476)
!1480 = distinct !DISubprogram(name: "__ia32_sys_pkey_free", scope: !1, file: !1, line: 265, type: !17, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1481)
!1481 = !{!1482}
!1482 = !DILocalVariable(name: "__unused", arg: 1, scope: !1480, file: !1, line: 265, type: !19)
!1483 = !DILocation(line: 265, column: 1, scope: !1480)
!1484 = distinct !DISubprogram(name: "__x64_sys_memfd_secret", scope: !1, file: !1, line: 268, type: !17, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1485)
!1485 = !{!1486}
!1486 = !DILocalVariable(name: "__unused", arg: 1, scope: !1484, file: !1, line: 268, type: !19)
!1487 = !DILocation(line: 268, column: 1, scope: !1484)
!1488 = distinct !DISubprogram(name: "__ia32_sys_memfd_secret", scope: !1, file: !1, line: 268, type: !17, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1489)
!1489 = !{!1490}
!1490 = !DILocalVariable(name: "__unused", arg: 1, scope: !1488, file: !1, line: 268, type: !19)
!1491 = !DILocation(line: 268, column: 1, scope: !1488)
!1492 = distinct !DISubprogram(name: "__x64_sys_pciconfig_read", scope: !1, file: !1, line: 275, type: !17, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1493)
!1493 = !{!1494}
!1494 = !DILocalVariable(name: "__unused", arg: 1, scope: !1492, file: !1, line: 275, type: !19)
!1495 = !DILocation(line: 275, column: 1, scope: !1492)
!1496 = distinct !DISubprogram(name: "__ia32_sys_pciconfig_read", scope: !1, file: !1, line: 275, type: !17, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1497)
!1497 = !{!1498}
!1498 = !DILocalVariable(name: "__unused", arg: 1, scope: !1496, file: !1, line: 275, type: !19)
!1499 = !DILocation(line: 275, column: 1, scope: !1496)
!1500 = distinct !DISubprogram(name: "__x64_sys_pciconfig_write", scope: !1, file: !1, line: 276, type: !17, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1501)
!1501 = !{!1502}
!1502 = !DILocalVariable(name: "__unused", arg: 1, scope: !1500, file: !1, line: 276, type: !19)
!1503 = !DILocation(line: 276, column: 1, scope: !1500)
!1504 = distinct !DISubprogram(name: "__ia32_sys_pciconfig_write", scope: !1, file: !1, line: 276, type: !17, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1505)
!1505 = !{!1506}
!1506 = !DILocalVariable(name: "__unused", arg: 1, scope: !1504, file: !1, line: 276, type: !19)
!1507 = !DILocation(line: 276, column: 1, scope: !1504)
!1508 = distinct !DISubprogram(name: "__x64_sys_pciconfig_iobase", scope: !1, file: !1, line: 277, type: !17, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1509)
!1509 = !{!1510}
!1510 = !DILocalVariable(name: "__unused", arg: 1, scope: !1508, file: !1, line: 277, type: !19)
!1511 = !DILocation(line: 277, column: 1, scope: !1508)
!1512 = distinct !DISubprogram(name: "__ia32_sys_pciconfig_iobase", scope: !1, file: !1, line: 277, type: !17, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1513)
!1513 = !{!1514}
!1514 = !DILocalVariable(name: "__unused", arg: 1, scope: !1512, file: !1, line: 277, type: !19)
!1515 = !DILocation(line: 277, column: 1, scope: !1512)
!1516 = distinct !DISubprogram(name: "__x64_sys_socketcall", scope: !1, file: !1, line: 280, type: !17, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1517)
!1517 = !{!1518}
!1518 = !DILocalVariable(name: "__unused", arg: 1, scope: !1516, file: !1, line: 280, type: !19)
!1519 = !DILocation(line: 280, column: 1, scope: !1516)
!1520 = distinct !DISubprogram(name: "__ia32_sys_socketcall", scope: !1, file: !1, line: 280, type: !17, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1521)
!1521 = !{!1522}
!1522 = !DILocalVariable(name: "__unused", arg: 1, scope: !1520, file: !1, line: 280, type: !19)
!1523 = !DILocation(line: 280, column: 1, scope: !1520)
!1524 = distinct !DISubprogram(name: "__ia32_compat_sys_socketcall", scope: !1, file: !1, line: 281, type: !17, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1525)
!1525 = !{!1526}
!1526 = !DILocalVariable(name: "__unused", arg: 1, scope: !1524, file: !1, line: 281, type: !19)
!1527 = !DILocation(line: 281, column: 1, scope: !1524)
!1528 = distinct !DISubprogram(name: "__ia32_compat_sys_fanotify_mark", scope: !1, file: !1, line: 284, type: !17, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1529)
!1529 = !{!1530}
!1530 = !DILocalVariable(name: "__unused", arg: 1, scope: !1528, file: !1, line: 284, type: !19)
!1531 = !DILocation(line: 284, column: 1, scope: !1528)
!1532 = distinct !DISubprogram(name: "__x64_sys_vm86old", scope: !1, file: !1, line: 287, type: !17, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1533)
!1533 = !{!1534}
!1534 = !DILocalVariable(name: "__unused", arg: 1, scope: !1532, file: !1, line: 287, type: !19)
!1535 = !DILocation(line: 287, column: 1, scope: !1532)
!1536 = distinct !DISubprogram(name: "__ia32_sys_vm86old", scope: !1, file: !1, line: 287, type: !17, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1537)
!1537 = !{!1538}
!1538 = !DILocalVariable(name: "__unused", arg: 1, scope: !1536, file: !1, line: 287, type: !19)
!1539 = !DILocation(line: 287, column: 1, scope: !1536)
!1540 = distinct !DISubprogram(name: "__x64_sys_modify_ldt", scope: !1, file: !1, line: 288, type: !17, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1541)
!1541 = !{!1542}
!1542 = !DILocalVariable(name: "__unused", arg: 1, scope: !1540, file: !1, line: 288, type: !19)
!1543 = !DILocation(line: 288, column: 1, scope: !1540)
!1544 = distinct !DISubprogram(name: "__ia32_sys_modify_ldt", scope: !1, file: !1, line: 288, type: !17, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1545)
!1545 = !{!1546}
!1546 = !DILocalVariable(name: "__unused", arg: 1, scope: !1544, file: !1, line: 288, type: !19)
!1547 = !DILocation(line: 288, column: 1, scope: !1544)
!1548 = distinct !DISubprogram(name: "__x64_sys_vm86", scope: !1, file: !1, line: 289, type: !17, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1549)
!1549 = !{!1550}
!1550 = !DILocalVariable(name: "__unused", arg: 1, scope: !1548, file: !1, line: 289, type: !19)
!1551 = !DILocation(line: 289, column: 1, scope: !1548)
!1552 = distinct !DISubprogram(name: "__ia32_sys_vm86", scope: !1, file: !1, line: 289, type: !17, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1553)
!1553 = !{!1554}
!1554 = !DILocalVariable(name: "__unused", arg: 1, scope: !1552, file: !1, line: 289, type: !19)
!1555 = !DILocation(line: 289, column: 1, scope: !1552)
!1556 = distinct !DISubprogram(name: "__x64_sys_kexec_file_load", scope: !1, file: !1, line: 290, type: !17, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1557)
!1557 = !{!1558}
!1558 = !DILocalVariable(name: "__unused", arg: 1, scope: !1556, file: !1, line: 290, type: !19)
!1559 = !DILocation(line: 290, column: 1, scope: !1556)
!1560 = distinct !DISubprogram(name: "__ia32_sys_kexec_file_load", scope: !1, file: !1, line: 290, type: !17, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1561)
!1561 = !{!1562}
!1562 = !DILocalVariable(name: "__unused", arg: 1, scope: !1560, file: !1, line: 290, type: !19)
!1563 = !DILocation(line: 290, column: 1, scope: !1560)
!1564 = distinct !DISubprogram(name: "__x64_sys_map_shadow_stack", scope: !1, file: !1, line: 291, type: !17, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1565)
!1565 = !{!1566}
!1566 = !DILocalVariable(name: "__unused", arg: 1, scope: !1564, file: !1, line: 291, type: !19)
!1567 = !DILocation(line: 291, column: 1, scope: !1564)
!1568 = distinct !DISubprogram(name: "__ia32_sys_map_shadow_stack", scope: !1, file: !1, line: 291, type: !17, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1569)
!1569 = !{!1570}
!1570 = !DILocalVariable(name: "__unused", arg: 1, scope: !1568, file: !1, line: 291, type: !19)
!1571 = !DILocation(line: 291, column: 1, scope: !1568)
!1572 = distinct !DISubprogram(name: "__x64_sys_s390_pci_mmio_read", scope: !1, file: !1, line: 294, type: !17, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1573)
!1573 = !{!1574}
!1574 = !DILocalVariable(name: "__unused", arg: 1, scope: !1572, file: !1, line: 294, type: !19)
!1575 = !DILocation(line: 294, column: 1, scope: !1572)
!1576 = distinct !DISubprogram(name: "__ia32_sys_s390_pci_mmio_read", scope: !1, file: !1, line: 294, type: !17, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1577)
!1577 = !{!1578}
!1578 = !DILocalVariable(name: "__unused", arg: 1, scope: !1576, file: !1, line: 294, type: !19)
!1579 = !DILocation(line: 294, column: 1, scope: !1576)
!1580 = distinct !DISubprogram(name: "__x64_sys_s390_pci_mmio_write", scope: !1, file: !1, line: 295, type: !17, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1581)
!1581 = !{!1582}
!1582 = !DILocalVariable(name: "__unused", arg: 1, scope: !1580, file: !1, line: 295, type: !19)
!1583 = !DILocation(line: 295, column: 1, scope: !1580)
!1584 = distinct !DISubprogram(name: "__ia32_sys_s390_pci_mmio_write", scope: !1, file: !1, line: 295, type: !17, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1585)
!1585 = !{!1586}
!1586 = !DILocalVariable(name: "__unused", arg: 1, scope: !1584, file: !1, line: 295, type: !19)
!1587 = !DILocation(line: 295, column: 1, scope: !1584)
!1588 = distinct !DISubprogram(name: "__x64_sys_s390_ipc", scope: !1, file: !1, line: 296, type: !17, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1589)
!1589 = !{!1590}
!1590 = !DILocalVariable(name: "__unused", arg: 1, scope: !1588, file: !1, line: 296, type: !19)
!1591 = !DILocation(line: 296, column: 1, scope: !1588)
!1592 = distinct !DISubprogram(name: "__ia32_sys_s390_ipc", scope: !1, file: !1, line: 296, type: !17, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1593)
!1593 = !{!1594}
!1594 = !DILocalVariable(name: "__unused", arg: 1, scope: !1592, file: !1, line: 296, type: !19)
!1595 = !DILocation(line: 296, column: 1, scope: !1592)
!1596 = distinct !DISubprogram(name: "__ia32_compat_sys_s390_ipc", scope: !1, file: !1, line: 297, type: !17, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1597)
!1597 = !{!1598}
!1598 = !DILocalVariable(name: "__unused", arg: 1, scope: !1596, file: !1, line: 297, type: !19)
!1599 = !DILocation(line: 297, column: 1, scope: !1596)
!1600 = distinct !DISubprogram(name: "__x64_sys_rtas", scope: !1, file: !1, line: 300, type: !17, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1601)
!1601 = !{!1602}
!1602 = !DILocalVariable(name: "__unused", arg: 1, scope: !1600, file: !1, line: 300, type: !19)
!1603 = !DILocation(line: 300, column: 1, scope: !1600)
!1604 = distinct !DISubprogram(name: "__ia32_sys_rtas", scope: !1, file: !1, line: 300, type: !17, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1605)
!1605 = !{!1606}
!1606 = !DILocalVariable(name: "__unused", arg: 1, scope: !1604, file: !1, line: 300, type: !19)
!1607 = !DILocation(line: 300, column: 1, scope: !1604)
!1608 = distinct !DISubprogram(name: "__x64_sys_spu_run", scope: !1, file: !1, line: 301, type: !17, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1609)
!1609 = !{!1610}
!1610 = !DILocalVariable(name: "__unused", arg: 1, scope: !1608, file: !1, line: 301, type: !19)
!1611 = !DILocation(line: 301, column: 1, scope: !1608)
!1612 = distinct !DISubprogram(name: "__ia32_sys_spu_run", scope: !1, file: !1, line: 301, type: !17, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1613)
!1613 = !{!1614}
!1614 = !DILocalVariable(name: "__unused", arg: 1, scope: !1612, file: !1, line: 301, type: !19)
!1615 = !DILocation(line: 301, column: 1, scope: !1612)
!1616 = distinct !DISubprogram(name: "__x64_sys_spu_create", scope: !1, file: !1, line: 302, type: !17, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1617)
!1617 = !{!1618}
!1618 = !DILocalVariable(name: "__unused", arg: 1, scope: !1616, file: !1, line: 302, type: !19)
!1619 = !DILocation(line: 302, column: 1, scope: !1616)
!1620 = distinct !DISubprogram(name: "__ia32_sys_spu_create", scope: !1, file: !1, line: 302, type: !17, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1621)
!1621 = !{!1622}
!1622 = !DILocalVariable(name: "__unused", arg: 1, scope: !1620, file: !1, line: 302, type: !19)
!1623 = !DILocation(line: 302, column: 1, scope: !1620)
!1624 = distinct !DISubprogram(name: "__x64_sys_subpage_prot", scope: !1, file: !1, line: 303, type: !17, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1625)
!1625 = !{!1626}
!1626 = !DILocalVariable(name: "__unused", arg: 1, scope: !1624, file: !1, line: 303, type: !19)
!1627 = !DILocation(line: 303, column: 1, scope: !1624)
!1628 = distinct !DISubprogram(name: "__ia32_sys_subpage_prot", scope: !1, file: !1, line: 303, type: !17, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1629)
!1629 = !{!1630}
!1630 = !DILocalVariable(name: "__unused", arg: 1, scope: !1628, file: !1, line: 303, type: !19)
!1631 = !DILocation(line: 303, column: 1, scope: !1628)
!1632 = distinct !DISubprogram(name: "__x64_sys_epoll_create", scope: !1, file: !1, line: 312, type: !17, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1633)
!1633 = !{!1634}
!1634 = !DILocalVariable(name: "__unused", arg: 1, scope: !1632, file: !1, line: 312, type: !19)
!1635 = !DILocation(line: 312, column: 1, scope: !1632)
!1636 = distinct !DISubprogram(name: "__ia32_sys_epoll_create", scope: !1, file: !1, line: 312, type: !17, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1637)
!1637 = !{!1638}
!1638 = !DILocalVariable(name: "__unused", arg: 1, scope: !1636, file: !1, line: 312, type: !19)
!1639 = !DILocation(line: 312, column: 1, scope: !1636)
!1640 = distinct !DISubprogram(name: "__x64_sys_inotify_init", scope: !1, file: !1, line: 313, type: !17, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1641)
!1641 = !{!1642}
!1642 = !DILocalVariable(name: "__unused", arg: 1, scope: !1640, file: !1, line: 313, type: !19)
!1643 = !DILocation(line: 313, column: 1, scope: !1640)
!1644 = distinct !DISubprogram(name: "__ia32_sys_inotify_init", scope: !1, file: !1, line: 313, type: !17, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1645)
!1645 = !{!1646}
!1646 = !DILocalVariable(name: "__unused", arg: 1, scope: !1644, file: !1, line: 313, type: !19)
!1647 = !DILocation(line: 313, column: 1, scope: !1644)
!1648 = distinct !DISubprogram(name: "__x64_sys_eventfd", scope: !1, file: !1, line: 314, type: !17, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1649)
!1649 = !{!1650}
!1650 = !DILocalVariable(name: "__unused", arg: 1, scope: !1648, file: !1, line: 314, type: !19)
!1651 = !DILocation(line: 314, column: 1, scope: !1648)
!1652 = distinct !DISubprogram(name: "__ia32_sys_eventfd", scope: !1, file: !1, line: 314, type: !17, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1653)
!1653 = !{!1654}
!1654 = !DILocalVariable(name: "__unused", arg: 1, scope: !1652, file: !1, line: 314, type: !19)
!1655 = !DILocation(line: 314, column: 1, scope: !1652)
!1656 = distinct !DISubprogram(name: "__x64_sys_signalfd", scope: !1, file: !1, line: 315, type: !17, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1657)
!1657 = !{!1658}
!1658 = !DILocalVariable(name: "__unused", arg: 1, scope: !1656, file: !1, line: 315, type: !19)
!1659 = !DILocation(line: 315, column: 1, scope: !1656)
!1660 = distinct !DISubprogram(name: "__ia32_sys_signalfd", scope: !1, file: !1, line: 315, type: !17, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1661)
!1661 = !{!1662}
!1662 = !DILocalVariable(name: "__unused", arg: 1, scope: !1660, file: !1, line: 315, type: !19)
!1663 = !DILocation(line: 315, column: 1, scope: !1660)
!1664 = distinct !DISubprogram(name: "__ia32_compat_sys_signalfd", scope: !1, file: !1, line: 316, type: !17, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1665)
!1665 = !{!1666}
!1666 = !DILocalVariable(name: "__unused", arg: 1, scope: !1664, file: !1, line: 316, type: !19)
!1667 = !DILocation(line: 316, column: 1, scope: !1664)
!1668 = distinct !DISubprogram(name: "__x64_sys_fadvise64", scope: !1, file: !1, line: 319, type: !17, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1669)
!1669 = !{!1670}
!1670 = !DILocalVariable(name: "__unused", arg: 1, scope: !1668, file: !1, line: 319, type: !19)
!1671 = !DILocation(line: 319, column: 1, scope: !1668)
!1672 = distinct !DISubprogram(name: "__ia32_sys_fadvise64", scope: !1, file: !1, line: 319, type: !17, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1673)
!1673 = !{!1674}
!1674 = !DILocalVariable(name: "__unused", arg: 1, scope: !1672, file: !1, line: 319, type: !19)
!1675 = !DILocation(line: 319, column: 1, scope: !1672)
!1676 = distinct !DISubprogram(name: "__x64_sys_epoll_wait", scope: !1, file: !1, line: 322, type: !17, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1677)
!1677 = !{!1678}
!1678 = !DILocalVariable(name: "__unused", arg: 1, scope: !1676, file: !1, line: 322, type: !19)
!1679 = !DILocation(line: 322, column: 1, scope: !1676)
!1680 = distinct !DISubprogram(name: "__ia32_sys_epoll_wait", scope: !1, file: !1, line: 322, type: !17, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1681)
!1681 = !{!1682}
!1682 = !DILocalVariable(name: "__unused", arg: 1, scope: !1680, file: !1, line: 322, type: !19)
!1683 = !DILocation(line: 322, column: 1, scope: !1680)
!1684 = distinct !DISubprogram(name: "__x64_sys_recv", scope: !1, file: !1, line: 323, type: !17, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1685)
!1685 = !{!1686}
!1686 = !DILocalVariable(name: "__unused", arg: 1, scope: !1684, file: !1, line: 323, type: !19)
!1687 = !DILocation(line: 323, column: 1, scope: !1684)
!1688 = distinct !DISubprogram(name: "__ia32_sys_recv", scope: !1, file: !1, line: 323, type: !17, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1689)
!1689 = !{!1690}
!1690 = !DILocalVariable(name: "__unused", arg: 1, scope: !1688, file: !1, line: 323, type: !19)
!1691 = !DILocation(line: 323, column: 1, scope: !1688)
!1692 = distinct !DISubprogram(name: "__ia32_compat_sys_recv", scope: !1, file: !1, line: 324, type: !17, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1693)
!1693 = !{!1694}
!1694 = !DILocalVariable(name: "__unused", arg: 1, scope: !1692, file: !1, line: 324, type: !19)
!1695 = !DILocation(line: 324, column: 1, scope: !1692)
!1696 = distinct !DISubprogram(name: "__x64_sys_send", scope: !1, file: !1, line: 325, type: !17, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1697)
!1697 = !{!1698}
!1698 = !DILocalVariable(name: "__unused", arg: 1, scope: !1696, file: !1, line: 325, type: !19)
!1699 = !DILocation(line: 325, column: 1, scope: !1696)
!1700 = distinct !DISubprogram(name: "__ia32_sys_send", scope: !1, file: !1, line: 325, type: !17, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1701)
!1701 = !{!1702}
!1702 = !DILocalVariable(name: "__unused", arg: 1, scope: !1700, file: !1, line: 325, type: !19)
!1703 = !DILocation(line: 325, column: 1, scope: !1700)
!1704 = distinct !DISubprogram(name: "__x64_sys_uselib", scope: !1, file: !1, line: 326, type: !17, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1705)
!1705 = !{!1706}
!1706 = !DILocalVariable(name: "__unused", arg: 1, scope: !1704, file: !1, line: 326, type: !19)
!1707 = !DILocation(line: 326, column: 1, scope: !1704)
!1708 = distinct !DISubprogram(name: "__ia32_sys_uselib", scope: !1, file: !1, line: 326, type: !17, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1709)
!1709 = !{!1710}
!1710 = !DILocalVariable(name: "__unused", arg: 1, scope: !1708, file: !1, line: 326, type: !19)
!1711 = !DILocation(line: 326, column: 1, scope: !1708)
!1712 = distinct !DISubprogram(name: "__x64_sys_time32", scope: !1, file: !1, line: 329, type: !17, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1713)
!1713 = !{!1714}
!1714 = !DILocalVariable(name: "__unused", arg: 1, scope: !1712, file: !1, line: 329, type: !19)
!1715 = !DILocation(line: 329, column: 1, scope: !1712)
!1716 = distinct !DISubprogram(name: "__ia32_sys_time32", scope: !1, file: !1, line: 329, type: !17, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1717)
!1717 = !{!1718}
!1718 = !DILocalVariable(name: "__unused", arg: 1, scope: !1716, file: !1, line: 329, type: !19)
!1719 = !DILocation(line: 329, column: 1, scope: !1716)
!1720 = distinct !DISubprogram(name: "__x64_sys_stime32", scope: !1, file: !1, line: 330, type: !17, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1721)
!1721 = !{!1722}
!1722 = !DILocalVariable(name: "__unused", arg: 1, scope: !1720, file: !1, line: 330, type: !19)
!1723 = !DILocation(line: 330, column: 1, scope: !1720)
!1724 = distinct !DISubprogram(name: "__ia32_sys_stime32", scope: !1, file: !1, line: 330, type: !17, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1725)
!1725 = !{!1726}
!1726 = !DILocalVariable(name: "__unused", arg: 1, scope: !1724, file: !1, line: 330, type: !19)
!1727 = !DILocation(line: 330, column: 1, scope: !1724)
!1728 = distinct !DISubprogram(name: "__x64_sys_utime32", scope: !1, file: !1, line: 331, type: !17, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1729)
!1729 = !{!1730}
!1730 = !DILocalVariable(name: "__unused", arg: 1, scope: !1728, file: !1, line: 331, type: !19)
!1731 = !DILocation(line: 331, column: 1, scope: !1728)
!1732 = distinct !DISubprogram(name: "__ia32_sys_utime32", scope: !1, file: !1, line: 331, type: !17, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1733)
!1733 = !{!1734}
!1734 = !DILocalVariable(name: "__unused", arg: 1, scope: !1732, file: !1, line: 331, type: !19)
!1735 = !DILocation(line: 331, column: 1, scope: !1732)
!1736 = distinct !DISubprogram(name: "__x64_sys_adjtimex_time32", scope: !1, file: !1, line: 332, type: !17, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1737)
!1737 = !{!1738}
!1738 = !DILocalVariable(name: "__unused", arg: 1, scope: !1736, file: !1, line: 332, type: !19)
!1739 = !DILocation(line: 332, column: 1, scope: !1736)
!1740 = distinct !DISubprogram(name: "__ia32_sys_adjtimex_time32", scope: !1, file: !1, line: 332, type: !17, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1741)
!1741 = !{!1742}
!1742 = !DILocalVariable(name: "__unused", arg: 1, scope: !1740, file: !1, line: 332, type: !19)
!1743 = !DILocation(line: 332, column: 1, scope: !1740)
!1744 = distinct !DISubprogram(name: "__x64_sys_sched_rr_get_interval_time32", scope: !1, file: !1, line: 333, type: !17, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1745)
!1745 = !{!1746}
!1746 = !DILocalVariable(name: "__unused", arg: 1, scope: !1744, file: !1, line: 333, type: !19)
!1747 = !DILocation(line: 333, column: 1, scope: !1744)
!1748 = distinct !DISubprogram(name: "__ia32_sys_sched_rr_get_interval_time32", scope: !1, file: !1, line: 333, type: !17, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1749)
!1749 = !{!1750}
!1750 = !DILocalVariable(name: "__unused", arg: 1, scope: !1748, file: !1, line: 333, type: !19)
!1751 = !DILocation(line: 333, column: 1, scope: !1748)
!1752 = distinct !DISubprogram(name: "__x64_sys_nanosleep_time32", scope: !1, file: !1, line: 334, type: !17, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1753)
!1753 = !{!1754}
!1754 = !DILocalVariable(name: "__unused", arg: 1, scope: !1752, file: !1, line: 334, type: !19)
!1755 = !DILocation(line: 334, column: 1, scope: !1752)
!1756 = distinct !DISubprogram(name: "__ia32_sys_nanosleep_time32", scope: !1, file: !1, line: 334, type: !17, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1757)
!1757 = !{!1758}
!1758 = !DILocalVariable(name: "__unused", arg: 1, scope: !1756, file: !1, line: 334, type: !19)
!1759 = !DILocation(line: 334, column: 1, scope: !1756)
!1760 = distinct !DISubprogram(name: "__x64_sys_rt_sigtimedwait_time32", scope: !1, file: !1, line: 335, type: !17, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1761)
!1761 = !{!1762}
!1762 = !DILocalVariable(name: "__unused", arg: 1, scope: !1760, file: !1, line: 335, type: !19)
!1763 = !DILocation(line: 335, column: 1, scope: !1760)
!1764 = distinct !DISubprogram(name: "__ia32_sys_rt_sigtimedwait_time32", scope: !1, file: !1, line: 335, type: !17, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1765)
!1765 = !{!1766}
!1766 = !DILocalVariable(name: "__unused", arg: 1, scope: !1764, file: !1, line: 335, type: !19)
!1767 = !DILocation(line: 335, column: 1, scope: !1764)
!1768 = distinct !DISubprogram(name: "__ia32_compat_sys_rt_sigtimedwait_time32", scope: !1, file: !1, line: 336, type: !17, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1769)
!1769 = !{!1770}
!1770 = !DILocalVariable(name: "__unused", arg: 1, scope: !1768, file: !1, line: 336, type: !19)
!1771 = !DILocation(line: 336, column: 1, scope: !1768)
!1772 = distinct !DISubprogram(name: "__x64_sys_timer_settime32", scope: !1, file: !1, line: 337, type: !17, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1773)
!1773 = !{!1774}
!1774 = !DILocalVariable(name: "__unused", arg: 1, scope: !1772, file: !1, line: 337, type: !19)
!1775 = !DILocation(line: 337, column: 1, scope: !1772)
!1776 = distinct !DISubprogram(name: "__ia32_sys_timer_settime32", scope: !1, file: !1, line: 337, type: !17, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1777)
!1777 = !{!1778}
!1778 = !DILocalVariable(name: "__unused", arg: 1, scope: !1776, file: !1, line: 337, type: !19)
!1779 = !DILocation(line: 337, column: 1, scope: !1776)
!1780 = distinct !DISubprogram(name: "__x64_sys_timer_gettime32", scope: !1, file: !1, line: 338, type: !17, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1781)
!1781 = !{!1782}
!1782 = !DILocalVariable(name: "__unused", arg: 1, scope: !1780, file: !1, line: 338, type: !19)
!1783 = !DILocation(line: 338, column: 1, scope: !1780)
!1784 = distinct !DISubprogram(name: "__ia32_sys_timer_gettime32", scope: !1, file: !1, line: 338, type: !17, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1785)
!1785 = !{!1786}
!1786 = !DILocalVariable(name: "__unused", arg: 1, scope: !1784, file: !1, line: 338, type: !19)
!1787 = !DILocation(line: 338, column: 1, scope: !1784)
!1788 = distinct !DISubprogram(name: "__x64_sys_clock_settime32", scope: !1, file: !1, line: 339, type: !17, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1789)
!1789 = !{!1790}
!1790 = !DILocalVariable(name: "__unused", arg: 1, scope: !1788, file: !1, line: 339, type: !19)
!1791 = !DILocation(line: 339, column: 1, scope: !1788)
!1792 = distinct !DISubprogram(name: "__ia32_sys_clock_settime32", scope: !1, file: !1, line: 339, type: !17, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1793)
!1793 = !{!1794}
!1794 = !DILocalVariable(name: "__unused", arg: 1, scope: !1792, file: !1, line: 339, type: !19)
!1795 = !DILocation(line: 339, column: 1, scope: !1792)
!1796 = distinct !DISubprogram(name: "__x64_sys_clock_gettime32", scope: !1, file: !1, line: 340, type: !17, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1797)
!1797 = !{!1798}
!1798 = !DILocalVariable(name: "__unused", arg: 1, scope: !1796, file: !1, line: 340, type: !19)
!1799 = !DILocation(line: 340, column: 1, scope: !1796)
!1800 = distinct !DISubprogram(name: "__ia32_sys_clock_gettime32", scope: !1, file: !1, line: 340, type: !17, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1801)
!1801 = !{!1802}
!1802 = !DILocalVariable(name: "__unused", arg: 1, scope: !1800, file: !1, line: 340, type: !19)
!1803 = !DILocation(line: 340, column: 1, scope: !1800)
!1804 = distinct !DISubprogram(name: "__x64_sys_clock_getres_time32", scope: !1, file: !1, line: 341, type: !17, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1805)
!1805 = !{!1806}
!1806 = !DILocalVariable(name: "__unused", arg: 1, scope: !1804, file: !1, line: 341, type: !19)
!1807 = !DILocation(line: 341, column: 1, scope: !1804)
!1808 = distinct !DISubprogram(name: "__ia32_sys_clock_getres_time32", scope: !1, file: !1, line: 341, type: !17, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1809)
!1809 = !{!1810}
!1810 = !DILocalVariable(name: "__unused", arg: 1, scope: !1808, file: !1, line: 341, type: !19)
!1811 = !DILocation(line: 341, column: 1, scope: !1808)
!1812 = distinct !DISubprogram(name: "__x64_sys_clock_nanosleep_time32", scope: !1, file: !1, line: 342, type: !17, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1813)
!1813 = !{!1814}
!1814 = !DILocalVariable(name: "__unused", arg: 1, scope: !1812, file: !1, line: 342, type: !19)
!1815 = !DILocation(line: 342, column: 1, scope: !1812)
!1816 = distinct !DISubprogram(name: "__ia32_sys_clock_nanosleep_time32", scope: !1, file: !1, line: 342, type: !17, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1817)
!1817 = !{!1818}
!1818 = !DILocalVariable(name: "__unused", arg: 1, scope: !1816, file: !1, line: 342, type: !19)
!1819 = !DILocation(line: 342, column: 1, scope: !1816)
!1820 = distinct !DISubprogram(name: "__x64_sys_utimes_time32", scope: !1, file: !1, line: 343, type: !17, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1821)
!1821 = !{!1822}
!1822 = !DILocalVariable(name: "__unused", arg: 1, scope: !1820, file: !1, line: 343, type: !19)
!1823 = !DILocation(line: 343, column: 1, scope: !1820)
!1824 = distinct !DISubprogram(name: "__ia32_sys_utimes_time32", scope: !1, file: !1, line: 343, type: !17, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1825)
!1825 = !{!1826}
!1826 = !DILocalVariable(name: "__unused", arg: 1, scope: !1824, file: !1, line: 343, type: !19)
!1827 = !DILocation(line: 343, column: 1, scope: !1824)
!1828 = distinct !DISubprogram(name: "__x64_sys_futimesat_time32", scope: !1, file: !1, line: 344, type: !17, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1829)
!1829 = !{!1830}
!1830 = !DILocalVariable(name: "__unused", arg: 1, scope: !1828, file: !1, line: 344, type: !19)
!1831 = !DILocation(line: 344, column: 1, scope: !1828)
!1832 = distinct !DISubprogram(name: "__ia32_sys_futimesat_time32", scope: !1, file: !1, line: 344, type: !17, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1833)
!1833 = !{!1834}
!1834 = !DILocalVariable(name: "__unused", arg: 1, scope: !1832, file: !1, line: 344, type: !19)
!1835 = !DILocation(line: 344, column: 1, scope: !1832)
!1836 = distinct !DISubprogram(name: "__x64_sys_pselect6_time32", scope: !1, file: !1, line: 345, type: !17, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1837)
!1837 = !{!1838}
!1838 = !DILocalVariable(name: "__unused", arg: 1, scope: !1836, file: !1, line: 345, type: !19)
!1839 = !DILocation(line: 345, column: 1, scope: !1836)
!1840 = distinct !DISubprogram(name: "__ia32_sys_pselect6_time32", scope: !1, file: !1, line: 345, type: !17, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1841)
!1841 = !{!1842}
!1842 = !DILocalVariable(name: "__unused", arg: 1, scope: !1840, file: !1, line: 345, type: !19)
!1843 = !DILocation(line: 345, column: 1, scope: !1840)
!1844 = distinct !DISubprogram(name: "__ia32_compat_sys_pselect6_time32", scope: !1, file: !1, line: 346, type: !17, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1845)
!1845 = !{!1846}
!1846 = !DILocalVariable(name: "__unused", arg: 1, scope: !1844, file: !1, line: 346, type: !19)
!1847 = !DILocation(line: 346, column: 1, scope: !1844)
!1848 = distinct !DISubprogram(name: "__x64_sys_ppoll_time32", scope: !1, file: !1, line: 347, type: !17, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1849)
!1849 = !{!1850}
!1850 = !DILocalVariable(name: "__unused", arg: 1, scope: !1848, file: !1, line: 347, type: !19)
!1851 = !DILocation(line: 347, column: 1, scope: !1848)
!1852 = distinct !DISubprogram(name: "__ia32_sys_ppoll_time32", scope: !1, file: !1, line: 347, type: !17, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1853)
!1853 = !{!1854}
!1854 = !DILocalVariable(name: "__unused", arg: 1, scope: !1852, file: !1, line: 347, type: !19)
!1855 = !DILocation(line: 347, column: 1, scope: !1852)
!1856 = distinct !DISubprogram(name: "__ia32_compat_sys_ppoll_time32", scope: !1, file: !1, line: 348, type: !17, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1857)
!1857 = !{!1858}
!1858 = !DILocalVariable(name: "__unused", arg: 1, scope: !1856, file: !1, line: 348, type: !19)
!1859 = !DILocation(line: 348, column: 1, scope: !1856)
!1860 = distinct !DISubprogram(name: "__x64_sys_utimensat_time32", scope: !1, file: !1, line: 349, type: !17, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1861)
!1861 = !{!1862}
!1862 = !DILocalVariable(name: "__unused", arg: 1, scope: !1860, file: !1, line: 349, type: !19)
!1863 = !DILocation(line: 349, column: 1, scope: !1860)
!1864 = distinct !DISubprogram(name: "__ia32_sys_utimensat_time32", scope: !1, file: !1, line: 349, type: !17, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1865)
!1865 = !{!1866}
!1866 = !DILocalVariable(name: "__unused", arg: 1, scope: !1864, file: !1, line: 349, type: !19)
!1867 = !DILocation(line: 349, column: 1, scope: !1864)
!1868 = distinct !DISubprogram(name: "__x64_sys_clock_adjtime32", scope: !1, file: !1, line: 350, type: !17, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1869)
!1869 = !{!1870}
!1870 = !DILocalVariable(name: "__unused", arg: 1, scope: !1868, file: !1, line: 350, type: !19)
!1871 = !DILocation(line: 350, column: 1, scope: !1868)
!1872 = distinct !DISubprogram(name: "__ia32_sys_clock_adjtime32", scope: !1, file: !1, line: 350, type: !17, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1873)
!1873 = !{!1874}
!1874 = !DILocalVariable(name: "__unused", arg: 1, scope: !1872, file: !1, line: 350, type: !19)
!1875 = !DILocation(line: 350, column: 1, scope: !1872)
!1876 = distinct !DISubprogram(name: "__x64_sys_sgetmask", scope: !1, file: !1, line: 357, type: !17, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1877)
!1877 = !{!1878}
!1878 = !DILocalVariable(name: "__unused", arg: 1, scope: !1876, file: !1, line: 357, type: !19)
!1879 = !DILocation(line: 357, column: 1, scope: !1876)
!1880 = distinct !DISubprogram(name: "__ia32_sys_sgetmask", scope: !1, file: !1, line: 357, type: !17, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1881)
!1881 = !{!1882}
!1882 = !DILocalVariable(name: "__unused", arg: 1, scope: !1880, file: !1, line: 357, type: !19)
!1883 = !DILocation(line: 357, column: 1, scope: !1880)
!1884 = distinct !DISubprogram(name: "__x64_sys_ssetmask", scope: !1, file: !1, line: 358, type: !17, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1885)
!1885 = !{!1886}
!1886 = !DILocalVariable(name: "__unused", arg: 1, scope: !1884, file: !1, line: 358, type: !19)
!1887 = !DILocation(line: 358, column: 1, scope: !1884)
!1888 = distinct !DISubprogram(name: "__ia32_sys_ssetmask", scope: !1, file: !1, line: 358, type: !17, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1889)
!1889 = !{!1890}
!1890 = !DILocalVariable(name: "__unused", arg: 1, scope: !1888, file: !1, line: 358, type: !19)
!1891 = !DILocation(line: 358, column: 1, scope: !1888)
!1892 = distinct !DISubprogram(name: "__x64_sys_sysfs", scope: !1, file: !1, line: 361, type: !17, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1893)
!1893 = !{!1894}
!1894 = !DILocalVariable(name: "__unused", arg: 1, scope: !1892, file: !1, line: 361, type: !19)
!1895 = !DILocation(line: 361, column: 1, scope: !1892)
!1896 = distinct !DISubprogram(name: "__ia32_sys_sysfs", scope: !1, file: !1, line: 361, type: !17, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1897)
!1897 = !{!1898}
!1898 = !DILocalVariable(name: "__unused", arg: 1, scope: !1896, file: !1, line: 361, type: !19)
!1899 = !DILocation(line: 361, column: 1, scope: !1896)
!1900 = distinct !DISubprogram(name: "__x64_sys_ipc", scope: !1, file: !1, line: 364, type: !17, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1901)
!1901 = !{!1902}
!1902 = !DILocalVariable(name: "__unused", arg: 1, scope: !1900, file: !1, line: 364, type: !19)
!1903 = !DILocation(line: 364, column: 1, scope: !1900)
!1904 = distinct !DISubprogram(name: "__ia32_sys_ipc", scope: !1, file: !1, line: 364, type: !17, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1905)
!1905 = !{!1906}
!1906 = !DILocalVariable(name: "__unused", arg: 1, scope: !1904, file: !1, line: 364, type: !19)
!1907 = !DILocation(line: 364, column: 1, scope: !1904)
!1908 = distinct !DISubprogram(name: "__ia32_compat_sys_ipc", scope: !1, file: !1, line: 365, type: !17, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1909)
!1909 = !{!1910}
!1910 = !DILocalVariable(name: "__unused", arg: 1, scope: !1908, file: !1, line: 365, type: !19)
!1911 = !DILocation(line: 365, column: 1, scope: !1908)
!1912 = distinct !DISubprogram(name: "__x64_sys_chown16", scope: !1, file: !1, line: 368, type: !17, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1913)
!1913 = !{!1914}
!1914 = !DILocalVariable(name: "__unused", arg: 1, scope: !1912, file: !1, line: 368, type: !19)
!1915 = !DILocation(line: 368, column: 1, scope: !1912)
!1916 = distinct !DISubprogram(name: "__ia32_sys_chown16", scope: !1, file: !1, line: 368, type: !17, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1917)
!1917 = !{!1918}
!1918 = !DILocalVariable(name: "__unused", arg: 1, scope: !1916, file: !1, line: 368, type: !19)
!1919 = !DILocation(line: 368, column: 1, scope: !1916)
!1920 = distinct !DISubprogram(name: "__x64_sys_fchown16", scope: !1, file: !1, line: 369, type: !17, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1921)
!1921 = !{!1922}
!1922 = !DILocalVariable(name: "__unused", arg: 1, scope: !1920, file: !1, line: 369, type: !19)
!1923 = !DILocation(line: 369, column: 1, scope: !1920)
!1924 = distinct !DISubprogram(name: "__ia32_sys_fchown16", scope: !1, file: !1, line: 369, type: !17, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1925)
!1925 = !{!1926}
!1926 = !DILocalVariable(name: "__unused", arg: 1, scope: !1924, file: !1, line: 369, type: !19)
!1927 = !DILocation(line: 369, column: 1, scope: !1924)
!1928 = distinct !DISubprogram(name: "__x64_sys_getegid16", scope: !1, file: !1, line: 370, type: !17, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1929)
!1929 = !{!1930}
!1930 = !DILocalVariable(name: "__unused", arg: 1, scope: !1928, file: !1, line: 370, type: !19)
!1931 = !DILocation(line: 370, column: 1, scope: !1928)
!1932 = distinct !DISubprogram(name: "__ia32_sys_getegid16", scope: !1, file: !1, line: 370, type: !17, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1933)
!1933 = !{!1934}
!1934 = !DILocalVariable(name: "__unused", arg: 1, scope: !1932, file: !1, line: 370, type: !19)
!1935 = !DILocation(line: 370, column: 1, scope: !1932)
!1936 = distinct !DISubprogram(name: "__x64_sys_geteuid16", scope: !1, file: !1, line: 371, type: !17, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1937)
!1937 = !{!1938}
!1938 = !DILocalVariable(name: "__unused", arg: 1, scope: !1936, file: !1, line: 371, type: !19)
!1939 = !DILocation(line: 371, column: 1, scope: !1936)
!1940 = distinct !DISubprogram(name: "__ia32_sys_geteuid16", scope: !1, file: !1, line: 371, type: !17, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1941)
!1941 = !{!1942}
!1942 = !DILocalVariable(name: "__unused", arg: 1, scope: !1940, file: !1, line: 371, type: !19)
!1943 = !DILocation(line: 371, column: 1, scope: !1940)
!1944 = distinct !DISubprogram(name: "__x64_sys_getgid16", scope: !1, file: !1, line: 372, type: !17, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1945)
!1945 = !{!1946}
!1946 = !DILocalVariable(name: "__unused", arg: 1, scope: !1944, file: !1, line: 372, type: !19)
!1947 = !DILocation(line: 372, column: 1, scope: !1944)
!1948 = distinct !DISubprogram(name: "__ia32_sys_getgid16", scope: !1, file: !1, line: 372, type: !17, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1949)
!1949 = !{!1950}
!1950 = !DILocalVariable(name: "__unused", arg: 1, scope: !1948, file: !1, line: 372, type: !19)
!1951 = !DILocation(line: 372, column: 1, scope: !1948)
!1952 = distinct !DISubprogram(name: "__x64_sys_getgroups16", scope: !1, file: !1, line: 373, type: !17, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1953)
!1953 = !{!1954}
!1954 = !DILocalVariable(name: "__unused", arg: 1, scope: !1952, file: !1, line: 373, type: !19)
!1955 = !DILocation(line: 373, column: 1, scope: !1952)
!1956 = distinct !DISubprogram(name: "__ia32_sys_getgroups16", scope: !1, file: !1, line: 373, type: !17, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1957)
!1957 = !{!1958}
!1958 = !DILocalVariable(name: "__unused", arg: 1, scope: !1956, file: !1, line: 373, type: !19)
!1959 = !DILocation(line: 373, column: 1, scope: !1956)
!1960 = distinct !DISubprogram(name: "__x64_sys_getresgid16", scope: !1, file: !1, line: 374, type: !17, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1961)
!1961 = !{!1962}
!1962 = !DILocalVariable(name: "__unused", arg: 1, scope: !1960, file: !1, line: 374, type: !19)
!1963 = !DILocation(line: 374, column: 1, scope: !1960)
!1964 = distinct !DISubprogram(name: "__ia32_sys_getresgid16", scope: !1, file: !1, line: 374, type: !17, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1965)
!1965 = !{!1966}
!1966 = !DILocalVariable(name: "__unused", arg: 1, scope: !1964, file: !1, line: 374, type: !19)
!1967 = !DILocation(line: 374, column: 1, scope: !1964)
!1968 = distinct !DISubprogram(name: "__x64_sys_getresuid16", scope: !1, file: !1, line: 375, type: !17, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1969)
!1969 = !{!1970}
!1970 = !DILocalVariable(name: "__unused", arg: 1, scope: !1968, file: !1, line: 375, type: !19)
!1971 = !DILocation(line: 375, column: 1, scope: !1968)
!1972 = distinct !DISubprogram(name: "__ia32_sys_getresuid16", scope: !1, file: !1, line: 375, type: !17, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1973)
!1973 = !{!1974}
!1974 = !DILocalVariable(name: "__unused", arg: 1, scope: !1972, file: !1, line: 375, type: !19)
!1975 = !DILocation(line: 375, column: 1, scope: !1972)
!1976 = distinct !DISubprogram(name: "__x64_sys_getuid16", scope: !1, file: !1, line: 376, type: !17, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1977)
!1977 = !{!1978}
!1978 = !DILocalVariable(name: "__unused", arg: 1, scope: !1976, file: !1, line: 376, type: !19)
!1979 = !DILocation(line: 376, column: 1, scope: !1976)
!1980 = distinct !DISubprogram(name: "__ia32_sys_getuid16", scope: !1, file: !1, line: 376, type: !17, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1981)
!1981 = !{!1982}
!1982 = !DILocalVariable(name: "__unused", arg: 1, scope: !1980, file: !1, line: 376, type: !19)
!1983 = !DILocation(line: 376, column: 1, scope: !1980)
!1984 = distinct !DISubprogram(name: "__x64_sys_lchown16", scope: !1, file: !1, line: 377, type: !17, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1985)
!1985 = !{!1986}
!1986 = !DILocalVariable(name: "__unused", arg: 1, scope: !1984, file: !1, line: 377, type: !19)
!1987 = !DILocation(line: 377, column: 1, scope: !1984)
!1988 = distinct !DISubprogram(name: "__ia32_sys_lchown16", scope: !1, file: !1, line: 377, type: !17, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1989)
!1989 = !{!1990}
!1990 = !DILocalVariable(name: "__unused", arg: 1, scope: !1988, file: !1, line: 377, type: !19)
!1991 = !DILocation(line: 377, column: 1, scope: !1988)
!1992 = distinct !DISubprogram(name: "__x64_sys_setfsgid16", scope: !1, file: !1, line: 378, type: !17, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1993)
!1993 = !{!1994}
!1994 = !DILocalVariable(name: "__unused", arg: 1, scope: !1992, file: !1, line: 378, type: !19)
!1995 = !DILocation(line: 378, column: 1, scope: !1992)
!1996 = distinct !DISubprogram(name: "__ia32_sys_setfsgid16", scope: !1, file: !1, line: 378, type: !17, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1997)
!1997 = !{!1998}
!1998 = !DILocalVariable(name: "__unused", arg: 1, scope: !1996, file: !1, line: 378, type: !19)
!1999 = !DILocation(line: 378, column: 1, scope: !1996)
!2000 = distinct !DISubprogram(name: "__x64_sys_setfsuid16", scope: !1, file: !1, line: 379, type: !17, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2001)
!2001 = !{!2002}
!2002 = !DILocalVariable(name: "__unused", arg: 1, scope: !2000, file: !1, line: 379, type: !19)
!2003 = !DILocation(line: 379, column: 1, scope: !2000)
!2004 = distinct !DISubprogram(name: "__ia32_sys_setfsuid16", scope: !1, file: !1, line: 379, type: !17, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2005)
!2005 = !{!2006}
!2006 = !DILocalVariable(name: "__unused", arg: 1, scope: !2004, file: !1, line: 379, type: !19)
!2007 = !DILocation(line: 379, column: 1, scope: !2004)
!2008 = distinct !DISubprogram(name: "__x64_sys_setgid16", scope: !1, file: !1, line: 380, type: !17, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2009)
!2009 = !{!2010}
!2010 = !DILocalVariable(name: "__unused", arg: 1, scope: !2008, file: !1, line: 380, type: !19)
!2011 = !DILocation(line: 380, column: 1, scope: !2008)
!2012 = distinct !DISubprogram(name: "__ia32_sys_setgid16", scope: !1, file: !1, line: 380, type: !17, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2013)
!2013 = !{!2014}
!2014 = !DILocalVariable(name: "__unused", arg: 1, scope: !2012, file: !1, line: 380, type: !19)
!2015 = !DILocation(line: 380, column: 1, scope: !2012)
!2016 = distinct !DISubprogram(name: "__x64_sys_setgroups16", scope: !1, file: !1, line: 381, type: !17, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2017)
!2017 = !{!2018}
!2018 = !DILocalVariable(name: "__unused", arg: 1, scope: !2016, file: !1, line: 381, type: !19)
!2019 = !DILocation(line: 381, column: 1, scope: !2016)
!2020 = distinct !DISubprogram(name: "__ia32_sys_setgroups16", scope: !1, file: !1, line: 381, type: !17, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2021)
!2021 = !{!2022}
!2022 = !DILocalVariable(name: "__unused", arg: 1, scope: !2020, file: !1, line: 381, type: !19)
!2023 = !DILocation(line: 381, column: 1, scope: !2020)
!2024 = distinct !DISubprogram(name: "__x64_sys_setregid16", scope: !1, file: !1, line: 382, type: !17, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2025)
!2025 = !{!2026}
!2026 = !DILocalVariable(name: "__unused", arg: 1, scope: !2024, file: !1, line: 382, type: !19)
!2027 = !DILocation(line: 382, column: 1, scope: !2024)
!2028 = distinct !DISubprogram(name: "__ia32_sys_setregid16", scope: !1, file: !1, line: 382, type: !17, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2029)
!2029 = !{!2030}
!2030 = !DILocalVariable(name: "__unused", arg: 1, scope: !2028, file: !1, line: 382, type: !19)
!2031 = !DILocation(line: 382, column: 1, scope: !2028)
!2032 = distinct !DISubprogram(name: "__x64_sys_setresgid16", scope: !1, file: !1, line: 383, type: !17, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2033)
!2033 = !{!2034}
!2034 = !DILocalVariable(name: "__unused", arg: 1, scope: !2032, file: !1, line: 383, type: !19)
!2035 = !DILocation(line: 383, column: 1, scope: !2032)
!2036 = distinct !DISubprogram(name: "__ia32_sys_setresgid16", scope: !1, file: !1, line: 383, type: !17, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2037)
!2037 = !{!2038}
!2038 = !DILocalVariable(name: "__unused", arg: 1, scope: !2036, file: !1, line: 383, type: !19)
!2039 = !DILocation(line: 383, column: 1, scope: !2036)
!2040 = distinct !DISubprogram(name: "__x64_sys_setresuid16", scope: !1, file: !1, line: 384, type: !17, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2041)
!2041 = !{!2042}
!2042 = !DILocalVariable(name: "__unused", arg: 1, scope: !2040, file: !1, line: 384, type: !19)
!2043 = !DILocation(line: 384, column: 1, scope: !2040)
!2044 = distinct !DISubprogram(name: "__ia32_sys_setresuid16", scope: !1, file: !1, line: 384, type: !17, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2045)
!2045 = !{!2046}
!2046 = !DILocalVariable(name: "__unused", arg: 1, scope: !2044, file: !1, line: 384, type: !19)
!2047 = !DILocation(line: 384, column: 1, scope: !2044)
!2048 = distinct !DISubprogram(name: "__x64_sys_setreuid16", scope: !1, file: !1, line: 385, type: !17, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2049)
!2049 = !{!2050}
!2050 = !DILocalVariable(name: "__unused", arg: 1, scope: !2048, file: !1, line: 385, type: !19)
!2051 = !DILocation(line: 385, column: 1, scope: !2048)
!2052 = distinct !DISubprogram(name: "__ia32_sys_setreuid16", scope: !1, file: !1, line: 385, type: !17, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2053)
!2053 = !{!2054}
!2054 = !DILocalVariable(name: "__unused", arg: 1, scope: !2052, file: !1, line: 385, type: !19)
!2055 = !DILocation(line: 385, column: 1, scope: !2052)
!2056 = distinct !DISubprogram(name: "__x64_sys_setuid16", scope: !1, file: !1, line: 386, type: !17, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2057)
!2057 = !{!2058}
!2058 = !DILocalVariable(name: "__unused", arg: 1, scope: !2056, file: !1, line: 386, type: !19)
!2059 = !DILocation(line: 386, column: 1, scope: !2056)
!2060 = distinct !DISubprogram(name: "__ia32_sys_setuid16", scope: !1, file: !1, line: 386, type: !17, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2061)
!2061 = !{!2062}
!2062 = !DILocalVariable(name: "__unused", arg: 1, scope: !2060, file: !1, line: 386, type: !19)
!2063 = !DILocation(line: 386, column: 1, scope: !2060)
!2064 = distinct !DISubprogram(name: "__x64_sys_rseq", scope: !1, file: !1, line: 389, type: !17, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2065)
!2065 = !{!2066}
!2066 = !DILocalVariable(name: "__unused", arg: 1, scope: !2064, file: !1, line: 389, type: !19)
!2067 = !DILocation(line: 389, column: 1, scope: !2064)
!2068 = distinct !DISubprogram(name: "__ia32_sys_rseq", scope: !1, file: !1, line: 389, type: !17, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2069)
!2069 = !{!2070}
!2070 = !DILocalVariable(name: "__unused", arg: 1, scope: !2068, file: !1, line: 389, type: !19)
!2071 = !DILocation(line: 389, column: 1, scope: !2068)
