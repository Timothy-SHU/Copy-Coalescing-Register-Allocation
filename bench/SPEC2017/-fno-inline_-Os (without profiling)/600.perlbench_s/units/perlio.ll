; ModuleID = 'perlio.c'
source_filename = "perlio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct._PerlIO_funcs = type { i64, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._PerlIO = type { ptr, ptr, i32, i32, ptr }
%struct.PerlIO_list_s = type { i64, i64, i64, ptr }
%struct.PerlIO_pair_t = type { ptr, ptr }
%struct.cv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.1 }
%union._xmgu = type { ptr }
%union.anon.1 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu }
%union.anon.2 = type { i64 }
%union._xivu = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu, %union._xnvu }
%union.anon.3 = type { i64 }
%union._xnvu = type { double }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.PerlIOBuf = type { %struct._PerlIO, ptr, ptr, ptr, i64, i64, i64 }
%struct.PerlIOUnix = type { %struct._PerlIO, i32, i32 }
%struct.PerlIOStdio = type { %struct._PerlIO, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.PerlIOCrlf = type { %struct.PerlIOBuf, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@PL_perlio = external global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_known_layers = external local_unnamed_addr global ptr, align 8
@PL_subname = external local_unnamed_addr global ptr, align 8
@PL_def_layerlist = external local_unnamed_addr global ptr, align 8
@PL_in_load_module = external global i8, align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Recursive call to Perl_load_module in PerlIO_find_layer\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"PerlIO\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"PerlIO::Layer::NoWarnings\00", align 1
@PL_warnhook = external global ptr, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"PerlIO::Layer\00", align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [31 x i8] c"Usage class->find(name[,load])\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.13 = private unnamed_addr constant [68 x i8] c"Invalid separator character %c%c%c in PerlIO layer specification %s\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"Argument list not closed for PerlIO layer \22%.*s\22\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Unknown PerlIO layer \22%.*s\22\00", align 1
@PerlIO_perlio = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.66, i64 80, i32 3, ptr @PerlIOBuf_pushed, ptr @PerlIOBuf_popped, ptr @PerlIOBuf_open, ptr @PerlIOBase_binmode, ptr null, ptr @PerlIOBase_fileno, ptr @PerlIOBuf_dup, ptr @PerlIOBuf_read, ptr @PerlIOBuf_unread, ptr @PerlIOBuf_write, ptr @PerlIOBuf_seek, ptr @PerlIOBuf_tell, ptr @PerlIOBuf_close, ptr @PerlIOBuf_flush, ptr @PerlIOBuf_fill, ptr @PerlIOBase_eof, ptr @PerlIOBase_error, ptr @PerlIOBase_clearerr, ptr @PerlIOBase_setlinebuf, ptr @PerlIOBuf_get_base, ptr @PerlIOBuf_bufsiz, ptr @PerlIOBuf_get_ptr, ptr @PerlIOBuf_get_cnt, ptr @PerlIOBuf_set_ptrcnt }, align 8
@PerlIO_stdio = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.65, i64 40, i32 3, ptr @PerlIOStdio_pushed, ptr @PerlIOBase_popped, ptr @PerlIOStdio_open, ptr @PerlIOBase_binmode, ptr null, ptr @PerlIOStdio_fileno, ptr @PerlIOStdio_dup, ptr @PerlIOStdio_read, ptr @PerlIOStdio_unread, ptr @PerlIOStdio_write, ptr @PerlIOStdio_seek, ptr @PerlIOStdio_tell, ptr @PerlIOStdio_close, ptr @PerlIOStdio_flush, ptr @PerlIOStdio_fill, ptr @PerlIOStdio_eof, ptr @PerlIOStdio_error, ptr @PerlIOStdio_clearerr, ptr @PerlIOStdio_setlinebuf, ptr @PerlIOStdio_get_base, ptr @PerlIOStdio_get_bufsiz, ptr @PerlIOStdio_get_ptr, ptr @PerlIOStdio_get_cnt, ptr null }, align 8
@.str.18 = private unnamed_addr constant [34 x i8] c"panic: PerlIO layer array corrupt\00", align 1
@PerlIO_remove = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.19, i64 0, i32 32784, ptr @PerlIOPop_pushed, ptr null, ptr @PerlIOBase_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@PerlIO_unix = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.62, i64 40, i32 1, ptr @PerlIOUnix_pushed, ptr @PerlIOBase_popped, ptr @PerlIOUnix_open, ptr @PerlIOBase_binmode, ptr null, ptr @PerlIOUnix_fileno, ptr @PerlIOUnix_dup, ptr @PerlIOUnix_read, ptr @PerlIOBase_unread, ptr @PerlIOUnix_write, ptr @PerlIOUnix_seek, ptr @PerlIOUnix_tell, ptr @PerlIOUnix_close, ptr @PerlIOBase_noop_ok, ptr @PerlIOBase_noop_fail, ptr @PerlIOBase_eof, ptr @PerlIOBase_error, ptr @PerlIOBase_clearerr, ptr @PerlIOBase_setlinebuf, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@PerlIO_raw = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.43, i64 0, i32 16, ptr @PerlIORaw_pushed, ptr @PerlIOBase_popped, ptr @PerlIOBase_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@PerlIO_crlf = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.68, i64 88, i32 7, ptr @PerlIOCrlf_pushed, ptr @PerlIOBuf_popped, ptr @PerlIOBuf_open, ptr @PerlIOCrlf_binmode, ptr null, ptr @PerlIOBase_fileno, ptr @PerlIOBuf_dup, ptr @PerlIOBuf_read, ptr @PerlIOCrlf_unread, ptr @PerlIOCrlf_write, ptr @PerlIOBuf_seek, ptr @PerlIOBuf_tell, ptr @PerlIOBuf_close, ptr @PerlIOCrlf_flush, ptr @PerlIOBuf_fill, ptr @PerlIOBase_eof, ptr @PerlIOBase_error, ptr @PerlIOBase_clearerr, ptr @PerlIOBase_setlinebuf, ptr @PerlIOBuf_get_base, ptr @PerlIOBuf_bufsiz, ptr @PerlIOBuf_get_ptr, ptr @PerlIOCrlf_get_cnt, ptr @PerlIOCrlf_set_ptrcnt }, align 8
@PerlIO_utf8 = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.41, i64 0, i32 163856, ptr @PerlIOUtf8_pushed, ptr null, ptr @PerlIOBase_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@PerlIO_byte = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.42, i64 0, i32 131088, ptr @PerlIOUtf8_pushed, ptr null, ptr @PerlIOBase_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.20 = private unnamed_addr constant [20 x i8] c"PerlIO::Layer::find\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"perlio.c\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"Ir\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"Iw\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"%s (%lu) does not match %s (%lu)\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"PerlIO layer function table size\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"size expected by this perl\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"%s (%lu) smaller than %s (%lu)\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"PerlIO layer instance size\00", align 1
@PL_errgv = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"Unknown PerlIO layer \22scalar\22\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Code\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Glob\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"More than one argument to open(,':%s')\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@PerlIO_pending = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.67, i64 80, i32 3, ptr @PerlIOPending_pushed, ptr @PerlIOBuf_popped, ptr null, ptr @PerlIOBase_binmode, ptr null, ptr @PerlIOBase_fileno, ptr @PerlIOBuf_dup, ptr @PerlIOPending_read, ptr @PerlIOBuf_unread, ptr @PerlIOBuf_write, ptr @PerlIOPending_seek, ptr @PerlIOBuf_tell, ptr @PerlIOPending_close, ptr @PerlIOPending_flush, ptr @PerlIOPending_fill, ptr @PerlIOBase_eof, ptr @PerlIOBase_error, ptr @PerlIOBase_clearerr, ptr @PerlIOBase_setlinebuf, ptr @PerlIOBuf_get_base, ptr @PerlIOBuf_bufsiz, ptr @PerlIOBuf_get_ptr, ptr @PerlIOBuf_get_cnt, ptr @PerlIOPending_set_ptrcnt }, align 8
@.str.44 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@PL_perlio_fd_refcnt_size = external local_unnamed_addr global i32, align 4
@PL_perlio_fd_refcnt = external local_unnamed_addr global ptr, align 8
@.str.46 = private unnamed_addr constant [28 x i8] c"refcnt_inc: fd %d: %d <= 0\0A\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"refcnt_inc: fd %d < 0\0A\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"refcnt_dec: fd %d >= refcnt_size %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"refcnt_dec: fd %d: %d <= 0\0A\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"refcnt_dec: fd %d < 0\0A\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"refcnt: fd %d >= refcnt_size %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"refcnt: fd %d: %d <= 0\0A\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"refcnt: fd %d < 0\0A\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"pathname\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.61 = private unnamed_addr constant [42 x i8] c"Invalid \\0 character in %s for %s: %s\\0%s\00", align 1
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@PL_signalhook = external local_unnamed_addr global ptr, align 8
@.str.62 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.65 = private unnamed_addr constant [6 x i8] c"stdio\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"perlio\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"crlf\00", align 1
@.str.69 = private unnamed_addr constant [32 x i8] c"Don't know how to get file name\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str.71 = private unnamed_addr constant [6 x i8] c"open>\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"open<\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @perlsio_binmode(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @PerlIO_intmode2str(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #1 {
  %4 = and i32 %0, 3
  %5 = icmp eq i32 %4, 1
  %6 = icmp eq i32 %4, 0
  %7 = icmp eq ptr %2, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp ne i32 %4, 0
  %10 = zext i1 %9 to i32
  store i32 %10, ptr %2, align 4, !tbaa !6
  br label %11

11:                                               ; preds = %8, %3
  br i1 %6, label %12, label %13

12:                                               ; preds = %11
  store i8 114, ptr %1, align 1, !tbaa !10
  br label %23

13:                                               ; preds = %11
  %14 = and i32 %0, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  store i8 97, ptr %1, align 1, !tbaa !10
  br i1 %5, label %23, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 43, ptr %18, align 1, !tbaa !10
  br label %23

19:                                               ; preds = %13
  br i1 %5, label %20, label %21

20:                                               ; preds = %19
  store i8 119, ptr %1, align 1, !tbaa !10
  br label %23

21:                                               ; preds = %19
  store i8 114, ptr %1, align 1, !tbaa !10
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 43, ptr %22, align 1, !tbaa !10
  br label %23

23:                                               ; preds = %17, %16, %21, %20, %12
  %24 = phi i32 [ 43, %17 ], [ 62, %16 ], [ 43, %21 ], [ 62, %20 ], [ 60, %12 ]
  %25 = phi i64 [ 2, %17 ], [ 1, %16 ], [ 2, %21 ], [ 1, %20 ], [ 1, %12 ]
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  store i8 0, ptr %26, align 1, !tbaa !10
  ret i32 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @PerlIO_debug(ptr nocapture noundef readnone %0, ...) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_allocate() local_unnamed_addr #4 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %17, label %6

3:                                                ; preds = %8
  %4 = load ptr, ptr %7, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %0, %3
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  br label %11

8:                                                ; preds = %11
  %9 = add nuw nsw i32 %12, 1
  %10 = icmp eq i32 %9, 64
  br i1 %10, label %3, label %11, !llvm.loop !13

11:                                               ; preds = %6, %8
  %12 = phi i32 [ 1, %6 ], [ %9, %8 ]
  %13 = phi ptr [ %7, %6 ], [ %14, %8 ]
  %14 = getelementptr inbounds %struct._PerlIO, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %8

17:                                               ; preds = %3, %0
  %18 = phi ptr [ @PL_perlio, %0 ], [ %7, %3 ]
  %19 = tail call ptr @Perl_safesyscalloc(i64 noundef 64, i64 noundef 32) #28
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._PerlIO, ptr %19, i64 1
  store ptr %19, ptr %18, align 8, !tbaa !11
  br label %23

23:                                               ; preds = %11, %21
  %24 = phi ptr [ %22, %21 ], [ %14, %11 ]
  %25 = getelementptr inbounds %struct._PerlIO, ptr %24, i64 0, i32 2
  store i32 0, ptr %25, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct._PerlIO, ptr %24, i64 0, i32 1
  store ptr null, ptr %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct._PerlIO, ptr %24, i64 0, i32 4
  store ptr %24, ptr %27, align 8, !tbaa !19
  br label %28

28:                                               ; preds = %17, %23
  %29 = phi ptr [ %24, %23 ], [ null, %17 ]
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_fdupopen(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @PerlIO_allocate() #29
  %18 = tail call ptr %14(ptr noundef %17, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #28
  br label %24

19:                                               ; preds = %12, %8
  %20 = tail call ptr @PerlIO_allocate() #29
  %21 = tail call ptr @PerlIOBase_dup(ptr noundef %20, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #29
  br label %24

22:                                               ; preds = %5, %3
  %23 = tail call ptr @__errno_location() #30
  store i32 9, ptr %23, align 4, !tbaa !6
  br label %24

24:                                               ; preds = %16, %19, %22
  %25 = phi ptr [ null, %22 ], [ %18, %16 ], [ %21, %19 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = alloca [8 x i8], align 1
  %6 = load ptr, ptr %1, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._PerlIO, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._PerlIO_funcs, ptr %13, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call ptr %17(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, i32 noundef %3) #28
  br label %23

21:                                               ; preds = %15, %11
  %22 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, i32 noundef %3) #29
  br label %23

23:                                               ; preds = %19, %21, %8, %4
  %24 = phi ptr [ %0, %8 ], [ %0, %4 ], [ %20, %19 ], [ %22, %21 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %54, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %1, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct._PerlIO, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct._PerlIO_funcs, ptr %29, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !23
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call ptr %33(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #28
  br label %37

37:                                               ; preds = %26, %35, %31
  %38 = phi ptr [ %36, %35 ], [ null, %31 ], [ null, %26 ]
  %39 = call ptr @PerlIO_modestr(ptr noundef nonnull %1, ptr noundef nonnull %5) #29
  %40 = call ptr @PerlIO_push(ptr noundef nonnull %24, ptr noundef %29, ptr noundef nonnull %5, ptr noundef %38) #29
  %41 = icmp eq ptr %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %1, align 8, !tbaa !11
  %44 = getelementptr inbounds %struct._PerlIO, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !17
  %46 = and i32 %45, 32768
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %40, align 8, !tbaa !11
  %50 = getelementptr inbounds %struct._PerlIO, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !17
  %52 = or i32 %51, 32768
  store i32 %52, ptr %50, align 8, !tbaa !17
  br label %53

53:                                               ; preds = %48, %42, %37
  call fastcc void @S_SvREFCNT_dec(ptr noundef %38) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  br label %54

54:                                               ; preds = %53, %23
  %55 = phi ptr [ %40, %53 ], [ null, %23 ]
  ret ptr %55
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_cleantable(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  tail call void @PerlIO_cleantable(ptr noundef nonnull %2) #29
  br label %5

5:                                                ; preds = %4, %12
  %6 = phi i64 [ 63, %4 ], [ %13, %12 ]
  %7 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %7) #29
  br label %12

12:                                               ; preds = %10, %5
  %13 = add nsw i64 %6, -1
  %14 = icmp ugt i64 %6, 1
  br i1 %14, label %5, label %15, !llvm.loop !24

15:                                               ; preds = %12
  tail call void @Perl_safesysfree(ptr noundef nonnull %2) #28
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_close(ptr noundef %0) local_unnamed_addr #4 {
  %2 = tail call i32 @PerlIO__close(ptr noundef %0) #29
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1, %16
  %5 = phi ptr [ %17, %16 ], [ %0, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  tail call void @PerlIO_pop(ptr noundef nonnull %5) #29
  %9 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %5, align 8, !tbaa !11
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %15, %14 ], [ %5, %8 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !25

19:                                               ; preds = %4, %16, %1
  ret i32 %2
}

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIO_list_alloc() local_unnamed_addr #4 {
  %1 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 32) #28
  store i64 1, ptr %1, align 8, !tbaa !26
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_list_free(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8, !tbaa !26
  %5 = add nsw i64 %4, -1
  store i64 %5, ptr %0, align 8, !tbaa !26
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !29
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %11, %15
  %16 = phi i64 [ %20, %15 ], [ 0, %11 ]
  %17 = load ptr, ptr %8, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %17, i64 %16, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %19) #29
  %20 = add nuw nsw i64 %16, 1
  %21 = load i64, ptr %12, align 8, !tbaa !29
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %15, label %23, !llvm.loop !32

23:                                               ; preds = %15
  %24 = load ptr, ptr %8, align 8, !tbaa !28
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi ptr [ %24, %23 ], [ %9, %11 ]
  tail call void @Perl_safesysfree(ptr noundef %26) #28
  br label %27

27:                                               ; preds = %25, %7
  tail call void @Perl_safesysfree(ptr noundef nonnull %0) #28
  br label %28

28:                                               ; preds = %3, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !33
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !33
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #28
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_list_push(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !35
  %8 = icmp slt i64 %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  br label %22

12:                                               ; preds = %3
  %13 = add nsw i64 %7, 8
  store i64 %13, ptr %6, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = icmp eq ptr %15, null
  %17 = shl i64 %13, 4
  br i1 %16, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %15, i64 noundef %17) #28
  store ptr %19, ptr %14, align 8, !tbaa !28
  br label %22

20:                                               ; preds = %12
  %21 = tail call ptr @Perl_safesysmalloc(i64 noundef %17) #28
  store ptr %21, ptr %14, align 8, !tbaa !28
  br label %22

22:                                               ; preds = %9, %18, %20
  %23 = phi ptr [ %11, %9 ], [ %19, %18 ], [ %21, %20 ]
  %24 = load i64, ptr %4, align 8, !tbaa !29
  %25 = add nsw i64 %24, 1
  store i64 %25, ptr %4, align 8, !tbaa !29
  %26 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %23, i64 %24
  store ptr %1, ptr %26, align 8, !tbaa !36
  %27 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %23, i64 %24, i32 1
  store ptr %2, ptr %27, align 8, !tbaa !30
  %28 = icmp eq ptr %2, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !33
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !33
  br label %33

33:                                               ; preds = %29, %22
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIO_clone_list(ptr noundef readonly %0, ptr nocapture readnone %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @PerlIO_list_alloc() #29
  %6 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !29
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %18, %11 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !28
  %14 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %13, i64 %12
  %15 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %13, i64 %12, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !30
  %17 = load ptr, ptr %14, align 8, !tbaa !36
  tail call void @PerlIO_list_push(ptr noundef %5, ptr noundef %17, ptr noundef %16) #29
  %18 = add nuw nsw i64 %12, 1
  %19 = load i64, ptr %6, align 8, !tbaa !29
  %20 = icmp sgt i64 %19, %18
  br i1 %20, label %11, label %21, !llvm.loop !37

21:                                               ; preds = %11, %4, %2
  %22 = phi ptr [ null, %2 ], [ %5, %4 ], [ %5, %11 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @PerlIO_clone(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_destruct() local_unnamed_addr #4 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %34, label %6

3:                                                ; preds = %31
  %4 = load ptr, ptr %7, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6, !llvm.loop !38

6:                                                ; preds = %0, %3
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  br label %8

8:                                                ; preds = %6, %31
  %9 = phi ptr [ %7, %6 ], [ %11, %31 ]
  %10 = phi i32 [ 1, %6 ], [ %32, %31 ]
  %11 = getelementptr inbounds %struct._PerlIO, ptr %9, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %8, %27
  %15 = phi ptr [ %29, %27 ], [ %12, %8 ]
  %16 = phi ptr [ %28, %27 ], [ %11, %8 ]
  %17 = getelementptr inbounds %struct._PerlIO, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._PerlIO_funcs, ptr %18, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !39
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %16) #29
  tail call void @PerlIO_pop(ptr noundef nonnull %16) #29
  br label %27

27:                                               ; preds = %14, %20, %25
  %28 = phi ptr [ %16, %25 ], [ %15, %20 ], [ %15, %14 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %14, !llvm.loop !40

31:                                               ; preds = %27, %8
  %32 = add nuw nsw i32 %10, 1
  %33 = icmp eq i32 %32, 64
  br i1 %33, label %3, label %8, !llvm.loop !41

34:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_flush(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load ptr, ptr @PL_perlio, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %25

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._PerlIO_funcs, ptr %11, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = tail call i64 %15(ptr noundef nonnull %0) #28
  %19 = trunc i64 %18 to i32
  br label %43

20:                                               ; preds = %6
  %21 = tail call ptr @__errno_location() #30
  store i32 9, ptr %21, align 4, !tbaa !6
  br label %43

22:                                               ; preds = %39
  %23 = load ptr, ptr %26, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25, !llvm.loop !43

25:                                               ; preds = %3, %22
  %26 = phi ptr [ %23, %22 ], [ %4, %3 ]
  %27 = phi i32 [ %40, %22 ], [ 0, %3 ]
  br label %28

28:                                               ; preds = %25, %39
  %29 = phi ptr [ %26, %25 ], [ %32, %39 ]
  %30 = phi i32 [ 1, %25 ], [ %41, %39 ]
  %31 = phi i32 [ %27, %25 ], [ %40, %39 ]
  %32 = getelementptr inbounds %struct._PerlIO, ptr %29, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %32) #29
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 %31, i32 -1
  br label %39

39:                                               ; preds = %35, %28
  %40 = phi i32 [ %31, %28 ], [ %38, %35 ]
  %41 = add nuw nsw i32 %30, 1
  %42 = icmp eq i32 %41, 64
  br i1 %42, label %22, label %28, !llvm.loop !44

43:                                               ; preds = %22, %3, %17, %13, %9, %20
  %44 = phi i32 [ -1, %20 ], [ %19, %17 ], [ 0, %13 ], [ 0, %9 ], [ 0, %3 ], [ %40, %22 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_pop(ptr noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._PerlIO_funcs, ptr %6, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i64 %10(ptr noundef nonnull %0) #28
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %4, %12, %8
  %16 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = getelementptr inbounds %struct._PerlIO, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %0, align 8, !tbaa !11
  %23 = getelementptr inbounds %struct._PerlIO, ptr %22, i64 0, i32 2
  store i32 33554432, ptr %23, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct._PerlIO, ptr %22, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !18
  br label %27

25:                                               ; preds = %15
  %26 = load ptr, ptr %2, align 8, !tbaa !15
  store ptr %26, ptr %0, align 8, !tbaa !11
  tail call void @Perl_safesysfree(ptr noundef nonnull %2) #28
  br label %27

27:                                               ; preds = %1, %25, %21, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_get_layers(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @Perl_newSV_type(i32 noundef 11) #28
  %4 = icmp eq ptr %0, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  store ptr %6, ptr %2, align 8, !tbaa !11
  br label %9

9:                                                ; preds = %8, %32
  %10 = phi ptr [ %6, %8 ], [ %41, %32 ]
  %11 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._PerlIO_funcs, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = call ptr @Perl_newSVpv(ptr noundef nonnull %16, i64 noundef 0) #28
  %20 = load ptr, ptr %2, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct._PerlIO, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %14, %18
  %25 = phi ptr [ %19, %18 ], [ @PL_sv_undef, %14 ]
  %26 = phi ptr [ %22, %18 ], [ %12, %14 ]
  %27 = getelementptr inbounds %struct._PerlIO_funcs, ptr %26, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !23
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = call ptr %28(ptr noundef nonnull %2, ptr noundef null, i32 noundef 0) #28
  br label %32

32:                                               ; preds = %9, %18, %24, %30
  %33 = phi ptr [ %25, %30 ], [ %25, %24 ], [ %19, %18 ], [ @PL_sv_undef, %9 ]
  %34 = phi ptr [ %31, %30 ], [ @PL_sv_undef, %24 ], [ @PL_sv_undef, %18 ], [ @PL_sv_undef, %9 ]
  call void @Perl_av_push(ptr noundef %3, ptr noundef %33) #28
  call void @Perl_av_push(ptr noundef %3, ptr noundef %34) #28
  %35 = load ptr, ptr %2, align 8, !tbaa !11
  %36 = getelementptr inbounds %struct._PerlIO, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !17
  %38 = zext i32 %37 to i64
  %39 = call ptr @Perl_newSViv(i64 noundef %38) #28
  call void @Perl_av_push(ptr noundef %3, ptr noundef %39) #28
  %40 = load ptr, ptr %2, align 8, !tbaa !11
  %41 = load ptr, ptr %40, align 8, !tbaa !11
  store ptr %41, ptr %2, align 8, !tbaa !11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %9, !llvm.loop !47

43:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  br label %44

44:                                               ; preds = %43, %5, %1
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_find_layer(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp ne i32 %2, 0
  br label %5

5:                                                ; preds = %58, %3
  %6 = phi i64 [ %1, %3 ], [ %12, %58 ]
  %7 = phi i1 [ %4, %3 ], [ false, %58 ]
  %8 = icmp slt i64 %6, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i64 [ %10, %9 ], [ %6, %5 ]
  %13 = load ptr, ptr @PL_known_layers, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.PerlIO_list_s, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !29
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.PerlIO_list_s, ptr %13, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !28
  br label %20

20:                                               ; preds = %17, %31
  %21 = phi i64 [ 0, %17 ], [ %32, %31 ]
  %22 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = getelementptr inbounds %struct._PerlIO_funcs, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #32
  %27 = icmp eq i64 %26, %12
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = tail call i32 @bcmp(ptr %25, ptr %0, i64 %12)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %59, label %31

31:                                               ; preds = %28, %20
  %32 = add nuw nsw i64 %21, 1
  %33 = icmp eq i64 %32, %15
  br i1 %33, label %34, label %20, !llvm.loop !48

34:                                               ; preds = %31, %11
  %35 = load ptr, ptr @PL_subname, align 8
  %36 = icmp ne ptr %35, null
  %37 = select i1 %7, i1 %36, i1 false
  %38 = load ptr, ptr @PL_def_layerlist, align 8
  %39 = icmp ne ptr %38, null
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %59

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.PerlIO_list_s, ptr %38, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !29
  %44 = icmp sgt i64 %43, 1
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i8, ptr @PL_in_load_module, align 1, !tbaa !49, !range !51, !noundef !52
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #28
  br label %59

49:                                               ; preds = %45
  %50 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.6, i64 noundef 6) #28
  %51 = tail call ptr @Perl_newSVpvn(ptr noundef %0, i64 noundef %12) #28
  %52 = tail call ptr @Perl_get_cvn_flags(ptr noundef nonnull @.str.7, i64 noundef 25, i32 noundef 0) #28
  tail call void @Perl_push_scope() #28
  tail call void @Perl_save_bool(ptr noundef nonnull @PL_in_load_module) #28
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  tail call void @Perl_save_generic_svref(ptr noundef nonnull @PL_warnhook) #28
  %55 = getelementptr inbounds %struct.cv, ptr %52, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !53
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 8, !tbaa !53
  store ptr %52, ptr @PL_warnhook, align 8, !tbaa !11
  br label %58

58:                                               ; preds = %54, %49
  store i8 1, ptr @PL_in_load_module, align 1, !tbaa !49
  tail call void (i32, ptr, ptr, ...) @Perl_load_module(i32 noundef 0, ptr noundef %50, ptr noundef null, ptr noundef %51, ptr noundef null) #28
  tail call void @Perl_pop_scope() #28
  br label %5

59:                                               ; preds = %34, %41, %28, %48
  %60 = phi ptr [ null, %48 ], [ %23, %28 ], [ null, %41 ], [ null, %34 ]
  ret ptr %60
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @Perl_get_cvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #5

; Function Attrs: optsize
declare void @Perl_save_bool(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @Perl_save_generic_svref(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @Perl_load_module(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_tab_sv(ptr noundef %0) local_unnamed_addr #4 {
  %2 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str.9, i32 noundef 13, i32 noundef 1) #28
  %3 = ptrtoint ptr %0 to i64
  %4 = tail call ptr @Perl_newSViv(i64 noundef %3) #28
  %5 = tail call ptr @Perl_newRV_noinc(ptr noundef %4) #28
  %6 = tail call ptr @Perl_sv_bless(ptr noundef %5, ptr noundef %2) #28
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_PerlIO__Layer__NoWarnings(ptr nocapture readnone %0) #4 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !11
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !11
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !11
  %5 = load i32, ptr %3, align 4, !tbaa !6
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !11
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 0
  %15 = sext i32 %7 to i64
  br i1 %14, label %26, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds ptr, ptr %6, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !55
  %21 = and i32 %20, 2098176
  %22 = icmp eq i32 %21, 1024
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %18, ptr noundef null, i32 noundef 34) #28
  %25 = load ptr, ptr @PL_stack_base, align 8, !tbaa !11
  br label %26

26:                                               ; preds = %1, %16, %23
  %27 = phi ptr [ %6, %16 ], [ %25, %23 ], [ %6, %1 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %15
  %29 = getelementptr inbounds ptr, ptr %28, i64 -1
  store ptr %29, ptr @PL_stack_sp, align 8, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_PerlIO__Layer__find(ptr nocapture readnone %0) #4 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !11
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !11
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !11
  %6 = load i32, ptr %4, align 4, !tbaa !6
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !11
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11) #28
  br label %112

18:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  %19 = getelementptr ptr, ptr %10, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !55
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load ptr, ptr %20, align 8, !tbaa !56
  %27 = getelementptr inbounds %struct.xpv, ptr %26, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !57
  store i64 %28, ptr %2, align 8, !tbaa !59
  %29 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !10
  br label %33

31:                                               ; preds = %18
  %32 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %20, ptr noundef nonnull %2, i32 noundef 34) #28
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %30, %25 ], [ %32, %31 ]
  %35 = icmp eq i32 %15, 2
  br i1 %35, label %96, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !11
  %38 = getelementptr ptr, ptr %37, i64 %9
  %39 = getelementptr ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !55
  %43 = and i32 %42, 2097152
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %40, i32 noundef 2) #28
  br label %96

47:                                               ; preds = %36
  %48 = and i32 %42, 65280
  %49 = icmp ne i32 %48, 0
  %50 = and i32 %42, 255
  %51 = icmp eq i32 %50, 8
  %52 = or i1 %49, %51
  %53 = and i32 %42, 16777471
  %54 = icmp eq i32 %53, 16777226
  %55 = or i1 %54, %52
  br i1 %55, label %56, label %96

56:                                               ; preds = %47
  %57 = and i32 %42, 1024
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %40, align 8, !tbaa !56
  %61 = icmp eq ptr %60, null
  br i1 %61, label %96, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.xpv, ptr %60, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !57
  %65 = icmp ugt i64 %64, 1
  br i1 %65, label %96, label %66

66:                                               ; preds = %62
  %67 = icmp eq i64 %64, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !10
  %71 = load i8, ptr %70, align 1, !tbaa !10
  %72 = icmp ne i8 %71, 48
  br label %96

73:                                               ; preds = %56
  %74 = and i32 %42, 768
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %73
  %77 = and i32 %42, 256
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %40, align 8, !tbaa !56
  %81 = getelementptr inbounds %struct.xpviv, ptr %80, i64 0, i32 4
  %82 = load i64, ptr %81, align 8, !tbaa !10
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79, %76
  %85 = and i32 %42, 512
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %40, align 8, !tbaa !56
  %89 = getelementptr inbounds %struct.xpvnv, ptr %88, i64 0, i32 5
  %90 = load double, ptr %89, align 8, !tbaa !10
  %91 = fcmp uno double %90, 0.000000e+00
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = fcmp une double %90, 0.000000e+00
  br label %96

94:                                               ; preds = %73
  %95 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %40, i32 noundef 0) #28
  br label %96

96:                                               ; preds = %79, %87, %92, %84, %59, %66, %68, %62, %47, %33, %45, %94
  %97 = phi i1 [ %46, %45 ], [ %95, %94 ], [ false, %33 ], [ false, %47 ], [ false, %59 ], [ true, %62 ], [ false, %66 ], [ %72, %68 ], [ true, %79 ], [ false, %84 ], [ true, %87 ], [ %93, %92 ]
  %98 = load i64, ptr %2, align 8, !tbaa !59
  %99 = zext i1 %97 to i32
  %100 = call ptr @PerlIO_find_layer(ptr noundef %34, i64 noundef %98, i32 noundef %99) #29
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = call ptr @PerlIO_tab_sv(ptr noundef nonnull %100) #29
  %104 = call ptr @Perl_sv_2mortal(ptr noundef %103) #28
  br label %105

105:                                              ; preds = %96, %102
  %106 = phi ptr [ %104, %102 ], [ @PL_sv_undef, %96 ]
  %107 = load ptr, ptr @PL_stack_base, align 8, !tbaa !11
  %108 = sext i32 %8 to i64
  %109 = getelementptr inbounds ptr, ptr %107, i64 %108
  store ptr %106, ptr %109, align 8, !tbaa !11
  %110 = load ptr, ptr @PL_stack_base, align 8, !tbaa !11
  %111 = getelementptr inbounds ptr, ptr %110, i64 %108
  store ptr %111, ptr @PL_stack_sp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  br label %112

112:                                              ; preds = %105, %17
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_define_layer(ptr noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @PL_known_layers, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @PerlIO_list_alloc() #29
  store ptr %5, ptr @PL_known_layers, align 8, !tbaa !11
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  tail call void @PerlIO_list_push(ptr noundef %7, ptr noundef %0, ptr noundef null) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PerlIO_parse_layers(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %97, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %97, label %7

7:                                                ; preds = %4, %19
  %8 = phi i8 [ %20, %19 ], [ %5, %4 ]
  %9 = phi ptr [ %21, %19 ], [ %1, %4 ]
  %10 = zext i8 %8 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !6
  %13 = and i32 %12, 17408
  %14 = icmp eq i32 %13, 17408
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  switch i8 %8, label %22 [
    i8 58, label %16
    i8 0, label %93
  ]

16:                                               ; preds = %15, %7
  %17 = getelementptr inbounds i8, ptr %9, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !10
  br label %19

19:                                               ; preds = %16, %93
  %20 = phi i8 [ %18, %16 ], [ %95, %93 ]
  %21 = phi ptr [ %17, %16 ], [ %94, %93 ]
  br label %7, !llvm.loop !60

22:                                               ; preds = %15
  %23 = and i32 %12, 81920
  %24 = icmp eq i32 %23, 81920
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = sext i8 %8 to i32
  %27 = icmp eq i8 %8, 39
  %28 = select i1 %27, i32 34, i32 39
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef %28, i32 noundef %26, i32 noundef %28, ptr noundef nonnull %9) #28
  %29 = tail call ptr @__errno_location() #30
  store i32 22, ptr %29, align 4, !tbaa !6
  br label %97

30:                                               ; preds = %22, %30
  %31 = phi ptr [ %32, %30 ], [ %9, %22 ]
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !10
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !6
  %37 = and i32 %36, 16385
  %38 = icmp eq i32 %37, 16385
  br i1 %38, label %30, label %39, !llvm.loop !61

39:                                               ; preds = %30
  %40 = ptrtoint ptr %32 to i64
  %41 = ptrtoint ptr %9 to i64
  %42 = sub i64 %40, %41
  %43 = icmp eq i8 %33, 40
  br i1 %43, label %44, label %75

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %31, i64 2
  %46 = ptrtoint ptr %45 to i64
  br label %47

47:                                               ; preds = %44, %64
  %48 = phi i32 [ 1, %44 ], [ %66, %64 ]
  %49 = phi ptr [ %45, %44 ], [ %65, %64 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  %51 = load i8, ptr %49, align 1, !tbaa !10
  switch i8 %51, label %64 [
    i8 41, label %52
    i8 40, label %58
    i8 92, label %60
    i8 0, label %68
  ]

52:                                               ; preds = %47
  %53 = add nsw i32 %48, -1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = ptrtoint ptr %49 to i64
  %57 = sub i64 %56, %46
  br label %75

58:                                               ; preds = %47
  %59 = add nsw i32 %48, 1
  br label %64

60:                                               ; preds = %47
  %61 = getelementptr inbounds i8, ptr %49, i64 2
  %62 = load i8, ptr %50, align 1, !tbaa !10
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %47, %60, %52, %58
  %65 = phi ptr [ %50, %47 ], [ %61, %60 ], [ %50, %58 ], [ %50, %52 ]
  %66 = phi i32 [ %48, %47 ], [ %48, %60 ], [ %59, %58 ], [ %53, %52 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %47, !llvm.loop !62

68:                                               ; preds = %47, %60
  %69 = phi i64 [ 1, %47 ], [ 2, %60 ]
  %70 = getelementptr inbounds i8, ptr %49, i64 %69
  %71 = getelementptr inbounds i8, ptr %70, i64 -1
  %72 = ptrtoint ptr %71 to i64
  %73 = sub i64 %72, %41
  %74 = trunc i64 %73 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 8, ptr noundef nonnull @.str.14, i32 noundef %74, ptr noundef nonnull %9) #28
  br label %97

75:                                               ; preds = %64, %55, %39
  %76 = phi ptr [ %32, %39 ], [ %50, %55 ], [ %65, %64 ]
  %77 = phi ptr [ null, %39 ], [ %45, %55 ], [ %45, %64 ]
  %78 = phi i64 [ 0, %39 ], [ %57, %55 ], [ 0, %64 ]
  %79 = icmp ugt ptr %76, %9
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull %9, i64 noundef %42, i32 noundef 1) #29
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = icmp eq ptr %77, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %83
  %86 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull %77, i64 noundef %78) #28
  br label %89

87:                                               ; preds = %80
  %88 = trunc i64 %42 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 8, ptr noundef nonnull @.str.15, i32 noundef %88, ptr noundef nonnull %9) #28
  br label %97

89:                                               ; preds = %83, %85
  %90 = phi ptr [ %86, %85 ], [ null, %83 ]
  %91 = icmp eq ptr %90, null
  %92 = select i1 %91, ptr @PL_sv_undef, ptr %90
  tail call void @PerlIO_list_push(ptr noundef %0, ptr noundef nonnull %81, ptr noundef nonnull %92) #29
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %90) #29
  br label %93

93:                                               ; preds = %15, %89, %75
  %94 = phi ptr [ %76, %89 ], [ %76, %75 ], [ %9, %15 ]
  %95 = load i8, ptr %94, align 1, !tbaa !10
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %19

97:                                               ; preds = %93, %2, %4, %87, %25, %68
  %98 = phi i32 [ -1, %68 ], [ -1, %25 ], [ -1, %87 ], [ 0, %4 ], [ 0, %2 ], [ 0, %93 ]
  ret i32 %98
}

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_default_buffer(ptr nocapture noundef %0) local_unnamed_addr #4 {
  tail call void @PerlIO_list_push(ptr noundef %0, ptr noundef nonnull @PerlIO_perlio, ptr noundef nonnull @PL_sv_undef) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @PerlIO_arg_fetch(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %4, i64 %1, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_layer_fetch(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef readnone %2) local_unnamed_addr #4 {
  %4 = icmp sgt i64 %1, -1
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !29
  %8 = icmp sgt i64 %7, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %11, i64 %1
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  br label %17

14:                                               ; preds = %5, %3
  %15 = icmp eq ptr %2, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18) #28
  br label %17

17:                                               ; preds = %14, %16, %9
  %18 = phi ptr [ %13, %9 ], [ null, %16 ], [ %2, %14 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOPop_pushed(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  tail call void @PerlIO_pop(ptr noundef nonnull %0) #29
  br label %11

11:                                               ; preds = %4, %6, %9
  %12 = phi i64 [ 0, %9 ], [ -1, %6 ], [ -1, %4 ]
  ret i64 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOBase_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #4 {
  %11 = add nsw i64 %2, -1
  %12 = tail call ptr @PerlIO_default_layer(i32 noundef 0) #29
  %13 = tail call ptr @PerlIO_layer_fetch(ptr noundef %1, i64 noundef %11, ptr noundef %12) #29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._PerlIO_funcs, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = tail call ptr %17(ptr noundef nonnull %13, ptr noundef %1, i64 noundef %11, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #29
  %24 = tail call ptr @PerlIO_push(ptr noundef nonnull %20, ptr noundef %0, ptr noundef %3, ptr noundef %23) #29
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %20) #29
  br label %30

28:                                               ; preds = %15, %10
  %29 = tail call ptr @__errno_location() #30
  store i32 22, ptr %29, align 4, !tbaa !6
  br label %30

30:                                               ; preds = %26, %22, %19, %28
  %31 = phi ptr [ null, %28 ], [ null, %26 ], [ %20, %22 ], [ null, %19 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_default_layers() local_unnamed_addr #4 {
  %1 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = tail call ptr @PerlIO_list_alloc() #29
  store ptr %4, ptr @PL_def_layerlist, align 8, !tbaa !11
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_unix) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_raw) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_perlio) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_stdio) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_crlf) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_utf8) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_remove) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_byte) #29
  %5 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !11
  tail call void @PerlIO_list_push(ptr noundef %5, ptr noundef nonnull @PerlIO_unix, ptr noundef nonnull @PL_sv_undef) #29
  %6 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !11
  tail call void @PerlIO_default_buffer(ptr noundef %6) #29
  %7 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !11
  br label %8

8:                                                ; preds = %3, %0
  %9 = phi ptr [ %7, %3 ], [ %1, %0 ]
  %10 = getelementptr inbounds %struct.PerlIO_list_s, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !29
  %12 = icmp slt i64 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  tail call void @PerlIO_default_buffer(ptr noundef nonnull %9) #29
  %14 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !11
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %9, %8 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_boot_core_PerlIO() local_unnamed_addr #4 {
  %1 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.20, ptr noundef nonnull @XS_PerlIO__Layer__find, ptr noundef nonnull @.str.21) #28
  %2 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_PerlIO__Layer__NoWarnings, ptr noundef nonnull @.str.21) #28
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_default_layer(i32 noundef %0) local_unnamed_addr #4 {
  %2 = tail call ptr @PerlIO_default_layers() #29
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.PerlIO_list_s, ptr %2, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !29
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, %0
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ %8, %4 ], [ %0, %1 ]
  %11 = sext i32 %10 to i64
  %12 = tail call ptr @PerlIO_layer_fetch(ptr noundef %2, i64 noundef %11, ptr noundef nonnull @PerlIO_stdio) #29
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_stdstreams() local_unnamed_addr #4 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  tail call fastcc void @PerlIO_init_table() #29
  %4 = tail call ptr @PerlIO_fdopen(i32 noundef 0, ptr noundef nonnull @.str.22) #29
  %5 = tail call ptr @PerlIO_fdopen(i32 noundef 1, ptr noundef nonnull @.str.23) #29
  %6 = tail call ptr @PerlIO_fdopen(i32 noundef 2, ptr noundef nonnull @.str.23) #29
  br label %7

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PerlIO_init_table() unnamed_addr #4 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @Perl_safesyscalloc(i64 noundef 64, i64 noundef 32) #28
  store ptr %4, ptr @PL_perlio, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_fdopen(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call ptr @PerlIO_openn(ptr noundef null, ptr noundef %1, i32 noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null) #29
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIO_push(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = load i64, ptr %1, align 8, !tbaa !64
  %6 = icmp eq i64 %5, 224
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i64 noundef %5, ptr noundef nonnull @.str.26, i64 noundef 224) #28
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._PerlIO_funcs, ptr %1, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !65
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = icmp ult i64 %10, 32
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i64 noundef %10, ptr noundef nonnull @.str.26, i64 noundef 32) #28
  br label %15

15:                                               ; preds = %14, %12
  %16 = icmp eq ptr %0, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %15
  %18 = load i64, ptr %9, align 8, !tbaa !65
  %19 = tail call ptr @Perl_safesyscalloc(i64 noundef %18, i64 noundef 1) #28
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !11
  store ptr %22, ptr %19, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct._PerlIO, ptr %19, i64 0, i32 1
  store ptr %1, ptr %23, align 8, !tbaa !18
  %24 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = getelementptr inbounds %struct._PerlIO, ptr %19, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !19
  store ptr %19, ptr %0, align 8, !tbaa !11
  %27 = load ptr, ptr %23, align 8, !tbaa !18
  %28 = getelementptr inbounds %struct._PerlIO_funcs, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !66
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %21
  %32 = tail call i64 %29(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %1) #28
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  tail call void @PerlIO_pop(ptr noundef nonnull %0) #29
  br label %45

35:                                               ; preds = %8
  %36 = icmp eq ptr %0, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct._PerlIO_funcs, ptr %1, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !66
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = tail call i64 %39(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %1) #28
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %15, %31, %21, %35, %41, %37
  br label %45

45:                                               ; preds = %17, %34, %41, %44
  %46 = phi ptr [ %0, %44 ], [ null, %41 ], [ null, %34 ], [ null, %17 ]
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOBase_binmode(ptr noundef %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !39
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !17
  %18 = and i32 %17, -32769
  store i32 %18, ptr %16, align 8, !tbaa !17
  br label %20

19:                                               ; preds = %10, %6
  tail call void @PerlIO_pop(ptr noundef nonnull %0) #29
  br label %20

20:                                               ; preds = %1, %3, %15, %19
  %21 = phi i64 [ 0, %19 ], [ 0, %15 ], [ -1, %3 ], [ -1, %1 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIORaw_pushed(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %11 = load ptr, ptr %0, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %9, %31
  %14 = phi ptr [ %33, %31 ], [ %11, %9 ]
  %15 = phi ptr [ %32, %31 ], [ %0, %9 ]
  %16 = getelementptr inbounds %struct._PerlIO, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._PerlIO_funcs, ptr %17, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = tail call i64 %21(ptr noundef nonnull %15) #28
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load ptr, ptr %15, align 8, !tbaa !11
  %28 = icmp eq ptr %27, %14
  %29 = select i1 %28, ptr %27, ptr %15
  br label %31

30:                                               ; preds = %19, %13
  tail call void @PerlIO_pop(ptr noundef nonnull %15) #29
  br label %31

31:                                               ; preds = %26, %30
  %32 = phi ptr [ %15, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %13, !llvm.loop !68

35:                                               ; preds = %31
  %36 = load ptr, ptr %0, align 8, !tbaa !11
  %37 = icmp eq ptr %36, null
  %38 = sext i1 %37 to i64
  br label %39

39:                                               ; preds = %23, %9, %35, %4, %6
  %40 = phi i64 [ -1, %6 ], [ -1, %4 ], [ %38, %35 ], [ -1, %9 ], [ -1, %23 ]
  ret i64 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PerlIO_apply_layera(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = icmp slt i64 %3, %4
  br i1 %6, label %7, label %18

7:                                                ; preds = %5, %15
  %8 = phi i64 [ %16, %15 ], [ %3, %5 ]
  %9 = tail call ptr @PerlIO_layer_fetch(ptr noundef %2, i64 noundef %8, ptr noundef null) #29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @PerlIO_arg_fetch(ptr noundef %2, i64 noundef %8) #29
  %13 = tail call ptr @PerlIO_push(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %12) #29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %7, %11
  %16 = add i64 %8, 1
  %17 = icmp eq i64 %16, %4
  br i1 %17, label %18, label %7

18:                                               ; preds = %15, %11, %5
  %19 = phi i32 [ 0, %5 ], [ -1, %11 ], [ 0, %15 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PerlIO_apply_layers(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  tail call void @Perl_push_scope() #28
  %4 = load ptr, ptr @PL_errgv, align 8, !tbaa !11
  %5 = tail call ptr @Perl_save_scalar(ptr noundef %4) #28
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = tail call ptr @PerlIO_list_alloc() #29
  %11 = tail call i32 @PerlIO_parse_layers(ptr noundef %10, ptr noundef nonnull %2) #29
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.PerlIO_list_s, ptr %10, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !29
  %16 = tail call i32 @PerlIO_apply_layera(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %10, i64 noundef 0, i64 noundef %15) #29, !range !69
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 [ %16, %13 ], [ -1, %9 ]
  tail call void @PerlIO_list_free(ptr noundef %10) #29
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi i32 [ %18, %17 ], [ 0, %3 ]
  tail call void @Perl_pop_scope() #28
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @Perl_save_scalar(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PerlIO_binmode(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @PerlIO_apply_layers(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %3) #29, !range !69
  %8 = icmp eq i32 %7, 0
  br label %12

9:                                                ; preds = %4
  %10 = tail call ptr @PerlIO_push(ptr noundef nonnull %0, ptr noundef nonnull @PerlIO_raw, ptr noundef null, ptr noundef null) #29
  %11 = icmp ne ptr %10, null
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ %8, %6 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO__close(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #28
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call i64 @PerlIOBase_close(ptr noundef nonnull %0) #29
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = trunc i64 %19 to i32
  br label %23

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #30
  store i32 9, ptr %22, align 4, !tbaa !6
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ -1, %21 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBase_close(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %8 = sext i32 %7 to i64
  %9 = load ptr, ptr %0, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct._PerlIO, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !17
  %12 = and i32 %11, -2098689
  store i32 %12, ptr %10, align 8, !tbaa !17
  %13 = load ptr, ptr %4, align 8, !tbaa !11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %6, %29
  %16 = phi ptr [ %33, %29 ], [ %13, %6 ]
  %17 = phi ptr [ %16, %29 ], [ %4, %6 ]
  %18 = getelementptr inbounds %struct._PerlIO, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct._PerlIO_funcs, ptr %19, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = tail call i64 %23(ptr noundef nonnull %17) #28
  %27 = icmp eq i64 %26, 0
  %28 = select i1 %27, i64 %8, i64 -1
  br label %37

29:                                               ; preds = %15, %21
  %30 = getelementptr inbounds %struct._PerlIO, ptr %16, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !17
  %32 = and i32 %31, -2098689
  store i32 %32, ptr %30, align 8, !tbaa !17
  %33 = load ptr, ptr %16, align 8, !tbaa !11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %15

35:                                               ; preds = %3, %1
  %36 = tail call ptr @__errno_location() #30
  store i32 9, ptr %36, align 4, !tbaa !6
  br label %37

37:                                               ; preds = %29, %6, %25, %35
  %38 = phi i64 [ -1, %35 ], [ %28, %25 ], [ %8, %6 ], [ %8, %29 ]
  ret i64 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_fileno(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #28
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call i64 @PerlIOBase_fileno(ptr noundef nonnull %0) #29, !range !72
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = trunc i64 %19 to i32
  br label %23

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #30
  store i32 9, ptr %22, align 4, !tbaa !6
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ -1, %21 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBase_fileno(ptr noundef readonly %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %4) #29
  %8 = sext i32 %7 to i64
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi i64 [ %8, %6 ], [ -1, %3 ], [ -1, %1 ]
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_resolve_layers(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #4 {
  %5 = tail call ptr @PerlIO_default_layers() #29
  %6 = load ptr, ptr @PL_perlio, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @PerlIO_stdstreams() #29
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr %3, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !55
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !55
  %22 = and i32 %21, 1048576
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = tail call fastcc ptr @PerlIO_layer_from_ref(ptr noundef nonnull %19) #29
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @PerlIO_list_alloc() #29
  tail call void @PerlIO_list_push(ptr noundef %28, ptr noundef nonnull %25, ptr noundef nonnull @PL_sv_undef) #29
  br label %29

29:                                               ; preds = %11, %17, %27, %24, %9
  %30 = phi ptr [ %5, %9 ], [ %5, %17 ], [ %5, %11 ], [ %28, %27 ], [ %5, %24 ]
  %31 = phi i1 [ false, %9 ], [ false, %17 ], [ false, %11 ], [ true, %27 ], [ false, %24 ]
  %32 = icmp eq ptr %0, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i8, ptr %0, align 1, !tbaa !10
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29, %33
  %37 = tail call ptr @Perl_PerlIO_context_layers(ptr noundef %1) #29
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = load i8, ptr %37, align 1, !tbaa !10
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %33, %39
  %43 = phi ptr [ %37, %39 ], [ %0, %33 ]
  br i1 %31, label %46, label %44

44:                                               ; preds = %42
  %45 = tail call ptr @PerlIO_clone_list(ptr noundef %30, ptr poison) #29
  br label %46

46:                                               ; preds = %42, %44
  %47 = phi ptr [ %45, %44 ], [ %30, %42 ]
  %48 = tail call i32 @PerlIO_parse_layers(ptr noundef %47, ptr noundef nonnull %43) #29
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  tail call void @PerlIO_list_free(ptr noundef %47) #29
  br label %55

51:                                               ; preds = %39, %36
  br i1 %31, label %55, label %52

52:                                               ; preds = %51
  %53 = load i64, ptr %30, align 8, !tbaa !26
  %54 = add nsw i64 %53, 1
  store i64 %54, ptr %30, align 8, !tbaa !26
  br label %55

55:                                               ; preds = %51, %52, %50, %46
  %56 = phi ptr [ null, %50 ], [ %47, %46 ], [ %30, %52 ], [ %30, %51 ]
  ret ptr %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @PerlIO_layer_from_ref(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !55
  %4 = and i32 %3, 255
  %5 = icmp ult i32 %4, 11
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = add nsw i32 %4, -9
  %8 = icmp ult i32 %7, 2
  %9 = and i32 %3, 16826368
  %10 = icmp eq i32 %9, 32768
  %11 = and i1 %10, %8
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.32, i64 noundef 6, i32 noundef 1) #29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 8, ptr noundef nonnull @.str.33) #28
  br label %26

16:                                               ; preds = %6, %1
  %17 = trunc i32 %3 to i8
  switch i8 %17, label %26 [
    i8 11, label %18
    i8 12, label %20
    i8 13, label %22
    i8 9, label %24
  ]

18:                                               ; preds = %16
  %19 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.34, i64 noundef 5, i32 noundef 0) #29
  br label %26

20:                                               ; preds = %16
  %21 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.35, i64 noundef 4, i32 noundef 0) #29
  br label %26

22:                                               ; preds = %16
  %23 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.36, i64 noundef 4, i32 noundef 0) #29
  br label %26

24:                                               ; preds = %16
  %25 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.37, i64 noundef 4, i32 noundef 0) #29
  br label %26

26:                                               ; preds = %16, %12, %15, %24, %22, %20, %18
  %27 = phi ptr [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ null, %15 ], [ %13, %12 ], [ null, %16 ]
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_PerlIO_context_layers(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @PL_curcop, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !tbaa !10
  %8 = icmp eq i8 %7, 114
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !73
  %12 = and i32 %11, 524288
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %42, label %19

14:                                               ; preds = %4, %6
  %15 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !73
  %17 = and i32 %16, 262144
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %9, %14
  %20 = phi ptr [ @.str.71, %9 ], [ @.str.72, %14 ]
  %21 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %22, ptr noundef nonnull %20, i64 noundef 5, i32 noundef 0, i32 noundef 0) #28
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !55
  %26 = and i32 %25, 65280
  %27 = icmp ne i32 %26, 0
  %28 = and i32 %25, 255
  %29 = icmp eq i32 %28, 8
  %30 = or i1 %27, %29
  %31 = and i32 %25, 16777471
  %32 = icmp eq i32 %31, 16777226
  %33 = or i1 %32, %30
  br i1 %33, label %34, label %42

34:                                               ; preds = %19
  %35 = and i32 %25, 2098176
  %36 = icmp eq i32 %35, 1024
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !10
  br label %42

40:                                               ; preds = %34
  %41 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %23, ptr noundef null, i32 noundef 34) #28
  br label %42

42:                                               ; preds = %9, %40, %37, %19, %14, %1
  %43 = phi ptr [ null, %1 ], [ null, %14 ], [ %39, %37 ], [ %41, %40 ], [ null, %19 ], [ null, %9 ]
  ret ptr %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_openn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #4 {
  %9 = alloca ptr, align 8
  %10 = icmp eq ptr %5, null
  %11 = icmp eq i32 %6, 1
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load ptr, ptr %7, align 8, !tbaa !11
  %15 = icmp eq ptr %14, @PL_sv_undef
  br i1 %15, label %16, label %62

16:                                               ; preds = %13
  %17 = tail call ptr @PerlIO_tmpfile() #29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %110, label %19

19:                                               ; preds = %16
  %20 = icmp eq ptr %0, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19, %21
  %25 = tail call ptr @Perl_PerlIO_context_layers(ptr noundef %1) #29
  %26 = icmp eq ptr %25, null
  br i1 %26, label %110, label %27

27:                                               ; preds = %24
  %28 = load i8, ptr %25, align 1, !tbaa !10
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %110, label %30

30:                                               ; preds = %21, %27
  %31 = phi ptr [ %25, %27 ], [ %0, %21 ]
  %32 = tail call i32 @PerlIO_apply_layers(ptr noundef nonnull %17, ptr noundef %1, ptr noundef nonnull %31) #29, !range !69
  br label %110

33:                                               ; preds = %8
  br i1 %10, label %62, label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr %5, align 8, !tbaa !11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %62, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #31
  store ptr %35, ptr %9, align 8, !tbaa !11
  %38 = tail call ptr @PerlIO_list_alloc() #29
  br label %39

39:                                               ; preds = %37, %53
  %40 = phi ptr [ %59, %53 ], [ %35, %37 ]
  %41 = getelementptr inbounds %struct._PerlIO, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !18
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct._PerlIO_funcs, ptr %42, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !23
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = call ptr %46(ptr noundef nonnull %9, ptr noundef null, i32 noundef 0) #28
  %50 = load ptr, ptr %9, align 8, !tbaa !11
  %51 = getelementptr inbounds %struct._PerlIO, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !18
  br label %53

53:                                               ; preds = %48, %44, %39
  %54 = phi ptr [ %52, %48 ], [ %42, %44 ], [ null, %39 ]
  %55 = phi ptr [ %49, %48 ], [ null, %44 ], [ null, %39 ]
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, ptr @PL_sv_undef, ptr %55
  call void @PerlIO_list_push(ptr noundef %38, ptr noundef %54, ptr noundef nonnull %57) #29
  call fastcc void @S_SvREFCNT_dec(ptr noundef %55) #29
  %58 = load ptr, ptr %9, align 8, !tbaa !11
  %59 = load ptr, ptr %58, align 8, !tbaa !15
  store ptr %59, ptr %9, align 8, !tbaa !11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %39, !llvm.loop !76

61:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #31
  br label %65

62:                                               ; preds = %13, %34, %33
  %63 = tail call ptr @PerlIO_resolve_layers(ptr noundef %0, ptr noundef %1, i32 noundef %6, ptr noundef %7) #29
  %64 = icmp eq ptr %63, null
  br i1 %64, label %110, label %65

65:                                               ; preds = %62, %61
  %66 = phi ptr [ %38, %61 ], [ %63, %62 ]
  %67 = getelementptr inbounds %struct.PerlIO_list_s, ptr %66, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %108

70:                                               ; preds = %65, %79
  %71 = phi i64 [ %72, %79 ], [ %68, %65 ]
  %72 = add nsw i64 %71, -1
  %73 = call ptr @PerlIO_layer_fetch(ptr noundef %66, i64 noundef %72, ptr noundef null) #29
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct._PerlIO_funcs, ptr %73, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !63
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %70, %75
  %80 = icmp ugt i64 %71, 1
  br i1 %80, label %70, label %108

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct._PerlIO_funcs, ptr %73, i64 0, i32 6
  %83 = icmp sgt i32 %6, 1
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct._PerlIO_funcs, ptr %73, i64 0, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !39
  %87 = and i32 %86, 131072
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct._PerlIO_funcs, ptr %73, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38, ptr noundef %91) #28
  %92 = load ptr, ptr %82, align 8, !tbaa !63
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = tail call ptr @__errno_location() #30
  store i32 22, ptr %95, align 4, !tbaa !6
  br label %108

96:                                               ; preds = %81, %84, %89
  %97 = phi ptr [ %92, %89 ], [ %77, %84 ], [ %77, %81 ]
  %98 = call ptr %97(ptr noundef nonnull %73, ptr noundef %66, i64 noundef %72, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #28
  %99 = icmp eq ptr %98, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = load i64, ptr %67, align 8, !tbaa !29
  %102 = icmp slt i64 %71, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = call i32 @PerlIO_apply_layera(ptr noundef nonnull %98, ptr noundef %1, ptr noundef nonnull %66, i64 noundef %71, i64 noundef %101) #29, !range !69
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = call i32 @Perl_PerlIO_close(ptr noundef nonnull %98) #29
  br label %108

108:                                              ; preds = %79, %65, %100, %106, %103, %96, %94
  %109 = phi ptr [ null, %106 ], [ %98, %103 ], [ %98, %100 ], [ null, %96 ], [ null, %94 ], [ %5, %65 ], [ %5, %79 ]
  call void @PerlIO_list_free(ptr noundef %66) #29
  br label %110

110:                                              ; preds = %108, %62, %24, %27, %30, %16
  %111 = phi ptr [ %17, %30 ], [ %17, %27 ], [ %17, %24 ], [ null, %16 ], [ %109, %108 ], [ null, %62 ]
  ret ptr %111
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_tmpfile() local_unnamed_addr #4 {
  %1 = tail call noalias ptr @tmpfile64() #29
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @fileno(ptr noundef nonnull %1) #28
  %5 = tail call ptr @PerlIO_fdopen(i32 noundef %4, ptr noundef nonnull @.str.70) #29
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ null, %0 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_PerlIO_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i64 %14(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #28
  br label %22

18:                                               ; preds = %12, %8
  %19 = tail call i64 @PerlIOBase_read(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #29
  br label %22

20:                                               ; preds = %5, %3
  %21 = tail call ptr @__errno_location() #30
  store i32 9, ptr %21, align 4, !tbaa !6
  br label %22

22:                                               ; preds = %16, %18, %20
  %23 = phi i64 [ -1, %20 ], [ %17, %16 ], [ %19, %18 ]
  ret i64 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBase_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = icmp eq i64 %2, 0
  br i1 %12, label %48, label %18

13:                                               ; preds = %5
  %14 = or i32 %8, 2048
  store i32 %14, ptr %7, align 8, !tbaa !17
  %15 = tail call ptr @__errno_location() #30
  store i32 9, ptr %15, align 4, !tbaa !6
  tail call void @Perl_PerlIO_save_errno(ptr noundef nonnull %0) #29
  br label %53

16:                                               ; preds = %38
  %17 = icmp eq i64 %39, 0
  br i1 %17, label %48, label %35

18:                                               ; preds = %11, %35
  %19 = phi i64 [ %36, %35 ], [ %2, %11 ]
  %20 = phi ptr [ %37, %35 ], [ %1, %11 ]
  %21 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef nonnull %0) #29
  %22 = icmp sgt i64 %21, 0
  %23 = tail call i64 @llvm.smin.i64(i64 %19, i64 %21)
  %24 = icmp slt i64 %19, 0
  %25 = select i1 %24, i64 %21, i64 %23
  %26 = select i1 %22, i64 %25, i64 0
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = tail call ptr @Perl_PerlIO_get_ptr(ptr noundef nonnull %0) #29
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %29, i64 %26, i1 false)
  %30 = getelementptr inbounds i8, ptr %29, i64 %26
  %31 = sub nsw i64 %21, %26
  tail call void @Perl_PerlIO_set_ptrcnt(ptr noundef nonnull %0, ptr noundef nonnull %30, i64 noundef %31) #29
  %32 = sub i64 %19, %26
  %33 = getelementptr inbounds i8, ptr %20, i64 %26
  %34 = icmp eq i64 %31, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %45, %16
  %36 = phi i64 [ %32, %28 ], [ %39, %16 ], [ %39, %45 ]
  %37 = phi ptr [ %33, %28 ], [ %40, %16 ], [ %40, %45 ]
  br label %18

38:                                               ; preds = %28, %18
  %39 = phi i64 [ %32, %28 ], [ %19, %18 ]
  %40 = phi ptr [ %33, %28 ], [ %20, %18 ]
  %41 = phi i64 [ %31, %28 ], [ %21, %18 ]
  %42 = icmp ne i64 %39, 0
  %43 = icmp slt i64 %41, 1
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %16

45:                                               ; preds = %38
  %46 = tail call i32 @Perl_PerlIO_fill(ptr noundef nonnull %0) #29
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %35, label %48

48:                                               ; preds = %16, %45, %11
  %49 = phi ptr [ %1, %11 ], [ %40, %45 ], [ %40, %16 ]
  %50 = ptrtoint ptr %49 to i64
  %51 = ptrtoint ptr %1 to i64
  %52 = sub i64 %50, %51
  br label %53

53:                                               ; preds = %3, %48, %13
  %54 = phi i64 [ %52, %48 ], [ 0, %13 ], [ 0, %3 ]
  ret i64 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_PerlIO_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i64 %14(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #28
  br label %22

18:                                               ; preds = %12, %8
  %19 = tail call i64 @PerlIOBase_unread(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #29
  br label %22

20:                                               ; preds = %5, %3
  %21 = tail call ptr @__errno_location() #30
  store i32 9, ptr %21, align 4, !tbaa !6
  br label %22

22:                                               ; preds = %16, %18, %20
  %23 = phi i64 [ -1, %20 ], [ %17, %16 ], [ %19, %18 ]
  ret i64 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBase_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 {
  %4 = tail call i64 @Perl_PerlIO_tell(ptr noundef %0) #29
  %5 = tail call ptr @PerlIO_push(ptr noundef %0, ptr noundef nonnull @PerlIO_pending, ptr noundef nonnull @.str.44, ptr noundef null) #29
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.PerlIOBuf, ptr %6, i64 0, i32 4
  store i64 %4, ptr %7, align 8, !tbaa !79
  %8 = tail call i64 @PerlIOBuf_unread(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #29
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_PerlIO_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !81
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %8, %12
  %17 = tail call ptr @__errno_location() #30
  store i32 22, ptr %17, align 4, !tbaa !6
  br label %22

18:                                               ; preds = %12
  %19 = tail call i64 %14(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #28
  br label %22

20:                                               ; preds = %5, %3
  %21 = tail call ptr @__errno_location() #30
  store i32 9, ptr %21, align 4, !tbaa !6
  br label %22

22:                                               ; preds = %20, %16, %18
  %23 = phi i64 [ %19, %18 ], [ -1, %16 ], [ -1, %20 ]
  ret i64 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %8, %12
  %17 = tail call ptr @__errno_location() #30
  store i32 22, ptr %17, align 4, !tbaa !6
  br label %23

18:                                               ; preds = %12
  %19 = tail call i64 %14(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2) #28
  %20 = trunc i64 %19 to i32
  br label %23

21:                                               ; preds = %5, %3
  %22 = tail call ptr @__errno_location() #30
  store i32 9, ptr %22, align 4, !tbaa !6
  br label %23

23:                                               ; preds = %21, %16, %18
  %24 = phi i32 [ %20, %18 ], [ -1, %16 ], [ -1, %21 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_PerlIO_tell(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %6, %10
  %15 = tail call ptr @__errno_location() #30
  store i32 22, ptr %15, align 4, !tbaa !6
  br label %20

16:                                               ; preds = %10
  %17 = tail call i64 %12(ptr noundef nonnull %0) #28
  br label %20

18:                                               ; preds = %3, %1
  %19 = tail call ptr @__errno_location() #30
  store i32 9, ptr %19, align 4, !tbaa !6
  br label %20

20:                                               ; preds = %18, %14, %16
  %21 = phi i64 [ %17, %16 ], [ -1, %14 ], [ -1, %18 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOBase_flush_linebuf() local_unnamed_addr #4 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %24, label %6

3:                                                ; preds = %21
  %4 = load ptr, ptr %7, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6, !llvm.loop !84

6:                                                ; preds = %0, %3
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  br label %8

8:                                                ; preds = %6, %21
  %9 = phi ptr [ %7, %6 ], [ %11, %21 ]
  %10 = phi i32 [ 1, %6 ], [ %22, %21 ]
  %11 = getelementptr inbounds %struct._PerlIO, ptr %9, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !17
  %17 = and i32 %16, 524800
  %18 = icmp eq i32 %17, 524800
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %11) #29
  br label %21

21:                                               ; preds = %19, %14, %8
  %22 = add nuw nsw i32 %10, 1
  %23 = icmp eq i32 %22, 64
  br i1 %23, label %3, label %8, !llvm.loop !85

24:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_fill(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %6, %10
  %15 = tail call ptr @__errno_location() #30
  store i32 22, ptr %15, align 4, !tbaa !6
  br label %21

16:                                               ; preds = %10
  %17 = tail call i64 %12(ptr noundef nonnull %0) #28
  %18 = trunc i64 %17 to i32
  br label %21

19:                                               ; preds = %3, %1
  %20 = tail call ptr @__errno_location() #30
  store i32 9, ptr %20, align 4, !tbaa !6
  br label %21

21:                                               ; preds = %19, %14, %16
  %22 = phi i32 [ %18, %16 ], [ -1, %14 ], [ -1, %19 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_isutf8(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = lshr i32 %8, 15
  %10 = and i32 %9, 1
  br label %13

11:                                               ; preds = %3, %1
  %12 = tail call ptr @__errno_location() #30
  store i32 9, ptr %12, align 4, !tbaa !6
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %10, %6 ], [ -1, %11 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_eof(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #28
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call i64 @PerlIOBase_eof(ptr noundef nonnull %0) #29, !range !88
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = trunc i64 %19 to i32
  br label %23

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #30
  store i32 9, ptr %22, align 4, !tbaa !6
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ -1, %21 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOBase_eof(ptr noundef readonly %0) #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = lshr i32 %8, 8
  %10 = and i32 %9, 1
  %11 = zext nneg i32 %10 to i64
  br label %12

12:                                               ; preds = %1, %3, %6
  %13 = phi i64 [ %11, %6 ], [ 1, %3 ], [ 1, %1 ]
  ret i64 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_error(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #28
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call i64 @PerlIOBase_error(ptr noundef nonnull %0) #29, !range !88
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = trunc i64 %19 to i32
  br label %23

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #30
  store i32 9, ptr %22, align 4, !tbaa !6
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ -1, %21 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOBase_error(ptr noundef readonly %0) #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = lshr i32 %8, 11
  %10 = and i32 %9, 1
  %11 = zext nneg i32 %10 to i64
  br label %12

12:                                               ; preds = %1, %3, %6
  %13 = phi i64 [ %11, %6 ], [ 1, %3 ], [ 1, %1 ]
  ret i64 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_PerlIO_clearerr(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef nonnull %0) #28
  br label %18

15:                                               ; preds = %10, %6
  tail call void @PerlIOBase_clearerr(ptr noundef nonnull %0) #29
  br label %18

16:                                               ; preds = %3, %1
  %17 = tail call ptr @__errno_location() #30
  store i32 9, ptr %17, align 4, !tbaa !6
  br label %18

18:                                               ; preds = %14, %15, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOBase_clearerr(ptr noundef readonly %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = and i32 %8, -2305
  store i32 %9, ptr %7, align 8, !tbaa !17
  %10 = load ptr, ptr %4, align 8, !tbaa !11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void @Perl_PerlIO_clearerr(ptr noundef nonnull %4) #29
  br label %13

13:                                               ; preds = %6, %12, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_PerlIO_setlinebuf(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef nonnull %0) #28
  br label %18

15:                                               ; preds = %10, %6
  tail call void @PerlIOBase_setlinebuf(ptr noundef nonnull %0) #29
  br label %18

16:                                               ; preds = %3, %1
  %17 = tail call ptr @__errno_location() #30
  store i32 9, ptr %17, align 4, !tbaa !6
  br label %18

18:                                               ; preds = %14, %15, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PerlIOBase_setlinebuf(ptr noundef readonly %0) #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = or i32 %8, 524288
  store i32 %9, ptr %7, align 8, !tbaa !17
  br label %10

10:                                               ; preds = %6, %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_has_base(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %6, %1, %3, %10
  %16 = phi i32 [ %14, %10 ], [ 0, %3 ], [ 0, %1 ], [ 0, %6 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_fast_gets(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = and i32 %8, 4194304
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._PerlIO_funcs, ptr %13, i64 0, i32 27
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %11, %1, %3, %6, %15
  %21 = phi i32 [ %19, %15 ], [ 0, %6 ], [ 0, %3 ], [ 0, %1 ], [ 0, %11 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_has_cntptr(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 26
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %14, %10, %1, %3, %6
  %20 = phi i32 [ 0, %6 ], [ 0, %3 ], [ 0, %1 ], [ %18, %14 ], [ 0, %10 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_canset_cnt(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %6, %1, %3, %10
  %16 = phi i32 [ %14, %10 ], [ 0, %3 ], [ 0, %1 ], [ 0, %6 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_PerlIO_get_base(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %6, %10
  %15 = tail call ptr @__errno_location() #30
  store i32 22, ptr %15, align 4, !tbaa !6
  br label %20

16:                                               ; preds = %10
  %17 = tail call ptr %12(ptr noundef nonnull %0) #28
  br label %20

18:                                               ; preds = %3, %1
  %19 = tail call ptr @__errno_location() #30
  store i32 9, ptr %19, align 4, !tbaa !6
  br label %20

20:                                               ; preds = %18, %14, %16
  %21 = phi ptr [ %17, %16 ], [ null, %14 ], [ null, %18 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_PerlIO_get_bufsiz(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %6, %10
  %15 = tail call ptr @__errno_location() #30
  store i32 22, ptr %15, align 4, !tbaa !6
  br label %20

16:                                               ; preds = %10
  %17 = tail call i64 %12(ptr noundef nonnull %0) #28
  br label %20

18:                                               ; preds = %3, %1
  %19 = tail call ptr @__errno_location() #30
  store i32 9, ptr %19, align 4, !tbaa !6
  br label %20

20:                                               ; preds = %18, %14, %16
  %21 = phi i64 [ %17, %16 ], [ -1, %14 ], [ -1, %18 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_PerlIO_get_ptr(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %6, %10
  %15 = tail call ptr @__errno_location() #30
  store i32 22, ptr %15, align 4, !tbaa !6
  br label %20

16:                                               ; preds = %10
  %17 = tail call ptr %12(ptr noundef nonnull %0) #28
  br label %20

18:                                               ; preds = %3, %1
  %19 = tail call ptr @__errno_location() #30
  store i32 9, ptr %19, align 4, !tbaa !6
  br label %20

20:                                               ; preds = %18, %14, %16
  %21 = phi ptr [ %17, %16 ], [ null, %14 ], [ null, %18 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_PerlIO_get_cnt(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %6, %10
  %15 = tail call ptr @__errno_location() #30
  store i32 22, ptr %15, align 4, !tbaa !6
  br label %20

16:                                               ; preds = %10
  %17 = tail call i64 %12(ptr noundef nonnull %0) #28
  br label %20

18:                                               ; preds = %3, %1
  %19 = tail call ptr @__errno_location() #30
  store i32 9, ptr %19, align 4, !tbaa !6
  br label %20

20:                                               ; preds = %18, %14, %16
  %21 = phi i64 [ %17, %16 ], [ -1, %14 ], [ -1, %18 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_PerlIO_set_cnt(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._PerlIO_funcs, ptr %9, i64 0, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef nonnull %0, ptr noundef null, i64 noundef %1) #28
  br label %20

16:                                               ; preds = %11, %7
  %17 = tail call ptr @__errno_location() #30
  store i32 22, ptr %17, align 4, !tbaa !6
  br label %20

18:                                               ; preds = %4, %2
  %19 = tail call ptr @__errno_location() #30
  store i32 9, ptr %19, align 4, !tbaa !6
  br label %20

20:                                               ; preds = %15, %16, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_PerlIO_set_ptrcnt(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 27
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #28
  br label %21

17:                                               ; preds = %12, %8
  %18 = tail call ptr @__errno_location() #30
  store i32 22, ptr %18, align 4, !tbaa !6
  br label %21

19:                                               ; preds = %5, %3
  %20 = tail call ptr @__errno_location() #30
  store i32 9, ptr %20, align 4, !tbaa !6
  br label %21

21:                                               ; preds = %16, %17, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @PerlIOUtf8_pushed(ptr noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef readonly %3) #10 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %3, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._PerlIO_funcs, ptr %3, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !39
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !17
  %19 = or i32 %18, 32768
  store i32 %19, ptr %17, align 8, !tbaa !17
  br label %24

20:                                               ; preds = %11, %9
  %21 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !17
  %23 = and i32 %22, -32769
  store i32 %23, ptr %21, align 8, !tbaa !17
  br label %24

24:                                               ; preds = %4, %6, %16, %20
  %25 = phi i64 [ 0, %20 ], [ 0, %16 ], [ -1, %6 ], [ -1, %4 ]
  ret i64 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOBase_popped(ptr nocapture readnone %0) #0 {
  ret i64 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @PerlIO_modestr(ptr noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !17
  %10 = zext i32 %9 to i64
  %11 = and i64 %10, 8192
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 97, ptr %1, align 1, !tbaa !10
  %15 = and i64 %10, 1024
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 43, ptr %14, align 1, !tbaa !10
  br label %33

19:                                               ; preds = %7
  %20 = and i64 %10, 1024
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 114, ptr %1, align 1, !tbaa !10
  %24 = and i64 %10, 512
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 43, ptr %23, align 1, !tbaa !10
  br label %33

28:                                               ; preds = %19
  %29 = and i64 %10, 512
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 119, ptr %1, align 1, !tbaa !10
  br label %33

33:                                               ; preds = %17, %13, %28, %22, %26, %31, %4, %2
  %34 = phi ptr [ %1, %4 ], [ %1, %2 ], [ %18, %17 ], [ %14, %13 ], [ %27, %26 ], [ %23, %22 ], [ %32, %31 ], [ %1, %28 ]
  store i8 0, ptr %34, align 1, !tbaa !10
  ret ptr %1
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @PerlIOBase_pushed(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2, ptr noundef readonly %3) local_unnamed_addr #11 {
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = and i32 %7, -13825
  store i32 %8, ptr %6, align 8, !tbaa !17
  %9 = icmp eq ptr %3, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %3, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = or i32 %8, 4194304
  store i32 %15, ptr %6, align 8, !tbaa !17
  br label %16

16:                                               ; preds = %14, %10, %4
  %17 = phi i32 [ %15, %14 ], [ %8, %10 ], [ %8, %4 ]
  %18 = icmp eq ptr %1, null
  br i1 %18, label %49, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr %1, align 1, !tbaa !10
  switch i8 %20, label %24 [
    i8 35, label %21
    i8 73, label %21
  ]

21:                                               ; preds = %19, %19
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !10
  br label %24

24:                                               ; preds = %19, %21
  %25 = phi i8 [ %20, %19 ], [ %23, %21 ]
  %26 = phi ptr [ %1, %19 ], [ %22, %21 ]
  switch i8 %25, label %29 [
    i8 114, label %31
    i8 97, label %27
    i8 119, label %28
  ]

27:                                               ; preds = %24
  br label %31

28:                                               ; preds = %24
  br label %31

29:                                               ; preds = %24
  %30 = tail call ptr @__errno_location() #30
  store i32 22, ptr %30, align 4, !tbaa !6
  br label %57

31:                                               ; preds = %24, %28, %27
  %32 = phi i32 [ 4608, %28 ], [ 8704, %27 ], [ 1024, %24 ]
  %33 = or i32 %17, %32
  br label %34

34:                                               ; preds = %45, %31
  %35 = phi i32 [ %33, %31 ], [ %46, %45 ]
  %36 = phi ptr [ %26, %31 ], [ %37, %45 ]
  store i32 %35, ptr %6, align 8, !tbaa !17
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !10
  switch i8 %38, label %47 [
    i8 0, label %57
    i8 43, label %39
    i8 98, label %41
    i8 116, label %43
  ]

39:                                               ; preds = %34
  %40 = or i32 %35, 1536
  br label %45

41:                                               ; preds = %34
  %42 = and i32 %35, -16385
  br label %45

43:                                               ; preds = %34
  %44 = or i32 %35, 16384
  br label %45

45:                                               ; preds = %43, %41, %39
  %46 = phi i32 [ %44, %43 ], [ %42, %41 ], [ %40, %39 ]
  br label %34, !llvm.loop !97

47:                                               ; preds = %34
  %48 = tail call ptr @__errno_location() #30
  store i32 22, ptr %48, align 4, !tbaa !6
  br label %57

49:                                               ; preds = %16
  %50 = load ptr, ptr %5, align 8, !tbaa !15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct._PerlIO, ptr %50, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !17
  %55 = and i32 %54, 13824
  %56 = or i32 %17, %55
  store i32 %56, ptr %6, align 8, !tbaa !17
  br label %57

57:                                               ; preds = %34, %52, %49, %47, %29
  %58 = phi i64 [ -1, %29 ], [ -1, %47 ], [ 0, %49 ], [ 0, %52 ], [ 0, %34 ]
  ret i64 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 {
  %4 = getelementptr inbounds i8, ptr %1, i64 %2
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = and i32 %7, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  br label %12

12:                                               ; preds = %10, %3
  %13 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %18 = load ptr, ptr %13, align 8, !tbaa !98
  %19 = icmp eq ptr %18, null
  br i1 %19, label %66, label %20

20:                                               ; preds = %12, %16
  %21 = phi ptr [ %18, %16 ], [ %14, %12 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !11
  %23 = getelementptr inbounds %struct._PerlIO, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !17
  %25 = and i32 %24, 262144
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !99
  %30 = ptrtoint ptr %29 to i64
  %31 = ptrtoint ptr %21 to i64
  %32 = sub i64 %30, %31
  br label %46

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 5
  %35 = load i64, ptr %34, align 8, !tbaa !100
  %36 = getelementptr inbounds i8, ptr %21, i64 %35
  %37 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !101
  %38 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 3
  store ptr %36, ptr %38, align 8, !tbaa !99
  %39 = load ptr, ptr %0, align 8, !tbaa !11
  %40 = getelementptr inbounds %struct._PerlIO, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !17
  %42 = or i32 %41, 262144
  store i32 %42, ptr %40, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 4
  %44 = load i64, ptr %43, align 8, !tbaa !79
  %45 = sub i64 %44, %35
  store i64 %45, ptr %43, align 8, !tbaa !79
  br label %46

46:                                               ; preds = %33, %27
  %47 = phi ptr [ %29, %27 ], [ %36, %33 ]
  %48 = phi i64 [ %32, %27 ], [ %35, %33 ]
  %49 = tail call i64 @llvm.smin.i64(i64 %48, i64 %2)
  %50 = icmp slt i64 %2, 0
  %51 = select i1 %50, i64 %48, i64 %49
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 3
  %55 = sub nsw i64 0, %51
  %56 = getelementptr inbounds i8, ptr %47, i64 %55
  store ptr %56, ptr %54, align 8, !tbaa !99
  %57 = icmp eq ptr %4, %47
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, ptr %4, i64 %55
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %56, ptr nonnull align 1 %59, i64 %51, i1 false)
  br label %60

60:                                               ; preds = %58, %53
  %61 = sub i64 %2, %51
  %62 = load ptr, ptr %0, align 8, !tbaa !11
  %63 = getelementptr inbounds %struct._PerlIO, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !17
  %65 = and i32 %64, -257
  store i32 %65, ptr %63, align 8, !tbaa !17
  br label %66

66:                                               ; preds = %46, %60, %16
  %67 = phi i64 [ %61, %60 ], [ %2, %46 ], [ %2, %16 ]
  %68 = phi i64 [ %51, %60 ], [ 0, %46 ], [ 0, %16 ]
  %69 = icmp eq i64 %67, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = tail call i64 @PerlIOBase_unread(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %67) #29
  %72 = add nsw i64 %71, %68
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi i64 [ %72, %70 ], [ %68, %66 ]
  ret i64 %74
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Perl_PerlIO_save_errno(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #30
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !102
  br label %10

10:                                               ; preds = %1, %3, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOBase_noop_ok(ptr nocapture readnone %0) #0 {
  ret i64 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOBase_noop_fail(ptr nocapture readnone %0) #0 {
  ret i64 -1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_sv_dup(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %0) #28
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @PerlIO_init() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOUnix_refcnt_inc(i32 noundef %0) local_unnamed_addr #4 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %15

3:                                                ; preds = %1
  %4 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !6
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @S_more_refcounted_fds(i32 noundef %0) #29
  br label %7

7:                                                ; preds = %6, %3
  %8 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !11
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !6
  %13 = icmp slt i32 %11, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46, i32 noundef %0, i32 noundef %12) #28
  br label %16

15:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48, i32 noundef %0) #28
  br label %16

16:                                               ; preds = %7, %14, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_more_refcounted_fds(i32 noundef %0) unnamed_addr #4 {
  %2 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !6
  %3 = and i32 %0, -16
  %4 = add nuw nsw i32 %3, 16
  %5 = icmp sgt i32 %2, %0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !11
  %8 = sext i32 %4 to i64
  %9 = shl nsw i64 %8, 2
  %10 = tail call ptr @realloc(ptr noundef %7, i64 noundef %9) #33
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @Perl_croak_no_mem() #28
  br label %13

13:                                               ; preds = %12, %6
  store i32 %4, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !6
  store ptr %10, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !11
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds i32, ptr %10, i64 %14
  %16 = sub nsw i32 %4, %2
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %15, i8 0, i64 %18, i1 false)
  br label %19

19:                                               ; preds = %1, %13
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @Perl_croak_no_mem() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIOUnix_refcnt_dec(i32 noundef %0) local_unnamed_addr #4 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %22

3:                                                ; preds = %1
  %4 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !6
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.51, i32 noundef %0, i32 noundef %4) #28
  br label %7

7:                                                ; preds = %6, %3
  %8 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !11
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.52, i32 noundef %0, i32 noundef %11) #28
  %14 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !11
  %15 = getelementptr inbounds i32, ptr %14, i64 %9
  %16 = load i32, ptr %15, align 4, !tbaa !6
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %16, %13 ], [ %11, %7 ]
  %19 = phi ptr [ %14, %13 ], [ %8, %7 ]
  %20 = getelementptr inbounds i32, ptr %19, i64 %9
  %21 = add nsw i32 %18, -1
  store i32 %21, ptr %20, align 4, !tbaa !6
  br label %23

22:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.54, i32 noundef %0) #28
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 [ %21, %17 ], [ 0, %22 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIOUnix_refcnt(i32 noundef %0) local_unnamed_addr #4 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %17

3:                                                ; preds = %1
  %4 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !6
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55, i32 noundef %0, i32 noundef %4) #28
  br label %7

7:                                                ; preds = %6, %3
  %8 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !11
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.56, i32 noundef %0, i32 noundef %11) #28
  %14 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !11
  %15 = getelementptr inbounds i32, ptr %14, i64 %9
  %16 = load i32, ptr %15, align 4, !tbaa !6
  br label %18

17:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.57, i32 noundef %0) #28
  br label %18

18:                                               ; preds = %7, %13, %17
  %19 = phi i32 [ 0, %17 ], [ %16, %13 ], [ %11, %7 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_cleanup() local_unnamed_addr #4 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %3, %1 ]
  tail call void @PerlIOUnix_refcnt_inc(i32 noundef %2) #29
  %3 = add nuw nsw i32 %2, 1
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %1, !llvm.loop !103

5:                                                ; preds = %1
  tail call void @PerlIO_cleantable(ptr noundef nonnull @PL_perlio) #29
  br label %6

6:                                                ; preds = %5, %6
  %7 = phi i32 [ 0, %5 ], [ %9, %6 ]
  %8 = tail call i32 @PerlIOUnix_refcnt_dec(i32 noundef %7) #29
  %9 = add nuw nsw i32 %7, 1
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %6, !llvm.loop !104

11:                                               ; preds = %6
  %12 = load ptr, ptr @PL_known_layers, align 8, !tbaa !11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @PerlIO_list_free(ptr noundef nonnull %12) #29
  store ptr null, ptr @PL_known_layers, align 8, !tbaa !11
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @PerlIO_list_free(ptr noundef nonnull %16) #29
  store ptr null, ptr @PL_def_layerlist, align 8, !tbaa !11
  br label %19

19:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @PerlIO_teardown() local_unnamed_addr #15 {
  %1 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = load ptr, ptr @PL_perlio_fd_refcnt, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %3) #28
  store ptr null, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !11
  store i32 0, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !6
  br label %7

7:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIOUnix_oflags(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i8, ptr %0, align 1, !tbaa !10
  switch i8 %2, label %6 [
    i8 73, label %3
    i8 35, label %3
  ]

3:                                                ; preds = %1, %1
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !10
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i8 [ %2, %1 ], [ %5, %3 ]
  %8 = phi ptr [ %0, %1 ], [ %4, %3 ]
  switch i8 %7, label %30 [
    i8 114, label %9
    i8 119, label %16
    i8 97, label %23
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %8, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !10
  %12 = icmp eq i8 %11, 43
  %13 = getelementptr inbounds i8, ptr %8, i64 2
  %14 = select i1 %12, ptr %13, ptr %10
  %15 = select i1 %12, i32 2, i32 0
  br label %30

16:                                               ; preds = %6
  %17 = getelementptr inbounds i8, ptr %8, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !10
  %19 = icmp eq i8 %18, 43
  %20 = getelementptr inbounds i8, ptr %8, i64 2
  %21 = select i1 %19, ptr %20, ptr %17
  %22 = select i1 %19, i32 578, i32 577
  br label %30

23:                                               ; preds = %6
  %24 = getelementptr inbounds i8, ptr %8, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !10
  %26 = icmp eq i8 %25, 43
  %27 = getelementptr inbounds i8, ptr %8, i64 2
  %28 = select i1 %26, ptr %27, ptr %24
  %29 = select i1 %26, i32 1090, i32 1089
  br label %30

30:                                               ; preds = %23, %16, %9, %6
  %31 = phi ptr [ %8, %6 ], [ %14, %9 ], [ %21, %16 ], [ %28, %23 ]
  %32 = phi i1 [ true, %6 ], [ false, %9 ], [ false, %16 ], [ false, %23 ]
  %33 = phi i32 [ -1, %6 ], [ %15, %9 ], [ %22, %16 ], [ %29, %23 ]
  %34 = load i8, ptr %31, align 1, !tbaa !10
  switch i8 %34, label %39 [
    i8 98, label %35
    i8 116, label %37
  ]

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, ptr %31, i64 1
  br label %39

37:                                               ; preds = %30
  %38 = getelementptr inbounds i8, ptr %31, i64 1
  br label %39

39:                                               ; preds = %30, %37, %35
  %40 = phi ptr [ %31, %30 ], [ %38, %37 ], [ %36, %35 ]
  %41 = load i8, ptr %40, align 1, !tbaa !10
  %42 = icmp ne i8 %41, 0
  %43 = or i1 %32, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = tail call ptr @__errno_location() #30
  store i32 22, ptr %45, align 4, !tbaa !6
  br label %46

46:                                               ; preds = %39, %44
  %47 = phi i32 [ -1, %44 ], [ %33, %39 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOUnix_fileno(ptr nocapture noundef readonly %0) #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOUnix, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !105
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOUnix_pushed(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #4 {
  %5 = tail call i64 @PerlIOBase_pushed(ptr noundef %0, ptr noundef %1, ptr poison, ptr noundef %3) #29, !range !107
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %6) #29
  %11 = load ptr, ptr %0, align 8, !tbaa !11
  %12 = tail call i32 @Perl_PerlIO_fileno(ptr noundef %11) #29
  %13 = icmp eq ptr %1, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @PerlIOUnix_oflags(ptr noundef nonnull %1) #29, !range !108
  br label %16

16:                                               ; preds = %9, %14
  %17 = phi i32 [ %15, %14 ], [ -1, %9 ]
  tail call fastcc void @PerlIOUnix_setfd(ptr noundef nonnull %0, i32 noundef %12, i32 noundef %17) #29
  %18 = load ptr, ptr %0, align 8, !tbaa !11
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi ptr [ %18, %16 ], [ %6, %4 ]
  %21 = getelementptr inbounds %struct._PerlIO, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !17
  %23 = or i32 %22, 2097152
  store i32 %23, ptr %21, align 8, !tbaa !17
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PerlIOUnix_setfd(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.PerlIOUnix, ptr %4, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.PerlIOUnix, ptr %4, i64 0, i32 2
  store i32 %2, ptr %6, align 4, !tbaa !109
  tail call void @PerlIOUnix_refcnt_inc(i32 noundef %1) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOUnix_seek(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %7 = and i32 %6, 16777216
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__errno_location() #30
  store i32 29, ptr %10, align 4, !tbaa !6
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.PerlIOUnix, ptr %4, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !105
  %14 = tail call i64 @lseek64(i32 noundef %13, i64 noundef %1, i32 noundef %2) #28
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct._PerlIO, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !17
  %20 = and i32 %19, -257
  store i32 %20, ptr %18, align 8, !tbaa !17
  br label %21

21:                                               ; preds = %11, %16, %9
  %22 = phi i64 [ -1, %9 ], [ 0, %16 ], [ -1, %11 ]
  ret i64 %22
}

; Function Attrs: nounwind optsize
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIOUnix_open(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9) #4 {
  %11 = alloca i64, align 8
  %12 = icmp eq ptr %7, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 8, !tbaa !11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._PerlIO, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._PerlIO, ptr %14, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !17
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct._PerlIO_funcs, ptr %18, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  %28 = tail call i64 %27(ptr noundef nonnull %7) #28
  br label %29

29:                                               ; preds = %16, %20, %25, %13, %10
  %30 = icmp sgt i32 %8, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %29
  %32 = load i8, ptr %3, align 1, !tbaa !10
  %33 = icmp eq i8 %32, 35
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %3, i64 1
  br label %38

36:                                               ; preds = %31
  %37 = tail call i32 @PerlIOUnix_oflags(ptr noundef nonnull %3) #29, !range !108
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %5, %34 ], [ %37, %36 ]
  %40 = phi i32 [ %6, %34 ], [ 438, %36 ]
  %41 = phi ptr [ %35, %34 ], [ %3, %36 ]
  %42 = icmp eq i32 %39, -1
  br i1 %42, label %65, label %43

43:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #31
  %44 = load ptr, ptr %9, align 8, !tbaa !11
  %45 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !55
  %47 = and i32 %46, 2098176
  %48 = icmp eq i32 %47, 1024
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load ptr, ptr %44, align 8, !tbaa !56
  %51 = getelementptr inbounds %struct.xpv, ptr %50, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !57
  store i64 %52, ptr %11, align 8, !tbaa !59
  %53 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !10
  br label %58

55:                                               ; preds = %43
  %56 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %44, ptr noundef nonnull %11, i32 noundef 34) #28
  %57 = load i64, ptr %11, align 8, !tbaa !59
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi i64 [ %52, %49 ], [ %57, %55 ]
  %60 = phi ptr [ %54, %49 ], [ %56, %55 ]
  %61 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %60, i64 noundef %59) #29
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 (ptr, i32, ...) @open64(ptr noundef %60, i32 noundef %39, i32 noundef %40) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #31
  br label %65

64:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #31
  br label %99

65:                                               ; preds = %62, %38, %29
  %66 = phi i32 [ -1, %38 ], [ %5, %29 ], [ %39, %62 ]
  %67 = phi i32 [ %4, %38 ], [ %4, %29 ], [ %63, %62 ]
  %68 = phi ptr [ %41, %38 ], [ %3, %29 ], [ %41, %62 ]
  %69 = icmp sgt i32 %67, -1
  br i1 %69, label %70, label %99

70:                                               ; preds = %65
  %71 = load i8, ptr %68, align 1, !tbaa !10
  %72 = icmp eq i8 %71, 73
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds i8, ptr %68, i64 %73
  br i1 %12, label %75, label %78

75:                                               ; preds = %70
  %76 = call ptr @PerlIO_allocate() #29
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %70, %75
  %79 = phi ptr [ %76, %75 ], [ %7, %70 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !11
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %78, %75
  %83 = phi ptr [ %79, %78 ], [ null, %75 ]
  %84 = call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #29
  %85 = call ptr @PerlIO_push(ptr noundef %83, ptr noundef %0, ptr noundef nonnull %74, ptr noundef %84) #29
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 @close(i32 noundef %67) #28
  br label %99

89:                                               ; preds = %82, %78
  %90 = phi ptr [ %79, %78 ], [ %85, %82 ]
  call fastcc void @PerlIOUnix_setfd(ptr noundef nonnull %90, i32 noundef %67, i32 noundef %66) #29
  %91 = load ptr, ptr %90, align 8, !tbaa !11
  %92 = getelementptr inbounds %struct._PerlIO, ptr %91, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !17
  %94 = or i32 %93, 2097152
  store i32 %94, ptr %92, align 8, !tbaa !17
  %95 = load i8, ptr %74, align 1, !tbaa !10
  %96 = icmp eq i8 %95, 97
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = call i64 @PerlIOUnix_seek(ptr noundef nonnull %90, i64 noundef 0, i32 noundef 2) #29, !range !107
  br label %99

99:                                               ; preds = %64, %65, %89, %97, %87
  %100 = phi ptr [ null, %64 ], [ null, %87 ], [ %90, %97 ], [ %90, %89 ], [ null, %65 ]
  ret ptr %100
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_is_safe_syscall(ptr noundef %0, i64 noundef %1) unnamed_addr #4 {
  %3 = icmp ugt i64 %1, 1
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = add i64 %1, -1
  %6 = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %5) #32
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__errno_location() #30
  store i32 2, ptr %9, align 4, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 59, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, ptr noundef %0, ptr noundef nonnull %10) #28
  br label %11

11:                                               ; preds = %4, %2, %8
  %12 = phi i1 [ false, %8 ], [ true, %2 ], [ true, %4 ]
  ret i1 %12
}

; Function Attrs: nofree optsize
declare noundef i32 @open64(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #18

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIOUnix_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #4 {
  %5 = load ptr, ptr %1, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.PerlIOUnix, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !105
  %8 = and i32 %3, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @dup(i32 noundef %7) #28
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ %7, %4 ]
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #29
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.PerlIOUnix, ptr %5, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !109
  tail call fastcc void @PerlIOUnix_setfd(ptr noundef nonnull %16, i32 noundef %13, i32 noundef %20) #29
  br label %23

21:                                               ; preds = %15
  %22 = tail call i32 @close(i32 noundef %13) #28
  br label %23

23:                                               ; preds = %12, %21, %18
  %24 = phi ptr [ %16, %18 ], [ null, %21 ], [ null, %12 ]
  ret ptr %24
}

; Function Attrs: nounwind optsize
declare i32 @dup(i32 noundef) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOUnix_read(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) #4 {
  %4 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.PerlIOUnix, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !105
  %13 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = and i32 %14, 3328
  %16 = icmp eq i32 %15, 1024
  br i1 %16, label %17, label %55

17:                                               ; preds = %9
  %18 = tail call i64 @read(i32 noundef %12, ptr noundef %1, i64 noundef %2) #28
  %19 = icmp sgt i64 %18, -1
  br i1 %19, label %36, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @__errno_location() #30
  %22 = load i32, ptr %21, align 4, !tbaa !6
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %47, label %27

24:                                               ; preds = %52
  %25 = load i32, ptr %21, align 4, !tbaa !6
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %47, label %27

27:                                               ; preds = %24, %20
  %28 = phi i64 [ %18, %20 ], [ %53, %24 ]
  %29 = phi i32 [ %22, %20 ], [ %25, %24 ]
  %30 = icmp eq i32 %29, 11
  br i1 %30, label %55, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct._PerlIO, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !17
  %35 = or i32 %34, 2048
  store i32 %35, ptr %33, align 8, !tbaa !17
  tail call void @Perl_PerlIO_save_errno(ptr noundef nonnull %0) #29
  br label %55

36:                                               ; preds = %52, %17
  %37 = phi i64 [ %18, %17 ], [ %53, %52 ]
  %38 = icmp eq i64 %37, 0
  %39 = icmp ne i64 %2, 0
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load ptr, ptr %0, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct._PerlIO, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !17
  %45 = or i32 %44, 256
  store i32 %45, ptr %43, align 8, !tbaa !17
  %46 = tail call ptr @__errno_location() #30
  store i32 0, ptr %46, align 4, !tbaa !6
  br label %55

47:                                               ; preds = %20, %24
  %48 = load i32, ptr @PL_sig_pending, align 4, !tbaa !6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0) #29
  br i1 %51, label %55, label %52

52:                                               ; preds = %47, %50
  %53 = tail call i64 @read(i32 noundef %12, ptr noundef %1, i64 noundef %2) #28
  %54 = icmp sgt i64 %53, -1
  br i1 %54, label %36, label %24

55:                                               ; preds = %50, %31, %27, %41, %36, %9, %3
  %56 = phi i64 [ -1, %3 ], [ 0, %9 ], [ %28, %31 ], [ %28, %27 ], [ 0, %41 ], [ %37, %36 ], [ -1, %50 ]
  ret i64 %56
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_perlio_async_run(ptr noundef %0) unnamed_addr #4 {
  tail call void @Perl_push_scope() #28
  tail call void @Perl_save_destructor_x(ptr noundef nonnull @S_lockcnt_dec, ptr noundef %0) #28
  %2 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !17
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !17
  %7 = load i32, ptr @PL_sig_pending, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @PL_signalhook, align 8, !tbaa !11
  tail call void %10() #28
  br label %11

11:                                               ; preds = %1, %9
  %12 = load ptr, ptr %0, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = and i32 %14, 33554432
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11, %23
  %18 = phi ptr [ %25, %23 ], [ %12, %11 ]
  %19 = getelementptr inbounds %struct._PerlIO, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !17
  %21 = and i32 %20, 33554432
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !15
  store ptr %24, ptr %0, align 8, !tbaa !11
  tail call void @Perl_safesysfree(ptr noundef nonnull %18) #28
  %25 = load ptr, ptr %0, align 8, !tbaa !11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %17, !llvm.loop !110

27:                                               ; preds = %23, %17, %11
  tail call void @Perl_pop_scope() #28
  ret i1 %16
}

; Function Attrs: optsize
declare void @Perl_save_destructor_x(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @S_lockcnt_dec(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !17
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOUnix_write(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #4 {
  %4 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.PerlIOUnix, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !105
  %13 = tail call i64 @write(i32 noundef %12, ptr noundef %1, i64 noundef %2) #28
  %14 = icmp sgt i64 %13, -1
  br i1 %14, label %39, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @__errno_location() #30
  %17 = load i32, ptr %16, align 4, !tbaa !6
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %31, label %22

19:                                               ; preds = %36
  %20 = load i32, ptr %16, align 4, !tbaa !6
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %31, label %22

22:                                               ; preds = %19, %15
  %23 = phi i64 [ %13, %15 ], [ %37, %19 ]
  %24 = phi i32 [ %17, %15 ], [ %20, %19 ]
  %25 = icmp eq i32 %24, 11
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct._PerlIO, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !17
  %30 = or i32 %29, 2048
  store i32 %30, ptr %28, align 8, !tbaa !17
  tail call void @Perl_PerlIO_save_errno(ptr noundef nonnull %0) #29
  br label %39

31:                                               ; preds = %15, %19
  %32 = load i32, ptr @PL_sig_pending, align 4, !tbaa !6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0) #29
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %34
  %37 = tail call i64 @write(i32 noundef %12, ptr noundef %1, i64 noundef %2) #28
  %38 = icmp sgt i64 %37, -1
  br i1 %38, label %39, label %19

39:                                               ; preds = %34, %36, %9, %26, %22, %3
  %40 = phi i64 [ -1, %3 ], [ %23, %26 ], [ %23, %22 ], [ %13, %9 ], [ -1, %34 ], [ %37, %36 ]
  ret i64 %40
}

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOUnix_tell(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOUnix, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !105
  %5 = tail call i64 @lseek64(i32 noundef %4, i64 noundef 0, i32 noundef 1) #28
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOUnix_close(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOUnix, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @PerlIOUnix_refcnt_dec(i32 noundef %4) #29
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @close(i32 noundef %4) #28
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @__errno_location() #30
  br label %24

17:                                               ; preds = %9
  %18 = load ptr, ptr %0, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct._PerlIO, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !17
  %21 = and i32 %20, -2097153
  store i32 %21, ptr %19, align 8, !tbaa !17
  br label %40

22:                                               ; preds = %1
  %23 = tail call ptr @__errno_location() #30
  store i32 9, ptr %23, align 4, !tbaa !6
  br label %40

24:                                               ; preds = %15, %32
  %25 = load i32, ptr %16, align 4, !tbaa !6
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32, ptr @PL_sig_pending, align 4, !tbaa !6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0) #29
  br i1 %31, label %40, label %32

32:                                               ; preds = %30, %27
  %33 = tail call i32 @close(i32 noundef %4) #28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %24, !llvm.loop !111

35:                                               ; preds = %32, %12
  %36 = load ptr, ptr %0, align 8, !tbaa !11
  %37 = getelementptr inbounds %struct._PerlIO, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !17
  %39 = and i32 %38, -2097153
  store i32 %39, ptr %37, align 8, !tbaa !17
  br label %40

40:                                               ; preds = %24, %30, %35, %22, %17
  %41 = phi i64 [ 0, %17 ], [ -1, %22 ], [ 0, %35 ], [ -1, %30 ], [ -1, %24 ]
  ret i64 %41
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_fileno(ptr noundef readonly %0) #19 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.PerlIOStdio, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @fileno(ptr noundef nonnull %8) #28
  %12 = sext i32 %11 to i64
  br label %15

13:                                               ; preds = %6, %3, %1
  %14 = tail call ptr @__errno_location() #30
  store i32 9, ptr %14, align 4, !tbaa !6
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi i64 [ %12, %10 ], [ -1, %13 ]
  ret i64 %16
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @PerlIOStdio_mode(ptr noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #21 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1, !tbaa !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4, %7
  %8 = phi i8 [ %13, %7 ], [ %5, %4 ]
  %9 = phi ptr [ %11, %7 ], [ %0, %4 ]
  %10 = phi ptr [ %12, %7 ], [ %1, %4 ]
  %11 = getelementptr inbounds i8, ptr %9, i64 1
  %12 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %8, ptr %10, align 1, !tbaa !10
  %13 = load i8, ptr %11, align 1, !tbaa !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %7, !llvm.loop !114

15:                                               ; preds = %7, %4, %2
  %16 = phi ptr [ %1, %2 ], [ %1, %4 ], [ %12, %7 ]
  store i8 0, ptr %16, align 1, !tbaa !10
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_pushed(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #4 {
  %5 = alloca [8 x i8], align 1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._PerlIO, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @PerlIO_pop(ptr noundef nonnull %0) #29
  br label %35

18:                                               ; preds = %13
  %19 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %8) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = call ptr @PerlIOStdio_mode(ptr noundef %1, ptr noundef nonnull %5) #29
  %23 = call noalias ptr @fdopen(i32 noundef %19, ptr noundef nonnull %5) #28
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.PerlIOStdio, ptr %26, i64 0, i32 1
  store ptr %23, ptr %27, align 8, !tbaa !112
  %28 = load ptr, ptr %0, align 8, !tbaa !11
  %29 = call i32 @Perl_PerlIO_flush(ptr noundef %28) #29
  %30 = call i64 @PerlIOBase_pushed(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr poison, ptr noundef %3) #29, !range !107
  br label %31

31:                                               ; preds = %18, %21, %25
  %32 = phi i64 [ %30, %25 ], [ -1, %21 ], [ -1, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  br label %35

33:                                               ; preds = %10, %7, %4
  %34 = tail call i64 @PerlIOBase_pushed(ptr noundef %0, ptr noundef %1, ptr poison, ptr noundef %3) #29, !range !107
  br label %35

35:                                               ; preds = %17, %31, %33
  %36 = phi i64 [ %34, %33 ], [ 0, %17 ], [ %32, %31 ]
  ret i64 %36
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIO_importFILE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #28
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = load i8, ptr %1, align 1, !tbaa !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %9, %7
  %13 = tail call i32 @dup(i32 noundef %5) #28
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %12
  %16 = tail call noalias ptr @fdopen(i32 noundef %13, ptr noundef nonnull @.str.63) #28
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = tail call noalias ptr @fdopen(i32 noundef %13, ptr noundef nonnull @.str.64) #28
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = tail call noalias ptr @fdopen(i32 noundef %13, ptr noundef nonnull @.str.44) #28
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 @close(i32 noundef %13) #28
  br label %39

26:                                               ; preds = %15, %18, %21
  %27 = phi ptr [ %22, %21 ], [ %19, %18 ], [ %16, %15 ]
  %28 = phi ptr [ @.str.44, %21 ], [ @.str.64, %18 ], [ @.str.63, %15 ]
  %29 = tail call i32 @fclose(ptr noundef nonnull %27) #29
  br label %30

30:                                               ; preds = %26, %9
  %31 = phi ptr [ %1, %9 ], [ %28, %26 ]
  %32 = tail call ptr @PerlIO_allocate() #29
  %33 = tail call ptr @PerlIO_push(ptr noundef %32, ptr noundef nonnull @PerlIO_stdio, ptr noundef nonnull %31, ptr noundef null) #29
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %33, align 8, !tbaa !11
  %37 = getelementptr inbounds %struct.PerlIOStdio, ptr %36, i64 0, i32 1
  store ptr %0, ptr %37, align 8, !tbaa !112
  %38 = tail call i32 @fileno(ptr noundef nonnull %0) #28
  tail call void @PerlIOUnix_refcnt_inc(i32 noundef %38) #29
  br label %39

39:                                               ; preds = %12, %24, %4, %35, %30, %2
  %40 = phi ptr [ null, %2 ], [ null, %4 ], [ %33, %35 ], [ null, %30 ], [ null, %24 ], [ null, %12 ]
  ret ptr %40
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIOStdio_open(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9) #4 {
  %11 = alloca [8 x i8], align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #31
  %14 = icmp eq ptr %7, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %7, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #31
  %19 = load ptr, ptr %9, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !55
  %22 = and i32 %21, 2098176
  %23 = icmp eq i32 %22, 1024
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load ptr, ptr %19, align 8, !tbaa !56
  %26 = getelementptr inbounds %struct.xpv, ptr %25, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !57
  store i64 %27, ptr %12, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !10
  br label %34

30:                                               ; preds = %18
  %31 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %19, ptr noundef nonnull %12, i32 noundef 34) #28
  %32 = load ptr, ptr %7, align 8, !tbaa !11
  %33 = load i64, ptr %12, align 8, !tbaa !59
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i64 [ %27, %24 ], [ %33, %30 ]
  %36 = phi ptr [ %16, %24 ], [ %32, %30 ]
  %37 = phi ptr [ %29, %24 ], [ %31, %30 ]
  %38 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %37, i64 noundef %35) #29
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.PerlIOStdio, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !112
  %42 = call i32 @fileno(ptr noundef %41) #28
  %43 = call i32 @PerlIOUnix_refcnt_dec(i32 noundef %42) #29
  %44 = call ptr @PerlIOStdio_mode(ptr noundef %3, ptr noundef nonnull %11) #29
  %45 = load ptr, ptr %40, align 8, !tbaa !112
  %46 = call ptr @freopen64(ptr noundef %37, ptr noundef nonnull %11, ptr noundef %45) #28
  %47 = load ptr, ptr %40, align 8, !tbaa !112
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %39
  store ptr %46, ptr %40, align 8, !tbaa !112
  %50 = call i32 @fileno(ptr noundef %46) #28
  call void @PerlIOUnix_refcnt_inc(i32 noundef %50) #29
  br label %51

51:                                               ; preds = %39, %34, %49
  %52 = phi ptr [ %7, %49 ], [ null, %34 ], [ null, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #31
  br label %136

53:                                               ; preds = %15, %10
  %54 = icmp sgt i32 %8, 0
  br i1 %54, label %55, label %100

55:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #31
  %56 = load ptr, ptr %9, align 8, !tbaa !11
  %57 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !55
  %59 = and i32 %58, 2098176
  %60 = icmp eq i32 %59, 1024
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load ptr, ptr %56, align 8, !tbaa !56
  %63 = getelementptr inbounds %struct.xpv, ptr %62, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !57
  store i64 %64, ptr %13, align 8, !tbaa !59
  %65 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !10
  br label %70

67:                                               ; preds = %55
  %68 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %56, ptr noundef nonnull %13, i32 noundef 34) #28
  %69 = load i64, ptr %13, align 8, !tbaa !59
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i64 [ %64, %61 ], [ %69, %67 ]
  %72 = phi ptr [ %66, %61 ], [ %68, %67 ]
  %73 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %72, i64 noundef %71) #29
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load i8, ptr %3, align 1, !tbaa !10
  %76 = icmp eq i8 %75, 35
  br i1 %76, label %97, label %77

77:                                               ; preds = %74
  %78 = call noalias ptr @fopen64(ptr noundef %72, ptr noundef nonnull %3) #29
  %79 = icmp eq ptr %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %77
  br i1 %14, label %81, label %83

81:                                               ; preds = %80
  %82 = call ptr @PerlIO_allocate() #29
  br label %83

83:                                               ; preds = %80, %81
  %84 = phi ptr [ %7, %80 ], [ %82, %81 ]
  %85 = call ptr @PerlIOStdio_mode(ptr noundef nonnull %3, ptr noundef nonnull %11) #29
  %86 = call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #29
  %87 = call ptr @PerlIO_push(ptr noundef %84, ptr noundef %0, ptr noundef nonnull %11, ptr noundef %86) #29
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load ptr, ptr %87, align 8, !tbaa !11
  %91 = getelementptr inbounds %struct.PerlIOStdio, ptr %90, i64 0, i32 1
  store ptr %78, ptr %91, align 8, !tbaa !112
  %92 = call i32 @fileno(ptr noundef nonnull %78) #28
  call void @PerlIOUnix_refcnt_inc(i32 noundef %92) #29
  br label %95

93:                                               ; preds = %83
  %94 = call i32 @fclose(ptr noundef nonnull %78) #29
  br label %95

95:                                               ; preds = %70, %77, %89, %93
  %96 = phi ptr [ null, %77 ], [ %87, %89 ], [ null, %93 ], [ null, %70 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #31
  br label %136

97:                                               ; preds = %74
  %98 = getelementptr inbounds i8, ptr %3, i64 1
  %99 = call i32 (ptr, i32, ...) @open64(ptr noundef %72, i32 noundef %5, i32 noundef %6) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #31
  br label %100

100:                                              ; preds = %97, %53
  %101 = phi i32 [ %99, %97 ], [ %4, %53 ]
  %102 = phi ptr [ %98, %97 ], [ %3, %53 ]
  %103 = icmp sgt i32 %101, -1
  br i1 %103, label %104, label %136

104:                                              ; preds = %100
  %105 = load i8, ptr %102, align 1, !tbaa !10
  %106 = icmp eq i8 %105, 73
  %107 = getelementptr inbounds i8, ptr %102, i64 1
  br i1 %106, label %108, label %115

108:                                              ; preds = %104
  switch i32 %101, label %134 [
    i32 0, label %109
    i32 1, label %111
    i32 2, label %113
  ]

109:                                              ; preds = %108
  %110 = load ptr, ptr @stdin, align 8, !tbaa !11
  br label %118

111:                                              ; preds = %108
  %112 = load ptr, ptr @stdout, align 8, !tbaa !11
  br label %118

113:                                              ; preds = %108
  %114 = load ptr, ptr @stderr, align 8, !tbaa !11
  br label %118

115:                                              ; preds = %104
  %116 = call ptr @PerlIOStdio_mode(ptr noundef nonnull %102, ptr noundef nonnull %11) #29
  %117 = call noalias ptr @fdopen(i32 noundef %101, ptr noundef nonnull %11) #28
  br label %118

118:                                              ; preds = %109, %111, %113, %115
  %119 = phi ptr [ %107, %113 ], [ %107, %111 ], [ %107, %109 ], [ %11, %115 ]
  %120 = phi ptr [ %114, %113 ], [ %112, %111 ], [ %110, %109 ], [ %117, %115 ]
  %121 = icmp eq ptr %120, null
  br i1 %121, label %134, label %122

122:                                              ; preds = %118
  br i1 %14, label %123, label %125

123:                                              ; preds = %122
  %124 = call ptr @PerlIO_allocate() #29
  br label %125

125:                                              ; preds = %123, %122
  %126 = phi ptr [ %7, %122 ], [ %124, %123 ]
  %127 = call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #29
  %128 = call ptr @PerlIO_push(ptr noundef %126, ptr noundef %0, ptr noundef nonnull %119, ptr noundef %127) #29
  %129 = icmp eq ptr %128, null
  br i1 %129, label %136, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr %128, align 8, !tbaa !11
  %132 = getelementptr inbounds %struct.PerlIOStdio, ptr %131, i64 0, i32 1
  store ptr %120, ptr %132, align 8, !tbaa !112
  %133 = call i32 @fileno(ptr noundef nonnull %120) #28
  call void @PerlIOUnix_refcnt_inc(i32 noundef %133) #29
  br label %136

134:                                              ; preds = %108, %118
  %135 = call i32 @close(i32 noundef %101) #28
  br label %136

136:                                              ; preds = %125, %130, %100, %134, %95, %51
  %137 = phi ptr [ %52, %51 ], [ %96, %95 ], [ null, %134 ], [ null, %100 ], [ %128, %130 ], [ null, %125 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #31
  ret ptr %137
}

; Function Attrs: optsize
declare ptr @freopen64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIOStdio_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #4 {
  %5 = alloca [8 x i8], align 1
  %6 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.PerlIOStdio, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = tail call i32 @fileno(ptr noundef %11) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  %13 = and i32 %3, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @fileno(ptr noundef %11) #28
  %17 = tail call i32 @dup(i32 noundef %16) #28
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %8
  br label %20

20:                                               ; preds = %15, %19
  %21 = phi i32 [ %12, %19 ], [ %17, %15 ]
  %22 = call ptr @PerlIO_modestr(ptr noundef nonnull %1, ptr noundef nonnull %5) #29
  %23 = call noalias ptr @fdopen(i32 noundef %21, ptr noundef nonnull %5) #28
  %24 = load ptr, ptr %6, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.PerlIOStdio, ptr %24, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !112
  %26 = icmp eq ptr %23, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = call i32 @fileno(ptr noundef nonnull %23) #28
  call void @PerlIOUnix_refcnt_inc(i32 noundef %28) #29
  br label %29

29:                                               ; preds = %27, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  br label %30

30:                                               ; preds = %29, %4
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOStdio_close(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @__errno_location() #30
  store i32 9, ptr %7, align 4, !tbaa !6
  br label %37

8:                                                ; preds = %1
  %9 = tail call i32 @fileno(ptr noundef nonnull %4) #28
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @PerlIOUnix_refcnt_dec(i32 noundef %9) #29
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @stdin, align 8, !tbaa !11
  %16 = icmp eq ptr %4, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @stdout, align 8, !tbaa !11
  %19 = icmp eq ptr %4, %18
  %20 = load ptr, ptr @stderr, align 8
  %21 = icmp eq ptr %4, %20
  %22 = select i1 %19, i1 true, i1 %21
  %23 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  br i1 %22, label %24, label %29

24:                                               ; preds = %17
  %25 = sext i32 %23 to i64
  br label %37

26:                                               ; preds = %8, %11
  %27 = tail call i32 @fclose(ptr noundef nonnull %4) #29
  %28 = sext i32 %27 to i64
  br label %37

29:                                               ; preds = %17
  %30 = tail call i32 @dup(i32 noundef %9) #28
  %31 = tail call i32 @fclose(ptr noundef nonnull %4) #29
  %32 = sext i32 %31 to i64
  %33 = icmp sgt i32 %30, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = tail call i32 @dup2(i32 noundef %30, i32 noundef %9) #28
  %36 = tail call i32 @close(i32 noundef %30) #28
  br label %37

37:                                               ; preds = %26, %24, %14, %34, %29, %6
  %38 = phi i64 [ -1, %6 ], [ %25, %24 ], [ 0, %14 ], [ %32, %34 ], [ %32, %29 ], [ %28, %26 ]
  ret i64 %38
}

; Function Attrs: nounwind optsize
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOStdio_read(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) #4 {
  %4 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.PerlIOStdio, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !112
  %13 = icmp eq i64 %2, 1
  br label %14

14:                                               ; preds = %41, %9
  %15 = phi i64 [ 0, %9 ], [ %32, %41 ]
  br i1 %13, label %16, label %21

16:                                               ; preds = %14
  %17 = tail call i32 @fgetc(ptr noundef %12) #29
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = trunc i32 %17 to i8
  store i8 %20, ptr %1, align 1, !tbaa !10
  br label %42

21:                                               ; preds = %14
  %22 = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %12) #29
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi i64 [ %22, %21 ], [ %15, %16 ]
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = tail call i32 @ferror(ptr noundef %12) #28
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %31

29:                                               ; preds = %23
  %30 = icmp sgt i64 %24, -1
  br i1 %30, label %42, label %31

31:                                               ; preds = %26, %29
  %32 = phi i64 [ %24, %29 ], [ -1, %26 ]
  %33 = tail call ptr @__errno_location() #30
  %34 = load i32, ptr %33, align 4, !tbaa !6
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, ptr @PL_sig_pending, align 4, !tbaa !6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0) #29
  br i1 %40, label %42, label %41

41:                                               ; preds = %39, %36
  store i32 0, ptr %33, align 4, !tbaa !6
  br label %14

42:                                               ; preds = %26, %31, %29, %39, %19, %3
  %43 = phi i64 [ -1, %3 ], [ 1, %19 ], [ 0, %26 ], [ %32, %31 ], [ %24, %29 ], [ -1, %39 ]
  ret i64 %43
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOStdio_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.PerlIOStdio, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = tail call i32 @PerlIO_has_cntptr(ptr noundef nonnull %0) #29
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %6, i64 0, i32 1
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %1, i64 %2
  %14 = load ptr, ptr %10, align 8, !tbaa !115
  br label %15

15:                                               ; preds = %12, %35
  %16 = phi i64 [ %36, %35 ], [ %2, %12 ]
  %17 = phi ptr [ %20, %35 ], [ %13, %12 ]
  %18 = phi ptr [ %27, %35 ], [ %14, %12 ]
  %19 = phi i64 [ %37, %35 ], [ 0, %12 ]
  %20 = getelementptr inbounds i8, ptr %17, i64 -1
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %22 = zext i8 %21 to i32
  %23 = tail call i32 @ungetc(i32 noundef %22, ptr noundef nonnull %6) #29
  %24 = icmp eq i32 %23, %22
  br i1 %24, label %25, label %41

25:                                               ; preds = %15
  %26 = load ptr, ptr %10, align 8, !tbaa !115
  %27 = getelementptr inbounds i8, ptr %18, i64 -1
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8, ptr %26, align 1, !tbaa !10
  %31 = icmp eq i8 %30, %21
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %25
  %33 = tail call i32 @fgetc(ptr noundef nonnull %6) #29
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %41

35:                                               ; preds = %29, %32
  %36 = add i64 %16, -1
  %37 = add nuw nsw i64 %19, 1
  %38 = icmp eq i64 %36, 0
  br i1 %38, label %46, label %15

39:                                               ; preds = %3
  %40 = icmp eq i64 %2, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %15, %32, %39
  %42 = phi i64 [ %2, %39 ], [ %16, %32 ], [ %16, %15 ]
  %43 = phi i64 [ 0, %39 ], [ %19, %32 ], [ %19, %15 ]
  %44 = tail call i64 @PerlIOBase_unread(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %42) #29
  %45 = add nsw i64 %44, %43
  br label %46

46:                                               ; preds = %35, %9, %41, %39
  %47 = phi i64 [ %45, %41 ], [ 0, %39 ], [ 0, %9 ], [ %2, %35 ]
  ret i64 %47
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_write(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) #4 {
  %4 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.PerlIOStdio, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !112
  %13 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %12) #29
  %14 = icmp sgt i64 %13, -1
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @__errno_location() #30
  %17 = load i32, ptr %16, align 4, !tbaa !6
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %22, label %33

19:                                               ; preds = %27
  %20 = load i32, ptr %16, align 4, !tbaa !6
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %33

22:                                               ; preds = %15, %19
  %23 = load i32, ptr @PL_sig_pending, align 4, !tbaa !6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0) #29
  br i1 %26, label %33, label %27

27:                                               ; preds = %25, %22
  store i32 0, ptr %16, align 4, !tbaa !6
  %28 = load ptr, ptr %0, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.PerlIOStdio, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !112
  %31 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %30) #29
  %32 = icmp sgt i64 %31, -1
  br i1 %32, label %33, label %19

33:                                               ; preds = %19, %27, %25, %15, %9, %3
  %34 = phi i64 [ -1, %3 ], [ %13, %9 ], [ %13, %15 ], [ -1, %25 ], [ %31, %27 ], [ %31, %19 ]
  ret i64 %34
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_seek(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #19 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.PerlIOStdio, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = tail call i32 @fseek(ptr noundef %6, i64 noundef %1, i32 noundef %2) #29
  %8 = sext i32 %7 to i64
  ret i64 %8
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_tell(ptr nocapture noundef readonly %0) #19 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = tail call i64 @ftell(ptr noundef %4) #29
  ret i64 %5
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_flush(ptr nocapture noundef readonly %0) #19 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !17
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  %10 = tail call i32 @fflush(ptr noundef %9) #29
  %11 = sext i32 %10 to i64
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi i64 [ %11, %7 ], [ 0, %1 ]
  ret i64 %13
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_eof(ptr nocapture noundef readonly %0) #19 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = tail call i32 @feof(ptr noundef %4) #28
  %6 = sext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree noinline nounwind optsize memory(read) uwtable
define dso_local noundef i64 @PerlIOStdio_error(ptr nocapture noundef readonly %0) #23 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = tail call i32 @ferror(ptr noundef %4) #28
  %6 = sext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @PerlIOStdio_clearerr(ptr nocapture noundef readonly %0) #19 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  tail call void @clearerr(ptr noundef %4) #28
  ret void
}

; Function Attrs: nofree nounwind optsize
declare void @clearerr(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @PerlIOStdio_setlinebuf(ptr nocapture noundef readonly %0) #19 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = tail call i32 @setvbuf(ptr noundef %4, ptr noundef null, i32 noundef 1, i64 noundef 0) #28
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @setvbuf(ptr nocapture noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @PerlIOStdio_get_base(ptr nocapture noundef readonly %0) #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOStdio_get_bufsiz(ptr nocapture noundef readonly %0) #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !118
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  ret i64 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @PerlIOStdio_get_ptr(ptr nocapture noundef readonly %0) #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOStdio_get_cnt(ptr nocapture noundef readonly %0) #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  ret i64 %11
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @PerlIOStdio_set_ptrcnt(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i64 noundef %2) local_unnamed_addr #24 {
  tail call void @abort() #34
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #25

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_fill(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.PerlIOStdio, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = getelementptr inbounds %struct._PerlIO, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = tail call i32 @fflush(ptr noundef %10) #29
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %15, %7
  %19 = tail call i32 @fgetc(ptr noundef %10) #29
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %36

21:                                               ; preds = %18, %33
  %22 = tail call i32 @ferror(ptr noundef %10) #28
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @__errno_location() #30
  %26 = load i32, ptr %25, align 4, !tbaa !6
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i32, ptr @PL_sig_pending, align 4, !tbaa !6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0) #29
  br i1 %32, label %41, label %33

33:                                               ; preds = %31, %28
  store i32 0, ptr %25, align 4, !tbaa !6
  %34 = tail call i32 @fgetc(ptr noundef %10) #29
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %21, label %36

36:                                               ; preds = %33, %18
  %37 = phi i32 [ %19, %18 ], [ %34, %33 ]
  %38 = tail call i32 @ungetc(i32 noundef %37, ptr noundef %10) #29
  %39 = icmp ne i32 %38, %37
  %40 = sext i1 %39 to i64
  br label %41

41:                                               ; preds = %31, %21, %24, %36, %15, %1
  %42 = phi i64 [ -1, %1 ], [ -1, %15 ], [ %40, %36 ], [ -1, %24 ], [ -1, %21 ], [ -1, %31 ]
  ret i64 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIO_exportFILE(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = alloca [8 x i8], align 1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %9 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %0) #29
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %13 = icmp eq ptr %1, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr %1, align 1, !tbaa !10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %11
  %18 = call ptr @PerlIO_modestr(ptr noundef nonnull %0, ptr noundef nonnull %3) #29
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %1, %14 ], [ %3, %17 ]
  %21 = call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %0) #29
  %22 = call noalias ptr @fdopen(i32 noundef %21, ptr noundef nonnull %20) #28
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 8, !tbaa !11
  store ptr null, ptr %0, align 8, !tbaa !11
  %26 = call ptr @PerlIO_push(ptr noundef nonnull %0, ptr noundef nonnull @PerlIO_stdio, ptr noundef nonnull %3, ptr noundef null) #29
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct.PerlIOStdio, ptr %29, i64 0, i32 1
  store ptr %22, ptr %30, align 8, !tbaa !112
  %31 = call i32 @fileno(ptr noundef nonnull %22) #28
  call void @PerlIOUnix_refcnt_inc(i32 noundef %31) #29
  %32 = load ptr, ptr %26, align 8, !tbaa !11
  br label %33

33:                                               ; preds = %24, %28
  %34 = phi ptr [ %32, %28 ], [ %0, %24 ]
  store ptr %25, ptr %34, align 8, !tbaa !11
  br label %35

35:                                               ; preds = %33, %19, %8
  %36 = phi ptr [ null, %8 ], [ null, %19 ], [ %22, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  br label %37

37:                                               ; preds = %35, %2, %5
  %38 = phi ptr [ null, %5 ], [ null, %2 ], [ %36, %35 ]
  ret ptr %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_findFILE(ptr noundef %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, @PerlIO_stdio
  br i1 %9, label %10, label %2, !llvm.loop !120

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.PerlIOStdio, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !112
  br label %21

13:                                               ; preds = %2
  %14 = tail call ptr @PerlIO_exportFILE(ptr noundef %0, ptr noundef null) #29
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @fileno(ptr noundef nonnull %14) #28
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 @PerlIOUnix_refcnt_dec(i32 noundef %17) #29
  br label %21

21:                                               ; preds = %13, %19, %16, %10
  %22 = phi ptr [ %12, %10 ], [ %14, %16 ], [ %14, %19 ], [ null, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_releaseFILE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2, %21
  %6 = phi ptr [ %22, %21 ], [ %3, %2 ]
  %7 = phi ptr [ %6, %21 ], [ %0, %2 ]
  %8 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = icmp eq ptr %9, @PerlIO_stdio
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.PerlIOStdio, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !112
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = tail call i32 @fileno(ptr noundef %1) #28
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 @PerlIOUnix_refcnt_dec(i32 noundef %16) #29
  br label %20

20:                                               ; preds = %18, %15
  tail call void @PerlIO_pop(ptr noundef nonnull %7) #29
  br label %24

21:                                               ; preds = %11, %5
  %22 = load ptr, ptr %6, align 8, !tbaa !11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !121

24:                                               ; preds = %21, %2, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOBuf_pushed(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #4 {
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  %6 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %0) #29
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !11
  br label %18

10:                                               ; preds = %4
  %11 = tail call i32 @isatty(i32 noundef %6) #28
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %12, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._PerlIO, ptr %13, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !17
  %17 = or i32 %16, 8912896
  store i32 %17, ptr %15, align 8, !tbaa !17
  br label %18

18:                                               ; preds = %8, %14, %10
  %19 = phi ptr [ %9, %8 ], [ %13, %14 ], [ %13, %10 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = tail call i64 @Perl_PerlIO_tell(ptr noundef nonnull %19) #29
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 4
  store i64 %23, ptr %26, align 8, !tbaa !79
  br label %27

27:                                               ; preds = %22, %25, %18
  %28 = tail call i64 @PerlIOBase_pushed(ptr noundef nonnull %0, ptr noundef %1, ptr poison, ptr noundef %3) #29, !range !107
  ret i64 %28
}

; Function Attrs: nounwind optsize
declare i32 @isatty(i32 noundef) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOBuf_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #4 {
  %11 = icmp eq ptr %7, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %7, align 8, !tbaa !11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %12
  %16 = add nsw i64 %2, -1
  %17 = load ptr, ptr %13, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct._PerlIO, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  %20 = tail call ptr @PerlIO_layer_fetch(ptr noundef %1, i64 noundef %16, ptr noundef %19) #29
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct._PerlIO_funcs, ptr %20, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call ptr %24(ptr noundef nonnull %20, ptr noundef %1, i64 noundef %16, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %13, i32 noundef %8, ptr noundef %9) #28
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %22, %15, %26
  %30 = load ptr, ptr %7, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct._PerlIO, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !18
  %33 = getelementptr inbounds %struct._PerlIO_funcs, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !66
  %35 = tail call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #29
  %36 = tail call i64 %34(ptr noundef nonnull %7, ptr noundef %3, ptr noundef %35, ptr noundef %0) #28
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %72, label %38

38:                                               ; preds = %26, %29
  br label %72

39:                                               ; preds = %12, %10
  %40 = add nsw i64 %2, -1
  %41 = tail call ptr @PerlIO_default_layer(i32 noundef 0) #29
  %42 = tail call ptr @PerlIO_layer_fetch(ptr noundef %1, i64 noundef %40, ptr noundef %41) #29
  %43 = load i8, ptr %3, align 1, !tbaa !10
  %44 = icmp eq i8 %43, 73
  %45 = icmp eq ptr %42, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct._PerlIO_funcs, ptr %42, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !63
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = tail call ptr %48(ptr noundef nonnull %42, ptr noundef %1, i64 noundef %40, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #28
  br label %54

52:                                               ; preds = %46, %39
  %53 = tail call ptr @__errno_location() #30
  store i32 22, ptr %53, align 4, !tbaa !6
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %7, %52 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %72, label %57

57:                                               ; preds = %54
  %58 = tail call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #29
  %59 = tail call ptr @PerlIO_push(ptr noundef nonnull %55, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %58) #29
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %55) #29
  %63 = icmp eq i32 %62, 2
  %64 = select i1 %44, i1 %63, i1 false
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load ptr, ptr %55, align 8, !tbaa !11
  %67 = getelementptr inbounds %struct._PerlIO, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !17
  %69 = or i32 %68, 65536
  store i32 %69, ptr %67, align 8, !tbaa !17
  br label %72

70:                                               ; preds = %57
  %71 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %55) #29
  br label %72

72:                                               ; preds = %54, %61, %65, %29, %70, %38
  %73 = phi ptr [ null, %70 ], [ null, %38 ], [ %7, %29 ], [ %55, %65 ], [ %55, %61 ], [ null, %54 ]
  ret ptr %73
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_flush(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !17
  %5 = and i32 %4, 131072
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %7, %33
  %14 = phi ptr [ %35, %33 ], [ %11, %7 ]
  %15 = phi ptr [ %34, %33 ], [ %9, %7 ]
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = tail call i64 @Perl_PerlIO_write(ptr noundef nonnull %2, ptr noundef %15, i64 noundef %18) #29
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = getelementptr inbounds i8, ptr %15, i64 %19
  br label %33

23:                                               ; preds = %13
  %24 = icmp slt i64 %19, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %2) #29
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23, %25
  %29 = load ptr, ptr %0, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct._PerlIO, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !17
  %32 = or i32 %31, 2048
  store i32 %32, ptr %30, align 8, !tbaa !17
  tail call void @Perl_PerlIO_save_errno(ptr noundef nonnull %0) #29
  br label %37

33:                                               ; preds = %21, %25
  %34 = phi ptr [ %22, %21 ], [ %15, %25 ]
  %35 = load ptr, ptr %10, align 8, !tbaa !99
  %36 = icmp ult ptr %34, %35
  br i1 %36, label %13, label %37

37:                                               ; preds = %33, %7, %28
  %38 = phi ptr [ %15, %28 ], [ %9, %7 ], [ %34, %33 ]
  %39 = phi i32 [ -1, %28 ], [ 0, %7 ], [ 0, %33 ]
  %40 = ptrtoint ptr %38 to i64
  %41 = ptrtoint ptr %9 to i64
  %42 = sub i64 %40, %41
  %43 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 4
  %44 = load i64, ptr %43, align 8, !tbaa !79
  %45 = add nsw i64 %42, %44
  store i64 %45, ptr %43, align 8, !tbaa !79
  br label %80

46:                                               ; preds = %1
  %47 = and i32 %4, 262144
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %80, label %49

49:                                               ; preds = %46
  %50 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %51 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !99
  %53 = ptrtoint ptr %52 to i64
  %54 = ptrtoint ptr %50 to i64
  %55 = sub i64 %53, %54
  %56 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 4
  %57 = load i64, ptr %56, align 8, !tbaa !79
  %58 = add nsw i64 %55, %57
  store i64 %58, ptr %56, align 8, !tbaa !79
  %59 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !101
  %61 = icmp ult ptr %52, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %49
  %63 = load ptr, ptr %2, align 8, !tbaa !11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @Perl_PerlIO_seek(ptr noundef nonnull %2, i64 noundef %58, i32 noundef 0) #29
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %51, align 8, !tbaa !99
  %70 = load i64, ptr %56, align 8, !tbaa !79
  %71 = ptrtoint ptr %69 to i64
  br label %75

72:                                               ; preds = %65
  %73 = load ptr, ptr %0, align 8, !tbaa !11
  %74 = tail call i64 @Perl_PerlIO_tell(ptr noundef %73) #29
  store i64 %74, ptr %56, align 8, !tbaa !79
  br label %80

75:                                               ; preds = %68, %62
  %76 = phi i64 [ %71, %68 ], [ %53, %62 ]
  %77 = phi i64 [ %70, %68 ], [ %58, %62 ]
  %78 = sub i64 %54, %76
  %79 = add i64 %78, %77
  store i64 %79, ptr %56, align 8, !tbaa !79
  br label %102

80:                                               ; preds = %49, %72, %46, %37
  %81 = phi ptr [ %2, %37 ], [ %2, %46 ], [ %2, %49 ], [ %73, %72 ]
  %82 = phi i32 [ %39, %37 ], [ 0, %46 ], [ 0, %49 ], [ 0, %72 ]
  %83 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !98
  %85 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  store ptr %84, ptr %85, align 8, !tbaa !101
  %86 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  store ptr %84, ptr %86, align 8, !tbaa !99
  %87 = load ptr, ptr %0, align 8, !tbaa !11
  %88 = getelementptr inbounds %struct._PerlIO, ptr %87, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !17
  %90 = and i32 %89, -393217
  store i32 %90, ptr %88, align 8, !tbaa !17
  %91 = icmp eq ptr %81, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %80
  %93 = load ptr, ptr %81, align 8, !tbaa !11
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %81) #29
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i32 %82, i32 -1
  br label %99

99:                                               ; preds = %95, %92, %80
  %100 = phi i32 [ %82, %92 ], [ %82, %80 ], [ %98, %95 ]
  %101 = sext i32 %100 to i64
  br label %102

102:                                              ; preds = %75, %99
  %103 = phi i64 [ %101, %99 ], [ 0, %75 ]
  ret i64 %103
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOBuf_fill(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %87

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = and i32 %8, 8388608
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @PerlIOBase_flush_linebuf() #29
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %18 = load ptr, ptr %13, align 8, !tbaa !98
  br label %19

19:                                               ; preds = %12, %16
  %20 = phi ptr [ %14, %12 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !101
  %22 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  store ptr %20, ptr %22, align 8, !tbaa !99
  %23 = load ptr, ptr %2, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load ptr, ptr %0, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct._PerlIO, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !17
  %29 = or i32 %28, 256
  store i32 %29, ptr %27, align 8, !tbaa !17
  br label %87

30:                                               ; preds = %19
  %31 = tail call i32 @PerlIO_fast_gets(ptr noundef nonnull %2) #29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %60, label %33

33:                                               ; preds = %30
  %34 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef nonnull %2) #29
  %35 = icmp slt i64 %34, 1
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = tail call i32 @Perl_PerlIO_fill(ptr noundef nonnull %2) #29
  %38 = sext i32 %37 to i64
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef nonnull %2) #29
  br label %48

42:                                               ; preds = %36
  %43 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %2) #29
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = tail call i32 @Perl_PerlIO_eof(ptr noundef nonnull %2) #29
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %45, %40, %42
  %49 = phi i64 [ %41, %40 ], [ %38, %42 ], [ %38, %45 ]
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %33, %48
  %52 = phi i64 [ %49, %48 ], [ %34, %33 ]
  %53 = tail call ptr @Perl_PerlIO_get_ptr(ptr noundef nonnull %2) #29
  %54 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 5
  %55 = load i64, ptr %54, align 8, !tbaa !100
  %56 = tail call i64 @llvm.smin.i64(i64 %52, i64 %55)
  %57 = load ptr, ptr %13, align 8, !tbaa !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %53, i64 %56, i1 false)
  %58 = getelementptr inbounds i8, ptr %53, i64 %56
  %59 = sub nsw i64 %52, %56
  tail call void @Perl_PerlIO_set_ptrcnt(ptr noundef nonnull %2, ptr noundef %58, i64 noundef %59) #29
  br label %64

60:                                               ; preds = %30
  %61 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 5
  %62 = load i64, ptr %61, align 8, !tbaa !100
  %63 = tail call i64 @Perl_PerlIO_read(ptr noundef nonnull %2, ptr noundef %20, i64 noundef %62) #29
  br label %64

64:                                               ; preds = %51, %60
  %65 = phi i64 [ %56, %51 ], [ %63, %60 ]
  %66 = icmp slt i64 %65, 1
  br i1 %66, label %67, label %80

67:                                               ; preds = %48, %64
  %68 = phi i64 [ %65, %64 ], [ %49, %48 ]
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %45, %67
  %71 = load ptr, ptr %0, align 8, !tbaa !11
  %72 = getelementptr inbounds %struct._PerlIO, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !17
  %74 = or i32 %73, 256
  store i32 %74, ptr %72, align 8, !tbaa !17
  br label %87

75:                                               ; preds = %67
  %76 = load ptr, ptr %0, align 8, !tbaa !11
  %77 = getelementptr inbounds %struct._PerlIO, ptr %76, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !17
  %79 = or i32 %78, 2048
  store i32 %79, ptr %77, align 8, !tbaa !17
  tail call void @Perl_PerlIO_save_errno(ptr noundef nonnull %0) #29
  br label %87

80:                                               ; preds = %64
  %81 = load ptr, ptr %13, align 8, !tbaa !98
  %82 = getelementptr inbounds i8, ptr %81, i64 %65
  store ptr %82, ptr %21, align 8, !tbaa !101
  %83 = load ptr, ptr %0, align 8, !tbaa !11
  %84 = getelementptr inbounds %struct._PerlIO, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !17
  %86 = or i32 %85, 262144
  store i32 %86, ptr %84, align 8, !tbaa !17
  br label %87

87:                                               ; preds = %70, %75, %1, %80, %25
  %88 = phi i64 [ 0, %80 ], [ -1, %25 ], [ -1, %1 ], [ -1, %75 ], [ -1, %70 ]
  ret i64 %88
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.PerlIOBuf, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  br label %14

14:                                               ; preds = %12, %8
  %15 = tail call i64 @PerlIOBase_read(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #29
  br label %16

16:                                               ; preds = %3, %5, %14
  %17 = phi i64 [ %15, %14 ], [ 0, %5 ], [ 0, %3 ]
  ret i64 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %10 = load ptr, ptr %0, align 8, !tbaa !11
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi ptr [ %10, %8 ], [ %4, %3 ]
  %13 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %108, label %17

17:                                               ; preds = %11
  %18 = and i32 %14, 262144
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %108

23:                                               ; preds = %20
  %24 = load ptr, ptr %0, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct._PerlIO, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !17
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i32 [ %26, %23 ], [ %14, %17 ]
  %29 = and i32 %28, 524288
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %1, i64 %2
  br label %33

33:                                               ; preds = %36, %31
  %34 = phi ptr [ %32, %31 ], [ %37, %36 ]
  %35 = icmp ugt ptr %34, %1
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds i8, ptr %34, i64 -1
  %38 = load i8, ptr %37, align 1, !tbaa !10
  %39 = icmp eq i8 %38, 10
  br i1 %39, label %40, label %33, !llvm.loop !122

40:                                               ; preds = %36, %33, %27
  %41 = phi ptr [ %1, %27 ], [ %34, %33 ], [ %34, %36 ]
  %42 = icmp eq i64 %2, 0
  br i1 %42, label %101, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 5
  %45 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 3
  %46 = ptrtoint ptr %41 to i64
  br label %47

47:                                               ; preds = %43, %95
  %48 = phi i64 [ 0, %43 ], [ %87, %95 ]
  %49 = phi ptr [ %1, %43 ], [ %86, %95 ]
  %50 = phi i64 [ %2, %43 ], [ %85, %95 ]
  %51 = load i64, ptr %44, align 8, !tbaa !100
  %52 = load ptr, ptr %45, align 8, !tbaa !99
  %53 = load ptr, ptr %5, align 8, !tbaa !98
  %54 = ptrtoint ptr %52 to i64
  %55 = ptrtoint ptr %53 to i64
  %56 = sub i64 %55, %54
  %57 = add i64 %56, %51
  %58 = tail call i64 @llvm.smin.i64(i64 %50, i64 %57)
  %59 = icmp slt i64 %50, 0
  %60 = select i1 %59, i64 %57, i64 %58
  %61 = icmp ule ptr %41, %49
  %62 = getelementptr inbounds i8, ptr %49, i64 %60
  %63 = icmp ugt ptr %41, %62
  %64 = select i1 %61, i1 true, i1 %63
  %65 = ptrtoint ptr %49 to i64
  %66 = sub i64 %46, %65
  %67 = select i1 %64, i64 %60, i64 %66
  %68 = load ptr, ptr %0, align 8, !tbaa !11
  %69 = getelementptr inbounds %struct._PerlIO, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !17
  %71 = or i32 %70, 131072
  store i32 %71, ptr %69, align 8, !tbaa !17
  %72 = icmp eq i64 %67, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr align 1 %49, i64 %67, i1 false)
  %74 = sub i64 %50, %67
  %75 = getelementptr inbounds i8, ptr %49, i64 %67
  %76 = add i64 %67, %48
  %77 = load ptr, ptr %45, align 8, !tbaa !99
  %78 = getelementptr inbounds i8, ptr %77, i64 %67
  store ptr %78, ptr %45, align 8, !tbaa !99
  %79 = icmp eq ptr %75, %41
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %82 = load ptr, ptr %45, align 8, !tbaa !99
  br label %83

83:                                               ; preds = %73, %80, %47
  %84 = phi ptr [ %82, %80 ], [ %78, %73 ], [ %52, %47 ]
  %85 = phi i64 [ %74, %80 ], [ %74, %73 ], [ %50, %47 ]
  %86 = phi ptr [ %41, %80 ], [ %75, %73 ], [ %49, %47 ]
  %87 = phi i64 [ %76, %80 ], [ %76, %73 ], [ %48, %47 ]
  %88 = load ptr, ptr %5, align 8, !tbaa !98
  %89 = load i64, ptr %44, align 8, !tbaa !100
  %90 = getelementptr inbounds i8, ptr %88, i64 %89
  %91 = icmp ult ptr %84, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %83
  %93 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %108, label %95, !llvm.loop !123

95:                                               ; preds = %92, %83
  %96 = icmp eq i64 %85, 0
  br i1 %96, label %97, label %47

97:                                               ; preds = %95
  %98 = load ptr, ptr %0, align 8, !tbaa !11
  %99 = getelementptr inbounds %struct._PerlIO, ptr %98, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !17
  br label %101

101:                                              ; preds = %97, %40
  %102 = phi i32 [ %28, %40 ], [ %100, %97 ]
  %103 = phi i64 [ 0, %40 ], [ %87, %97 ]
  %104 = and i32 %102, 65536
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  br label %108

108:                                              ; preds = %92, %101, %106, %20, %11
  %109 = phi i64 [ 0, %11 ], [ 0, %20 ], [ %103, %106 ], [ %103, %101 ], [ -1, %92 ]
  ret i64 %109
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #4 {
  %4 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0) #29
  %5 = sext i32 %4 to i64
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct._PerlIO, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !17
  %11 = and i32 %10, -257
  store i32 %11, ptr %9, align 8, !tbaa !17
  %12 = tail call i32 @Perl_PerlIO_seek(ptr noundef %8, i64 noundef %1, i32 noundef %2) #29
  %13 = sext i32 %12 to i64
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = load ptr, ptr %0, align 8, !tbaa !11
  %17 = tail call i64 @Perl_PerlIO_tell(ptr noundef %16) #29
  %18 = getelementptr inbounds %struct.PerlIOBuf, ptr %16, i64 0, i32 4
  store i64 %17, ptr %18, align 8, !tbaa !79
  br label %19

19:                                               ; preds = %7, %15, %3
  %20 = phi i64 [ 0, %15 ], [ %13, %7 ], [ %5, %3 ]
  ret i64 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_tell(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %7 = and i32 %6, 139264
  %8 = icmp eq i32 %7, 139264
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %11 = load ptr, ptr %0, align 8, !tbaa !11
  %12 = tail call i64 @Perl_PerlIO_tell(ptr noundef %11) #29
  store i64 %12, ptr %3, align 8, !tbaa !79
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i64 [ %12, %9 ], [ %4, %1 ]
  %15 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !99
  %21 = ptrtoint ptr %20 to i64
  %22 = ptrtoint ptr %16 to i64
  %23 = sub i64 %14, %22
  %24 = add i64 %23, %21
  br label %25

25:                                               ; preds = %18, %13
  %26 = phi i64 [ %24, %18 ], [ %14, %13 ]
  ret i64 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOBuf_popped(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 6
  %7 = icmp eq ptr %4, %6
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @Perl_safesysfree(ptr noundef nonnull %4) #28
  br label %10

10:                                               ; preds = %9, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %11 = load ptr, ptr %0, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct._PerlIO, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !17
  %14 = and i32 %13, -393217
  store i32 %14, ptr %12, align 8, !tbaa !17
  ret i64 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_close(ptr noundef %0) #4 {
  %2 = tail call i64 @PerlIOBase_close(ptr noundef %0) #29
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.PerlIOBuf, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.PerlIOBuf, ptr %3, i64 0, i32 6
  %8 = icmp eq ptr %5, %7
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @Perl_safesysfree(ptr noundef nonnull %5) #28
  br label %11

11:                                               ; preds = %10, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %12 = load ptr, ptr %0, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = and i32 %14, -393217
  store i32 %15, ptr %13, align 8, !tbaa !17
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOBuf_get_ptr(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_get_cnt(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %8 = load ptr, ptr %0, align 8, !tbaa !11
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %2, %1 ]
  %11 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = and i32 %12, 262144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  %18 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  br label %23

23:                                               ; preds = %9, %15
  %24 = phi i64 [ %22, %15 ], [ 0, %9 ]
  ret i64 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOBuf_get_base(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !100
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i64 8192, ptr %7, align 8, !tbaa !100
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi i64 [ 8192, %10 ], [ %8, %6 ]
  %13 = tail call ptr @Perl_safesyscalloc(i64 noundef %12, i64 noundef 1) #28
  store ptr %13, ptr %3, align 8, !tbaa !98
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 6
  store ptr %16, ptr %3, align 8, !tbaa !98
  store i64 8, ptr %7, align 8, !tbaa !100
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ %13, %11 ]
  %19 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !99
  %20 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  store ptr %18, ptr %20, align 8, !tbaa !101
  br label %21

21:                                               ; preds = %17, %1
  %22 = phi ptr [ %18, %17 ], [ %4, %1 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_bufsiz(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %8 = load ptr, ptr %3, align 8, !tbaa !98
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %11 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = ptrtoint ptr %12 to i64
  %14 = ptrtoint ptr %10 to i64
  %15 = sub i64 %13, %14
  ret i64 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOBuf_set_ptrcnt(ptr noundef %0, ptr noundef %1, i64 %2) #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 3
  store ptr %1, ptr %11, align 8, !tbaa !99
  %12 = load ptr, ptr %0, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = or i32 %14, 262144
  store i32 %15, ptr %13, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIOBuf_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #4 {
  %5 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #29
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOPending_fill(ptr noundef %0) #4 {
  %2 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0) #29
  ret i64 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOPending_close(ptr noundef %0) #4 {
  %2 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0) #29
  %3 = tail call i32 @Perl_PerlIO_close(ptr noundef %0) #29
  %4 = sext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOPending_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #4 {
  %4 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0) #29
  %5 = tail call i32 @Perl_PerlIO_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #29
  %6 = sext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOPending_flush(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 6
  %7 = icmp eq ptr %4, %6
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @Perl_safesysfree(ptr noundef nonnull %4) #28
  store ptr null, ptr %3, align 8, !tbaa !98
  br label %10

10:                                               ; preds = %9, %1
  tail call void @PerlIO_pop(ptr noundef nonnull %0) #29
  ret i64 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOPending_set_ptrcnt(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 {
  %4 = icmp slt i64 %2, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0) #29
  br label %8

7:                                                ; preds = %3
  tail call void @PerlIOBuf_set_ptrcnt(ptr noundef %0, ptr noundef %1, i64 poison) #29
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @PerlIOPending_pushed(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #11 {
  %5 = tail call i64 @PerlIOBase_pushed(ptr noundef %0, ptr noundef %1, ptr poison, ptr noundef %3) #29, !range !107
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = and i32 %8, -4227073
  %10 = load ptr, ptr %6, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = and i32 %12, 4227072
  %14 = or disjoint i32 %13, %9
  store i32 %14, ptr %7, align 8, !tbaa !17
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOPending_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 {
  %4 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef %0) #29
  %5 = tail call i64 @llvm.smin.i64(i64 %4, i64 %2)
  %6 = icmp slt i64 %2, 0
  %7 = select i1 %6, i64 %4, i64 %5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i64 @PerlIOBuf_read(ptr noundef %0, ptr noundef %1, i64 noundef %7) #29
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i64 [ %10, %9 ], [ 0, %3 ]
  %13 = icmp sgt i64 %12, -1
  %14 = icmp slt i64 %12, %2
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %1, i64 %12
  %18 = sub nsw i64 %2, %12
  %19 = tail call i64 @Perl_PerlIO_read(ptr noundef %0, ptr noundef %17, i64 noundef %18) #29
  %20 = icmp sgt i64 %19, -1
  %21 = icmp eq i64 %12, 0
  %22 = or i1 %21, %20
  %23 = select i1 %22, i64 %19, i64 0
  %24 = add nsw i64 %23, %12
  br label %25

25:                                               ; preds = %16, %11
  %26 = phi i64 [ %24, %16 ], [ %12, %11 ]
  ret i64 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOCrlf_pushed(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #4 {
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = or i32 %7, 16384
  store i32 %8, ptr %6, align 8, !tbaa !17
  %9 = tail call i64 @PerlIOBuf_pushed(ptr noundef nonnull %0, ptr noundef %1, ptr poison, ptr noundef %3) #29, !range !107
  %10 = load ptr, ptr %0, align 8, !tbaa !11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %10, align 8, !tbaa !11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._PerlIO, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = icmp eq ptr %17, @PerlIO_crlf
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._PerlIO, ptr %13, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !17
  %22 = and i32 %21, 16384
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = or disjoint i32 %21, 16384
  store i32 %25, ptr %20, align 8, !tbaa !17
  br label %26

26:                                               ; preds = %24, %19
  tail call fastcc void @S_inherit_utf8_flag(ptr noundef nonnull %10) #29
  tail call void @PerlIO_pop(ptr noundef nonnull %0) #29
  br label %28

27:                                               ; preds = %15, %12, %4
  tail call fastcc void @S_inherit_utf8_flag(ptr noundef nonnull %0) #29
  br label %28

28:                                               ; preds = %26, %27
  ret i64 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @S_inherit_utf8_flag(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !17
  %10 = and i32 %9, 32768
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = or i32 %14, 32768
  store i32 %15, ptr %13, align 8, !tbaa !17
  br label %16

16:                                               ; preds = %7, %12, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOCrlf_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.PerlIOCrlf, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  store i8 13, ptr %6, align 1, !tbaa !10
  store ptr null, ptr %5, align 8, !tbaa !124
  %9 = load ptr, ptr %0, align 8, !tbaa !11
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %4, %3 ]
  %12 = getelementptr inbounds %struct._PerlIO, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !17
  %14 = and i32 %13, 16384
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i64 @PerlIOBuf_unread(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #29
  br label %88

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %1, i64 %2
  %20 = and i32 %13, 131072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.PerlIOBuf, ptr %11, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !98
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %30 = load ptr, ptr %25, align 8, !tbaa !98
  %31 = icmp eq ptr %30, null
  br i1 %31, label %80, label %32

32:                                               ; preds = %24, %28
  %33 = phi ptr [ %30, %28 ], [ %26, %24 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct._PerlIO, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !17
  %37 = and i32 %36, 262144
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.PerlIOBuf, ptr %11, i64 0, i32 5
  %41 = load i64, ptr %40, align 8, !tbaa !100
  %42 = getelementptr inbounds i8, ptr %33, i64 %41
  %43 = getelementptr inbounds %struct.PerlIOBuf, ptr %11, i64 0, i32 3
  store ptr %42, ptr %43, align 8, !tbaa !99
  %44 = getelementptr inbounds %struct.PerlIOBuf, ptr %11, i64 0, i32 2
  store ptr %42, ptr %44, align 8, !tbaa !101
  %45 = load ptr, ptr %0, align 8, !tbaa !11
  %46 = getelementptr inbounds %struct._PerlIO, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !17
  %48 = or i32 %47, 262144
  store i32 %48, ptr %46, align 8, !tbaa !17
  %49 = getelementptr inbounds %struct.PerlIOBuf, ptr %11, i64 0, i32 4
  %50 = load i64, ptr %49, align 8, !tbaa !79
  %51 = sub i64 %50, %41
  store i64 %51, ptr %49, align 8, !tbaa !79
  br label %52

52:                                               ; preds = %39, %32
  %53 = icmp eq i64 %2, 0
  br i1 %53, label %88, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.PerlIOBuf, ptr %11, i64 0, i32 3
  br label %56

56:                                               ; preds = %54, %76
  %57 = phi i64 [ 0, %54 ], [ %77, %76 ]
  %58 = phi i64 [ %2, %54 ], [ %78, %76 ]
  %59 = phi ptr [ %19, %54 ], [ %64, %76 ]
  %60 = load ptr, ptr %55, align 8, !tbaa !99
  %61 = load ptr, ptr %25, align 8, !tbaa !98
  %62 = icmp ugt ptr %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %56
  %64 = getelementptr inbounds i8, ptr %59, i64 -1
  %65 = load i8, ptr %64, align 1, !tbaa !10
  %66 = icmp eq i8 %65, 10
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %60, i64 -2
  %69 = icmp ult ptr %68, %61
  %70 = getelementptr inbounds i8, ptr %60, i64 -1
  store ptr %70, ptr %55, align 8, !tbaa !99
  store i8 10, ptr %70, align 1, !tbaa !10
  br i1 %69, label %76, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %55, align 8, !tbaa !99
  %73 = getelementptr inbounds i8, ptr %72, i64 -1
  store ptr %73, ptr %55, align 8, !tbaa !99
  store i8 13, ptr %73, align 1, !tbaa !10
  br label %76

74:                                               ; preds = %63
  %75 = getelementptr inbounds i8, ptr %60, i64 -1
  store ptr %75, ptr %55, align 8, !tbaa !99
  store i8 %65, ptr %75, align 1, !tbaa !10
  br label %76

76:                                               ; preds = %67, %71, %74
  %77 = add nuw nsw i64 %57, 1
  %78 = add i64 %58, -1
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %88, label %56, !llvm.loop !126

80:                                               ; preds = %28
  %81 = icmp eq i64 %2, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %56, %80
  %83 = phi i64 [ 0, %80 ], [ %57, %56 ]
  %84 = phi i64 [ %2, %80 ], [ %58, %56 ]
  %85 = getelementptr inbounds i8, ptr %1, i64 %83
  %86 = tail call i64 @PerlIOBase_unread(ptr noundef nonnull %0, ptr noundef %85, i64 noundef %84) #29
  %87 = add nsw i64 %86, %83
  br label %88

88:                                               ; preds = %76, %52, %80, %82, %16
  %89 = phi i64 [ %17, %16 ], [ %87, %82 ], [ 0, %80 ], [ 0, %52 ], [ %2, %76 ]
  ret i64 %89
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOCrlf_get_cnt(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %8 = load ptr, ptr %0, align 8, !tbaa !11
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %2, %1 ]
  %11 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = and i32 %12, 262144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %94, label %15

15:                                               ; preds = %9
  %16 = and i32 %12, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %78, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.PerlIOCrlf, ptr %10, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !124
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i8, ptr %20, align 1, !tbaa !10
  %24 = icmp eq i8 %23, 13
  br i1 %24, label %28, label %78

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  br label %28

28:                                               ; preds = %22, %25
  %29 = phi ptr [ %27, %25 ], [ %20, %22 ]
  %30 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %31 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %32 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 5
  %33 = load ptr, ptr %30, align 8, !tbaa !101
  br label %34

34:                                               ; preds = %55, %28
  %35 = phi ptr [ %33, %28 ], [ %53, %55 ]
  %36 = phi ptr [ %29, %28 ], [ %52, %55 ]
  %37 = icmp ult ptr %36, %35
  br i1 %37, label %38, label %78

38:                                               ; preds = %34
  %39 = ptrtoint ptr %35 to i64
  %40 = ptrtoint ptr %36 to i64
  %41 = sub i64 %39, %40
  %42 = getelementptr i8, ptr %36, i64 %41
  br label %43

43:                                               ; preds = %38, %47
  %44 = phi ptr [ %48, %47 ], [ %36, %38 ]
  %45 = load i8, ptr %44, align 1, !tbaa !10
  %46 = icmp eq i8 %45, 13
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %44, i64 1
  %49 = icmp eq ptr %48, %42
  br i1 %49, label %78, label %43, !llvm.loop !127

50:                                               ; preds = %43, %62
  %51 = phi ptr [ %72, %62 ], [ %44, %43 ]
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  %53 = load ptr, ptr %30, align 8, !tbaa !101
  %54 = icmp ult ptr %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i8, ptr %52, align 1, !tbaa !10
  %57 = icmp eq i8 %56, 10
  br i1 %57, label %58, label %34

58:                                               ; preds = %55
  store i8 10, ptr %51, align 1, !tbaa !10
  store ptr %51, ptr %19, align 8, !tbaa !124
  br label %78

59:                                               ; preds = %50
  %60 = load ptr, ptr %31, align 8, !tbaa !99
  %61 = icmp ult ptr %60, %51
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %63, ptr %31, align 8, !tbaa !99
  %64 = load ptr, ptr %3, align 8, !tbaa !98
  %65 = getelementptr inbounds i8, ptr %64, i64 1
  store ptr %65, ptr %3, align 8, !tbaa !98
  %66 = load i64, ptr %32, align 8, !tbaa !100
  %67 = add i64 %66, -1
  store i64 %67, ptr %32, align 8, !tbaa !100
  %68 = tail call i32 @Perl_PerlIO_fill(ptr noundef nonnull %0) #29
  %69 = load i64, ptr %32, align 8, !tbaa !100
  %70 = add i64 %69, 1
  store i64 %70, ptr %32, align 8, !tbaa !100
  %71 = load ptr, ptr %3, align 8, !tbaa !98
  %72 = getelementptr inbounds i8, ptr %71, i64 -1
  store ptr %72, ptr %3, align 8, !tbaa !98
  store ptr %72, ptr %31, align 8, !tbaa !99
  store i8 13, ptr %72, align 1, !tbaa !10
  %73 = icmp eq i32 %68, 0
  br i1 %73, label %50, label %78

74:                                               ; preds = %59
  store ptr %51, ptr %19, align 8, !tbaa !124
  %75 = ptrtoint ptr %51 to i64
  %76 = ptrtoint ptr %60 to i64
  %77 = sub i64 %75, %76
  br label %94

78:                                               ; preds = %34, %47, %62, %58, %22, %15
  %79 = getelementptr inbounds %struct.PerlIOCrlf, ptr %10, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !124
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds i8, ptr %80, i64 1
  br label %87

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !101
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi ptr [ %83, %82 ], [ %86, %84 ]
  %89 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !99
  %91 = ptrtoint ptr %88 to i64
  %92 = ptrtoint ptr %90 to i64
  %93 = sub i64 %91, %92
  br label %94

94:                                               ; preds = %74, %9, %87
  %95 = phi i64 [ %93, %87 ], [ %77, %74 ], [ 0, %9 ]
  ret i64 %95
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOCrlf_set_ptrcnt(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  br label %10

10:                                               ; preds = %8, %3
  %11 = icmp eq ptr %1, null
  %12 = getelementptr inbounds %struct.PerlIOCrlf, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !124
  br i1 %11, label %14, label %32

14:                                               ; preds = %10
  %15 = icmp eq ptr %13, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i8, ptr %13, align 1, !tbaa !10
  %23 = icmp eq i8 %22, 13
  %24 = select i1 %23, ptr %13, ptr %17
  br label %28

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !101
  br label %28

28:                                               ; preds = %21, %16, %25
  %29 = phi ptr [ %17, %16 ], [ %27, %25 ], [ %24, %21 ]
  %30 = sub i64 0, %2
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  br label %32

32:                                               ; preds = %10, %28
  %33 = phi ptr [ %31, %28 ], [ %1, %10 ]
  %34 = icmp ne ptr %13, null
  %35 = icmp ugt ptr %33, %13
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.PerlIOCrlf, ptr %4, i64 0, i32 1
  store i8 13, ptr %13, align 1, !tbaa !10
  store ptr null, ptr %38, align 8, !tbaa !124
  %39 = getelementptr inbounds i8, ptr %33, i64 1
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi ptr [ %39, %37 ], [ %33, %32 ]
  %42 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !99
  %43 = load ptr, ptr %0, align 8, !tbaa !11
  %44 = getelementptr inbounds %struct._PerlIO, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !17
  %46 = or i32 %45, 262144
  store i32 %46, ptr %44, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOCrlf_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i64 @PerlIOBuf_write(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #29
  br label %89

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %1, i64 %2
  %13 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %18 = load ptr, ptr %0, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct._PerlIO, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !17
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i32 [ %20, %16 ], [ %6, %11 ]
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %89, label %25

25:                                               ; preds = %21
  %26 = icmp sgt i64 %2, 0
  br i1 %26, label %27, label %78

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 5
  %29 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 3
  br label %30

30:                                               ; preds = %27, %71
  %31 = phi ptr [ %1, %27 ], [ %72, %71 ]
  %32 = load ptr, ptr %13, align 8, !tbaa !98
  %33 = load i64, ptr %28, align 8, !tbaa !100
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = load ptr, ptr %0, align 8, !tbaa !11
  %36 = getelementptr inbounds %struct._PerlIO, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !17
  %38 = or i32 %37, 131072
  store i32 %38, ptr %36, align 8, !tbaa !17
  br label %39

39:                                               ; preds = %64, %30
  %40 = phi ptr [ %31, %30 ], [ %65, %64 ]
  %41 = icmp ult ptr %40, %12
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load ptr, ptr %29, align 8, !tbaa !99
  %44 = icmp ult ptr %43, %34
  br i1 %44, label %45, label %71

45:                                               ; preds = %42
  %46 = load i8, ptr %40, align 1, !tbaa !10
  %47 = icmp eq i8 %46, 10
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, ptr %43, i64 2
  %50 = icmp ugt ptr %49, %34
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %52, ptr %29, align 8, !tbaa !99
  store i8 13, ptr %43, align 1, !tbaa !10
  %53 = load ptr, ptr %29, align 8, !tbaa !99
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %54, ptr %29, align 8, !tbaa !99
  store i8 10, ptr %53, align 1, !tbaa !10
  %55 = getelementptr inbounds i8, ptr %40, i64 1
  %56 = load ptr, ptr %0, align 8, !tbaa !11
  %57 = getelementptr inbounds %struct._PerlIO, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !17
  %59 = and i32 %58, 524288
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %68

61:                                               ; preds = %45
  %62 = getelementptr inbounds i8, ptr %40, i64 1
  %63 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %63, ptr %29, align 8, !tbaa !99
  store i8 %46, ptr %43, align 1, !tbaa !10
  br label %64

64:                                               ; preds = %51, %61
  %65 = phi ptr [ %55, %51 ], [ %62, %61 ]
  %66 = load ptr, ptr %29, align 8, !tbaa !99
  %67 = icmp ult ptr %66, %34
  br i1 %67, label %39, label %68, !llvm.loop !128

68:                                               ; preds = %64, %51, %48
  %69 = phi ptr [ %40, %48 ], [ %55, %51 ], [ %65, %64 ]
  %70 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  br label %71

71:                                               ; preds = %39, %42, %68
  %72 = phi ptr [ %69, %68 ], [ %40, %42 ], [ %40, %39 ]
  %73 = icmp ult ptr %72, %12
  br i1 %73, label %30, label %74, !llvm.loop !129

74:                                               ; preds = %71
  %75 = load ptr, ptr %0, align 8, !tbaa !11
  %76 = getelementptr inbounds %struct._PerlIO, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !17
  br label %78

78:                                               ; preds = %74, %25
  %79 = phi i32 [ %22, %25 ], [ %77, %74 ]
  %80 = phi ptr [ %1, %25 ], [ %72, %74 ]
  %81 = and i32 %79, 65536
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  br label %85

85:                                               ; preds = %83, %78
  %86 = ptrtoint ptr %80 to i64
  %87 = ptrtoint ptr %1 to i64
  %88 = sub i64 %86, %87
  br label %89

89:                                               ; preds = %85, %21, %9
  %90 = phi i64 [ %10, %9 ], [ %88, %85 ], [ 0, %21 ]
  ret i64 %90
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOCrlf_flush(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.PerlIOCrlf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8 13, ptr %4, align 1, !tbaa !10
  store ptr null, ptr %3, align 8, !tbaa !124
  br label %7

7:                                                ; preds = %6, %1
  %8 = tail call i64 @PerlIOBuf_flush(ptr noundef nonnull %0) #29, !range !107
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOCrlf_binmode(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !17
  %5 = and i32 %4, 16384
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = and i32 %4, -16385
  store i32 %8, ptr %3, align 8, !tbaa !17
  tail call void @PerlIO_pop(ptr noundef nonnull %0) #29
  br label %9

9:                                                ; preds = %7, %1
  ret i64 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_PerlIO_stdin() local_unnamed_addr #4 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @PerlIO_stdstreams() #29
  %4 = load ptr, ptr @PL_perlio, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 1
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_PerlIO_stdout() local_unnamed_addr #4 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @PerlIO_stdstreams() #29
  %4 = load ptr, ptr @PL_perlio, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 2
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_PerlIO_stderr() local_unnamed_addr #4 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @PerlIO_stdstreams() #29
  %4 = load ptr, ptr @PL_perlio, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 3
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @PerlIO_getname(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 {
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.69) #28
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_open(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %4 = tail call ptr @Perl_newSVpv(ptr noundef %0, i64 noundef 0) #28
  %5 = tail call ptr @Perl_sv_2mortal(ptr noundef %4) #28
  store ptr %5, ptr %3, align 8, !tbaa !11
  %6 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef %1, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_reopen(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  %5 = tail call ptr @Perl_newSVpv(ptr noundef %0, i64 noundef 0) #28
  %6 = tail call ptr @Perl_sv_2mortal(ptr noundef %5) #28
  store ptr %6, ptr %4, align 8, !tbaa !11
  %7 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef %1, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_getc(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #31
  %3 = call i64 @Perl_PerlIO_read(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 1) #29
  %4 = icmp eq i64 %3, 1
  %5 = load i8, ptr %2, align 1
  %6 = zext i8 %5 to i32
  %7 = select i1 %4, i32 %6, i32 -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #31
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PerlIO_ungetc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca i8, align 1
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #31
  %6 = trunc i32 %1 to i8
  store i8 %6, ptr %3, align 1, !tbaa !10
  %7 = call i64 @Perl_PerlIO_unread(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 1) #29
  %8 = icmp eq i64 %7, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #31
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %2
  br label %10

10:                                               ; preds = %5, %9
  %11 = phi i32 [ %1, %5 ], [ -1, %9 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_putc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #31
  %4 = trunc i32 %1 to i8
  store i8 %4, ptr %3, align 1, !tbaa !10
  %5 = call i64 @Perl_PerlIO_write(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 1) #29
  %6 = trunc i64 %5 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #31
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_puts(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %4 = tail call i64 @Perl_PerlIO_write(ptr noundef %0, ptr noundef %1, i64 noundef %3) #29
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_rewind(ptr noundef %0) local_unnamed_addr #4 {
  %2 = tail call i32 @Perl_PerlIO_seek(ptr noundef %0, i64 noundef 0, i32 noundef 0) #29
  tail call void @Perl_PerlIO_clearerr(ptr noundef %0) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca i64, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #31
  call void @llvm.va_copy(ptr nonnull %5, ptr %2)
  %6 = call ptr @Perl_vnewSVpvf(ptr noundef %1, ptr noundef nonnull %5) #28
  call void @llvm.va_end(ptr nonnull %5)
  %7 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !55
  %9 = and i32 %8, 2098176
  %10 = icmp eq i32 %9, 1024
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.xpv, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !57
  store i64 %14, ptr %4, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !10
  br label %20

17:                                               ; preds = %3
  %18 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %6, ptr noundef nonnull %4, i32 noundef 34) #28
  %19 = load i64, ptr %4, align 8, !tbaa !59
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi i64 [ %14, %11 ], [ %19, %17 ]
  %22 = phi ptr [ %16, %11 ], [ %18, %17 ]
  %23 = call i64 @Perl_PerlIO_write(ptr noundef %0, ptr noundef %22, i64 noundef %21) #29
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %6) #29
  %24 = trunc i64 %23 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  ret i32 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #3

; Function Attrs: optsize
declare ptr @Perl_vnewSVpvf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_printf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #4 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #31
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @PerlIO_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #29
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #31
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_stdoutf(ptr noundef %0, ...) local_unnamed_addr #4 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #31
  call void @llvm.va_start(ptr nonnull %2)
  %3 = call ptr @Perl_PerlIO_stdout() #29
  %4 = call i32 @PerlIO_vprintf(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %2) #29
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #31
  ret i32 %4
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @tmpfile64() local_unnamed_addr #20

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Perl_PerlIO_restore_errno(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !102
  %9 = tail call ptr @__errno_location() #30
  store i32 %8, ptr %9, align 4, !tbaa !6
  br label %10

10:                                               ; preds = %1, %3, %6
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_refcounted_he_fetch_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_setpos(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !55
  %6 = and i32 %5, 65280
  %7 = icmp ne i32 %6, 0
  %8 = and i32 %5, 255
  %9 = icmp eq i32 %8, 8
  %10 = or i1 %7, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = and i32 %5, 16777471
  %13 = icmp eq i32 %12, 16777226
  %14 = icmp ne ptr %0, null
  %15 = and i1 %14, %13
  br i1 %15, label %18, label %38

16:                                               ; preds = %2
  %17 = icmp eq ptr %0, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %11, %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %19 = and i32 %5, 2098176
  %20 = icmp eq i32 %19, 1024
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load ptr, ptr %1, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !57
  store i64 %24, ptr %3, align 8, !tbaa !59
  %25 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  br label %30

27:                                               ; preds = %18
  %28 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef 2) #28
  %29 = load i64, ptr %3, align 8, !tbaa !59
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i64 [ %29, %27 ], [ %24, %21 ]
  %32 = phi ptr [ %28, %27 ], [ %26, %21 ]
  %33 = icmp eq i64 %31, 8
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  br label %38

35:                                               ; preds = %30
  %36 = load i64, ptr %32, align 8, !tbaa !59
  %37 = call i32 @Perl_PerlIO_seek(ptr noundef nonnull %0, i64 noundef %36, i32 noundef 0) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  br label %40

38:                                               ; preds = %34, %16, %11
  %39 = tail call ptr @__errno_location() #30
  store i32 22, ptr %39, align 4, !tbaa !6
  br label %40

40:                                               ; preds = %35, %38
  %41 = phi i32 [ %37, %35 ], [ -1, %38 ]
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_getpos(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %4 = tail call i64 @Perl_PerlIO_tell(ptr noundef %0) #29
  store i64 %4, ptr %3, align 8, !tbaa !59
  call void @Perl_sv_setpvn(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 8) #28
  %5 = load i64, ptr %3, align 8, !tbaa !59
  %6 = icmp eq i64 %5, -1
  %7 = sext i1 %6 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  ret i32 %7
}

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @Perl_noperl_die(ptr nocapture noundef readonly %0, ...) local_unnamed_addr #24 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #31
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !11
  %4 = call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %2) #35
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef 1) #34
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #20

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #25

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree noinline nounwind optsize memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nounwind optsize }
attributes #29 = { optsize }
attributes #30 = { nounwind optsize willreturn memory(none) }
attributes #31 = { nounwind }
attributes #32 = { nounwind optsize willreturn memory(read) }
attributes #33 = { nounwind optsize allocsize(1) }
attributes #34 = { noreturn nounwind optsize }
attributes #35 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !12, i64 0}
!16 = !{!"_PerlIO", !12, i64 0, !12, i64 8, !7, i64 16, !7, i64 20, !12, i64 24}
!17 = !{!16, !7, i64 16}
!18 = !{!16, !12, i64 8}
!19 = !{!16, !12, i64 24}
!20 = !{!21, !12, i64 80}
!21 = !{!"_PerlIO_funcs", !22, i64 0, !12, i64 8, !22, i64 16, !7, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216}
!22 = !{!"long", !8, i64 0}
!23 = !{!21, !12, i64 64}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = !{!27, !22, i64 0}
!27 = !{!"PerlIO_list_s", !22, i64 0, !22, i64 8, !22, i64 16, !12, i64 24}
!28 = !{!27, !12, i64 24}
!29 = !{!27, !22, i64 8}
!30 = !{!31, !12, i64 8}
!31 = !{!"", !12, i64 0, !12, i64 8}
!32 = distinct !{!32, !14}
!33 = !{!34, !7, i64 8}
!34 = !{!"sv", !12, i64 0, !7, i64 8, !7, i64 12, !8, i64 16}
!35 = !{!27, !22, i64 16}
!36 = !{!31, !12, i64 0}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = !{!21, !7, i64 24}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = !{!21, !12, i64 136}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = !{!21, !12, i64 40}
!46 = !{!21, !12, i64 8}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = !{!50, !50, i64 0}
!50 = !{!"_Bool", !8, i64 0}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!54, !7, i64 8}
!54 = !{!"cv", !12, i64 0, !7, i64 8, !7, i64 12, !8, i64 16}
!55 = !{!34, !7, i64 12}
!56 = !{!34, !12, i64 0}
!57 = !{!58, !22, i64 16}
!58 = !{!"xpv", !12, i64 0, !8, i64 8, !22, i64 16, !8, i64 24}
!59 = !{!22, !22, i64 0}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = !{!21, !12, i64 48}
!64 = !{!21, !22, i64 0}
!65 = !{!21, !22, i64 16}
!66 = !{!21, !12, i64 32}
!67 = !{!21, !12, i64 56}
!68 = distinct !{!68, !14}
!69 = !{i32 -1, i32 1}
!70 = !{!21, !12, i64 128}
!71 = !{!21, !12, i64 72}
!72 = !{i64 -2147483648, i64 2147483648}
!73 = !{!74, !7, i64 56}
!74 = !{!"cop", !12, i64 0, !12, i64 8, !12, i64 16, !22, i64 24, !7, i64 32, !7, i64 33, !7, i64 33, !7, i64 33, !7, i64 33, !7, i64 33, !7, i64 33, !7, i64 33, !8, i64 34, !8, i64 35, !7, i64 36, !12, i64 40, !12, i64 48, !7, i64 56, !7, i64 60, !12, i64 64, !12, i64 72}
!75 = !{!74, !12, i64 72}
!76 = distinct !{!76, !14}
!77 = !{!21, !12, i64 88}
!78 = !{!21, !12, i64 96}
!79 = !{!80, !22, i64 56}
!80 = !{!"", !16, i64 0, !12, i64 32, !12, i64 40, !12, i64 48, !22, i64 56, !22, i64 64, !22, i64 72}
!81 = !{!21, !12, i64 104}
!82 = !{!21, !12, i64 112}
!83 = !{!21, !12, i64 120}
!84 = distinct !{!84, !14}
!85 = distinct !{!85, !14}
!86 = !{!21, !12, i64 144}
!87 = !{!21, !12, i64 152}
!88 = !{i64 0, i64 2}
!89 = !{!21, !12, i64 160}
!90 = !{!21, !12, i64 168}
!91 = !{!21, !12, i64 176}
!92 = !{!21, !12, i64 184}
!93 = !{!21, !12, i64 216}
!94 = !{!21, !12, i64 200}
!95 = !{!21, !12, i64 208}
!96 = !{!21, !12, i64 192}
!97 = distinct !{!97, !14}
!98 = !{!80, !12, i64 32}
!99 = !{!80, !12, i64 48}
!100 = !{!80, !22, i64 64}
!101 = !{!80, !12, i64 40}
!102 = !{!16, !7, i64 20}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14}
!105 = !{!106, !7, i64 32}
!106 = !{!"", !16, i64 0, !7, i64 32, !7, i64 36}
!107 = !{i64 -1, i64 1}
!108 = !{i32 -1, i32 1091}
!109 = !{!106, !7, i64 36}
!110 = distinct !{!110, !14}
!111 = distinct !{!111, !14}
!112 = !{!113, !12, i64 32}
!113 = !{!"", !16, i64 0, !12, i64 32}
!114 = distinct !{!114, !14}
!115 = !{!116, !12, i64 8}
!116 = !{!"_IO_FILE", !7, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !7, i64 112, !7, i64 116, !22, i64 120, !117, i64 128, !8, i64 130, !8, i64 131, !12, i64 136, !22, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !22, i64 184, !7, i64 192, !8, i64 196}
!117 = !{!"short", !8, i64 0}
!118 = !{!116, !12, i64 24}
!119 = !{!116, !12, i64 16}
!120 = distinct !{!120, !14}
!121 = distinct !{!121, !14}
!122 = distinct !{!122, !14}
!123 = distinct !{!123, !14}
!124 = !{!125, !12, i64 80}
!125 = !{!"", !80, i64 0, !12, i64 80}
!126 = distinct !{!126, !14}
!127 = distinct !{!127, !14}
!128 = distinct !{!128, !14}
!129 = distinct !{!129, !14}
