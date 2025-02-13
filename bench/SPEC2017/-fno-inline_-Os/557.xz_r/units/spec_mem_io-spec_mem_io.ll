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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @spec_mem_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !70 {
  %4 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %5 = icmp sgt i32 %4, 4
  br i1 %5, label %6, label %13, !prof !75

6:                                                ; preds = %3
  %7 = load ptr, ptr @spec_fd, align 8, !tbaa !76
  %8 = icmp eq ptr %7, %0
  %9 = select i1 %8, ptr null, ptr %0
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %9, i32 noundef %1, i32 noundef %2) #20
  %11 = load ptr, ptr @stdout, align 8, !tbaa !76
  %12 = tail call i32 @fflush(ptr noundef %11) #20
  br label %13

13:                                               ; preds = %6, %3
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %55, label %15, !prof !78

15:                                               ; preds = %13, %52
  %16 = phi i32 [ %53, %52 ], [ 0, %13 ]
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !79
  %20 = getelementptr inbounds i8, ptr %18, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %20, i8 0, i64 32, i1 false)
  store i64 %19, ptr %18, align 8, !tbaa !79
  %21 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %17, i32 3
  store i32 0, ptr %21, align 8, !tbaa !82
  %22 = icmp slt i64 %19, 0
  br i1 %22, label %23, label %27, !prof !83

23:                                               ; preds = %15
  %24 = load ptr, ptr @stderr, align 8, !tbaa !76
  %25 = add nsw i64 %19, 1048576
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.1, i64 noundef %25, i32 noundef %16) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

27:                                               ; preds = %15
  %28 = add nuw nsw i64 %19, 1048576
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #23
  %30 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %17, i32 4
  store ptr %29, ptr %30, align 8, !tbaa !84
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %35, !prof !83

32:                                               ; preds = %27
  %33 = load ptr, ptr @stderr, align 8, !tbaa !76
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.2, i64 noundef %28, i32 noundef %16, ptr noundef nonnull %0) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

35:                                               ; preds = %27
  %36 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %38, label %42, !prof !83

38:                                               ; preds = %35
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %16, i64 noundef %19, i64 noundef %28) #20
  %40 = load ptr, ptr @stdout, align 8, !tbaa !76
  %41 = tail call i32 @fflush(ptr noundef %40) #20
  br label %42

42:                                               ; preds = %38, %35
  %43 = icmp ne i32 %2, 0
  %44 = icmp ne i64 %19, 0
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %52, !prof !85

46:                                               ; preds = %42, %46
  %47 = phi i64 [ %50, %46 ], [ 0, %42 ]
  %48 = load ptr, ptr %30, align 8, !tbaa !84
  %49 = getelementptr inbounds i8, ptr %48, i64 %47
  store i8 0, ptr %49, align 1, !tbaa !86
  %50 = add nuw nsw i64 %47, 1024
  %51 = icmp slt i64 %50, %19
  br i1 %51, label %46, label %52, !prof !87, !llvm.loop !88

52:                                               ; preds = %46, %42
  %53 = add nuw i32 %16, 1
  %54 = icmp eq i32 %53, %1
  br i1 %54, label %55, label %15, !prof !90, !llvm.loop !91

55:                                               ; preds = %52, %13
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @spec_mem_sum(ptr nocapture noundef readonly %0, ptr noundef returned %1, i32 noundef %2) local_unnamed_addr #0 !prof !92 {
  %4 = alloca %struct.sha512_state, align 8
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %4) #24
  %5 = icmp eq i32 %2, 512
  br i1 %5, label %9, label %6, !prof !93

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !76
  %8 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 40, i64 1, ptr %7) #25
  tail call void @exit(i32 noundef 1) #22
  unreachable

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, null
  br i1 %10, label %30, label %11, !prof !83

11:                                               ; preds = %9
  call void @sha_init(ptr noundef nonnull %4) #26
  %12 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !94
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %29, !prof !95

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 0, i32 4
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ %13, %15 ], [ %27, %17 ]
  %19 = phi i64 [ 2147483647, %15 ], [ %22, %17 ]
  %20 = phi i64 [ 0, %15 ], [ %26, %17 ]
  %21 = sub nsw i64 %18, %20
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %19)
  %23 = load ptr, ptr %16, align 8, !tbaa !84
  %24 = getelementptr inbounds i8, ptr %23, i64 %20
  %25 = trunc i64 %22 to i32
  call void @sha_process(ptr noundef nonnull %4, ptr noundef %24, i32 noundef %25) #26
  %26 = add nsw i64 %22, %20
  %27 = load i64, ptr %12, align 8, !tbaa !94
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %17, label %29, !prof !78, !llvm.loop !96

29:                                               ; preds = %17, %11
  call void @sha_done(ptr noundef nonnull %4, ptr noundef nonnull %1) #26
  br label %30

30:                                               ; preds = %29, %9
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %4) #24
  ret ptr %1
}

; Function Attrs: optsize
declare void @sha_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @sha_process(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @sha_done(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @spec_mem_load(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 !prof !70 {
  %9 = sext i32 %7 to i64
  %10 = lshr i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17, !prof !75

13:                                               ; preds = %8
  %14 = load ptr, ptr @stderr, align 8, !tbaa !76
  %15 = sdiv i32 %7, 8
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.5, i32 noundef %15, i32 noundef %7) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

17:                                               ; preds = %8
  %18 = icmp sgt i32 %5, -1
  %19 = icmp ult i32 %5, %1
  %20 = and i1 %18, %19
  br i1 %20, label %24, label %21, !prof !97

21:                                               ; preds = %17
  %22 = load ptr, ptr @stderr, align 8, !tbaa !76
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.6, i32 noundef %5, ptr noundef %0, i32 noundef %1) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

24:                                               ; preds = %17
  %25 = icmp sgt i32 %2, -1
  %26 = icmp ult i32 %2, %1
  %27 = and i1 %25, %26
  br i1 %27, label %31, label %28, !prof !97

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !tbaa !76
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.7, i32 noundef %2, ptr noundef %0, i32 noundef %1) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

31:                                               ; preds = %24
  %32 = tail call i32 (ptr, i32, ...) @open(ptr noundef %3, i32 noundef 0) #26
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40, !prof !75

34:                                               ; preds = %31
  %35 = load ptr, ptr @stderr, align 8, !tbaa !76
  %36 = tail call ptr @__errno_location() #27
  %37 = load i32, ptr %36, align 4, !tbaa !71
  %38 = tail call ptr @strerror(i32 noundef %37) #26
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.8, ptr noundef %3, ptr noundef %38) #21
  tail call void @exit(i32 noundef 0) #22
  unreachable

40:                                               ; preds = %31
  %41 = zext nneg i32 %5 to i64
  %42 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %41
  %43 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %41, i32 1
  %44 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %41, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %43, i8 0, i64 20, i1 false)
  %45 = load ptr, ptr %44, align 8, !tbaa !84
  %46 = tail call i64 @read(i32 noundef %32, ptr noundef %45, i64 noundef 266338304) #26
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %65, !prof !95

48:                                               ; preds = %40, %59
  %49 = phi i64 [ %63, %59 ], [ %46, %40 ]
  %50 = load i64, ptr %43, align 8, !tbaa !94
  %51 = add nsw i64 %50, %49
  store i64 %51, ptr %43, align 8, !tbaa !94
  %52 = icmp ult i64 %49, 266338304
  br i1 %52, label %74, label %53, !prof !98

53:                                               ; preds = %48
  %54 = add nsw i64 %51, 266338304
  %55 = load i64, ptr %42, align 8, !tbaa !79
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  tail call fastcc void @fd_grow(ptr noundef nonnull %0, i32 noundef %5, ptr noundef nonnull @.str.9) #20
  %58 = load i64, ptr %43, align 8, !tbaa !94
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i64 [ %58, %57 ], [ %51, %53 ]
  %61 = load ptr, ptr %44, align 8, !tbaa !84
  %62 = getelementptr inbounds i8, ptr %61, i64 %60
  %63 = tail call i64 @read(i32 noundef %32, ptr noundef %62, i64 noundef 266338304) #26
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %48, label %65, !prof !99, !llvm.loop !100

65:                                               ; preds = %59, %40
  %66 = phi i64 [ %46, %40 ], [ %63, %59 ]
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %74, !prof !101

68:                                               ; preds = %65
  %69 = load ptr, ptr @stderr, align 8, !tbaa !76
  %70 = tail call ptr @__errno_location() #27
  %71 = load i32, ptr %70, align 4, !tbaa !71
  %72 = tail call ptr @strerror(i32 noundef %71) #26
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.10, ptr noundef %3, ptr noundef %72) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

74:                                               ; preds = %48, %65
  %75 = tail call i32 @close(i32 noundef %32) #26
  %76 = zext nneg i32 %2 to i64
  %77 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %76
  %78 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %76, i32 1
  %79 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %76, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, i8 0, i64 16, i1 false)
  tail call void @spec_uncompress(i32 noundef %5, i32 noundef %2) #20
  %80 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %88, !prof !98

82:                                               ; preds = %74
  %83 = load i64, ptr %43, align 8, !tbaa !94
  %84 = load i64, ptr %78, align 8, !tbaa !94
  %85 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i64 noundef %83, i64 noundef %84) #20
  %86 = load ptr, ptr @stdout, align 8, !tbaa !76
  %87 = tail call i32 @fflush(ptr noundef %86) #20
  br label %88

88:                                               ; preds = %82, %74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  %89 = tail call ptr @spec_mem_sum(ptr noundef nonnull %77, ptr noundef nonnull %11, i32 noundef %7) #20
  %90 = tail call i32 @compare_sum(ptr noundef %6, ptr noundef nonnull %11, i32 noundef %7) #20
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92, !prof !98

92:                                               ; preds = %88
  %93 = load ptr, ptr @stderr, align 8, !tbaa !76
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.12, i32 noundef %7) #21
  %95 = load ptr, ptr @stderr, align 8, !tbaa !76
  %96 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 13, i64 1, ptr %95) #25
  %97 = load ptr, ptr @stderr, align 8, !tbaa !76
  tail call void @print_sum(ptr noundef %97, ptr noundef nonnull %11, i32 noundef %7) #20
  %98 = load ptr, ptr @stderr, align 8, !tbaa !76
  %99 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 14, i64 1, ptr %98) #25
  %100 = load ptr, ptr @stderr, align 8, !tbaa !76
  tail call void @print_sum(ptr noundef %100, ptr noundef %6, i32 noundef %7) #20
  %101 = load ptr, ptr @stderr, align 8, !tbaa !76
  %102 = tail call i32 @fputc(i32 10, ptr %101)
  tail call void @exit(i32 noundef 1) #22
  unreachable

103:                                              ; preds = %88
  %104 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %110, !prof !98

106:                                              ; preds = %103
  %107 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %7) #20
  %108 = load ptr, ptr @stdout, align 8, !tbaa !76
  %109 = tail call i32 @fflush(ptr noundef %108) #20
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i64, ptr %78, align 8, !tbaa !94
  %112 = icmp sgt i64 %111, %4
  br i1 %112, label %113, label %121, !prof !75

113:                                              ; preds = %110
  %114 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i64 noundef %4) #20
  %118 = load ptr, ptr @stdout, align 8, !tbaa !76
  %119 = tail call i32 @fflush(ptr noundef %118) #20
  br label %120

120:                                              ; preds = %113, %116
  store i64 %4, ptr %78, align 8, !tbaa !94
  store i64 0, ptr %79, align 8, !tbaa !102
  br label %143

121:                                              ; preds = %110
  store i64 0, ptr %79, align 8, !tbaa !102
  %122 = icmp slt i64 %111, %4
  br i1 %122, label %123, label %143, !prof !103

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %76, i32 4
  br label %125

125:                                              ; preds = %123, %136
  %126 = phi i64 [ %111, %123 ], [ %141, %136 ]
  %127 = sub nsw i64 %4, %126
  %128 = tail call i64 @llvm.smin.i64(i64 %127, i64 %126)
  %129 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %130 = icmp sgt i32 %129, 3
  br i1 %130, label %131, label %136, !prof !83

131:                                              ; preds = %125
  %132 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %128) #20
  %133 = load ptr, ptr @stdout, align 8, !tbaa !76
  %134 = tail call i32 @fflush(ptr noundef %133) #20
  %135 = load i64, ptr %78, align 8, !tbaa !94
  br label %136

136:                                              ; preds = %131, %125
  %137 = phi i64 [ %135, %131 ], [ %126, %125 ]
  %138 = load ptr, ptr %124, align 8, !tbaa !84
  %139 = getelementptr inbounds i8, ptr %138, i64 %137
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %139, ptr align 1 %138, i64 %128, i1 false)
  %140 = load i64, ptr %78, align 8, !tbaa !94
  %141 = add nsw i64 %140, %128
  store i64 %141, ptr %78, align 8, !tbaa !94
  %142 = icmp slt i64 %141, %4
  br i1 %142, label %125, label %143, !prof !99, !llvm.loop !104

143:                                              ; preds = %136, %120, %121
  %144 = tail call ptr @spec_mem_sum(ptr noundef nonnull %77, ptr noundef nonnull %11, i32 noundef %7) #20
  %145 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %7) #20
  %146 = load ptr, ptr @stdout, align 8, !tbaa !76
  tail call void @print_sum(ptr noundef %146, ptr noundef nonnull %11, i32 noundef %7) #20
  %147 = tail call i32 @putchar(i32 10)
  ret ptr %11
}

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fd_grow(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !105 !PGOFuncName !106 {
  %4 = zext nneg i32 %1 to i64
  %5 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !79
  %7 = shl nsw i64 %6, 1
  store i64 %7, ptr %5, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %4, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = tail call ptr @realloc(ptr noundef %9, i64 noundef %7) #28
  store ptr %10, ptr %8, align 8, !tbaa !84
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !tbaa !76
  %14 = tail call ptr @__errno_location() #27
  %15 = load i32, ptr %14, align 4, !tbaa !71
  %16 = tail call ptr @strerror(i32 noundef %15) #26
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.85, ptr noundef %2, i32 noundef %1, ptr noundef nonnull %0, ptr noundef %16) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

18:                                               ; preds = %3
  %19 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %20 = icmp sgt i32 %19, 5
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, ptr %5, align 8, !tbaa !79
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef %1, ptr noundef nonnull %0, i64 noundef %22) #20
  %24 = load ptr, ptr @stdout, align 8, !tbaa !76
  %25 = tail call i32 @fflush(ptr noundef %24) #20
  br label %26

26:                                               ; preds = %21, %18
  ret void
}

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @spec_uncompress(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !107 {
  %3 = load ptr, ptr @spec_fd, align 8, !tbaa !76
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds %struct.spec_fd_t, ptr %3, i64 %4, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !82
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.spec_fd_t, ptr %3, i64 %7, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !82
  store i32 1, ptr %8, align 8, !tbaa !82
  store i32 1, ptr %5, align 8, !tbaa !82
  tail call void @uncompressStream(i32 noundef %0, i32 noundef %1) #26
  %10 = load ptr, ptr @spec_fd, align 8, !tbaa !76
  %11 = getelementptr inbounds %struct.spec_fd_t, ptr %10, i64 %4, i32 3
  store i32 %6, ptr %11, align 8, !tbaa !82
  %12 = getelementptr inbounds %struct.spec_fd_t, ptr %10, i64 %7, i32 3
  store i32 %9, ptr %12, align 8, !tbaa !82
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @compare_sum(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 !prof !107 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %34, label %7, !prof !108

7:                                                ; preds = %3
  %8 = icmp sgt i32 %2, 7
  br i1 %8, label %9, label %34, !prof !109

9:                                                ; preds = %7
  %10 = lshr i32 %2, 3
  %11 = zext nneg i32 %10 to i64
  br label %12

12:                                               ; preds = %9, %31
  %13 = phi i64 [ 0, %9 ], [ %32, %31 ]
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !86
  %16 = getelementptr inbounds i8, ptr %1, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !86
  %18 = icmp eq i8 %15, %17
  br i1 %18, label %31, label %19, !prof !110

19:                                               ; preds = %12
  %20 = getelementptr inbounds i8, ptr %0, i64 %13
  %21 = getelementptr inbounds i8, ptr %1, i64 %13
  %22 = trunc i64 %13 to i32
  %23 = zext i8 %17 to i32
  %24 = zext i8 %15 to i32
  %25 = load ptr, ptr @stderr, align 8, !tbaa !76
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.76, i32 noundef %22, i32 noundef %24, i32 noundef %23) #21
  %27 = load i8, ptr %20, align 1, !tbaa !86
  %28 = load i8, ptr %21, align 1, !tbaa !86
  %29 = icmp ult i8 %27, %28
  %30 = select i1 %29, i32 -1, i32 1
  br label %34

31:                                               ; preds = %12
  %32 = add nuw nsw i64 %13, 1
  %33 = icmp eq i64 %32, %11
  br i1 %33, label %34, label %12, !prof !111, !llvm.loop !112

34:                                               ; preds = %31, %7, %19, %3
  %35 = phi i32 [ -1, %3 ], [ %30, %19 ], [ 0, %7 ], [ 0, %31 ]
  ret i32 %35
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_sum(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 !prof !70 {
  %4 = icmp sgt i32 %2, 7
  br i1 %4, label %5, label %8, !prof !95

5:                                                ; preds = %3
  %6 = lshr i32 %2, 3
  %7 = zext nneg i32 %6 to i64
  br label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %5, %9
  %10 = phi i64 [ 0, %5 ], [ %15, %9 ]
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !86
  %13 = zext i8 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef %13) #20
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %8, label %9, !prof !113, !llvm.loop !114
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @spec_mem_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 !prof !105 {
  %6 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %7 = icmp sgt i32 %6, 5
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %2, ptr noundef %0, ptr noundef %3, i64 noundef %4) #20
  %10 = load ptr, ptr @stdout, align 8, !tbaa !76
  %11 = tail call i32 @fflush(ptr noundef %10) #20
  br label %12

12:                                               ; preds = %8, %5
  %13 = icmp sgt i32 %2, -1
  %14 = icmp ult i32 %2, %1
  %15 = and i1 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !76
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.21, i32 noundef %2, ptr noundef %0, i32 noundef %1) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

19:                                               ; preds = %12
  %20 = zext nneg i32 %2 to i64
  %21 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !82
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @stderr, align 8, !tbaa !76
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.22, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #21
  %27 = tail call ptr @__errno_location() #27
  store i32 9, ptr %27, align 4, !tbaa !71
  br label %67

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !102
  %31 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !94
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %36 = icmp sgt i32 %35, 4
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i64 noundef %30, i64 noundef %32) #20
  %39 = load ptr, ptr @stdout, align 8, !tbaa !76
  %40 = tail call i32 @fflush(ptr noundef %39) #20
  br label %67

41:                                               ; preds = %28
  %42 = add nsw i64 %30, %4
  %43 = icmp slt i64 %42, %32
  %44 = sub nsw i64 %32, %30
  %45 = select i1 %43, i64 %4, i64 %44
  %46 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !84
  %48 = getelementptr inbounds i8, ptr %47, i64 %30
  %49 = shl i64 %45, 32
  %50 = ashr exact i64 %49, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %48, i64 %50, i1 false)
  %51 = load i64, ptr %29, align 8, !tbaa !102
  %52 = add nsw i64 %51, %50
  store i64 %52, ptr %29, align 8, !tbaa !102
  %53 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %54 = icmp sgt i32 %53, 5
  br i1 %54, label %55, label %67

55:                                               ; preds = %41
  %56 = trunc i64 %45 to i32
  %57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %56) #20
  %58 = load ptr, ptr @stdout, align 8, !tbaa !76
  %59 = tail call i32 @fflush(ptr noundef %58) #20
  %60 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %61 = icmp sgt i32 %60, 5
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i64, ptr %29, align 8, !tbaa !102
  %64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %2, ptr noundef nonnull %0, i64 noundef %63) #20
  %65 = load ptr, ptr @stdout, align 8, !tbaa !76
  %66 = tail call i32 @fflush(ptr noundef %65) #20
  br label %67

67:                                               ; preds = %41, %55, %62, %34, %37, %24
  %68 = phi i64 [ -1, %24 ], [ 0, %37 ], [ 0, %34 ], [ %50, %62 ], [ %50, %55 ], [ %50, %41 ]
  ret i64 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @spec_mem_fread(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !115 {
  %7 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %8 = icmp sgt i32 %7, 5
  br i1 %8, label %9, label %13, !prof !116

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #20
  %11 = load ptr, ptr @stdout, align 8, !tbaa !76
  %12 = tail call i32 @fflush(ptr noundef %11) #20
  br label %13

13:                                               ; preds = %9, %6
  %14 = icmp sgt i32 %5, -1
  %15 = icmp ult i32 %5, %1
  %16 = and i1 %14, %15
  br i1 %16, label %20, label %17, !prof !117

17:                                               ; preds = %13
  %18 = load ptr, ptr @stderr, align 8, !tbaa !76
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.27, i32 noundef %5, ptr noundef %0, i32 noundef %1) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

20:                                               ; preds = %13
  %21 = zext nneg i32 %5 to i64
  %22 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !82
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %28, label %25, !prof !118

25:                                               ; preds = %20
  %26 = load ptr, ptr @stderr, align 8, !tbaa !76
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.28, i32 noundef %5, ptr noundef nonnull %0) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !102
  %31 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !94
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %39, label %34, !prof !118

34:                                               ; preds = %28
  %35 = load i32, ptr @dbglvl, align 4, !tbaa !71
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
  br i1 %43, label %48, label %44, !prof !119

44:                                               ; preds = %39
  %45 = sub nsw i64 %32, %30
  %46 = sdiv i64 %45, %3
  %47 = mul nsw i64 %46, %3
  br label %48

48:                                               ; preds = %39, %44
  %49 = phi i64 [ %41, %39 ], [ %47, %44 ]
  %50 = phi i64 [ %40, %39 ], [ %46, %44 ]
  %51 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !84
  %53 = getelementptr inbounds i8, ptr %52, i64 %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %53, i64 %50, i1 false)
  %54 = load i64, ptr %29, align 8, !tbaa !102
  %55 = add nsw i64 %54, %49
  store i64 %55, ptr %29, align 8, !tbaa !102
  %56 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %57 = icmp sgt i32 %56, 5
  br i1 %57, label %58, label %71, !prof !116

58:                                               ; preds = %48
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %49) #20
  %60 = load ptr, ptr @stdout, align 8, !tbaa !76
  %61 = tail call i32 @fflush(ptr noundef %60) #20
  %62 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %63 = icmp sgt i32 %62, 5
  br i1 %63, label %64, label %71, !prof !103

64:                                               ; preds = %58
  %65 = load i64, ptr %29, align 8, !tbaa !102
  %66 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %5, ptr noundef nonnull %0, i64 noundef %65) #20
  br label %67

67:                                               ; preds = %37, %64
  %68 = phi i64 [ %50, %64 ], [ 0, %37 ]
  %69 = load ptr, ptr @stdout, align 8, !tbaa !76
  %70 = tail call i32 @fflush(ptr noundef %69) #20
  br label %71

71:                                               ; preds = %67, %48, %58, %34
  %72 = phi i64 [ 0, %34 ], [ %50, %58 ], [ %50, %48 ], [ %68, %67 ]
  ret i64 %72
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @spec_mem_getc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !105 {
  %4 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %5 = icmp sgt i32 %4, 6
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %0, i32 noundef %1, i32 noundef %2) #20
  %8 = load ptr, ptr @stdout, align 8, !tbaa !76
  %9 = tail call i32 @fflush(ptr noundef %8) #20
  br label %10

10:                                               ; preds = %6, %3
  %11 = icmp sgt i32 %2, -1
  %12 = icmp ult i32 %2, %1
  %13 = and i1 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !tbaa !76
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.33, i32 noundef %2, ptr noundef %0, i32 noundef %1) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

17:                                               ; preds = %10
  %18 = zext nneg i32 %2 to i64
  %19 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %18, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !82
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr @stderr, align 8, !tbaa !76
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.34, i32 noundef %2, ptr noundef nonnull %0) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %18, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !102
  %28 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %18, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !94
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %33 = icmp sgt i32 %32, 6
  br i1 %33, label %34, label %60

34:                                               ; preds = %31
  %35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.87)
  br label %56

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %18, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !84
  %39 = add nsw i64 %27, 1
  store i64 %39, ptr %26, align 8, !tbaa !102
  %40 = getelementptr inbounds i8, ptr %38, i64 %27
  %41 = load i8, ptr %40, align 1, !tbaa !86
  %42 = zext i8 %41 to i32
  %43 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %44 = icmp sgt i32 %43, 6
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %42) #20
  %47 = load ptr, ptr @stdout, align 8, !tbaa !76
  %48 = tail call i32 @fflush(ptr noundef %47) #20
  %49 = load i32, ptr @dbglvl, align 4, !tbaa !71
  br label %50

50:                                               ; preds = %45, %36
  %51 = phi i32 [ %49, %45 ], [ %43, %36 ]
  %52 = icmp sgt i32 %51, 5
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i64, ptr %26, align 8, !tbaa !102
  %55 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %2, ptr noundef nonnull %0, i64 noundef %54) #20
  br label %56

56:                                               ; preds = %34, %53
  %57 = phi i32 [ %42, %53 ], [ -1, %34 ]
  %58 = load ptr, ptr @stdout, align 8, !tbaa !76
  %59 = tail call i32 @fflush(ptr noundef %58) #20
  br label %60

60:                                               ; preds = %56, %50, %31
  %61 = phi i32 [ -1, %31 ], [ %42, %50 ], [ %57, %56 ]
  ret i32 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @spec_mem_ungetc(ptr noundef %0, i32 noundef %1, i32 noundef returned %2, i32 noundef %3) local_unnamed_addr #0 !prof !105 {
  %5 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %6 = icmp sgt i32 %5, 6
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = and i32 %2, 255
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef %0, i32 noundef %1, i32 noundef %8, i32 noundef %3) #20
  %10 = load ptr, ptr @stdout, align 8, !tbaa !76
  %11 = tail call i32 @fflush(ptr noundef %10) #20
  br label %12

12:                                               ; preds = %7, %4
  %13 = icmp sgt i32 %3, -1
  %14 = icmp ult i32 %3, %1
  %15 = and i1 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !76
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.37, i32 noundef %3, ptr noundef %0, i32 noundef %1) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

19:                                               ; preds = %12
  %20 = zext nneg i32 %3 to i64
  %21 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !82
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @stderr, align 8, !tbaa !76
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.38, i32 noundef %3, ptr noundef nonnull %0) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !102
  %30 = icmp slt i64 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load ptr, ptr @stderr, align 8, !tbaa !76
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.39, i64 noundef %29) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !84
  %37 = add nsw i64 %29, -1
  store i64 %37, ptr %28, align 8, !tbaa !102
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !86
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, %2
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr @stderr, align 8, !tbaa !76
  %44 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 75, i64 1, ptr %43) #25
  tail call void @exit(i32 noundef 1) #22
  unreachable

45:                                               ; preds = %34
  %46 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %47 = icmp sgt i32 %46, 6
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef 0) #20
  %50 = load ptr, ptr @stdout, align 8, !tbaa !76
  %51 = tail call i32 @fflush(ptr noundef %50) #20
  %52 = load i32, ptr @dbglvl, align 4, !tbaa !71
  br label %53

53:                                               ; preds = %48, %45
  %54 = phi i32 [ %52, %48 ], [ %46, %45 ]
  %55 = icmp sgt i32 %54, 5
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, ptr %28, align 8, !tbaa !102
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %3, ptr noundef nonnull %0, i64 noundef %57) #20
  %59 = load ptr, ptr @stdout, align 8, !tbaa !76
  %60 = tail call i32 @fflush(ptr noundef %59) #20
  br label %61

61:                                               ; preds = %56, %53
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @spec_mem_lseek(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !107 {
  %6 = icmp sgt i32 %2, -1
  %7 = icmp ult i32 %2, %1
  %8 = and i1 %6, %7
  br i1 %8, label %12, label %9, !prof !120

9:                                                ; preds = %5
  %10 = load ptr, ptr @stderr, align 8, !tbaa !76
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.42, i32 noundef %2, ptr noundef %0, i32 noundef %1) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

12:                                               ; preds = %5
  %13 = zext nneg i32 %2 to i64
  %14 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %13, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !82
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %21, label %17, !prof !121

17:                                               ; preds = %12
  %18 = load ptr, ptr @stderr, align 8, !tbaa !76
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.43, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) #21
  %20 = tail call ptr @__errno_location() #27
  store i32 9, ptr %20, align 4, !tbaa !71
  br label %65

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %13, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !102
  %24 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %25 = icmp sgt i32 %24, 4
  br i1 %25, label %26, label %30, !prof !122

26:                                               ; preds = %21
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %23) #20
  %28 = load ptr, ptr @stdout, align 8, !tbaa !76
  %29 = tail call i32 @fflush(ptr noundef %28) #20
  br label %30

30:                                               ; preds = %26, %21
  switch i32 %4, label %33 [
    i32 0, label %47
    i32 1, label %43
    i32 2, label %31
  ], !prof !123

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %13, i32 1
  br label %43

33:                                               ; preds = %30
  %34 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i64, ptr %22, align 8, !tbaa !102
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i64 noundef %37) #20
  %39 = load ptr, ptr @stdout, align 8, !tbaa !76
  %40 = tail call i32 @fflush(ptr noundef %39) #20
  br label %41

41:                                               ; preds = %36, %33
  %42 = tail call ptr @__errno_location() #27
  store i32 22, ptr %42, align 4, !tbaa !71
  br label %65

43:                                               ; preds = %30, %31
  %44 = phi ptr [ %32, %31 ], [ %22, %30 ]
  %45 = load i64, ptr %44, align 8, !tbaa !124
  %46 = add nsw i64 %45, %3
  br label %47

47:                                               ; preds = %43, %30
  %48 = phi i64 [ %3, %30 ], [ %46, %43 ]
  store i64 %48, ptr %22, align 8, !tbaa !102
  %49 = icmp slt i64 %48, 0
  %50 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %51 = icmp sgt i32 %50, 4
  br i1 %49, label %52, label %59, !prof !122

52:                                               ; preds = %47
  br i1 %51, label %53, label %57

53:                                               ; preds = %52
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i64 noundef %23, i64 noundef %48) #20
  %55 = load ptr, ptr @stdout, align 8, !tbaa !76
  %56 = tail call i32 @fflush(ptr noundef %55) #20
  br label %57

57:                                               ; preds = %53, %52
  store i64 %23, ptr %22, align 8, !tbaa !102
  %58 = tail call ptr @__errno_location() #27
  store i32 22, ptr %58, align 4, !tbaa !71
  br label %65

59:                                               ; preds = %47
  br i1 %51, label %60, label %65, !prof !122

60:                                               ; preds = %59
  %61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i64 noundef %48) #20
  %62 = load ptr, ptr @stdout, align 8, !tbaa !76
  %63 = tail call i32 @fflush(ptr noundef %62) #20
  %64 = load i64, ptr %22, align 8, !tbaa !102
  br label %65

65:                                               ; preds = %59, %60, %57, %41, %17
  %66 = phi i64 [ -1, %17 ], [ -1, %57 ], [ -1, %41 ], [ %64, %60 ], [ %48, %59 ]
  ret i64 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @spec_mem_rewind(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !107 {
  %4 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %5 = icmp sgt i32 %4, 4
  br i1 %5, label %6, label %10, !prof !122

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef %0, i32 noundef %1, i32 noundef %2) #20
  %8 = load ptr, ptr @stdout, align 8, !tbaa !76
  %9 = tail call i32 @fflush(ptr noundef %8) #20
  br label %10

10:                                               ; preds = %6, %3
  %11 = tail call i64 @spec_mem_lseek(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef 0, i32 noundef 0) #20
  ret i32 0
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @spec_mem_reset(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !107 {
  %4 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %5 = icmp sgt i32 %4, 4
  br i1 %5, label %6, label %10, !prof !122

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef %0, i32 noundef %1, i32 noundef %2) #20
  %8 = load ptr, ptr @stdout, align 8, !tbaa !76
  %9 = tail call i32 @fflush(ptr noundef %8) #20
  br label %10

10:                                               ; preds = %6, %3
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %11, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %11, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr align 1 %13, i8 0, i64 %15, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %16 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %17 = icmp sgt i32 %16, 5
  br i1 %17, label %18, label %22, !prof !122

18:                                               ; preds = %10
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %2, ptr noundef nonnull %0, i64 noundef 0) #20
  %20 = load ptr, ptr @stdout, align 8, !tbaa !76
  %21 = tail call i32 @fflush(ptr noundef %20) #20
  br label %22

22:                                               ; preds = %18, %10
  ret i32 0
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i64 @spec_mem_get_length(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !105 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %4, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @stderr, align 8, !tbaa !76
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.51, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #21
  br label %23

11:                                               ; preds = %3
  %12 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %4, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !94
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i64 noundef %16) #20
  %18 = load ptr, ptr @stdout, align 8, !tbaa !76
  %19 = tail call i32 @fflush(ptr noundef %18) #20
  br label %20

20:                                               ; preds = %14, %11
  %21 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %4, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !94
  br label %23

23:                                               ; preds = %20, %8
  %24 = phi i64 [ -1, %8 ], [ %22, %20 ]
  ret i64 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @spec_mem_fopen(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !105 {
  %5 = tail call i64 @strtol(ptr nocapture noundef %2, ptr noundef null, i32 noundef 10) #26
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, -1
  %8 = icmp ult i32 %6, %1
  %9 = and i1 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call ptr @__errno_location() #27
  store i32 2, ptr %11, align 4, !tbaa !71
  br label %35

12:                                               ; preds = %4
  %13 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %14 = icmp sgt i32 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6) #20
  %17 = load ptr, ptr @stdout, align 8, !tbaa !76
  %18 = tail call i32 @fflush(ptr noundef %17) #20
  br label %19

19:                                               ; preds = %15, %12
  %20 = and i64 %5, 4294967295
  %21 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 3
  store i32 1, ptr %21, align 8, !tbaa !82
  %22 = load i8, ptr %3, align 1, !tbaa !86
  switch i8 %22, label %35 [
    i8 119, label %23
    i8 114, label %33
  ]

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %3, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !86
  %26 = icmp eq i8 %25, 43
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !102
  %30 = tail call i64 @spec_mem_lseek(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %6, i64 noundef %29, i32 noundef 0) #20
  br label %35

31:                                               ; preds = %23
  %32 = tail call i32 @spec_mem_reset(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %6) #20
  br label %35

33:                                               ; preds = %19
  %34 = tail call i32 @spec_mem_rewind(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %6) #20
  br label %35

35:                                               ; preds = %31, %27, %33, %19, %10
  %36 = phi i32 [ -1, %10 ], [ %6, %19 ], [ %6, %33 ], [ %6, %27 ], [ %6, %31 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @spec_mem_open(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !105 {
  %5 = tail call i64 @strtol(ptr nocapture noundef %2, ptr noundef null, i32 noundef 10) #26
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, -1
  %8 = icmp ult i32 %6, %1
  %9 = and i1 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call ptr @__errno_location() #27
  store i32 2, ptr %11, align 4, !tbaa !71
  br label %40

12:                                               ; preds = %4
  %13 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %14 = icmp sgt i32 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %6) #20
  %17 = load ptr, ptr @stdout, align 8, !tbaa !76
  %18 = tail call i32 @fflush(ptr noundef %17) #20
  br label %19

19:                                               ; preds = %15, %12
  %20 = and i64 %5, 4294967295
  %21 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 3
  store i32 1, ptr %21, align 8, !tbaa !82
  %22 = and i32 %3, 3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = and i32 %3, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @spec_mem_reset(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %6) #20
  br label %29

29:                                               ; preds = %27, %24
  %30 = and i32 %3, 1024
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !102
  %35 = tail call i64 @spec_mem_lseek(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %6, i64 noundef %34, i32 noundef 0) #20
  br label %40

36:                                               ; preds = %29
  %37 = tail call i32 @spec_mem_rewind(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %6) #20
  br label %40

38:                                               ; preds = %19
  %39 = tail call i32 @spec_mem_rewind(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %6) #20
  br label %40

40:                                               ; preds = %38, %36, %32, %10
  %41 = phi i32 [ -1, %10 ], [ %6, %32 ], [ %6, %36 ], [ %6, %38 ]
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @spec_mem_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 !prof !105 {
  %6 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %7 = icmp sgt i32 %6, 5
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #20
  %10 = load ptr, ptr @stdout, align 8, !tbaa !76
  %11 = tail call i32 @fflush(ptr noundef %10) #20
  br label %12

12:                                               ; preds = %8, %5
  %13 = icmp sgt i32 %2, -1
  %14 = icmp ult i32 %2, %1
  %15 = and i1 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !76
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.56, i32 noundef %2, ptr noundef %0, i32 noundef %1) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

19:                                               ; preds = %12
  %20 = zext nneg i32 %2 to i64
  %21 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20
  %22 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !82
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !102
  %28 = add nsw i64 %27, %4
  %29 = load i64, ptr %21, align 8, !tbaa !79
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %35, label %40

31:                                               ; preds = %19
  %32 = load ptr, ptr @stderr, align 8, !tbaa !76
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.57, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #21
  %34 = tail call ptr @__errno_location() #27
  store i32 9, ptr %34, align 4, !tbaa !71
  br label %60

35:                                               ; preds = %25, %35
  tail call fastcc void @fd_grow(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull @.str.58) #20
  %36 = load i64, ptr %26, align 8, !tbaa !102
  %37 = add nsw i64 %36, %4
  %38 = load i64, ptr %21, align 8, !tbaa !79
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %35, label %40, !llvm.loop !125

40:                                               ; preds = %35, %25
  %41 = phi i64 [ %27, %25 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !84
  %44 = getelementptr inbounds i8, ptr %43, i64 %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %3, i64 %4, i1 false)
  %45 = load i64, ptr %26, align 8, !tbaa !102
  %46 = add nsw i64 %45, %4
  store i64 %46, ptr %26, align 8, !tbaa !102
  %47 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %20, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !94
  %49 = icmp sgt i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i64 %46, ptr %47, align 8, !tbaa !94
  br label %51

51:                                               ; preds = %50, %40
  %52 = phi i64 [ %46, %50 ], [ %48, %40 ]
  %53 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %54 = icmp sgt i32 %53, 5
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i64, ptr %21, align 8, !tbaa !79
  %57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i64 noundef %4, i64 noundef %52, i64 noundef %46, i64 noundef %56) #20
  %58 = load ptr, ptr @stdout, align 8, !tbaa !76
  %59 = tail call i32 @fflush(ptr noundef %58) #20
  br label %60

60:                                               ; preds = %51, %55, %31
  %61 = phi i64 [ -1, %31 ], [ %4, %55 ], [ %4, %51 ]
  ret i64 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @spec_mem_fwrite(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !126 {
  %7 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %8 = icmp sgt i32 %7, 5
  br i1 %8, label %9, label %13, !prof !127

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #20
  %11 = load ptr, ptr @stdout, align 8, !tbaa !76
  %12 = tail call i32 @fflush(ptr noundef %11) #20
  br label %13

13:                                               ; preds = %9, %6
  %14 = icmp sgt i32 %5, -1
  %15 = icmp ult i32 %5, %1
  %16 = and i1 %14, %15
  br i1 %16, label %20, label %17, !prof !128

17:                                               ; preds = %13
  %18 = load ptr, ptr @stderr, align 8, !tbaa !76
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.61, i32 noundef %5, ptr noundef %0, i32 noundef %1) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

20:                                               ; preds = %13
  %21 = zext nneg i32 %5 to i64
  %22 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21
  %23 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !82
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %34, !prof !129

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 2
  %28 = sext i32 %4 to i64
  %29 = mul nsw i64 %28, %3
  %30 = load i64, ptr %27, align 8, !tbaa !102
  %31 = add nsw i64 %30, %29
  %32 = load i64, ptr %22, align 8, !tbaa !79
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %37, label %42, !prof !130

34:                                               ; preds = %20
  %35 = load ptr, ptr @stderr, align 8, !tbaa !76
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.62, i32 noundef %5, ptr noundef nonnull %0) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

37:                                               ; preds = %26, %37
  tail call fastcc void @fd_grow(ptr noundef nonnull %0, i32 noundef %5, ptr noundef nonnull @.str.63) #20
  %38 = load i64, ptr %27, align 8, !tbaa !102
  %39 = add nsw i64 %38, %29
  %40 = load i64, ptr %22, align 8, !tbaa !79
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %37, label %42, !prof !131, !llvm.loop !132

42:                                               ; preds = %37, %26
  %43 = phi i64 [ %30, %26 ], [ %38, %37 ]
  %44 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !84
  %46 = getelementptr inbounds i8, ptr %45, i64 %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 %2, i64 %29, i1 false)
  %47 = load i64, ptr %27, align 8, !tbaa !102
  %48 = add nsw i64 %47, %29
  store i64 %48, ptr %27, align 8, !tbaa !102
  %49 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %21, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !94
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %53, !prof !129

52:                                               ; preds = %42
  store i64 %48, ptr %49, align 8, !tbaa !94
  br label %53

53:                                               ; preds = %52, %42
  %54 = phi i64 [ %48, %52 ], [ %50, %42 ]
  %55 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %56 = icmp sgt i32 %55, 5
  br i1 %56, label %57, label %62, !prof !127

57:                                               ; preds = %53
  %58 = load i64, ptr %22, align 8, !tbaa !79
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %4, i64 noundef %54, i64 noundef %48, i64 noundef %58) #20
  %60 = load ptr, ptr @stdout, align 8, !tbaa !76
  %61 = tail call i32 @fflush(ptr noundef %60) #20
  br label %62

62:                                               ; preds = %57, %53
  ret i64 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @spec_mem_putc(ptr noundef %0, i32 noundef %1, i32 noundef returned %2, i32 noundef %3) local_unnamed_addr #0 !prof !105 {
  %5 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %6 = icmp sgt i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #20
  %9 = load ptr, ptr @stdout, align 8, !tbaa !76
  %10 = tail call i32 @fflush(ptr noundef %9) #20
  br label %11

11:                                               ; preds = %7, %4
  %12 = icmp sgt i32 %3, -1
  %13 = icmp ult i32 %3, %1
  %14 = and i1 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @stderr, align 8, !tbaa !76
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.66, i32 noundef %3, ptr noundef %0, i32 noundef %1) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

18:                                               ; preds = %11
  %19 = zext nneg i32 %3 to i64
  %20 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %19, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !82
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @stderr, align 8, !tbaa !76
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.67, i32 noundef %3, ptr noundef nonnull %0) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

26:                                               ; preds = %18
  %27 = trunc i32 %2 to i8
  %28 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %19, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !84
  %30 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %19, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !102
  %32 = add nsw i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !102
  %33 = getelementptr inbounds i8, ptr %29, i64 %31
  store i8 %27, ptr %33, align 1, !tbaa !86
  %34 = load i64, ptr %30, align 8, !tbaa !102
  %35 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %19, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !94
  %37 = icmp sgt i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i64 %34, ptr %35, align 8, !tbaa !94
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %41 = icmp sgt i32 %40, 4
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %2) #20
  %44 = load ptr, ptr @stdout, align 8, !tbaa !76
  %45 = tail call i32 @fflush(ptr noundef %44) #20
  %46 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %47 = icmp sgt i32 %46, 5
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i64, ptr %30, align 8, !tbaa !102
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %3, ptr noundef nonnull %0, i64 noundef %49) #20
  %51 = load ptr, ptr @stdout, align 8, !tbaa !76
  %52 = tail call i32 @fflush(ptr noundef %51) #20
  br label %53

53:                                               ; preds = %39, %48, %42
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @spec_mem_feof(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !133 {
  %4 = icmp sgt i32 %2, -1
  %5 = icmp ult i32 %2, %1
  %6 = and i1 %4, %5
  br i1 %6, label %10, label %7, !prof !134

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !76
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.70, i32 noundef %2, ptr noundef %0, i32 noundef %1) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

10:                                               ; preds = %3
  %11 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %12 = icmp sgt i32 %11, 4
  %13 = zext nneg i32 %2 to i64
  br i1 %12, label %14, label %26, !prof !135

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %13
  %16 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %13, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !102
  %18 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %13, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !94
  %20 = icmp sge i64 %17, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, ptr %15, align 8, !tbaa !79
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %21, i64 noundef %19, i64 noundef %17, i64 noundef %22) #20
  %24 = load ptr, ptr @stdout, align 8, !tbaa !76
  %25 = tail call i32 @fflush(ptr noundef %24) #20
  br label %26

26:                                               ; preds = %10, %14
  %27 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %13, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !102
  %29 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %13, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !94
  %31 = icmp sge i64 %28, %30
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @spec_mem_close(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !105 {
  %4 = icmp sgt i32 %2, -1
  %5 = icmp ult i32 %2, %1
  %6 = and i1 %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !76
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.72, i32 noundef %2, ptr noundef %0, i32 noundef %1) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

10:                                               ; preds = %3
  %11 = zext nneg i32 %2 to i64
  %12 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %11, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !82
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @stderr, align 8, !tbaa !76
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.73, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #21
  %18 = tail call ptr @__errno_location() #27
  store i32 9, ptr %18, align 4, !tbaa !71
  br label %20

19:                                               ; preds = %10
  store i32 0, ptr %12, align 8, !tbaa !82
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ -1, %15 ], [ 0, %19 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @spec_empty(i32 noundef %0) local_unnamed_addr #13 !prof !105 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @spec_initbufs() local_unnamed_addr #13 !prof !70 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @spec_compress(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !70 {
  %4 = load ptr, ptr @spec_fd, align 8, !tbaa !76
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.spec_fd_t, ptr %4, i64 %5, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !82
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.spec_fd_t, ptr %4, i64 %8, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !82
  store i32 1, ptr %9, align 8, !tbaa !82
  store i32 1, ptr %6, align 8, !tbaa !82
  tail call void @compressStream(i32 noundef %0, i32 noundef %1, i32 noundef %2) #26
  %11 = load ptr, ptr @spec_fd, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.spec_fd_t, ptr %11, i64 %5, i32 3
  store i32 %7, ptr %12, align 8, !tbaa !82
  %13 = getelementptr inbounds %struct.spec_fd_t, ptr %11, i64 %8, i32 3
  store i32 %10, ptr %13, align 8, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare void @compressStream(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @uncompressStream(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @debug_time() local_unnamed_addr #13 !prof !136 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @sum_str_to_hex(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !70 {
  %3 = sext i32 %1 to i64
  %4 = lshr i64 %3, 3
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !75

7:                                                ; preds = %2
  %8 = icmp sgt i32 %1, 7
  br i1 %8, label %9, label %31, !prof !95

9:                                                ; preds = %7
  %10 = lshr i32 %1, 3
  %11 = zext nneg i32 %10 to i64
  br label %16

12:                                               ; preds = %2
  %13 = load ptr, ptr @stderr, align 8, !tbaa !76
  %14 = sdiv i32 %1, 8
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.75, i32 noundef %14) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

16:                                               ; preds = %9, %16
  %17 = phi i64 [ 0, %9 ], [ %29, %16 ]
  %18 = shl nuw nsw i64 %17, 1
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !86
  %21 = tail call fastcc zeroext i8 @hex_char_to_num(i8 noundef signext %20) #20
  %22 = shl i8 %21, 4
  %23 = or disjoint i64 %18, 1
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !86
  %26 = tail call fastcc zeroext i8 @hex_char_to_num(i8 noundef signext %25) #20
  %27 = or i8 %26, %22
  %28 = getelementptr inbounds i8, ptr %5, i64 %17
  store i8 %27, ptr %28, align 1, !tbaa !86
  %29 = add nuw nsw i64 %17, 1
  %30 = icmp eq i64 %29, %11
  br i1 %30, label %31, label %16, !prof !113, !llvm.loop !137

31:                                               ; preds = %16, %7
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @hex_char_to_num(i8 noundef signext %0) unnamed_addr #14 !prof !138 !PGOFuncName !139 {
  %2 = icmp sgt i8 %0, 57
  br i1 %2, label %3, label %11, !prof !140

3:                                                ; preds = %1
  %4 = tail call ptr @__ctype_tolower_loc() #27
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = zext nneg i8 %0 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !71
  %9 = trunc i32 %8 to i8
  %10 = add i8 %9, -87
  br label %13

11:                                               ; preds = %1
  %12 = add i8 %0, -48
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i8 [ %10, %3 ], [ %12, %11 ]
  ret i8 %14
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef ptr @spec_mem_alloc_fds(i32 noundef %0) local_unnamed_addr #10 !prof !70 {
  %2 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %3 = icmp sgt i32 %2, 3
  br i1 %3, label %4, label %10, !prof !75

4:                                                ; preds = %1
  %5 = icmp eq i32 %0, 3
  %6 = select i1 %5, ptr @.str.78, ptr @.str.79
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, ptr noundef nonnull %6) #20
  %8 = load ptr, ptr @stdout, align 8, !tbaa !76
  %9 = tail call i32 @fflush(ptr noundef %8) #20
  br label %10

10:                                               ; preds = %4, %1
  %11 = add i32 %0, 1
  %12 = zext i32 %11 to i64
  %13 = mul nuw nsw i64 %12, 40
  %14 = tail call ptr @calloc(i64 1, i64 %13)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19, !prof !75

16:                                               ; preds = %10
  %17 = load ptr, ptr @stderr, align 8, !tbaa !76
  %18 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 52, i64 1, ptr %17) #25
  br label %26

19:                                               ; preds = %10
  %20 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %21 = icmp sgt i32 %20, 4
  br i1 %21, label %22, label %26, !prof !75

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %0, ptr noundef nonnull %14) #20
  %24 = load ptr, ptr @stdout, align 8, !tbaa !76
  %25 = tail call i32 @fflush(ptr noundef %24) #20
  br label %26

26:                                               ; preds = %19, %22, %16
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @spec_mem_free_fds(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !105 {
  %3 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %4 = icmp sgt i32 %3, 3
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = load ptr, ptr @spec_fd, align 8, !tbaa !76
  %7 = icmp eq ptr %6, %0
  %8 = select i1 %7, ptr @.str.83, ptr @.str.79
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %8) #20
  %10 = load ptr, ptr @stdout, align 8, !tbaa !76
  %11 = tail call i32 @fflush(ptr noundef %10) #20
  %12 = load i32, ptr @dbglvl, align 4, !tbaa !71
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef %0, i32 noundef %1) #20
  %16 = load ptr, ptr @stdout, align 8, !tbaa !76
  %17 = tail call i32 @fflush(ptr noundef %16) #20
  br label %18

18:                                               ; preds = %2, %14, %5
  %19 = icmp ne ptr %0, null
  %20 = icmp ne i32 %1, 0
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = zext i32 %1 to i64
  br label %24

24:                                               ; preds = %22, %30
  %25 = phi i64 [ 0, %22 ], [ %31, %30 ]
  %26 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %25, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @free(ptr noundef nonnull %27) #26
  store ptr null, ptr %26, align 8, !tbaa !84
  br label %30

30:                                               ; preds = %24, %29
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !llvm.loop !141

33:                                               ; preds = %30, %18
  tail call void @free(ptr noundef %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #9

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

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #20 = { optsize }
attributes #21 = { cold optsize }
attributes #22 = { noreturn nounwind optsize }
attributes #23 = { nounwind optsize allocsize(0) }
attributes #24 = { nounwind }
attributes #25 = { cold }
attributes #26 = { nounwind optsize }
attributes #27 = { nounwind optsize willreturn memory(none) }
attributes #28 = { nounwind optsize allocsize(1) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!69}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!35 = !{ptr @spec_mem_init, ptr @malloc, i64 1}
!36 = !{ptr @spec_mem_sum, ptr @fwrite, i64 1}
!37 = !{ptr @spec_mem_sum, ptr @exit, i64 1}
!38 = !{ptr @spec_mem_sum, ptr @sha_init, i64 2}
!39 = !{ptr @spec_mem_sum, ptr @sha_process, i64 2}
!40 = !{ptr @spec_mem_sum, ptr @sha_done, i64 2}
!41 = !{ptr @spec_mem_load, ptr @malloc, i64 1}
!42 = !{ptr @spec_uncompress, ptr @uncompressStream, i64 2}
!43 = !{ptr @print_sum, ptr @fprintf, i64 32}
!44 = !{ptr @spec_mem_fread, ptr @printf, i64 3}
!45 = !{ptr @spec_mem_fread, ptr @fflush, i64 3}
!46 = !{ptr @spec_mem_fread, ptr @fprintf, i64 3}
!47 = !{ptr @spec_mem_fread, ptr @exit, i64 3}
!48 = !{ptr @spec_mem_lseek, ptr @fprintf, i64 1}
!49 = !{ptr @spec_mem_lseek, ptr @exit, i64 1}
!50 = !{ptr @spec_mem_rewind, ptr @printf, i64 1}
!51 = !{ptr @spec_mem_rewind, ptr @fflush, i64 1}
!52 = !{ptr @spec_mem_rewind, ptr @spec_mem_lseek, i64 2}
!53 = !{ptr @spec_mem_reset, ptr @printf, i64 2}
!54 = !{ptr @spec_mem_reset, ptr @fflush, i64 2}
!55 = !{ptr @spec_mem_fwrite, ptr @printf, i64 2}
!56 = !{ptr @spec_mem_fwrite, ptr @fflush, i64 2}
!57 = !{ptr @spec_mem_fwrite, ptr @fprintf, i64 3}
!58 = !{ptr @spec_mem_fwrite, ptr @exit, i64 3}
!59 = !{ptr @spec_mem_fwrite, ptr @fd_grow, i64 1}
!60 = !{ptr @spec_mem_feof, ptr @fprintf, i64 2}
!61 = !{ptr @spec_mem_feof, ptr @exit, i64 2}
!62 = !{ptr @spec_mem_feof, ptr @printf, i64 1}
!63 = !{ptr @spec_mem_feof, ptr @fflush, i64 1}
!64 = !{ptr @spec_compress, ptr @compressStream, i64 1}
!65 = !{ptr @sum_str_to_hex, ptr @malloc, i64 1}
!66 = !{ptr @sum_str_to_hex, ptr @hex_char_to_num, i64 44}
!67 = !{ptr @hex_char_to_num, ptr @__ctype_tolower_loc, i64 47}
!68 = !{ptr @spec_mem_alloc_fds, ptr @calloc, i64 1}
!69 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!70 = !{!"function_entry_count", i64 1}
!71 = !{!72, !72, i64 0}
!72 = !{!"int", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
!75 = !{!"branch_weights", i32 1, i32 2}
!76 = !{!77, !77, i64 0}
!77 = !{!"any pointer", !73, i64 0}
!78 = !{!"branch_weights", i32 1, i32 127}
!79 = !{!80, !81, i64 0}
!80 = !{!"", !81, i64 0, !81, i64 8, !81, i64 16, !72, i64 24, !77, i64 32}
!81 = !{!"long", !73, i64 0}
!82 = !{!80, !72, i64 24}
!83 = !{!"branch_weights", i32 1, i32 4}
!84 = !{!80, !77, i64 32}
!85 = !{!"branch_weights", i32 508, i32 132}
!86 = !{!73, !73, i64 0}
!87 = !{!"branch_weights", i32 16646049, i32 127}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"branch_weights", i32 127, i32 129}
!91 = distinct !{!91, !89}
!92 = !{!"function_entry_count", i64 3}
!93 = !{!"branch_weights", i32 4, i32 1}
!94 = !{!80, !81, i64 8}
!95 = !{!"branch_weights", i32 127, i32 1}
!96 = distinct !{!96, !89}
!97 = !{!"branch_weights", i32 4, i32 5}
!98 = !{!"branch_weights", i32 2, i32 1}
!99 = !{!"branch_weights", i32 129, i32 127}
!100 = distinct !{!100, !89}
!101 = !{!"branch_weights", i32 1670265059, i32 477218589}
!102 = !{!80, !81, i64 16}
!103 = !{!"branch_weights", i32 -2147483648, i32 0}
!104 = distinct !{!104, !89}
!105 = !{!"function_entry_count", i64 0}
!106 = !{!"spec_mem_io.c:fd_grow"}
!107 = !{!"function_entry_count", i64 2}
!108 = !{!"branch_weights", i32 7, i32 9}
!109 = !{!"branch_weights", i32 191, i32 1}
!110 = !{!"branch_weights", i32 129, i32 1}
!111 = !{!"branch_weights", i32 191, i32 8065}
!112 = distinct !{!112, !89}
!113 = !{!"branch_weights", i32 127, i32 4033}
!114 = distinct !{!114, !89}
!115 = !{!"function_entry_count", i64 37990}
!116 = !{!"branch_weights", i32 1, i32 37991}
!117 = !{!"branch_weights", i32 1443316081, i32 75983}
!118 = !{!"branch_weights", i32 37991, i32 1}
!119 = !{!"branch_weights", i32 37988, i32 4}
!120 = !{!"branch_weights", i32 9, i32 7}
!121 = !{!"branch_weights", i32 3, i32 1}
!122 = !{!"branch_weights", i32 1, i32 3}
!123 = !{!"branch_weights", i32 1, i32 12, i32 2, i32 1}
!124 = !{!81, !81, i64 0}
!125 = distinct !{!125, !89}
!126 = !{!"function_entry_count", i64 43547}
!127 = !{!"branch_weights", i32 1, i32 43548}
!128 = !{!"branch_weights", i32 1896428304, i32 87097}
!129 = !{!"branch_weights", i32 43548, i32 1}
!130 = !{!"branch_weights", i32 1, i32 43547}
!131 = !{!"branch_weights", i32 0, i32 1}
!132 = distinct !{!132, !89}
!133 = !{!"function_entry_count", i64 75987}
!134 = !{!"branch_weights", i32 -1407879224, i32 75988}
!135 = !{!"branch_weights", i32 1, i32 75988}
!136 = !{!"function_entry_count", i64 6}
!137 = distinct !{!137, !89}
!138 = !{!"function_entry_count", i64 128}
!139 = !{!"spec_mem_io.c:hex_char_to_num"}
!140 = !{!"branch_weights", i32 48, i32 82}
!141 = distinct !{!141, !89}
