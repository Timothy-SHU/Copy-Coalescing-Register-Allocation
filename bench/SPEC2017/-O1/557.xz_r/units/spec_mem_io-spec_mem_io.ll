; ModuleID = 'spec_mem_io/spec_mem_io.c'
source_filename = "spec_mem_io/spec_mem_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.spec_fd_t = type { i64, i64, i64, i32, ptr }
%struct.sha512_state = type { i64, [8 x i64], i32, [128 x i8] }

@dbglvl = dso_local local_unnamed_addr global i32 3, align 4
@.str = private unnamed_addr constant [52 x i8] c"spec_mem_init(fds=0x%p, fd_limit=%u, touch_all=%d)\0A\00", align 1
@spec_fd = dso_local local_unnamed_addr global ptr null, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"spec_mem_init: Overflow in requested size (%ld) for fd %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"spec_mem_init: Error mallocing %ld bytes for fd %d@%p!\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c" fd[%d] limit is %ld bytes (%ld bytes allocated)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"spec_mem_sum: Only SHA-512 is available\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"spec_mem_load: couldn't allocate %d chars for SHA-%d sum\0A\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"spec_mem_load: in-mem fd tmpfd %d@%p is out of range: < 0 || >= fd_limit %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"spec_mem_load: in-mem fd num %d@%p is out of range: < 0 || >= fd_limit %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Can't open file %s: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"spec_mem_load\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Error reading from %s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Compressed size: %ld; Uncompressed size: %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"Computed SHA-%d sum for decompressed input did not match expected\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"  Generated: \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"\0A   Expected: \00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"SHA-%d of decompressed data compared successfully!\0A\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"Decompressed data too large; truncating to requested size %ld\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Duplicating %ld bytes\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"SHA-%d of input file: \00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"spec_mem_read: %d@%p, %p, %ld = \00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"spec_mem_read: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"spec_mem_read(%p, %u, %d, %p, %ld) => EBADF\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"pos (%ld) => len (%ld); returning EOF (0)\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"spec_mem_read: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"spec_mem_fread(%p, %u, %p, (%ld x %d) fd %d) =\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"spec_mem_fread: fd=%d@%p out of range: < 0 || > fd_limit %d!\0A\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"spec_mem_fread: fd=%d@%p is not open\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"spec_mem_fread: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"spec_mem_getc(%p, %u, %d) = \00", align 1
@.str.33 = private unnamed_addr constant [61 x i8] c"spec_mem_getc: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"spec_mem_getc: fd=%d@%p is not open\0A\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"spec_mem_getc: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"spec_mem_ungetc(%p, %u, 0x%02x, %d) = \00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"spec_mem_ungetc: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"spec_mem_ungetc: fd=%d@%p is not open\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"spec_mem_ungetc: pos %ld <= 0\0A\00", align 1
@.str.40 = private unnamed_addr constant [76 x i8] c"spec_mem_ungetc: can't unget something that wasn't what was in the buffer!\0A\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"spec_mem_ungetc: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.42 = private unnamed_addr constant [62 x i8] c"spec_mem_lseek: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c"spec_mem_lseek(%p, %u, %d, %ld, %d) => EBADF\0A\00", align 1
@.str.44 = private unnamed_addr constant [82 x i8] c"spec_mem_lseek(%p, %u, fd=%d, offset=%ld, whence=0x%x): cur pos (%ld) => new pos \00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"(%ld) (WHENCE WAS BAD): EINVAL\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"(%ld) (NEW POS (%ld) WAS < 0): EINVAL\0A\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"(%ld)\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"spec_rewind(%p, %u, %d) called\0A\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"spec_mem_reset(%p, %u, %d) called\0A\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"spec_mem_reset: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"spec_get_length(%p, %u, %d): file not open!\0A\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"spec_mem_get_length(%p, %u, %d) => %ld\0A\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"spec_mem_fopen(%p, %u, '%s', '%s') = %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"spec_mem_open(%p, %u, '%s', 0x%02x) = %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [66 x i8] c"spec_mem_write(fds=0x%p, fd_limit=%u, fd=%d, buf=0x%p, size=%ld)\0A\00", align 1
@.str.56 = private unnamed_addr constant [62 x i8] c"spec_mem_write: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.57 = private unnamed_addr constant [46 x i8] c"spec_mem_write(%p, %u, %d, %p, %ld) => EBADF\0A\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"spec_mem_write\00", align 1
@.str.59 = private unnamed_addr constant [58 x i8] c"  spec_mem_write returns %ld (len=%ld pos=%ld limit=%ld)\0A\00", align 1
@.str.60 = private unnamed_addr constant [75 x i8] c"spec_mem_fwrite(fds=0x%p, fd_limit=%u, buf=0x%p, size=%ld, num=%d, fd=%d)\0A\00", align 1
@.str.61 = private unnamed_addr constant [63 x i8] c"spec_mem_fwrite: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.62 = private unnamed_addr constant [39 x i8] c"spec_mem_fwrite: fd=%d@%p is not open\0A\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"spec_mem_fwrite\00", align 1
@.str.64 = private unnamed_addr constant [58 x i8] c"  spec_mem_fwrite returns %d (len=%ld pos=%ld limit=%ld)\0A\00", align 1
@.str.65 = private unnamed_addr constant [52 x i8] c"spec_putc(fds=0x%p, fd_limit=%u, ch=0x%x, fd=%d) = \00", align 1
@.str.66 = private unnamed_addr constant [61 x i8] c"spec_mem_putc: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"spec_mem_putc: fd=%d@%p is not open\0A\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"spec_mem_putc: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.70 = private unnamed_addr constant [57 x i8] c"spec_feof: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.71 = private unnamed_addr constant [86 x i8] c"spec_mem_feof(fds=0x%p, fd_limit=%u, fd=%d) = %d (len = %ld; pos = %ld; limit = %ld)\0A\00", align 1
@.str.72 = private unnamed_addr constant [62 x i8] c"spec_mem_close: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"spec_mem_close(%p, %u, %d) => EBADF\0A\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.75 = private unnamed_addr constant [53 x i8] c"sum_str_to_hex: couldn't allocate %d chars for hash\0A\00", align 1
@.str.76 = private unnamed_addr constant [62 x i8] c"Hash mismatch at %d: '%02x' (expected) != '%02x' (generated)\0A\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"spec_mem_alloc_fds(%s)\0A\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"MAX_SPEC_FD\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"<variable>\00", align 1
@.str.80 = private unnamed_addr constant [53 x i8] c"Error mallocing space for list of spec_fd_t structs\0A\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"spec_mem_alloc_fds(%u) => %p\0A\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"spec_mem_free_fds(%s)\0A\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"spec_fd\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"  +-> fds=%p fd_limit=%u\0A\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"%s: Error growing buffer for fd %d@%p: %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [36 x i8] c"  grew buffer for fd%d@0x%p to %ld\0A\00", align 1
@str.87 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @spec_mem_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !57 {
  %4 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %5 = icmp sgt i32 %4, 4
  br i1 %5, label %6, label %13, !prof !62

6:                                                ; preds = %3
  %7 = load ptr, ptr @spec_fd, align 8, !tbaa !63
  %8 = icmp eq ptr %7, %0
  %9 = select i1 %8, ptr null, ptr %0
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %9, i32 noundef %1, i32 noundef %2)
  %11 = load ptr, ptr @stdout, align 8, !tbaa !63
  %12 = tail call i32 @fflush(ptr noundef %11)
  br label %13

13:                                               ; preds = %6, %3
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %55, label %15, !prof !65

15:                                               ; preds = %13
  %16 = icmp ne i32 %2, 0
  br label %17

17:                                               ; preds = %15, %52
  %18 = phi i32 [ 0, %15 ], [ %53, %52 ]
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %20, i8 0, i64 40, i1 false)
  store i64 %21, ptr %20, align 8, !tbaa !66
  %22 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %19, i32 3
  store i32 0, ptr %22, align 8, !tbaa !69
  %23 = icmp slt i64 %21, 0
  br i1 %23, label %24, label %28, !prof !70

24:                                               ; preds = %17
  %25 = load ptr, ptr @stderr, align 8, !tbaa !63
  %26 = add nsw i64 %21, 1048576
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.1, i64 noundef %26, i32 noundef %18) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

28:                                               ; preds = %17
  %29 = add nuw nsw i64 %21, 1048576
  %30 = tail call noalias ptr @malloc(i64 noundef %29) #21
  %31 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %19, i32 4
  store ptr %30, ptr %31, align 8, !tbaa !71
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %36, !prof !70

33:                                               ; preds = %28
  %34 = load ptr, ptr @stderr, align 8, !tbaa !63
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.2, i64 noundef %29, i32 noundef %18, ptr noundef %0) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

36:                                               ; preds = %28
  %37 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %38 = icmp sgt i32 %37, 4
  br i1 %38, label %39, label %43, !prof !70

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %18, i64 noundef %21, i64 noundef %29)
  %41 = load ptr, ptr @stdout, align 8, !tbaa !63
  %42 = tail call i32 @fflush(ptr noundef %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = icmp ne i64 %21, 0
  %45 = and i1 %16, %44
  br i1 %45, label %46, label %52, !prof !72

46:                                               ; preds = %43, %46
  %47 = phi i64 [ %50, %46 ], [ 0, %43 ]
  %48 = load ptr, ptr %31, align 8, !tbaa !71
  %49 = getelementptr inbounds i8, ptr %48, i64 %47
  store i8 0, ptr %49, align 1, !tbaa !73
  %50 = add nuw nsw i64 %47, 1024
  %51 = icmp slt i64 %50, %21
  br i1 %51, label %46, label %52, !prof !74, !llvm.loop !75

52:                                               ; preds = %46, %43
  %53 = add nuw i32 %18, 1
  %54 = icmp eq i32 %53, %1
  br i1 %54, label %55, label %17, !prof !78, !llvm.loop !79

55:                                               ; preds = %52, %13
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @spec_mem_sum(ptr nocapture noundef readonly %0, ptr noundef returned %1, i32 noundef %2) local_unnamed_addr #6 !prof !80 {
  %4 = alloca %struct.sha512_state, align 8
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %4) #22
  %5 = icmp eq i32 %2, 512
  br i1 %5, label %9, label %6, !prof !81

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !63
  %8 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 40, i64 1, ptr %7) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, null
  br i1 %10, label %30, label %11, !prof !70

11:                                               ; preds = %9
  call void @sha_init(ptr noundef nonnull %4) #22
  %12 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !82
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %29, !prof !83

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 0, i32 4
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ %13, %15 ], [ %27, %17 ]
  %19 = phi i64 [ 2147483647, %15 ], [ %22, %17 ]
  %20 = phi i64 [ 0, %15 ], [ %26, %17 ]
  %21 = sub nsw i64 %18, %20
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %19)
  %23 = load ptr, ptr %16, align 8, !tbaa !71
  %24 = getelementptr inbounds i8, ptr %23, i64 %20
  %25 = trunc i64 %22 to i32
  call void @sha_process(ptr noundef nonnull %4, ptr noundef %24, i32 noundef %25) #22
  %26 = add nsw i64 %22, %20
  %27 = load i64, ptr %12, align 8, !tbaa !82
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %17, label %29, !prof !84, !llvm.loop !85

29:                                               ; preds = %17, %11
  call void @sha_done(ptr noundef nonnull %4, ptr noundef nonnull %1) #22
  br label %30

30:                                               ; preds = %29, %9
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %4) #22
  ret ptr %1
}

declare void @sha_init(ptr noundef) local_unnamed_addr #7

declare void @sha_process(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @sha_done(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @spec_mem_load(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #6 !prof !57 {
  %9 = sext i32 %7 to i64
  %10 = lshr i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17, !prof !62

13:                                               ; preds = %8
  %14 = load ptr, ptr @stderr, align 8, !tbaa !63
  %15 = sdiv i32 %7, 8
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.5, i32 noundef %15, i32 noundef %7) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

17:                                               ; preds = %8
  %18 = icmp sgt i32 %5, -1
  %19 = icmp ult i32 %5, %1
  %20 = and i1 %18, %19
  br i1 %20, label %24, label %21, !prof !86

21:                                               ; preds = %17
  %22 = load ptr, ptr @stderr, align 8, !tbaa !63
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.6, i32 noundef %5, ptr noundef %0, i32 noundef %1) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

24:                                               ; preds = %17
  %25 = icmp sgt i32 %2, -1
  %26 = icmp ult i32 %2, %1
  %27 = and i1 %25, %26
  br i1 %27, label %31, label %28, !prof !86

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !tbaa !63
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.7, i32 noundef %2, ptr noundef %0, i32 noundef %1) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

31:                                               ; preds = %24
  %32 = tail call i32 (ptr, i32, ...) @open(ptr noundef %3, i32 noundef 0) #22
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40, !prof !62

34:                                               ; preds = %31
  %35 = load ptr, ptr @stderr, align 8, !tbaa !63
  %36 = tail call ptr @__errno_location() #23
  %37 = load i32, ptr %36, align 4, !tbaa !58
  %38 = tail call ptr @strerror(i32 noundef %37) #22
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.8, ptr noundef %3, ptr noundef %38) #19
  tail call void @exit(i32 noundef 0) #20
  unreachable

40:                                               ; preds = %31
  %41 = zext nneg i32 %5 to i64
  %42 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %41
  %43 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %41, i32 1
  %44 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %41, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %43, i8 0, i64 20, i1 false)
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = tail call i64 @read(i32 noundef %32, ptr noundef %45, i64 noundef 266338304) #22
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %64, !prof !86

48:                                               ; preds = %40, %58
  %49 = phi i64 [ %62, %58 ], [ %46, %40 ]
  %50 = load i64, ptr %43, align 8, !tbaa !82
  %51 = add nsw i64 %50, %49
  store i64 %51, ptr %43, align 8, !tbaa !82
  %52 = icmp ult i64 %49, 266338304
  br i1 %52, label %64, label %53, !prof !86

53:                                               ; preds = %48
  %54 = add nsw i64 %51, 266338304
  %55 = load i64, ptr %42, align 8, !tbaa !66
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call fastcc void @fd_grow(ptr noundef %0, i32 noundef %5, ptr noundef nonnull @.str.9)
  br label %58

58:                                               ; preds = %57, %53
  %59 = load ptr, ptr %44, align 8, !tbaa !71
  %60 = load i64, ptr %43, align 8, !tbaa !82
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  %62 = tail call i64 @read(i32 noundef %32, ptr noundef %61, i64 noundef 266338304) #22
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %48, label %64, !prof !86, !llvm.loop !87

64:                                               ; preds = %58, %48, %40
  %65 = phi i64 [ %46, %40 ], [ %62, %58 ], [ %49, %48 ]
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %73, !prof !62

67:                                               ; preds = %64
  %68 = load ptr, ptr @stderr, align 8, !tbaa !63
  %69 = tail call ptr @__errno_location() #23
  %70 = load i32, ptr %69, align 4, !tbaa !58
  %71 = tail call ptr @strerror(i32 noundef %70) #22
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.10, ptr noundef %3, ptr noundef %71) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

73:                                               ; preds = %64
  %74 = tail call i32 @close(i32 noundef %32) #22
  %75 = zext nneg i32 %2 to i64
  %76 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %75
  %77 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %75, i32 1
  %78 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %75, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false)
  %79 = load ptr, ptr @spec_fd, align 8, !tbaa !63
  %80 = sext i32 %5 to i64
  %81 = getelementptr inbounds %struct.spec_fd_t, ptr %79, i64 %80, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !69
  %83 = sext i32 %2 to i64
  %84 = getelementptr inbounds %struct.spec_fd_t, ptr %79, i64 %83, i32 3
  %85 = load i32, ptr %84, align 8, !tbaa !69
  store i32 1, ptr %84, align 8, !tbaa !69
  store i32 1, ptr %81, align 8, !tbaa !69
  tail call void @uncompressStream(i32 noundef %5, i32 noundef %2) #22
  %86 = load ptr, ptr @spec_fd, align 8, !tbaa !63
  %87 = getelementptr inbounds %struct.spec_fd_t, ptr %86, i64 %80, i32 3
  store i32 %82, ptr %87, align 8, !tbaa !69
  %88 = getelementptr inbounds %struct.spec_fd_t, ptr %86, i64 %83, i32 3
  store i32 %85, ptr %88, align 8, !tbaa !69
  %89 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %97, !prof !86

91:                                               ; preds = %73
  %92 = load i64, ptr %43, align 8, !tbaa !82
  %93 = load i64, ptr %77, align 8, !tbaa !82
  %94 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i64 noundef %92, i64 noundef %93)
  %95 = load ptr, ptr @stdout, align 8, !tbaa !63
  %96 = tail call i32 @fflush(ptr noundef %95)
  br label %97

97:                                               ; preds = %91, %73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  %98 = tail call ptr @spec_mem_sum(ptr noundef %76, ptr noundef nonnull %11, i32 noundef %7)
  %99 = tail call i32 @compare_sum(ptr noundef %6, ptr noundef nonnull %11, i32 noundef %7)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %112, label %101, !prof !86

101:                                              ; preds = %97
  %102 = load ptr, ptr @stderr, align 8, !tbaa !63
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.12, i32 noundef %7) #19
  %104 = load ptr, ptr @stderr, align 8, !tbaa !63
  %105 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 13, i64 1, ptr %104) #19
  %106 = load ptr, ptr @stderr, align 8, !tbaa !63
  tail call void @print_sum(ptr noundef %106, ptr noundef nonnull %11, i32 noundef %7)
  %107 = load ptr, ptr @stderr, align 8, !tbaa !63
  %108 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 14, i64 1, ptr %107) #19
  %109 = load ptr, ptr @stderr, align 8, !tbaa !63
  tail call void @print_sum(ptr noundef %109, ptr noundef %6, i32 noundef %7)
  %110 = load ptr, ptr @stderr, align 8, !tbaa !63
  %111 = tail call i32 @fputc(i32 10, ptr %110)
  tail call void @exit(i32 noundef 1) #20
  unreachable

112:                                              ; preds = %97
  %113 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %119, !prof !86

115:                                              ; preds = %112
  %116 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %7)
  %117 = load ptr, ptr @stdout, align 8, !tbaa !63
  %118 = tail call i32 @fflush(ptr noundef %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i64, ptr %77, align 8, !tbaa !82
  %121 = icmp sgt i64 %120, %4
  br i1 %121, label %122, label %130, !prof !62

122:                                              ; preds = %119
  %123 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i64 noundef %4)
  %127 = load ptr, ptr @stdout, align 8, !tbaa !63
  %128 = tail call i32 @fflush(ptr noundef %127)
  br label %129

129:                                              ; preds = %125, %122
  store i64 %4, ptr %77, align 8, !tbaa !82
  br label %130

130:                                              ; preds = %129, %119
  store i64 0, ptr %78, align 8, !tbaa !88
  %131 = load i64, ptr %77, align 8, !tbaa !82
  %132 = icmp slt i64 %131, %4
  br i1 %132, label %133, label %152, !prof !89

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %75, i32 4
  br label %135

135:                                              ; preds = %133, %145
  %136 = phi i64 [ %131, %133 ], [ %150, %145 ]
  %137 = sub nsw i64 %4, %136
  %138 = tail call i64 @llvm.smin.i64(i64 %137, i64 %136)
  %139 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %140 = icmp sgt i32 %139, 3
  br i1 %140, label %141, label %145, !prof !70

141:                                              ; preds = %135
  %142 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %138)
  %143 = load ptr, ptr @stdout, align 8, !tbaa !63
  %144 = tail call i32 @fflush(ptr noundef %143)
  br label %145

145:                                              ; preds = %141, %135
  %146 = load ptr, ptr %134, align 8, !tbaa !71
  %147 = load i64, ptr %77, align 8, !tbaa !82
  %148 = getelementptr inbounds i8, ptr %146, i64 %147
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %148, ptr align 1 %146, i64 %138, i1 false), !prof !90
  %149 = load i64, ptr %77, align 8, !tbaa !82
  %150 = add nsw i64 %149, %138
  store i64 %150, ptr %77, align 8, !tbaa !82
  %151 = icmp slt i64 %150, %4
  br i1 %151, label %135, label %152, !prof !91, !llvm.loop !92

152:                                              ; preds = %145, %130
  %153 = tail call ptr @spec_mem_sum(ptr noundef %76, ptr noundef nonnull %11, i32 noundef %7)
  %154 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %7)
  %155 = load ptr, ptr @stdout, align 8, !tbaa !63
  %156 = icmp sgt i32 %7, 7
  br i1 %156, label %157, label %168, !prof !89

157:                                              ; preds = %152
  %158 = lshr i32 %7, 3
  %159 = zext nneg i32 %158 to i64
  br label %160

160:                                              ; preds = %157, %160
  %161 = phi i64 [ 0, %157 ], [ %166, %160 ]
  %162 = getelementptr inbounds i8, ptr %11, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !73
  %164 = zext i8 %163 to i32
  %165 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.74, i32 noundef %164)
  %166 = add nuw nsw i64 %161, 1
  %167 = icmp eq i64 %166, %159
  br i1 %167, label %168, label %160, !prof !93, !llvm.loop !94

168:                                              ; preds = %160, %152
  %169 = tail call i32 @putchar(i32 10)
  ret ptr %11
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind uwtable
define internal fastcc void @fd_grow(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !95 {
  %4 = zext nneg i32 %1 to i64
  %5 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !66
  %7 = shl nsw i64 %6, 1
  store i64 %7, ptr %5, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %4, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = tail call ptr @realloc(ptr noundef %9, i64 noundef %7) #24
  store ptr %10, ptr %8, align 8, !tbaa !71
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !tbaa !63
  %14 = tail call ptr @__errno_location() #23
  %15 = load i32, ptr %14, align 4, !tbaa !58
  %16 = tail call ptr @strerror(i32 noundef %15) #22
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.85, ptr noundef %2, i32 noundef %1, ptr noundef %0, ptr noundef %16) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

18:                                               ; preds = %3
  %19 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %20 = icmp sgt i32 %19, 5
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, ptr %5, align 8, !tbaa !66
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef %1, ptr noundef %0, i64 noundef %22)
  %24 = load ptr, ptr @stdout, align 8, !tbaa !63
  %25 = tail call i32 @fflush(ptr noundef %24)
  br label %26

26:                                               ; preds = %21, %18
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @spec_uncompress(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 !prof !57 {
  %3 = load ptr, ptr @spec_fd, align 8, !tbaa !63
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds %struct.spec_fd_t, ptr %3, i64 %4, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !69
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.spec_fd_t, ptr %3, i64 %7, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !69
  store i32 1, ptr %8, align 8, !tbaa !69
  store i32 1, ptr %5, align 8, !tbaa !69
  tail call void @uncompressStream(i32 noundef %0, i32 noundef %1) #22
  %10 = load ptr, ptr @spec_fd, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.spec_fd_t, ptr %10, i64 %4, i32 3
  store i32 %6, ptr %11, align 8, !tbaa !69
  %12 = getelementptr inbounds %struct.spec_fd_t, ptr %10, i64 %7, i32 3
  store i32 %9, ptr %12, align 8, !tbaa !69
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local i32 @compare_sum(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #11 !prof !96 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %34, label %7, !prof !97

7:                                                ; preds = %3
  %8 = icmp sgt i32 %2, 7
  br i1 %8, label %9, label %34, !prof !89

9:                                                ; preds = %7
  %10 = lshr i32 %2, 3
  %11 = zext nneg i32 %10 to i64
  br label %12

12:                                               ; preds = %9, %31
  %13 = phi i64 [ 0, %9 ], [ %32, %31 ]
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !73
  %16 = getelementptr inbounds i8, ptr %1, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !73
  %18 = icmp eq i8 %15, %17
  br i1 %18, label %31, label %19, !prof !98

19:                                               ; preds = %12
  %20 = trunc i64 %13 to i32
  %21 = getelementptr inbounds i8, ptr %0, i64 %13
  %22 = getelementptr inbounds i8, ptr %1, i64 %13
  %23 = zext i8 %17 to i32
  %24 = zext i8 %15 to i32
  %25 = load ptr, ptr @stderr, align 8, !tbaa !63
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.76, i32 noundef %20, i32 noundef %24, i32 noundef %23) #19
  %27 = load i8, ptr %21, align 1, !tbaa !73
  %28 = load i8, ptr %22, align 1, !tbaa !73
  %29 = icmp ult i8 %27, %28
  %30 = select i1 %29, i32 -1, i32 1
  br label %34

31:                                               ; preds = %12
  %32 = add nuw nsw i64 %13, 1
  %33 = icmp eq i64 %32, %11
  br i1 %33, label %34, label %12, !prof !93, !llvm.loop !99

34:                                               ; preds = %31, %7, %19, %3
  %35 = phi i32 [ -1, %3 ], [ %30, %19 ], [ 0, %7 ], [ 0, %31 ]
  ret i32 %35
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @print_sum(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #11 !prof !95 {
  %4 = icmp sgt i32 %2, 7
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = lshr i32 %2, 3
  %7 = zext nneg i32 %6 to i64
  br label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %5, %9
  %10 = phi i64 [ 0, %5 ], [ %15, %9 ]
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !73
  %13 = zext i8 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef %13)
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %8, label %9, !llvm.loop !94
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold nounwind uwtable
define dso_local i64 @spec_mem_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 !prof !95 {
  %6 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %7 = icmp sgt i32 %6, 5
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %2, ptr noundef %0, ptr noundef %3, i64 noundef %4)
  %10 = load ptr, ptr @stdout, align 8, !tbaa !63
  %11 = tail call i32 @fflush(ptr noundef %10)
  br label %12

12:                                               ; preds = %8, %5
  %13 = icmp sgt i32 %2, -1
  %14 = icmp ult i32 %2, %1
  %15 = and i1 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !63
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.21, i32 noundef %2, ptr noundef %0, i32 noundef %1) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

19:                                               ; preds = %12
  %20 = zext nneg i32 %2 to i64
  %21 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !69
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @stderr, align 8, !tbaa !63
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.22, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #19
  %27 = tail call ptr @__errno_location() #23
  store i32 9, ptr %27, align 4, !tbaa !58
  br label %68

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !88
  %31 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !82
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %36 = icmp sgt i32 %35, 4
  br i1 %36, label %37, label %68

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i64 noundef %30, i64 noundef %32)
  %39 = load ptr, ptr @stdout, align 8, !tbaa !63
  %40 = tail call i32 @fflush(ptr noundef %39)
  br label %68

41:                                               ; preds = %28
  %42 = add nsw i64 %30, %4
  %43 = icmp slt i64 %42, %32
  %44 = sub nsw i64 %32, %30
  %45 = select i1 %43, i64 %4, i64 %44
  %46 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !71
  %48 = getelementptr inbounds i8, ptr %47, i64 %30
  %49 = shl i64 %45, 32
  %50 = ashr exact i64 %49, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %48, i64 %50, i1 false)
  %51 = load i64, ptr %29, align 8, !tbaa !88
  %52 = add nsw i64 %51, %50
  store i64 %52, ptr %29, align 8, !tbaa !88
  %53 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %54 = icmp sgt i32 %53, 5
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = trunc i64 %45 to i32
  %57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %56)
  %58 = load ptr, ptr @stdout, align 8, !tbaa !63
  %59 = tail call i32 @fflush(ptr noundef %58)
  br label %60

60:                                               ; preds = %55, %41
  %61 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %62 = icmp sgt i32 %61, 5
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i64, ptr %29, align 8, !tbaa !88
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %2, ptr noundef %0, i64 noundef %64)
  %66 = load ptr, ptr @stdout, align 8, !tbaa !63
  %67 = tail call i32 @fflush(ptr noundef %66)
  br label %68

68:                                               ; preds = %60, %63, %34, %37, %24
  %69 = phi i64 [ -1, %24 ], [ 0, %37 ], [ 0, %34 ], [ %50, %63 ], [ %50, %60 ]
  ret i64 %69
}

; Function Attrs: nounwind uwtable
define dso_local i64 @spec_mem_fread(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !100 {
  %7 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %8 = icmp sgt i32 %7, 5
  br i1 %8, label %9, label %13, !prof !101

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5)
  %11 = load ptr, ptr @stdout, align 8, !tbaa !63
  %12 = tail call i32 @fflush(ptr noundef %11)
  br label %13

13:                                               ; preds = %9, %6
  %14 = icmp sgt i32 %5, -1
  %15 = icmp ult i32 %5, %1
  %16 = and i1 %14, %15
  br i1 %16, label %20, label %17, !prof !102

17:                                               ; preds = %13
  %18 = load ptr, ptr @stderr, align 8, !tbaa !63
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.27, i32 noundef %5, ptr noundef %0, i32 noundef %1) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

20:                                               ; preds = %13
  %21 = zext nneg i32 %5 to i64
  %22 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !69
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %28, label %25, !prof !102

25:                                               ; preds = %20
  %26 = load ptr, ptr @stderr, align 8, !tbaa !63
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.28, i32 noundef %5, ptr noundef %0) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !88
  %31 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !82
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %39, label %34, !prof !102

34:                                               ; preds = %28
  %35 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %36 = icmp sgt i32 %35, 5
  br i1 %36, label %37, label %71

37:                                               ; preds = %34
  %38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.87)
  br label %67

39:                                               ; preds = %28
  %40 = sext i32 %4 to i64
  %41 = mul nsw i64 %40, %3
  %42 = add nsw i64 %30, %41
  %43 = icmp slt i64 %42, %32
  br i1 %43, label %47, label %44, !prof !103

44:                                               ; preds = %39
  %45 = sub nsw i64 %32, %30
  %46 = sdiv i64 %45, %3
  br label %47

47:                                               ; preds = %39, %44
  %48 = phi i64 [ %46, %44 ], [ %40, %39 ]
  %49 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !71
  %51 = getelementptr inbounds i8, ptr %50, i64 %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %51, i64 %48, i1 false), !prof !104
  %52 = mul nsw i64 %48, %3
  %53 = load i64, ptr %29, align 8, !tbaa !88
  %54 = add nsw i64 %53, %52
  store i64 %54, ptr %29, align 8, !tbaa !88
  %55 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %56 = icmp sgt i32 %55, 5
  br i1 %56, label %57, label %61, !prof !101

57:                                               ; preds = %47
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %52)
  %59 = load ptr, ptr @stdout, align 8, !tbaa !63
  %60 = tail call i32 @fflush(ptr noundef %59)
  br label %61

61:                                               ; preds = %57, %47
  %62 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %63 = icmp sgt i32 %62, 5
  br i1 %63, label %64, label %71, !prof !101

64:                                               ; preds = %61
  %65 = load i64, ptr %29, align 8, !tbaa !88
  %66 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %5, ptr noundef %0, i64 noundef %65)
  br label %67

67:                                               ; preds = %37, %64
  %68 = phi i64 [ %48, %64 ], [ 0, %37 ]
  %69 = load ptr, ptr @stdout, align 8, !tbaa !63
  %70 = tail call i32 @fflush(ptr noundef %69)
  br label %71

71:                                               ; preds = %67, %61, %34
  %72 = phi i64 [ 0, %34 ], [ %48, %61 ], [ %68, %67 ]
  ret i64 %72
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @spec_mem_getc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 !prof !95 {
  %4 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %5 = icmp sgt i32 %4, 6
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %8 = load ptr, ptr @stdout, align 8, !tbaa !63
  %9 = tail call i32 @fflush(ptr noundef %8)
  br label %10

10:                                               ; preds = %6, %3
  %11 = icmp sgt i32 %2, -1
  %12 = icmp ult i32 %2, %1
  %13 = and i1 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !tbaa !63
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.33, i32 noundef %2, ptr noundef %0, i32 noundef %1) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

17:                                               ; preds = %10
  %18 = zext nneg i32 %2 to i64
  %19 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %18, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !69
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr @stderr, align 8, !tbaa !63
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.34, i32 noundef %2, ptr noundef %0) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %18, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !88
  %28 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %18, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !82
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %33 = icmp sgt i32 %32, 6
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.87)
  br label %55

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %18, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  %39 = add nsw i64 %27, 1
  store i64 %39, ptr %26, align 8, !tbaa !88
  %40 = getelementptr inbounds i8, ptr %38, i64 %27
  %41 = load i8, ptr %40, align 1, !tbaa !73
  %42 = zext i8 %41 to i32
  %43 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %44 = icmp sgt i32 %43, 6
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %42)
  %47 = load ptr, ptr @stdout, align 8, !tbaa !63
  %48 = tail call i32 @fflush(ptr noundef %47)
  br label %49

49:                                               ; preds = %45, %36
  %50 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %51 = icmp sgt i32 %50, 5
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i64, ptr %26, align 8, !tbaa !88
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %2, ptr noundef %0, i64 noundef %53)
  br label %55

55:                                               ; preds = %34, %52
  %56 = phi i32 [ %42, %52 ], [ -1, %34 ]
  %57 = load ptr, ptr @stdout, align 8, !tbaa !63
  %58 = tail call i32 @fflush(ptr noundef %57)
  br label %59

59:                                               ; preds = %55, %49, %31
  %60 = phi i32 [ -1, %31 ], [ %42, %49 ], [ %56, %55 ]
  ret i32 %60
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @spec_mem_ungetc(ptr noundef %0, i32 noundef %1, i32 noundef returned %2, i32 noundef %3) local_unnamed_addr #6 !prof !95 {
  %5 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %6 = icmp sgt i32 %5, 6
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = and i32 %2, 255
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef %0, i32 noundef %1, i32 noundef %8, i32 noundef %3)
  %10 = load ptr, ptr @stdout, align 8, !tbaa !63
  %11 = tail call i32 @fflush(ptr noundef %10)
  br label %12

12:                                               ; preds = %7, %4
  %13 = icmp sgt i32 %3, -1
  %14 = icmp ult i32 %3, %1
  %15 = and i1 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !63
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.37, i32 noundef %3, ptr noundef %0, i32 noundef %1) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

19:                                               ; preds = %12
  %20 = zext nneg i32 %3 to i64
  %21 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !69
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @stderr, align 8, !tbaa !63
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.38, i32 noundef %3, ptr noundef %0) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !88
  %30 = icmp slt i64 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load ptr, ptr @stderr, align 8, !tbaa !63
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.39, i64 noundef %29) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  %37 = add nsw i64 %29, -1
  store i64 %37, ptr %28, align 8, !tbaa !88
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !73
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, %2
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr @stderr, align 8, !tbaa !63
  %44 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 75, i64 1, ptr %43) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

45:                                               ; preds = %34
  %46 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %47 = icmp sgt i32 %46, 6
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef 0)
  %50 = load ptr, ptr @stdout, align 8, !tbaa !63
  %51 = tail call i32 @fflush(ptr noundef %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %54 = icmp sgt i32 %53, 5
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i64, ptr %28, align 8, !tbaa !88
  %57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %3, ptr noundef %0, i64 noundef %56)
  %58 = load ptr, ptr @stdout, align 8, !tbaa !63
  %59 = tail call i32 @fflush(ptr noundef %58)
  br label %60

60:                                               ; preds = %55, %52
  ret i32 %2
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @spec_mem_lseek(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #6 !prof !96 {
  %6 = icmp sgt i32 %2, -1
  %7 = icmp ult i32 %2, %1
  %8 = and i1 %6, %7
  br i1 %8, label %12, label %9, !prof !105

9:                                                ; preds = %5
  %10 = load ptr, ptr @stderr, align 8, !tbaa !63
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.42, i32 noundef %2, ptr noundef %0, i32 noundef %1) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

12:                                               ; preds = %5
  %13 = zext nneg i32 %2 to i64
  %14 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %13, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !69
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %21, label %17, !prof !105

17:                                               ; preds = %12
  %18 = load ptr, ptr @stderr, align 8, !tbaa !63
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.43, ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) #19
  %20 = tail call ptr @__errno_location() #23
  store i32 9, ptr %20, align 4, !tbaa !58
  br label %66

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %13, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !88
  %24 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %25 = icmp sgt i32 %24, 4
  br i1 %25, label %26, label %30, !prof !97

26:                                               ; preds = %21
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %23)
  %28 = load ptr, ptr @stdout, align 8, !tbaa !63
  %29 = tail call i32 @fflush(ptr noundef %28)
  br label %30

30:                                               ; preds = %26, %21
  switch i32 %4, label %33 [
    i32 0, label %47
    i32 1, label %43
    i32 2, label %31
  ], !prof !106

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %13, i32 1
  br label %43

33:                                               ; preds = %30
  %34 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i64, ptr %22, align 8, !tbaa !88
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i64 noundef %37)
  %39 = load ptr, ptr @stdout, align 8, !tbaa !63
  %40 = tail call i32 @fflush(ptr noundef %39)
  br label %41

41:                                               ; preds = %36, %33
  %42 = tail call ptr @__errno_location() #23
  store i32 22, ptr %42, align 4, !tbaa !58
  br label %66

43:                                               ; preds = %30, %31
  %44 = phi ptr [ %32, %31 ], [ %22, %30 ]
  %45 = load i64, ptr %44, align 8, !tbaa !107
  %46 = add nsw i64 %45, %3
  br label %47

47:                                               ; preds = %43, %30
  %48 = phi i64 [ %3, %30 ], [ %46, %43 ]
  store i64 %48, ptr %22, align 8, !tbaa !88
  %49 = icmp slt i64 %48, 0
  %50 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %51 = icmp sgt i32 %50, 4
  br i1 %49, label %52, label %59, !prof !97

52:                                               ; preds = %47
  br i1 %51, label %53, label %57

53:                                               ; preds = %52
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i64 noundef %23, i64 noundef %48)
  %55 = load ptr, ptr @stdout, align 8, !tbaa !63
  %56 = tail call i32 @fflush(ptr noundef %55)
  br label %57

57:                                               ; preds = %53, %52
  store i64 %23, ptr %22, align 8, !tbaa !88
  %58 = tail call ptr @__errno_location() #23
  store i32 22, ptr %58, align 4, !tbaa !58
  br label %66

59:                                               ; preds = %47
  br i1 %51, label %60, label %64, !prof !97

60:                                               ; preds = %59
  %61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i64 noundef %48)
  %62 = load ptr, ptr @stdout, align 8, !tbaa !63
  %63 = tail call i32 @fflush(ptr noundef %62)
  br label %64

64:                                               ; preds = %60, %59
  %65 = load i64, ptr %22, align 8, !tbaa !88
  br label %66

66:                                               ; preds = %64, %57, %41, %17
  %67 = phi i64 [ -1, %17 ], [ -1, %57 ], [ %65, %64 ], [ -1, %41 ]
  ret i64 %67
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @spec_mem_rewind(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 !prof !96 {
  %4 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %5 = icmp sgt i32 %4, 4
  br i1 %5, label %6, label %10, !prof !97

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %8 = load ptr, ptr @stdout, align 8, !tbaa !63
  %9 = tail call i32 @fflush(ptr noundef %8)
  br label %10

10:                                               ; preds = %6, %3
  %11 = tail call i64 @spec_mem_lseek(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef 0, i32 noundef 0)
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef i32 @spec_mem_reset(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !96 {
  %4 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %5 = icmp sgt i32 %4, 4
  br i1 %5, label %6, label %10, !prof !97

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %8 = load ptr, ptr @stdout, align 8, !tbaa !63
  %9 = tail call i32 @fflush(ptr noundef %8)
  br label %10

10:                                               ; preds = %6, %3
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %11, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %11, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !82
  tail call void @llvm.memset.p0.i64(ptr align 1 %13, i8 0, i64 %15, i1 false), !prof !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %16 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %17 = icmp sgt i32 %16, 5
  br i1 %17, label %18, label %22, !prof !97

18:                                               ; preds = %10
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %2, ptr noundef %0, i64 noundef 0)
  %20 = load ptr, ptr @stdout, align 8, !tbaa !63
  %21 = tail call i32 @fflush(ptr noundef %20)
  br label %22

22:                                               ; preds = %18, %10
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local i64 @spec_mem_get_length(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !95 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %4, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !69
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @stderr, align 8, !tbaa !63
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.51, ptr noundef %0, i32 noundef %1, i32 noundef %2) #19
  br label %23

11:                                               ; preds = %3
  %12 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %4, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !82
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %16)
  %18 = load ptr, ptr @stdout, align 8, !tbaa !63
  %19 = tail call i32 @fflush(ptr noundef %18)
  br label %20

20:                                               ; preds = %14, %11
  %21 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %4, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !82
  br label %23

23:                                               ; preds = %20, %8
  %24 = phi i64 [ -1, %8 ], [ %22, %20 ]
  ret i64 %24
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @spec_mem_fopen(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 !prof !95 {
  %5 = tail call i64 @strtol(ptr nocapture noundef %2, ptr noundef null, i32 noundef 10) #22
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, -1
  %8 = icmp ult i32 %6, %1
  %9 = and i1 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call ptr @__errno_location() #23
  store i32 2, ptr %11, align 4, !tbaa !58
  br label %35

12:                                               ; preds = %4
  %13 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %14 = icmp sgt i32 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6)
  %17 = load ptr, ptr @stdout, align 8, !tbaa !63
  %18 = tail call i32 @fflush(ptr noundef %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = and i64 %5, 4294967295
  %21 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 3
  store i32 1, ptr %21, align 8, !tbaa !69
  %22 = load i8, ptr %3, align 1, !tbaa !73
  switch i8 %22, label %35 [
    i8 119, label %23
    i8 114, label %33
  ]

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %3, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !73
  %26 = icmp eq i8 %25, 43
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !88
  %30 = tail call i64 @spec_mem_lseek(ptr noundef %0, i32 noundef %1, i32 noundef %6, i64 noundef %29, i32 noundef 0)
  br label %35

31:                                               ; preds = %23
  %32 = tail call i32 @spec_mem_reset(ptr noundef %0, i32 noundef %1, i32 noundef %6)
  br label %35

33:                                               ; preds = %19
  %34 = tail call i32 @spec_mem_rewind(ptr noundef %0, i32 noundef %1, i32 noundef %6)
  br label %35

35:                                               ; preds = %31, %27, %33, %19, %10
  %36 = phi i32 [ -1, %10 ], [ %6, %19 ], [ %6, %33 ], [ %6, %27 ], [ %6, %31 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind uwtable
define dso_local i32 @spec_mem_open(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 !prof !95 {
  %5 = tail call i64 @strtol(ptr nocapture noundef %2, ptr noundef null, i32 noundef 10) #22
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, -1
  %8 = icmp ult i32 %6, %1
  %9 = and i1 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call ptr @__errno_location() #23
  store i32 2, ptr %11, align 4, !tbaa !58
  br label %40

12:                                               ; preds = %4
  %13 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %14 = icmp sgt i32 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %6)
  %17 = load ptr, ptr @stdout, align 8, !tbaa !63
  %18 = tail call i32 @fflush(ptr noundef %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = and i64 %5, 4294967295
  %21 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 3
  store i32 1, ptr %21, align 8, !tbaa !69
  %22 = and i32 %3, 3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = and i32 %3, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @spec_mem_reset(ptr noundef %0, i32 noundef %1, i32 noundef %6)
  br label %29

29:                                               ; preds = %27, %24
  %30 = and i32 %3, 1024
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !88
  %35 = tail call i64 @spec_mem_lseek(ptr noundef %0, i32 noundef %1, i32 noundef %6, i64 noundef %34, i32 noundef 0)
  br label %40

36:                                               ; preds = %29
  %37 = tail call i32 @spec_mem_rewind(ptr noundef %0, i32 noundef %1, i32 noundef %6)
  br label %40

38:                                               ; preds = %19
  %39 = tail call i32 @spec_mem_rewind(ptr noundef %0, i32 noundef %1, i32 noundef %6)
  br label %40

40:                                               ; preds = %38, %36, %32, %10
  %41 = phi i32 [ -1, %10 ], [ %6, %32 ], [ %6, %36 ], [ %6, %38 ]
  ret i32 %41
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @spec_mem_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 !prof !95 {
  %6 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %7 = icmp sgt i32 %6, 5
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4)
  %10 = load ptr, ptr @stdout, align 8, !tbaa !63
  %11 = tail call i32 @fflush(ptr noundef %10)
  br label %12

12:                                               ; preds = %8, %5
  %13 = icmp sgt i32 %2, -1
  %14 = icmp ult i32 %2, %1
  %15 = and i1 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !63
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.56, i32 noundef %2, ptr noundef %0, i32 noundef %1) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

19:                                               ; preds = %12
  %20 = zext nneg i32 %2 to i64
  %21 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20
  %22 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !69
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !88
  %28 = add nsw i64 %27, %4
  %29 = load i64, ptr %21, align 8, !tbaa !66
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %35, label %40

31:                                               ; preds = %19
  %32 = load ptr, ptr @stderr, align 8, !tbaa !63
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.57, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #19
  %34 = tail call ptr @__errno_location() #23
  store i32 9, ptr %34, align 4, !tbaa !58
  br label %60

35:                                               ; preds = %25, %35
  tail call fastcc void @fd_grow(ptr noundef %0, i32 noundef %2, ptr noundef nonnull @.str.58)
  %36 = load i64, ptr %26, align 8, !tbaa !88
  %37 = add nsw i64 %36, %4
  %38 = load i64, ptr %21, align 8, !tbaa !66
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %35, label %40, !llvm.loop !109

40:                                               ; preds = %35, %25
  %41 = phi i64 [ %27, %25 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !71
  %44 = getelementptr inbounds i8, ptr %43, i64 %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %3, i64 %4, i1 false)
  %45 = load i64, ptr %26, align 8, !tbaa !88
  %46 = add nsw i64 %45, %4
  store i64 %46, ptr %26, align 8, !tbaa !88
  %47 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !82
  %49 = icmp sgt i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i64 %46, ptr %47, align 8, !tbaa !82
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %53 = icmp sgt i32 %52, 5
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i64, ptr %47, align 8, !tbaa !82
  %56 = load i64, ptr %21, align 8, !tbaa !66
  %57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i64 noundef %4, i64 noundef %55, i64 noundef %46, i64 noundef %56)
  %58 = load ptr, ptr @stdout, align 8, !tbaa !63
  %59 = tail call i32 @fflush(ptr noundef %58)
  br label %60

60:                                               ; preds = %51, %54, %31
  %61 = phi i64 [ -1, %31 ], [ %4, %54 ], [ %4, %51 ]
  ret i64 %61
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @spec_mem_fwrite(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !110 {
  %7 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %8 = icmp sgt i32 %7, 5
  br i1 %8, label %9, label %13, !prof !111

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5)
  %11 = load ptr, ptr @stdout, align 8, !tbaa !63
  %12 = tail call i32 @fflush(ptr noundef %11)
  br label %13

13:                                               ; preds = %9, %6
  %14 = icmp sgt i32 %5, -1
  %15 = icmp ult i32 %5, %1
  %16 = and i1 %14, %15
  br i1 %16, label %20, label %17, !prof !112

17:                                               ; preds = %13
  %18 = load ptr, ptr @stderr, align 8, !tbaa !63
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.61, i32 noundef %5, ptr noundef %0, i32 noundef %1) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

20:                                               ; preds = %13
  %21 = zext nneg i32 %5 to i64
  %22 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21
  %23 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !69
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %34, !prof !112

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 2
  %28 = sext i32 %4 to i64
  %29 = mul nsw i64 %28, %3
  %30 = load i64, ptr %27, align 8, !tbaa !88
  %31 = add nsw i64 %30, %29
  %32 = load i64, ptr %22, align 8, !tbaa !66
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %37, label %42, !prof !62

34:                                               ; preds = %20
  %35 = load ptr, ptr @stderr, align 8, !tbaa !63
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.62, i32 noundef %5, ptr noundef %0) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

37:                                               ; preds = %26, %37
  tail call fastcc void @fd_grow(ptr noundef %0, i32 noundef %5, ptr noundef nonnull @.str.63)
  %38 = load i64, ptr %27, align 8, !tbaa !88
  %39 = add nsw i64 %38, %29
  %40 = load i64, ptr %22, align 8, !tbaa !66
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %37, label %42, !prof !62, !llvm.loop !113

42:                                               ; preds = %37, %26
  %43 = phi i64 [ %30, %26 ], [ %38, %37 ]
  %44 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = getelementptr inbounds i8, ptr %45, i64 %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 %2, i64 %29, i1 false), !prof !114
  %47 = load i64, ptr %27, align 8, !tbaa !88
  %48 = add nsw i64 %47, %29
  store i64 %48, ptr %27, align 8, !tbaa !88
  %49 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !82
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %53, !prof !112

52:                                               ; preds = %42
  store i64 %48, ptr %49, align 8, !tbaa !82
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %55 = icmp sgt i32 %54, 5
  br i1 %55, label %56, label %62, !prof !111

56:                                               ; preds = %53
  %57 = load i64, ptr %49, align 8, !tbaa !82
  %58 = load i64, ptr %22, align 8, !tbaa !66
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %4, i64 noundef %57, i64 noundef %48, i64 noundef %58)
  %60 = load ptr, ptr @stdout, align 8, !tbaa !63
  %61 = tail call i32 @fflush(ptr noundef %60)
  br label %62

62:                                               ; preds = %56, %53
  ret i64 %28
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @spec_mem_putc(ptr noundef %0, i32 noundef %1, i32 noundef returned %2, i32 noundef %3) local_unnamed_addr #6 !prof !95 {
  %5 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %6 = icmp sgt i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %9 = load ptr, ptr @stdout, align 8, !tbaa !63
  %10 = tail call i32 @fflush(ptr noundef %9)
  br label %11

11:                                               ; preds = %7, %4
  %12 = icmp sgt i32 %3, -1
  %13 = icmp ult i32 %3, %1
  %14 = and i1 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @stderr, align 8, !tbaa !63
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.66, i32 noundef %3, ptr noundef %0, i32 noundef %1) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

18:                                               ; preds = %11
  %19 = zext nneg i32 %3 to i64
  %20 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %19, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !69
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @stderr, align 8, !tbaa !63
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.67, i32 noundef %3, ptr noundef %0) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

26:                                               ; preds = %18
  %27 = trunc i32 %2 to i8
  %28 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %19, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !71
  %30 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %19, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !88
  %32 = add nsw i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !88
  %33 = getelementptr inbounds i8, ptr %29, i64 %31
  store i8 %27, ptr %33, align 1, !tbaa !73
  %34 = load i64, ptr %30, align 8, !tbaa !88
  %35 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %19, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !82
  %37 = icmp sgt i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i64 %34, ptr %35, align 8, !tbaa !82
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %41 = icmp sgt i32 %40, 4
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %2)
  %44 = load ptr, ptr @stdout, align 8, !tbaa !63
  %45 = tail call i32 @fflush(ptr noundef %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %48 = icmp sgt i32 %47, 5
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i64, ptr %30, align 8, !tbaa !88
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %3, ptr noundef %0, i64 noundef %50)
  %52 = load ptr, ptr @stdout, align 8, !tbaa !63
  %53 = tail call i32 @fflush(ptr noundef %52)
  br label %54

54:                                               ; preds = %49, %46
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spec_mem_feof(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !115 {
  %4 = icmp sgt i32 %2, -1
  %5 = icmp ult i32 %2, %1
  %6 = and i1 %4, %5
  br i1 %6, label %10, label %7, !prof !116

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !63
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.70, i32 noundef %2, ptr noundef %0, i32 noundef %1) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

10:                                               ; preds = %3
  %11 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %12 = icmp sgt i32 %11, 4
  br i1 %12, label %13, label %26, !prof !117

13:                                               ; preds = %10
  %14 = zext nneg i32 %2 to i64
  %15 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %14
  %16 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %14, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !88
  %18 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %14, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !82
  %20 = icmp sge i64 %17, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, ptr %15, align 8, !tbaa !66
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %21, i64 noundef %19, i64 noundef %17, i64 noundef %22)
  %24 = load ptr, ptr @stdout, align 8, !tbaa !63
  %25 = tail call i32 @fflush(ptr noundef %24)
  br label %26

26:                                               ; preds = %13, %10
  %27 = zext nneg i32 %2 to i64
  %28 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %27, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !88
  %30 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %27, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !82
  %32 = icmp sge i64 %29, %31
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @spec_mem_close(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 !prof !95 {
  %4 = icmp sgt i32 %2, -1
  %5 = icmp ult i32 %2, %1
  %6 = and i1 %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !63
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.72, i32 noundef %2, ptr noundef %0, i32 noundef %1) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

10:                                               ; preds = %3
  %11 = zext nneg i32 %2 to i64
  %12 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %11, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !69
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @stderr, align 8, !tbaa !63
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.73, ptr noundef %0, i32 noundef %1, i32 noundef %2) #19
  %18 = tail call ptr @__errno_location() #23
  store i32 9, ptr %18, align 4, !tbaa !58
  br label %20

19:                                               ; preds = %10
  store i32 0, ptr %12, align 8, !tbaa !69
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ -1, %15 ], [ 0, %19 ]
  ret i32 %21
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @spec_empty(i32 noundef %0) local_unnamed_addr #14 !prof !95 {
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @spec_initbufs() local_unnamed_addr #14 !prof !57 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @spec_compress(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 !prof !57 {
  %4 = load ptr, ptr @spec_fd, align 8, !tbaa !63
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.spec_fd_t, ptr %4, i64 %5, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.spec_fd_t, ptr %4, i64 %8, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !69
  store i32 1, ptr %9, align 8, !tbaa !69
  store i32 1, ptr %6, align 8, !tbaa !69
  tail call void @compressStream(i32 noundef %0, i32 noundef %1, i32 noundef %2) #22
  %11 = load ptr, ptr @spec_fd, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.spec_fd_t, ptr %11, i64 %5, i32 3
  store i32 %7, ptr %12, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.spec_fd_t, ptr %11, i64 %8, i32 3
  store i32 %10, ptr %13, align 8, !tbaa !69
  ret void
}

declare void @compressStream(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @uncompressStream(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @debug_time() local_unnamed_addr #14 !prof !118 {
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @sum_str_to_hex(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 !prof !57 {
  %3 = sext i32 %1 to i64
  %4 = lshr i64 %3, 3
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !62

7:                                                ; preds = %2
  %8 = icmp sgt i32 %1, 7
  br i1 %8, label %9, label %55, !prof !89

9:                                                ; preds = %7
  %10 = lshr i32 %1, 3
  %11 = zext nneg i32 %10 to i64
  br label %16

12:                                               ; preds = %2
  %13 = load ptr, ptr @stderr, align 8, !tbaa !63
  %14 = sdiv i32 %1, 8
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.75, i32 noundef %14) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

16:                                               ; preds = %9, %49
  %17 = phi i64 [ 0, %9 ], [ %53, %49 ]
  %18 = shl nuw nsw i64 %17, 1
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !73
  %21 = icmp sgt i8 %20, 57
  br i1 %21, label %22, label %30, !prof !119

22:                                               ; preds = %16
  %23 = tail call ptr @__ctype_tolower_loc() #23
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = zext nneg i8 %20 to i64
  %26 = getelementptr inbounds i32, ptr %24, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !58
  %28 = trunc i32 %27 to i8
  %29 = add i8 %28, -87
  br label %32

30:                                               ; preds = %16
  %31 = add i8 %20, -48
  br label %32

32:                                               ; preds = %22, %30
  %33 = phi i8 [ %29, %22 ], [ %31, %30 ]
  %34 = shl i8 %33, 4
  %35 = or disjoint i64 %18, 1
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !73
  %38 = icmp sgt i8 %37, 57
  br i1 %38, label %39, label %47, !prof !120

39:                                               ; preds = %32
  %40 = tail call ptr @__ctype_tolower_loc() #23
  %41 = load ptr, ptr %40, align 8, !tbaa !63
  %42 = zext nneg i8 %37 to i64
  %43 = getelementptr inbounds i32, ptr %41, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !58
  %45 = trunc i32 %44 to i8
  %46 = add i8 %45, -87
  br label %49

47:                                               ; preds = %32
  %48 = add i8 %37, -48
  br label %49

49:                                               ; preds = %39, %47
  %50 = phi i8 [ %46, %39 ], [ %48, %47 ]
  %51 = or i8 %50, %34
  %52 = getelementptr inbounds i8, ptr %5, i64 %17
  store i8 %51, ptr %52, align 1, !tbaa !73
  %53 = add nuw nsw i64 %17, 1
  %54 = icmp eq i64 %53, %11
  br i1 %54, label %55, label %16, !prof !93, !llvm.loop !121

55:                                               ; preds = %49, %7
  ret ptr %5
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef ptr @spec_mem_alloc_fds(i32 noundef %0) local_unnamed_addr #11 !prof !57 {
  %2 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %3 = icmp sgt i32 %2, 3
  br i1 %3, label %4, label %10, !prof !62

4:                                                ; preds = %1
  %5 = icmp eq i32 %0, 3
  %6 = select i1 %5, ptr @.str.78, ptr @.str.79
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, ptr noundef nonnull %6)
  %8 = load ptr, ptr @stdout, align 8, !tbaa !63
  %9 = tail call i32 @fflush(ptr noundef %8)
  br label %10

10:                                               ; preds = %4, %1
  %11 = add i32 %0, 1
  %12 = zext i32 %11 to i64
  %13 = mul nuw nsw i64 %12, 40
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19, !prof !62

16:                                               ; preds = %10
  %17 = load ptr, ptr @stderr, align 8, !tbaa !63
  %18 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 52, i64 1, ptr %17) #19
  br label %26

19:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %14, i8 0, i64 %13, i1 false), !prof !122
  %20 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %21 = icmp sgt i32 %20, 4
  br i1 %21, label %22, label %26, !prof !62

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %0, ptr noundef nonnull %14)
  %24 = load ptr, ptr @stdout, align 8, !tbaa !63
  %25 = tail call i32 @fflush(ptr noundef %24)
  br label %26

26:                                               ; preds = %19, %22, %16
  %27 = phi ptr [ null, %16 ], [ %14, %22 ], [ %14, %19 ]
  ret ptr %27
}

; Function Attrs: cold nounwind uwtable
define dso_local void @spec_mem_free_fds(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 !prof !95 {
  %3 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %4 = icmp sgt i32 %3, 3
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load ptr, ptr @spec_fd, align 8, !tbaa !63
  %7 = icmp eq ptr %6, %0
  %8 = select i1 %7, ptr @.str.83, ptr @.str.79
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %8)
  %10 = load ptr, ptr @stdout, align 8, !tbaa !63
  %11 = tail call i32 @fflush(ptr noundef %10)
  br label %12

12:                                               ; preds = %5, %2
  %13 = load i32, ptr @dbglvl, align 4, !tbaa !58
  %14 = icmp sgt i32 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef %0, i32 noundef %1)
  %17 = load ptr, ptr @stdout, align 8, !tbaa !63
  %18 = tail call i32 @fflush(ptr noundef %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = icmp ne ptr %0, null
  %21 = icmp ne i32 %1, 0
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = zext i32 %1 to i64
  br label %25

25:                                               ; preds = %23, %31
  %26 = phi i64 [ 0, %23 ], [ %32, %31 ]
  %27 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %26, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !71
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @free(ptr noundef %28) #22
  store ptr null, ptr %27, align 8, !tbaa !71
  br label %31

31:                                               ; preds = %25, %30
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %24
  br i1 %33, label %34, label %25, !llvm.loop !123

34:                                               ; preds = %31, %19
  tail call void @free(ptr noundef %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!56}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!35 = !{ptr @spec_mem_init, ptr @malloc, i64 3}
!36 = !{ptr @spec_mem_sum, ptr @sha_init, i64 3}
!37 = !{ptr @spec_mem_sum, ptr @sha_process, i64 3}
!38 = !{ptr @spec_mem_sum, ptr @sha_done, i64 3}
!39 = !{ptr @spec_mem_load, ptr @malloc, i64 1}
!40 = !{ptr @spec_mem_load, ptr @open, i64 1}
!41 = !{ptr @spec_mem_load, ptr @read, i64 1}
!42 = !{ptr @spec_mem_load, ptr @close, i64 1}
!43 = !{ptr @spec_mem_load, ptr @uncompressStream, i64 1}
!44 = !{ptr @spec_mem_load, ptr @printf, i64 3}
!45 = !{ptr @spec_mem_load, ptr @fflush, i64 2}
!46 = !{ptr @spec_mem_load, ptr @spec_mem_sum, i64 2}
!47 = !{ptr @spec_mem_load, ptr @compare_sum, i64 1}
!48 = !{ptr @spec_mem_load, ptr @fprintf, i64 64}
!49 = !{ptr @spec_mem_load, ptr @putchar, i64 1}
!50 = !{ptr @spec_uncompress, ptr @uncompressStream, i64 1}
!51 = !{ptr @spec_mem_rewind, ptr @spec_mem_lseek, i64 2}
!52 = !{ptr @spec_compress, ptr @compressStream, i64 1}
!53 = !{ptr @sum_str_to_hex, ptr @malloc, i64 1}
!54 = !{ptr @sum_str_to_hex, ptr @__ctype_tolower_loc, i64 47}
!55 = !{ptr @spec_mem_alloc_fds, ptr @malloc, i64 1}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!59, !59, i64 0}
!59 = !{!"int", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !{!"branch_weights", i32 0, i32 1}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !60, i64 0}
!65 = !{!"branch_weights", i32 1, i32 127}
!66 = !{!67, !68, i64 0}
!67 = !{!"", !68, i64 0, !68, i64 8, !68, i64 16, !59, i64 24, !64, i64 32}
!68 = !{!"long", !60, i64 0}
!69 = !{!67, !59, i64 24}
!70 = !{!"branch_weights", i32 0, i32 3}
!71 = !{!67, !64, i64 32}
!72 = !{!"branch_weights", i32 573, i32 3}
!73 = !{!60, !60, i64 0}
!74 = !{!"branch_weights", i32 33292097, i32 191}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{!"branch_weights", i32 127, i32 257}
!79 = distinct !{!79, !76, !77}
!80 = !{!"function_entry_count", i64 3}
!81 = !{!"branch_weights", i32 3, i32 0}
!82 = !{!67, !68, i64 8}
!83 = !{!"branch_weights", i32 191, i32 1}
!84 = !{!"branch_weights", i32 1, i32 191}
!85 = distinct !{!85, !76, !77}
!86 = !{!"branch_weights", i32 1, i32 0}
!87 = distinct !{!87, !76, !77}
!88 = !{!67, !68, i64 16}
!89 = !{!"branch_weights", i32 127, i32 1}
!90 = !{!"VP", i32 1, i64 3, i64 513, i64 3}
!91 = !{!"branch_weights", i32 257, i32 127}
!92 = distinct !{!92, !76, !77}
!93 = !{!"branch_weights", i32 127, i32 8065}
!94 = distinct !{!94, !76, !77}
!95 = !{!"function_entry_count", i64 0}
!96 = !{!"function_entry_count", i64 2}
!97 = !{!"branch_weights", i32 0, i32 2}
!98 = !{!"branch_weights", i32 128, i32 0}
!99 = distinct !{!99, !76, !77}
!100 = !{!"function_entry_count", i64 37990}
!101 = !{!"branch_weights", i32 0, i32 37990}
!102 = !{!"branch_weights", i32 37990, i32 0}
!103 = !{!"branch_weights", i32 37987, i32 3}
!104 = !{!"VP", i32 1, i64 37990, i64 513, i64 37990}
!105 = !{!"branch_weights", i32 2, i32 0}
!106 = !{!"branch_weights", i32 0, i32 2, i32 0, i32 0}
!107 = !{!68, !68, i64 0}
!108 = !{!"VP", i32 1, i64 2, i64 513, i64 2}
!109 = distinct !{!109, !76, !77}
!110 = !{!"function_entry_count", i64 43547}
!111 = !{!"branch_weights", i32 0, i32 43547}
!112 = !{!"branch_weights", i32 43547, i32 0}
!113 = distinct !{!113, !76, !77}
!114 = !{!"VP", i32 1, i64 43547, i64 513, i64 43547}
!115 = !{!"function_entry_count", i64 75987}
!116 = !{!"branch_weights", i32 75987, i32 0}
!117 = !{!"branch_weights", i32 0, i32 75987}
!118 = !{!"function_entry_count", i64 6}
!119 = !{!"branch_weights", i32 26, i32 38}
!120 = !{!"branch_weights", i32 21, i32 43}
!121 = distinct !{!121, !76, !77}
!122 = !{!"VP", i32 1, i64 1, i64 129, i64 1}
!123 = distinct !{!123, !76, !77}
