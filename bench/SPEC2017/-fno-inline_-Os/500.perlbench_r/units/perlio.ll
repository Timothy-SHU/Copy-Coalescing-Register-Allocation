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
@PerlIO_perlio = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.57, i64 80, i32 3, ptr @PerlIOBuf_pushed, ptr @PerlIOBuf_popped, ptr @PerlIOBuf_open, ptr @PerlIOBase_binmode, ptr null, ptr @PerlIOBase_fileno, ptr @PerlIOBuf_dup, ptr @PerlIOBuf_read, ptr @PerlIOBuf_unread, ptr @PerlIOBuf_write, ptr @PerlIOBuf_seek, ptr @PerlIOBuf_tell, ptr @PerlIOBuf_close, ptr @PerlIOBuf_flush, ptr @PerlIOBuf_fill, ptr @PerlIOBase_eof, ptr @PerlIOBase_error, ptr @PerlIOBase_clearerr, ptr @PerlIOBase_setlinebuf, ptr @PerlIOBuf_get_base, ptr @PerlIOBuf_bufsiz, ptr @PerlIOBuf_get_ptr, ptr @PerlIOBuf_get_cnt, ptr @PerlIOBuf_set_ptrcnt }, align 8
@PerlIO_stdio = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.56, i64 40, i32 3, ptr @PerlIOStdio_pushed, ptr @PerlIOBase_popped, ptr @PerlIOStdio_open, ptr @PerlIOBase_binmode, ptr null, ptr @PerlIOStdio_fileno, ptr @PerlIOStdio_dup, ptr @PerlIOStdio_read, ptr @PerlIOStdio_unread, ptr @PerlIOStdio_write, ptr @PerlIOStdio_seek, ptr @PerlIOStdio_tell, ptr @PerlIOStdio_close, ptr @PerlIOStdio_flush, ptr @PerlIOStdio_fill, ptr @PerlIOStdio_eof, ptr @PerlIOStdio_error, ptr @PerlIOStdio_clearerr, ptr @PerlIOStdio_setlinebuf, ptr @PerlIOStdio_get_base, ptr @PerlIOStdio_get_bufsiz, ptr @PerlIOStdio_get_ptr, ptr @PerlIOStdio_get_cnt, ptr null }, align 8
@.str.18 = private unnamed_addr constant [34 x i8] c"panic: PerlIO layer array corrupt\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@PerlIO_remove = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.19, i64 0, i32 32784, ptr @PerlIOPop_pushed, ptr null, ptr @PerlIOBase_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@PerlIO_unix = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.53, i64 40, i32 1, ptr @PerlIOUnix_pushed, ptr @PerlIOBase_popped, ptr @PerlIOUnix_open, ptr @PerlIOBase_binmode, ptr null, ptr @PerlIOUnix_fileno, ptr @PerlIOUnix_dup, ptr @PerlIOUnix_read, ptr @PerlIOBase_unread, ptr @PerlIOUnix_write, ptr @PerlIOUnix_seek, ptr @PerlIOUnix_tell, ptr @PerlIOUnix_close, ptr @PerlIOBase_noop_ok, ptr @PerlIOBase_noop_fail, ptr @PerlIOBase_eof, ptr @PerlIOBase_error, ptr @PerlIOBase_clearerr, ptr @PerlIOBase_setlinebuf, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@PerlIO_raw = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.37, i64 0, i32 16, ptr @PerlIORaw_pushed, ptr @PerlIOBase_popped, ptr @PerlIOBase_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@PerlIO_crlf = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.59, i64 88, i32 7, ptr @PerlIOCrlf_pushed, ptr @PerlIOBuf_popped, ptr @PerlIOBuf_open, ptr @PerlIOCrlf_binmode, ptr null, ptr @PerlIOBase_fileno, ptr @PerlIOBuf_dup, ptr @PerlIOBuf_read, ptr @PerlIOCrlf_unread, ptr @PerlIOCrlf_write, ptr @PerlIOBuf_seek, ptr @PerlIOBuf_tell, ptr @PerlIOBuf_close, ptr @PerlIOCrlf_flush, ptr @PerlIOBuf_fill, ptr @PerlIOBase_eof, ptr @PerlIOBase_error, ptr @PerlIOBase_clearerr, ptr @PerlIOBase_setlinebuf, ptr @PerlIOBuf_get_base, ptr @PerlIOBuf_bufsiz, ptr @PerlIOBuf_get_ptr, ptr @PerlIOCrlf_get_cnt, ptr @PerlIOCrlf_set_ptrcnt }, align 8
@PerlIO_utf8 = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.35, i64 0, i32 163856, ptr @PerlIOUtf8_pushed, ptr null, ptr @PerlIOBase_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@PerlIO_byte = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.36, i64 0, i32 131088, ptr @PerlIOUtf8_pushed, ptr null, ptr @PerlIOBase_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
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
@.str.32 = private unnamed_addr constant [39 x i8] c"More than one argument to open(,':%s')\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@PerlIO_pending = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.58, i64 80, i32 3, ptr @PerlIOPending_pushed, ptr @PerlIOBuf_popped, ptr null, ptr @PerlIOBase_binmode, ptr null, ptr @PerlIOBase_fileno, ptr @PerlIOBuf_dup, ptr @PerlIOPending_read, ptr @PerlIOBuf_unread, ptr @PerlIOBuf_write, ptr @PerlIOPending_seek, ptr @PerlIOBuf_tell, ptr @PerlIOPending_close, ptr @PerlIOPending_flush, ptr @PerlIOPending_fill, ptr @PerlIOBase_eof, ptr @PerlIOBase_error, ptr @PerlIOBase_clearerr, ptr @PerlIOBase_setlinebuf, ptr @PerlIOBuf_get_base, ptr @PerlIOBuf_bufsiz, ptr @PerlIOBuf_get_ptr, ptr @PerlIOBuf_get_cnt, ptr @PerlIOPending_set_ptrcnt }, align 8
@.str.38 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@PL_perlio_fd_refcnt_size = external local_unnamed_addr global i32, align 4
@PL_perlio_fd_refcnt = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [28 x i8] c"refcnt_inc: fd %d: %d <= 0\0A\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"refcnt_inc: fd %d < 0\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"refcnt_dec: fd %d >= refcnt_size %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"refcnt_dec: fd %d: %d <= 0\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"refcnt_dec: fd %d < 0\0A\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"refcnt: fd %d >= refcnt_size %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"refcnt: fd %d: %d <= 0\0A\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"refcnt: fd %d < 0\0A\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"pathname\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@.str.53 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.56 = private unnamed_addr constant [6 x i8] c"stdio\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"perlio\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"crlf\00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"Don't know how to get file name\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str.62 = private unnamed_addr constant [6 x i8] c"open>\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"open<\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"Unknown PerlIO layer \22scalar\22\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"Code\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"Glob\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"Invalid \\0 character in %s for %s: %s\\0%s\00", align 1
@PL_signalhook = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @perlsio_binmode(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !189 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @PerlIO_intmode2str(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #1 !prof !189 {
  %4 = and i32 %0, 3
  %5 = icmp eq i32 %4, 1
  %6 = icmp eq i32 %4, 0
  %7 = icmp eq ptr %2, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp ne i32 %4, 0
  %10 = zext i1 %9 to i32
  store i32 %10, ptr %2, align 4, !tbaa !190
  br label %11

11:                                               ; preds = %8, %3
  br i1 %6, label %12, label %13

12:                                               ; preds = %11
  store i8 114, ptr %1, align 1, !tbaa !194
  br label %23

13:                                               ; preds = %11
  %14 = and i32 %0, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  store i8 97, ptr %1, align 1, !tbaa !194
  br i1 %5, label %23, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 43, ptr %18, align 1, !tbaa !194
  br label %23

19:                                               ; preds = %13
  br i1 %5, label %20, label %21

20:                                               ; preds = %19
  store i8 119, ptr %1, align 1, !tbaa !194
  br label %23

21:                                               ; preds = %19
  store i8 114, ptr %1, align 1, !tbaa !194
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 43, ptr %22, align 1, !tbaa !194
  br label %23

23:                                               ; preds = %17, %16, %21, %20, %12
  %24 = phi i32 [ 43, %17 ], [ 62, %16 ], [ 43, %21 ], [ 62, %20 ], [ 60, %12 ]
  %25 = phi i64 [ 2, %17 ], [ 1, %16 ], [ 2, %21 ], [ 1, %20 ], [ 1, %12 ]
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  store i8 0, ptr %26, align 1, !tbaa !194
  ret i32 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @PerlIO_debug(ptr nocapture noundef readnone %0, ...) local_unnamed_addr #0 !prof !189 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_allocate() local_unnamed_addr #4 !prof !195 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !196
  %2 = icmp eq ptr %1, null
  br i1 %2, label %17, label %6, !prof !198

3:                                                ; preds = %8
  %4 = load ptr, ptr %7, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6, !prof !199

6:                                                ; preds = %0, %3
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  br label %11

8:                                                ; preds = %11
  %9 = add nuw nsw i32 %12, 1
  %10 = icmp eq i32 %9, 64
  br i1 %10, label %3, label %11, !prof !200, !llvm.loop !201

11:                                               ; preds = %6, %8
  %12 = phi i32 [ 1, %6 ], [ %9, %8 ]
  %13 = phi ptr [ %7, %6 ], [ %14, %8 ]
  %14 = getelementptr inbounds %struct._PerlIO, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !203
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %8, !prof !205

17:                                               ; preds = %3, %0
  %18 = phi ptr [ @PL_perlio, %0 ], [ %7, %3 ]
  %19 = tail call ptr @Perl_safesyscalloc(i64 noundef 64, i64 noundef 32) #28
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._PerlIO, ptr %19, i64 1
  store ptr %19, ptr %18, align 8, !tbaa !196
  br label %23

23:                                               ; preds = %11, %21
  %24 = phi ptr [ %22, %21 ], [ %14, %11 ]
  %25 = getelementptr inbounds %struct._PerlIO, ptr %24, i64 0, i32 2
  store i32 0, ptr %25, align 8, !tbaa !206
  %26 = getelementptr inbounds %struct._PerlIO, ptr %24, i64 0, i32 1
  store ptr null, ptr %26, align 8, !tbaa !207
  %27 = getelementptr inbounds %struct._PerlIO, ptr %24, i64 0, i32 4
  store ptr %24, ptr %27, align 8, !tbaa !208
  br label %28

28:                                               ; preds = %17, %23
  %29 = phi ptr [ %24, %23 ], [ null, %17 ]
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_fdupopen(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 !prof !189 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !207
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !209
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
  store i32 9, ptr %23, align 4, !tbaa !190
  br label %24

24:                                               ; preds = %16, %19, %22
  %25 = phi ptr [ null, %22 ], [ %18, %16 ], [ %21, %19 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 !prof !189 {
  %5 = alloca [8 x i8], align 1
  %6 = load ptr, ptr %1, align 8, !tbaa !196
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !196
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._PerlIO, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !207
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._PerlIO_funcs, ptr %13, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !209
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
  %27 = load ptr, ptr %1, align 8, !tbaa !196
  %28 = getelementptr inbounds %struct._PerlIO, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct._PerlIO_funcs, ptr %29, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !212
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
  %43 = load ptr, ptr %1, align 8, !tbaa !196
  %44 = getelementptr inbounds %struct._PerlIO, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !206
  %46 = and i32 %45, 32768
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %40, align 8, !tbaa !196
  %50 = getelementptr inbounds %struct._PerlIO, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !206
  %52 = or i32 %51, 32768
  store i32 %52, ptr %50, align 8, !tbaa !206
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
define dso_local void @PerlIO_cleantable(ptr nocapture noundef %0) local_unnamed_addr #4 !prof !213 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4, !prof !214

4:                                                ; preds = %1
  tail call void @PerlIO_cleantable(ptr noundef nonnull %2) #29
  br label %5

5:                                                ; preds = %4, %12
  %6 = phi i64 [ 63, %4 ], [ %13, %12 ]
  %7 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !203
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !215

10:                                               ; preds = %5
  %11 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %7) #29
  br label %12

12:                                               ; preds = %10, %5
  %13 = add nsw i64 %6, -1
  %14 = icmp ugt i64 %6, 1
  br i1 %14, label %5, label %15, !prof !216, !llvm.loop !217

15:                                               ; preds = %12
  tail call void @Perl_safesysfree(ptr noundef nonnull %2) #28
  store ptr null, ptr %0, align 8, !tbaa !196
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_close(ptr noundef %0) local_unnamed_addr #4 !prof !195 {
  %2 = tail call i32 @PerlIO__close(ptr noundef %0) #29
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4, !prof !198

4:                                                ; preds = %1, %16
  %5 = phi ptr [ %17, %16 ], [ %0, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !196
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8, !prof !218

8:                                                ; preds = %4
  tail call void @PerlIO_pop(ptr noundef nonnull %5) #29
  %9 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %11 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !206
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !219

14:                                               ; preds = %8
  %15 = load ptr, ptr %5, align 8, !tbaa !196
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %15, %14 ], [ %5, %8 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !prof !220, !llvm.loop !221

19:                                               ; preds = %4, %16, %1
  ret i32 %2
}

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIO_list_alloc() local_unnamed_addr #4 !prof !222 {
  %1 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 32) #28
  store i64 1, ptr %1, align 8, !tbaa !223
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_list_free(ptr noundef %0) local_unnamed_addr #4 !prof !225 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3, !prof !226

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8, !tbaa !223
  %5 = add nsw i64 %4, -1
  store i64 %5, ptr %0, align 8, !tbaa !223
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %28, !prof !227

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !228
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11, !prof !229

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !230
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %25, !prof !231

15:                                               ; preds = %11, %15
  %16 = phi i64 [ %20, %15 ], [ 0, %11 ]
  %17 = load ptr, ptr %8, align 8, !tbaa !228
  %18 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %17, i64 %16, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !232
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %19) #29
  %20 = add nuw nsw i64 %16, 1
  %21 = load i64, ptr %12, align 8, !tbaa !230
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %15, label %23, !prof !234, !llvm.loop !235

23:                                               ; preds = %15
  %24 = load ptr, ptr %8, align 8, !tbaa !228
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
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #4 !prof !236 !PGOFuncName !237 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !219

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !238
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9, !prof !240

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !238
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #28
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_list_push(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !236 {
  %4 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !230
  %6 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !241
  %8 = icmp slt i64 %5, %7
  br i1 %8, label %9, label %12, !prof !242

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !228
  br label %22

12:                                               ; preds = %3
  %13 = add nsw i64 %7, 8
  store i64 %13, ptr %6, align 8, !tbaa !241
  %14 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !228
  %16 = icmp eq ptr %15, null
  %17 = shl i64 %13, 4
  br i1 %16, label %20, label %18, !prof !243

18:                                               ; preds = %12
  %19 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %15, i64 noundef %17) #28
  store ptr %19, ptr %14, align 8, !tbaa !228
  br label %22

20:                                               ; preds = %12
  %21 = tail call ptr @Perl_safesysmalloc(i64 noundef %17) #28
  store ptr %21, ptr %14, align 8, !tbaa !228
  br label %22

22:                                               ; preds = %9, %18, %20
  %23 = phi ptr [ %11, %9 ], [ %19, %18 ], [ %21, %20 ]
  %24 = load i64, ptr %4, align 8, !tbaa !230
  %25 = add nsw i64 %24, 1
  store i64 %25, ptr %4, align 8, !tbaa !230
  %26 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %23, i64 %24
  store ptr %1, ptr %26, align 8, !tbaa !244
  %27 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %23, i64 %24, i32 1
  store ptr %2, ptr %27, align 8, !tbaa !232
  %28 = icmp eq ptr %2, null
  br i1 %28, label %33, label %29, !prof !245

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !238
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !238
  br label %33

33:                                               ; preds = %29, %22
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIO_clone_list(ptr noundef readonly %0, ptr nocapture readnone %1) local_unnamed_addr #4 !prof !246 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4, !prof !247

4:                                                ; preds = %2
  %5 = tail call ptr @PerlIO_list_alloc() #29
  %6 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !230
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %21, !prof !248

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %18, %11 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !228
  %14 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %13, i64 %12
  %15 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %13, i64 %12, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !232
  %17 = load ptr, ptr %14, align 8, !tbaa !244
  tail call void @PerlIO_list_push(ptr noundef %5, ptr noundef %17, ptr noundef %16) #29
  %18 = add nuw nsw i64 %12, 1
  %19 = load i64, ptr %6, align 8, !tbaa !230
  %20 = icmp sgt i64 %19, %18
  br i1 %20, label %11, label %21, !prof !249, !llvm.loop !250

21:                                               ; preds = %11, %4, %2
  %22 = phi ptr [ null, %2 ], [ %5, %4 ], [ %5, %11 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @PerlIO_clone(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !189 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_destruct() local_unnamed_addr #4 !prof !251 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !196
  %2 = icmp eq ptr %1, null
  br i1 %2, label %34, label %6, !prof !198

3:                                                ; preds = %31
  %4 = load ptr, ptr %7, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6, !prof !248, !llvm.loop !252

6:                                                ; preds = %0, %3
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  br label %8

8:                                                ; preds = %6, %31
  %9 = phi ptr [ %7, %6 ], [ %11, %31 ]
  %10 = phi i32 [ 1, %6 ], [ %32, %31 ]
  %11 = getelementptr inbounds %struct._PerlIO, ptr %9, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !196
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14, !prof !253

14:                                               ; preds = %8, %27
  %15 = phi ptr [ %29, %27 ], [ %12, %8 ]
  %16 = phi ptr [ %28, %27 ], [ %11, %8 ]
  %17 = getelementptr inbounds %struct._PerlIO, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !207
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20, !prof !254

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._PerlIO_funcs, ptr %18, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !255
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !256

25:                                               ; preds = %20
  %26 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %16) #29
  tail call void @PerlIO_pop(ptr noundef nonnull %16) #29
  br label %27

27:                                               ; preds = %14, %20, %25
  %28 = phi ptr [ %16, %25 ], [ %15, %20 ], [ %15, %14 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !196
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %14, !prof !257, !llvm.loop !258

31:                                               ; preds = %27, %8
  %32 = add nuw nsw i32 %10, 1
  %33 = icmp eq i32 %32, 64
  br i1 %33, label %3, label %8, !prof !259, !llvm.loop !260

34:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_flush(ptr noundef %0) local_unnamed_addr #4 !prof !261 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %6, !prof !262

3:                                                ; preds = %1
  %4 = load ptr, ptr @PL_perlio, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %25, !prof !198

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !196
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9, !prof !263

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !207
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13, !prof !263

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._PerlIO_funcs, ptr %11, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !264
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17, !prof !263

17:                                               ; preds = %13
  %18 = tail call i64 %15(ptr noundef nonnull %0) #28
  %19 = trunc i64 %18 to i32
  br label %43

20:                                               ; preds = %6
  %21 = tail call ptr @__errno_location() #30
  store i32 9, ptr %21, align 4, !tbaa !190
  br label %43

22:                                               ; preds = %39
  %23 = load ptr, ptr %26, align 8, !tbaa !196
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25, !prof !248, !llvm.loop !265

25:                                               ; preds = %3, %22
  %26 = phi ptr [ %23, %22 ], [ %4, %3 ]
  %27 = phi i32 [ %40, %22 ], [ 0, %3 ]
  br label %28

28:                                               ; preds = %25, %39
  %29 = phi ptr [ %26, %25 ], [ %32, %39 ]
  %30 = phi i32 [ 1, %25 ], [ %41, %39 ]
  %31 = phi i32 [ %27, %25 ], [ %40, %39 ]
  %32 = getelementptr inbounds %struct._PerlIO, ptr %29, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !203
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !215

35:                                               ; preds = %28
  %36 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %32) #29
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 %31, i32 -1, !prof !266
  br label %39

39:                                               ; preds = %35, %28
  %40 = phi i32 [ %31, %28 ], [ %38, %35 ]
  %41 = add nuw nsw i32 %30, 1
  %42 = icmp eq i32 %41, 64
  br i1 %42, label %22, label %28, !prof !259, !llvm.loop !267

43:                                               ; preds = %22, %3, %17, %13, %9, %20
  %44 = phi i32 [ -1, %20 ], [ %19, %17 ], [ 0, %13 ], [ 0, %9 ], [ 0, %3 ], [ %40, %22 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_pop(ptr noundef %0) local_unnamed_addr #4 !prof !236 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4, !prof !268

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !207
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !268

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._PerlIO_funcs, ptr %6, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !269
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12, !prof !268

12:                                               ; preds = %8
  %13 = tail call i64 %10(ptr noundef nonnull %0) #28
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %27, !prof !219

15:                                               ; preds = %4, %12, %8
  %16 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !208
  %18 = getelementptr inbounds %struct._PerlIO, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !206
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !219

21:                                               ; preds = %15
  %22 = load ptr, ptr %0, align 8, !tbaa !196
  %23 = getelementptr inbounds %struct._PerlIO, ptr %22, i64 0, i32 2
  store i32 33554432, ptr %23, align 8, !tbaa !206
  %24 = getelementptr inbounds %struct._PerlIO, ptr %22, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !207
  br label %27

25:                                               ; preds = %15
  %26 = load ptr, ptr %2, align 8, !tbaa !203
  store ptr %26, ptr %0, align 8, !tbaa !196
  tail call void @Perl_safesysfree(ptr noundef nonnull %2) #28
  br label %27

27:                                               ; preds = %1, %25, %21, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_get_layers(ptr noundef readonly %0) local_unnamed_addr #4 !prof !189 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @Perl_newSV_type(i32 noundef 11) #28
  %4 = icmp eq ptr %0, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  store ptr %6, ptr %2, align 8, !tbaa !196
  br label %9

9:                                                ; preds = %8, %32
  %10 = phi ptr [ %6, %8 ], [ %41, %32 ]
  %11 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !207
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._PerlIO_funcs, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !270
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = call ptr @Perl_newSVpv(ptr noundef nonnull %16, i64 noundef 0) #28
  %20 = load ptr, ptr %2, align 8, !tbaa !196
  %21 = getelementptr inbounds %struct._PerlIO, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !207
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %14, %18
  %25 = phi ptr [ %19, %18 ], [ @PL_sv_undef, %14 ]
  %26 = phi ptr [ %22, %18 ], [ %12, %14 ]
  %27 = getelementptr inbounds %struct._PerlIO_funcs, ptr %26, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !212
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
  %35 = load ptr, ptr %2, align 8, !tbaa !196
  %36 = getelementptr inbounds %struct._PerlIO, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !206
  %38 = zext i32 %37 to i64
  %39 = call ptr @Perl_newSViv(i64 noundef %38) #28
  call void @Perl_av_push(ptr noundef %3, ptr noundef %39) #28
  %40 = load ptr, ptr %2, align 8, !tbaa !196
  %41 = load ptr, ptr %40, align 8, !tbaa !196
  store ptr %41, ptr %2, align 8, !tbaa !196
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %9, !llvm.loop !271

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
define dso_local ptr @PerlIO_find_layer(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 !prof !189 {
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
  %13 = load ptr, ptr @PL_known_layers, align 8, !tbaa !196
  %14 = getelementptr inbounds %struct.PerlIO_list_s, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !230
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.PerlIO_list_s, ptr %13, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !228
  br label %20

20:                                               ; preds = %17, %31
  %21 = phi i64 [ 0, %17 ], [ %32, %31 ]
  %22 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !244
  %24 = getelementptr inbounds %struct._PerlIO_funcs, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !270
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
  br i1 %33, label %34, label %20, !llvm.loop !272

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
  %43 = load i64, ptr %42, align 8, !tbaa !230
  %44 = icmp sgt i64 %43, 1
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i8, ptr @PL_in_load_module, align 1, !tbaa !273, !range !275, !noundef !276
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
  %56 = load i32, ptr %55, align 8, !tbaa !277
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 8, !tbaa !277
  store ptr %52, ptr @PL_warnhook, align 8, !tbaa !196
  br label %58

58:                                               ; preds = %54, %49
  store i8 1, ptr @PL_in_load_module, align 1, !tbaa !273
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
define dso_local ptr @PerlIO_tab_sv(ptr noundef %0) local_unnamed_addr #4 !prof !189 {
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
define dso_local void @XS_PerlIO__Layer__NoWarnings(ptr nocapture readnone %0) #4 !prof !189 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !196
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !196
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !196
  %5 = load i32, ptr %3, align 4, !tbaa !190
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !196
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
  %18 = load ptr, ptr %17, align 8, !tbaa !196
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !279
  %21 = and i32 %20, 2098176
  %22 = icmp eq i32 %21, 1024
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %18, ptr noundef null, i32 noundef 34) #28
  %25 = load ptr, ptr @PL_stack_base, align 8, !tbaa !196
  br label %26

26:                                               ; preds = %1, %16, %23
  %27 = phi ptr [ %6, %16 ], [ %25, %23 ], [ %6, %1 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %15
  %29 = getelementptr inbounds ptr, ptr %28, i64 -1
  store ptr %29, ptr @PL_stack_sp, align 8, !tbaa !196
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_PerlIO__Layer__find(ptr nocapture readnone %0) #4 !prof !189 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !196
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !196
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !196
  %6 = load i32, ptr %4, align 4, !tbaa !190
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !196
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
  %20 = load ptr, ptr %19, align 8, !tbaa !196
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !279
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load ptr, ptr %20, align 8, !tbaa !280
  %27 = getelementptr inbounds %struct.xpv, ptr %26, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !281
  store i64 %28, ptr %2, align 8, !tbaa !283
  %29 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !194
  br label %33

31:                                               ; preds = %18
  %32 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %20, ptr noundef nonnull %2, i32 noundef 34) #28
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %30, %25 ], [ %32, %31 ]
  %35 = icmp eq i32 %15, 2
  br i1 %35, label %96, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !196
  %38 = getelementptr ptr, ptr %37, i64 %9
  %39 = getelementptr ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8, !tbaa !196
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !279
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
  %60 = load ptr, ptr %40, align 8, !tbaa !280
  %61 = icmp eq ptr %60, null
  br i1 %61, label %96, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.xpv, ptr %60, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !281
  %65 = icmp ugt i64 %64, 1
  br i1 %65, label %96, label %66

66:                                               ; preds = %62
  %67 = icmp eq i64 %64, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !194
  %71 = load i8, ptr %70, align 1, !tbaa !194
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
  %80 = load ptr, ptr %40, align 8, !tbaa !280
  %81 = getelementptr inbounds %struct.xpviv, ptr %80, i64 0, i32 4
  %82 = load i64, ptr %81, align 8, !tbaa !194
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79, %76
  %85 = and i32 %42, 512
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %40, align 8, !tbaa !280
  %89 = getelementptr inbounds %struct.xpvnv, ptr %88, i64 0, i32 5
  %90 = load double, ptr %89, align 8, !tbaa !194
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
  %98 = load i64, ptr %2, align 8, !tbaa !283
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
  %107 = load ptr, ptr @PL_stack_base, align 8, !tbaa !196
  %108 = sext i32 %8 to i64
  %109 = getelementptr inbounds ptr, ptr %107, i64 %108
  store ptr %106, ptr %109, align 8, !tbaa !196
  %110 = load ptr, ptr @PL_stack_base, align 8, !tbaa !196
  %111 = getelementptr inbounds ptr, ptr %110, i64 %108
  store ptr %111, ptr @PL_stack_sp, align 8, !tbaa !196
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
define dso_local void @PerlIO_define_layer(ptr noundef %0) local_unnamed_addr #4 !prof !284 {
  %2 = load ptr, ptr @PL_known_layers, align 8, !tbaa !196
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !285

4:                                                ; preds = %1
  %5 = tail call ptr @PerlIO_list_alloc() #29
  store ptr %5, ptr @PL_known_layers, align 8, !tbaa !196
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  tail call void @PerlIO_list_push(ptr noundef %7, ptr noundef %0, ptr noundef null) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PerlIO_parse_layers(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !246 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %97, label %4, !prof !247

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !194
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %97, label %7, !prof !198

7:                                                ; preds = %4, %19
  %8 = phi i8 [ %20, %19 ], [ %5, %4 ]
  %9 = phi ptr [ %21, %19 ], [ %1, %4 ]
  %10 = zext i8 %8 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !190
  %13 = and i32 %12, 17408
  %14 = icmp eq i32 %13, 17408
  br i1 %14, label %16, label %15, !prof !198

15:                                               ; preds = %7
  switch i8 %8, label %22 [
    i8 58, label %16
    i8 0, label %93
  ], !prof !286

16:                                               ; preds = %15, %7
  %17 = getelementptr inbounds i8, ptr %9, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !194
  br label %19

19:                                               ; preds = %16, %93
  %20 = phi i8 [ %18, %16 ], [ %95, %93 ]
  %21 = phi ptr [ %17, %16 ], [ %94, %93 ]
  br label %7, !llvm.loop !287

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
  store i32 22, ptr %29, align 4, !tbaa !190
  br label %97

30:                                               ; preds = %22, %30
  %31 = phi ptr [ %32, %30 ], [ %9, %22 ]
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !194
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !190
  %37 = and i32 %36, 16385
  %38 = icmp eq i32 %37, 16385
  br i1 %38, label %30, label %39, !llvm.loop !288

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
  %51 = load i8, ptr %49, align 1, !tbaa !194
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
  %62 = load i8, ptr %50, align 1, !tbaa !194
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %47, %60, %52, %58
  %65 = phi ptr [ %50, %47 ], [ %61, %60 ], [ %50, %58 ], [ %50, %52 ]
  %66 = phi i32 [ %48, %47 ], [ %48, %60 ], [ %59, %58 ], [ %53, %52 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %47, !llvm.loop !289

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
  %95 = load i8, ptr %94, align 1, !tbaa !194
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %19, !prof !248

97:                                               ; preds = %93, %2, %4, %87, %25, %68
  %98 = phi i32 [ -1, %68 ], [ -1, %25 ], [ -1, %87 ], [ 0, %4 ], [ 0, %2 ], [ 0, %93 ]
  ret i32 %98
}

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_default_buffer(ptr nocapture noundef %0) local_unnamed_addr #4 !prof !251 {
  tail call void @PerlIO_list_push(ptr noundef %0, ptr noundef nonnull @PerlIO_perlio, ptr noundef nonnull @PL_sv_undef) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @PerlIO_arg_fetch(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #8 !prof !236 {
  %3 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !228
  %5 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %4, i64 %1, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !232
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_layer_fetch(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef readnone %2) local_unnamed_addr #4 !prof !290 {
  %4 = icmp sgt i64 %1, -1
  br i1 %4, label %5, label %14, !prof !291

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !230
  %8 = icmp sgt i64 %7, %1
  br i1 %8, label %9, label %14, !prof !291

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !228
  %12 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %11, i64 %1
  %13 = load ptr, ptr %12, align 8, !tbaa !244
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
define dso_local noundef i64 @PerlIOPop_pushed(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 !prof !189 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !196
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
define dso_local ptr @PerlIOBase_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #4 !prof !189 {
  %11 = add nsw i64 %2, -1
  %12 = tail call ptr @PerlIO_default_layer(i32 noundef 0) #29
  %13 = tail call ptr @PerlIO_layer_fetch(ptr noundef %1, i64 noundef %11, ptr noundef %12) #29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._PerlIO_funcs, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !292
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
  store i32 22, ptr %29, align 4, !tbaa !190
  br label %30

30:                                               ; preds = %26, %22, %19, %28
  %31 = phi ptr [ null, %28 ], [ null, %26 ], [ %20, %22 ], [ null, %19 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_default_layers() local_unnamed_addr #4 !prof !236 {
  %1 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !196
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %8, !prof !293

3:                                                ; preds = %0
  %4 = tail call ptr @PerlIO_list_alloc() #29
  store ptr %4, ptr @PL_def_layerlist, align 8, !tbaa !196
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_unix) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_raw) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_perlio) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_stdio) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_crlf) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_utf8) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_remove) #29
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_byte) #29
  %5 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !196
  tail call void @PerlIO_list_push(ptr noundef %5, ptr noundef nonnull @PerlIO_unix, ptr noundef nonnull @PL_sv_undef) #29
  %6 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !196
  tail call void @PerlIO_default_buffer(ptr noundef %6) #29
  %7 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !196
  br label %8

8:                                                ; preds = %3, %0
  %9 = phi ptr [ %7, %3 ], [ %1, %0 ]
  %10 = getelementptr inbounds %struct.PerlIO_list_s, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !230
  %12 = icmp slt i64 %11, 2
  br i1 %12, label %13, label %15, !prof !268

13:                                               ; preds = %8
  tail call void @PerlIO_default_buffer(ptr noundef nonnull %9) #29
  %14 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !196
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %9, %8 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_boot_core_PerlIO() local_unnamed_addr #4 !prof !251 {
  %1 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.20, ptr noundef nonnull @XS_PerlIO__Layer__find, ptr noundef nonnull @.str.21) #28
  %2 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_PerlIO__Layer__NoWarnings, ptr noundef nonnull @.str.21) #28
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_default_layer(i32 noundef %0) local_unnamed_addr #4 !prof !195 {
  %2 = tail call ptr @PerlIO_default_layers() #29
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %4, label %9, !prof !294

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.PerlIO_list_s, ptr %2, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !230
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
define dso_local void @PerlIO_stdstreams() local_unnamed_addr #4 !prof !251 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !196
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7, !prof !295

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
define internal fastcc void @PerlIO_init_table() unnamed_addr #4 !prof !251 !PGOFuncName !296 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !196
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !295

3:                                                ; preds = %0
  %4 = tail call ptr @Perl_safesyscalloc(i64 noundef 64, i64 noundef 32) #28
  store ptr %4, ptr @PL_perlio, align 8, !tbaa !196
  br label %5

5:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_fdopen(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !189 {
  %3 = tail call ptr @PerlIO_openn(ptr noundef null, ptr noundef %1, i32 noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null) #29
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIO_push(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 !prof !236 {
  %5 = load i64, ptr %1, align 8, !tbaa !297
  %6 = icmp eq i64 %5, 224
  br i1 %6, label %8, label %7, !prof !219

7:                                                ; preds = %4
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i64 noundef %5, ptr noundef nonnull @.str.26, i64 noundef 224) #28
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._PerlIO_funcs, ptr %1, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !298
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %35, label %12, !prof !268

12:                                               ; preds = %8
  %13 = icmp ult i64 %10, 32
  br i1 %13, label %14, label %15, !prof !268

14:                                               ; preds = %12
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i64 noundef %10, ptr noundef nonnull @.str.26, i64 noundef 32) #28
  br label %15

15:                                               ; preds = %14, %12
  %16 = icmp eq ptr %0, null
  br i1 %16, label %44, label %17, !prof !268

17:                                               ; preds = %15
  %18 = load i64, ptr %9, align 8, !tbaa !298
  %19 = tail call ptr @Perl_safesyscalloc(i64 noundef %18, i64 noundef 1) #28
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21, !prof !268

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !196
  store ptr %22, ptr %19, align 8, !tbaa !203
  %23 = getelementptr inbounds %struct._PerlIO, ptr %19, i64 0, i32 1
  store ptr %1, ptr %23, align 8, !tbaa !207
  %24 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !208
  %26 = getelementptr inbounds %struct._PerlIO, ptr %19, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !208
  store ptr %19, ptr %0, align 8, !tbaa !196
  %27 = load ptr, ptr %23, align 8, !tbaa !207
  %28 = getelementptr inbounds %struct._PerlIO_funcs, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !299
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31, !prof !268

31:                                               ; preds = %21
  %32 = tail call i64 %29(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %1) #28
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %44, label %34, !prof !219

34:                                               ; preds = %31
  tail call void @PerlIO_pop(ptr noundef nonnull %0) #29
  br label %45

35:                                               ; preds = %8
  %36 = icmp eq ptr %0, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct._PerlIO_funcs, ptr %1, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !299
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
define dso_local noundef i64 @PerlIOBase_binmode(ptr noundef %0) #4 !prof !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !255
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !206
  %18 = and i32 %17, -32769
  store i32 %18, ptr %16, align 8, !tbaa !206
  br label %20

19:                                               ; preds = %10, %6
  tail call void @PerlIO_pop(ptr noundef nonnull %0) #29
  br label %20

20:                                               ; preds = %1, %3, %15, %19
  %21 = phi i64 [ 0, %19 ], [ 0, %15 ], [ -1, %3 ], [ -1, %1 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIORaw_pushed(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 !prof !189 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !196
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %11 = load ptr, ptr %0, align 8, !tbaa !196
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %9, %31
  %14 = phi ptr [ %33, %31 ], [ %11, %9 ]
  %15 = phi ptr [ %32, %31 ], [ %0, %9 ]
  %16 = getelementptr inbounds %struct._PerlIO, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !207
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._PerlIO_funcs, ptr %17, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !300
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = tail call i64 %21(ptr noundef nonnull %15) #28
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load ptr, ptr %15, align 8, !tbaa !196
  %28 = icmp eq ptr %27, %14
  %29 = select i1 %28, ptr %27, ptr %15
  br label %31

30:                                               ; preds = %19, %13
  tail call void @PerlIO_pop(ptr noundef nonnull %15) #29
  br label %31

31:                                               ; preds = %26, %30
  %32 = phi ptr [ %15, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %13, !llvm.loop !301

35:                                               ; preds = %31
  %36 = load ptr, ptr %0, align 8, !tbaa !196
  %37 = icmp eq ptr %36, null
  %38 = sext i1 %37 to i64
  br label %39

39:                                               ; preds = %23, %9, %35, %4, %6
  %40 = phi i64 [ -1, %6 ], [ -1, %4 ], [ %38, %35 ], [ -1, %9 ], [ -1, %23 ]
  ret i64 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PerlIO_apply_layera(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 !prof !189 {
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
define dso_local noundef i32 @PerlIO_apply_layers(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !189 {
  tail call void @Perl_push_scope() #28
  %4 = load ptr, ptr @PL_errgv, align 8, !tbaa !196
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
  %15 = load i64, ptr %14, align 8, !tbaa !230
  %16 = tail call i32 @PerlIO_apply_layera(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %10, i64 noundef 0, i64 noundef %15) #29, !range !302
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
define dso_local noundef i32 @PerlIO_binmode(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 !prof !189 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @PerlIO_apply_layers(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %3) #29, !range !302
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
define dso_local i32 @PerlIO__close(ptr noundef %0) local_unnamed_addr #4 !prof !195 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3, !prof !294

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !294

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !294

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !303
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !294

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
  store i32 9, ptr %22, align 4, !tbaa !190
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ -1, %21 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBase_close(ptr noundef %0) local_unnamed_addr #4 !prof !195 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3, !prof !294

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6, !prof !294

6:                                                ; preds = %3
  %7 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %8 = sext i32 %7 to i64
  %9 = load ptr, ptr %0, align 8, !tbaa !196
  %10 = getelementptr inbounds %struct._PerlIO, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !206
  %12 = and i32 %11, -2098689
  store i32 %12, ptr %10, align 8, !tbaa !206
  %13 = load ptr, ptr %4, align 8, !tbaa !196
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15, !prof !198

15:                                               ; preds = %6, %29
  %16 = phi ptr [ %33, %29 ], [ %13, %6 ]
  %17 = phi ptr [ %16, %29 ], [ %4, %6 ]
  %18 = getelementptr inbounds %struct._PerlIO, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !207
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21, !prof !294

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct._PerlIO_funcs, ptr %19, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !303
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !294

25:                                               ; preds = %21
  %26 = tail call i64 %23(ptr noundef nonnull %17) #28
  %27 = icmp eq i64 %26, 0
  %28 = select i1 %27, i64 %8, i64 -1, !prof !304
  br label %37

29:                                               ; preds = %15, %21
  %30 = getelementptr inbounds %struct._PerlIO, ptr %16, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !206
  %32 = and i32 %31, -2098689
  store i32 %32, ptr %30, align 8, !tbaa !206
  %33 = load ptr, ptr %16, align 8, !tbaa !196
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %15, !prof !199

35:                                               ; preds = %3, %1
  %36 = tail call ptr @__errno_location() #30
  store i32 9, ptr %36, align 4, !tbaa !190
  br label %37

37:                                               ; preds = %29, %6, %25, %35
  %38 = phi i64 [ -1, %35 ], [ %28, %25 ], [ %8, %6 ], [ %8, %29 ]
  ret i64 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_fileno(ptr noundef %0) local_unnamed_addr #4 !prof !305 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3, !prof !306

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !306

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !306

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !307
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !306

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #28
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call i64 @PerlIOBase_fileno(ptr noundef nonnull %0) #29, !range !308
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = trunc i64 %19 to i32
  br label %23

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #30
  store i32 9, ptr %22, align 4, !tbaa !190
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ -1, %21 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBase_fileno(ptr noundef readonly %0) #4 !prof !309 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !310

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !310

6:                                                ; preds = %3
  %7 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %4) #29
  %8 = sext i32 %7 to i64
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi i64 [ %8, %6 ], [ -1, %3 ], [ -1, %1 ]
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_resolve_layers(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #4 !prof !195 {
  %5 = tail call ptr @PerlIO_default_layers() #29
  %6 = load ptr, ptr @PL_perlio, align 8, !tbaa !196
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !311

8:                                                ; preds = %4
  tail call void @PerlIO_stdstreams() #29
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %29, label %11, !prof !312

11:                                               ; preds = %9
  %12 = load ptr, ptr %3, align 8, !tbaa !196
  %13 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !279
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17, !prof !243

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !194
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !279
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
  br i1 %32, label %36, label %33, !prof !313

33:                                               ; preds = %29
  %34 = load i8, ptr %0, align 1, !tbaa !194
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %42, !prof !247

36:                                               ; preds = %29, %33
  %37 = tail call ptr @Perl_PerlIO_context_layers(ptr noundef %1) #29
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39, !prof !314

39:                                               ; preds = %36
  %40 = load i8, ptr %37, align 1, !tbaa !194
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %51, label %42, !prof !315

42:                                               ; preds = %33, %39
  %43 = phi ptr [ %37, %39 ], [ %0, %33 ]
  br i1 %31, label %46, label %44, !prof !247

44:                                               ; preds = %42
  %45 = tail call ptr @PerlIO_clone_list(ptr noundef %30, ptr poison) #29
  br label %46

46:                                               ; preds = %42, %44
  %47 = phi ptr [ %45, %44 ], [ %30, %42 ]
  %48 = tail call i32 @PerlIO_parse_layers(ptr noundef %47, ptr noundef nonnull %43) #29
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50, !prof !316

50:                                               ; preds = %46
  tail call void @PerlIO_list_free(ptr noundef %47) #29
  br label %55

51:                                               ; preds = %39, %36
  br i1 %31, label %55, label %52, !prof !317

52:                                               ; preds = %51
  %53 = load i64, ptr %30, align 8, !tbaa !223
  %54 = add nsw i64 %53, 1
  store i64 %54, ptr %30, align 8, !tbaa !223
  br label %55

55:                                               ; preds = %51, %52, %50, %46
  %56 = phi ptr [ null, %50 ], [ %47, %46 ], [ %30, %52 ], [ %30, %51 ]
  ret ptr %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @PerlIO_layer_from_ref(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !189 !PGOFuncName !318 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !279
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
  %13 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.64, i64 noundef 6, i32 noundef 1) #29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 8, ptr noundef nonnull @.str.65) #28
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
  %19 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.66, i64 noundef 5, i32 noundef 0) #29
  br label %26

20:                                               ; preds = %16
  %21 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.67, i64 noundef 4, i32 noundef 0) #29
  br label %26

22:                                               ; preds = %16
  %23 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.68, i64 noundef 4, i32 noundef 0) #29
  br label %26

24:                                               ; preds = %16
  %25 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.69, i64 noundef 4, i32 noundef 0) #29
  br label %26

26:                                               ; preds = %16, %12, %15, %24, %22, %20, %18
  %27 = phi ptr [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ null, %15 ], [ %13, %12 ], [ null, %16 ]
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_PerlIO_context_layers(ptr noundef readonly %0) local_unnamed_addr #4 !prof !319 {
  %2 = load ptr, ptr @PL_curcop, align 8, !tbaa !196
  %3 = icmp eq ptr %2, null
  br i1 %3, label %42, label %4, !prof !317

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %14, label %6, !prof !317

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !tbaa !194
  %8 = icmp eq i8 %7, 114
  br i1 %8, label %14, label %9, !prof !320

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !321
  %12 = and i32 %11, 524288
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %42, label %19, !prof !323

14:                                               ; preds = %4, %6
  %15 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !321
  %17 = and i32 %16, 262144
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %42, label %19, !prof !323

19:                                               ; preds = %9, %14
  %20 = phi ptr [ @.str.62, %9 ], [ @.str.63, %14 ]
  %21 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !324
  %23 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %22, ptr noundef nonnull %20, i64 noundef 5, i32 noundef 0, i32 noundef 0) #28
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !279
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
  %39 = load ptr, ptr %38, align 8, !tbaa !194
  br label %42

40:                                               ; preds = %34
  %41 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %23, ptr noundef null, i32 noundef 34) #28
  br label %42

42:                                               ; preds = %9, %40, %37, %19, %14, %1
  %43 = phi ptr [ null, %1 ], [ null, %14 ], [ %39, %37 ], [ %41, %40 ], [ null, %19 ], [ null, %9 ]
  ret ptr %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_openn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #4 !prof !195 {
  %9 = alloca ptr, align 8
  %10 = icmp eq ptr %5, null
  %11 = icmp eq i32 %6, 1
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %33, !prof !325

13:                                               ; preds = %8
  %14 = load ptr, ptr %7, align 8, !tbaa !196
  %15 = icmp eq ptr %14, @PL_sv_undef
  br i1 %15, label %16, label %62, !prof !229

16:                                               ; preds = %13
  %17 = tail call ptr @PerlIO_tmpfile() #29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %110, label %19

19:                                               ; preds = %16
  %20 = icmp eq ptr %0, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !194
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19, %21
  %25 = tail call ptr @Perl_PerlIO_context_layers(ptr noundef %1) #29
  %26 = icmp eq ptr %25, null
  br i1 %26, label %110, label %27

27:                                               ; preds = %24
  %28 = load i8, ptr %25, align 1, !tbaa !194
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %110, label %30

30:                                               ; preds = %21, %27
  %31 = phi ptr [ %25, %27 ], [ %0, %21 ]
  %32 = tail call i32 @PerlIO_apply_layers(ptr noundef nonnull %17, ptr noundef %1, ptr noundef nonnull %31) #29, !range !302
  br label %110

33:                                               ; preds = %8
  br i1 %10, label %62, label %34, !prof !326

34:                                               ; preds = %33
  %35 = load ptr, ptr %5, align 8, !tbaa !196
  %36 = icmp eq ptr %35, null
  br i1 %36, label %62, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #31
  store ptr %35, ptr %9, align 8, !tbaa !196
  %38 = tail call ptr @PerlIO_list_alloc() #29
  br label %39

39:                                               ; preds = %37, %53
  %40 = phi ptr [ %59, %53 ], [ %35, %37 ]
  %41 = getelementptr inbounds %struct._PerlIO, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !207
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct._PerlIO_funcs, ptr %42, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !212
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = call ptr %46(ptr noundef nonnull %9, ptr noundef null, i32 noundef 0) #28
  %50 = load ptr, ptr %9, align 8, !tbaa !196
  %51 = getelementptr inbounds %struct._PerlIO, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !207
  br label %53

53:                                               ; preds = %48, %44, %39
  %54 = phi ptr [ %52, %48 ], [ %42, %44 ], [ null, %39 ]
  %55 = phi ptr [ %49, %48 ], [ null, %44 ], [ null, %39 ]
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, ptr @PL_sv_undef, ptr %55
  call void @PerlIO_list_push(ptr noundef %38, ptr noundef %54, ptr noundef nonnull %57) #29
  call fastcc void @S_SvREFCNT_dec(ptr noundef %55) #29
  %58 = load ptr, ptr %9, align 8, !tbaa !196
  %59 = load ptr, ptr %58, align 8, !tbaa !203
  store ptr %59, ptr %9, align 8, !tbaa !196
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %39, !llvm.loop !327

61:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #31
  br label %65

62:                                               ; preds = %13, %34, %33
  %63 = tail call ptr @PerlIO_resolve_layers(ptr noundef %0, ptr noundef %1, i32 noundef %6, ptr noundef %7) #29
  %64 = icmp eq ptr %63, null
  br i1 %64, label %110, label %65, !prof !294

65:                                               ; preds = %62, %61
  %66 = phi ptr [ %38, %61 ], [ %63, %62 ]
  %67 = getelementptr inbounds %struct.PerlIO_list_s, ptr %66, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !230
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %108, !prof !248

70:                                               ; preds = %65, %79
  %71 = phi i64 [ %72, %79 ], [ %68, %65 ]
  %72 = add nsw i64 %71, -1
  %73 = call ptr @PerlIO_layer_fetch(ptr noundef %66, i64 noundef %72, ptr noundef null) #29
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75, !prof !294

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct._PerlIO_funcs, ptr %73, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !292
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81, !prof !294

79:                                               ; preds = %70, %75
  %80 = icmp ugt i64 %71, 1
  br i1 %80, label %70, label %108, !prof !328

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct._PerlIO_funcs, ptr %73, i64 0, i32 6
  %83 = icmp sgt i32 %6, 1
  br i1 %83, label %84, label %96, !prof !294

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct._PerlIO_funcs, ptr %73, i64 0, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !255
  %87 = and i32 %86, 131072
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct._PerlIO_funcs, ptr %73, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !270
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.32, ptr noundef %91) #28
  %92 = load ptr, ptr %82, align 8, !tbaa !292
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96, !prof !315

94:                                               ; preds = %89
  %95 = tail call ptr @__errno_location() #30
  store i32 22, ptr %95, align 4, !tbaa !190
  br label %108

96:                                               ; preds = %81, %84, %89
  %97 = phi ptr [ %92, %89 ], [ %77, %84 ], [ %77, %81 ]
  %98 = call ptr %97(ptr noundef nonnull %73, ptr noundef %66, i64 noundef %72, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #28
  %99 = icmp eq ptr %98, null
  br i1 %99, label %108, label %100, !prof !329

100:                                              ; preds = %96
  %101 = load i64, ptr %67, align 8, !tbaa !230
  %102 = icmp slt i64 %71, %101
  br i1 %102, label %103, label %108, !prof !294

103:                                              ; preds = %100
  %104 = call i32 @PerlIO_apply_layera(ptr noundef nonnull %98, ptr noundef %1, ptr noundef nonnull %66, i64 noundef %71, i64 noundef %101) #29, !range !302
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
define dso_local ptr @PerlIO_tmpfile() local_unnamed_addr #4 !prof !189 {
  %1 = tail call noalias ptr @tmpfile64() #29
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @fileno(ptr noundef nonnull %1) #28
  %5 = tail call ptr @PerlIO_fdopen(i32 noundef %4, ptr noundef nonnull @.str.61) #29
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ null, %0 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_PerlIO_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 !prof !330 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5, !prof !331

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8, !prof !331

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !207
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12, !prof !331

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !332
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !331

16:                                               ; preds = %12
  %17 = tail call i64 %14(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #28
  br label %22

18:                                               ; preds = %12, %8
  %19 = tail call i64 @PerlIOBase_read(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #29
  br label %22

20:                                               ; preds = %5, %3
  %21 = tail call ptr @__errno_location() #30
  store i32 9, ptr %21, align 4, !tbaa !190
  br label %22

22:                                               ; preds = %16, %18, %20
  %23 = phi i64 [ -1, %20 ], [ %17, %16 ], [ %19, %18 ]
  ret i64 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBase_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 !prof !333 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %53, label %5, !prof !334

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !206
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !334

11:                                               ; preds = %5
  %12 = icmp eq i64 %2, 0
  br i1 %12, label %48, label %18, !prof !335

13:                                               ; preds = %5
  %14 = or i32 %8, 2048
  store i32 %14, ptr %7, align 8, !tbaa !206
  %15 = tail call ptr @__errno_location() #30
  store i32 9, ptr %15, align 4, !tbaa !190
  tail call void @Perl_PerlIO_save_errno(ptr noundef nonnull %0) #29
  br label %53

16:                                               ; preds = %38
  %17 = icmp eq i64 %39, 0
  br i1 %17, label %48, label %35, !prof !336

18:                                               ; preds = %11, %35
  %19 = phi i64 [ %36, %35 ], [ %2, %11 ]
  %20 = phi ptr [ %37, %35 ], [ %1, %11 ]
  %21 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef nonnull %0) #29
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %38, !prof !337

23:                                               ; preds = %18
  %24 = icmp ult i64 %19, %21
  br i1 %24, label %25, label %27, !prof !338

25:                                               ; preds = %23
  %26 = icmp eq i64 %19, 0
  br i1 %26, label %48, label %27, !prof !339

27:                                               ; preds = %23, %25
  %28 = phi i64 [ %19, %25 ], [ %21, %23 ]
  %29 = tail call ptr @Perl_PerlIO_get_ptr(ptr noundef nonnull %0) #29
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %29, i64 %28, i1 false)
  %30 = getelementptr inbounds i8, ptr %29, i64 %28
  %31 = sub nsw i64 %21, %28
  tail call void @Perl_PerlIO_set_ptrcnt(ptr noundef nonnull %0, ptr noundef nonnull %30, i64 noundef %31) #29
  %32 = sub i64 %19, %28
  %33 = getelementptr inbounds i8, ptr %20, i64 %28
  %34 = icmp eq i64 %31, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27, %45, %16
  %36 = phi i64 [ %32, %27 ], [ %39, %16 ], [ %39, %45 ]
  %37 = phi ptr [ %33, %27 ], [ %40, %16 ], [ %40, %45 ]
  br label %18

38:                                               ; preds = %18, %27
  %39 = phi i64 [ %32, %27 ], [ %19, %18 ]
  %40 = phi ptr [ %33, %27 ], [ %20, %18 ]
  %41 = phi i64 [ %31, %27 ], [ %21, %18 ]
  %42 = icmp ne i64 %39, 0
  %43 = icmp slt i64 %41, 1
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %16, !prof !340

45:                                               ; preds = %38
  %46 = tail call i32 @Perl_PerlIO_fill(ptr noundef nonnull %0) #29
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %35, label %48, !prof !341

48:                                               ; preds = %16, %45, %25, %11
  %49 = phi ptr [ %1, %11 ], [ %40, %16 ], [ %40, %45 ], [ %20, %25 ]
  %50 = ptrtoint ptr %49 to i64
  %51 = ptrtoint ptr %1 to i64
  %52 = sub i64 %50, %51
  br label %53

53:                                               ; preds = %3, %48, %13
  %54 = phi i64 [ %52, %48 ], [ 0, %13 ], [ 0, %3 ]
  ret i64 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_PerlIO_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 !prof !189 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !207
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !342
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
  store i32 9, ptr %21, align 4, !tbaa !190
  br label %22

22:                                               ; preds = %16, %18, %20
  %23 = phi i64 [ -1, %20 ], [ %17, %16 ], [ %19, %18 ]
  ret i64 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBase_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 !prof !189 {
  %4 = tail call i64 @Perl_PerlIO_tell(ptr noundef %0) #29
  %5 = tail call ptr @PerlIO_push(ptr noundef %0, ptr noundef nonnull @PerlIO_pending, ptr noundef nonnull @.str.38, ptr noundef null) #29
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = getelementptr inbounds %struct.PerlIOBuf, ptr %6, i64 0, i32 4
  store i64 %4, ptr %7, align 8, !tbaa !343
  %8 = tail call i64 @PerlIOBuf_unread(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #29
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_PerlIO_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 !prof !345 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5, !prof !346

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8, !prof !346

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !207
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !346

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !347
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18, !prof !346

16:                                               ; preds = %8, %12
  %17 = tail call ptr @__errno_location() #30
  store i32 22, ptr %17, align 4, !tbaa !190
  br label %22

18:                                               ; preds = %12
  %19 = tail call i64 %14(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #28
  br label %22

20:                                               ; preds = %5, %3
  %21 = tail call ptr @__errno_location() #30
  store i32 9, ptr %21, align 4, !tbaa !190
  br label %22

22:                                               ; preds = %20, %16, %18
  %23 = phi i64 [ %19, %18 ], [ -1, %16 ], [ -1, %20 ]
  ret i64 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 !prof !348 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %21, label %5, !prof !349

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8, !prof !349

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !207
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !349

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !350
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18, !prof !349

16:                                               ; preds = %8, %12
  %17 = tail call ptr @__errno_location() #30
  store i32 22, ptr %17, align 4, !tbaa !190
  br label %23

18:                                               ; preds = %12
  %19 = tail call i64 %14(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2) #28
  %20 = trunc i64 %19 to i32
  br label %23

21:                                               ; preds = %5, %3
  %22 = tail call ptr @__errno_location() #30
  store i32 9, ptr %22, align 4, !tbaa !190
  br label %23

23:                                               ; preds = %21, %16, %18
  %24 = phi i32 [ %20, %18 ], [ -1, %16 ], [ -1, %21 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_PerlIO_tell(ptr noundef %0) local_unnamed_addr #4 !prof !351 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3, !prof !352

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6, !prof !352

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !352

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !353
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !352

14:                                               ; preds = %6, %10
  %15 = tail call ptr @__errno_location() #30
  store i32 22, ptr %15, align 4, !tbaa !190
  br label %20

16:                                               ; preds = %10
  %17 = tail call i64 %12(ptr noundef nonnull %0) #28
  br label %20

18:                                               ; preds = %3, %1
  %19 = tail call ptr @__errno_location() #30
  store i32 9, ptr %19, align 4, !tbaa !190
  br label %20

20:                                               ; preds = %18, %14, %16
  %21 = phi i64 [ %17, %16 ], [ -1, %14 ], [ -1, %18 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOBase_flush_linebuf() local_unnamed_addr #4 !prof !189 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !196
  %2 = icmp eq ptr %1, null
  br i1 %2, label %24, label %6

3:                                                ; preds = %21
  %4 = load ptr, ptr %7, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6, !llvm.loop !354

6:                                                ; preds = %0, %3
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  br label %8

8:                                                ; preds = %6, %21
  %9 = phi ptr [ %7, %6 ], [ %11, %21 ]
  %10 = phi i32 [ 1, %6 ], [ %22, %21 ]
  %11 = getelementptr inbounds %struct._PerlIO, ptr %9, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !203
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !206
  %17 = and i32 %16, 524800
  %18 = icmp eq i32 %17, 524800
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %11) #29
  br label %21

21:                                               ; preds = %19, %14, %8
  %22 = add nuw nsw i32 %10, 1
  %23 = icmp eq i32 %22, 64
  br i1 %23, label %3, label %8, !llvm.loop !355

24:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_fill(ptr noundef %0) local_unnamed_addr #4 !prof !333 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3, !prof !334

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6, !prof !334

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !334

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !356
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !334

14:                                               ; preds = %6, %10
  %15 = tail call ptr @__errno_location() #30
  store i32 22, ptr %15, align 4, !tbaa !190
  br label %21

16:                                               ; preds = %10
  %17 = tail call i64 %12(ptr noundef nonnull %0) #28
  %18 = trunc i64 %17 to i32
  br label %21

19:                                               ; preds = %3, %1
  %20 = tail call ptr @__errno_location() #30
  store i32 9, ptr %20, align 4, !tbaa !190
  br label %21

21:                                               ; preds = %19, %14, %16
  %22 = phi i32 [ %18, %16 ], [ -1, %14 ], [ -1, %19 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_isutf8(ptr noundef readonly %0) local_unnamed_addr #9 !prof !357 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !358

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6, !prof !358

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !206
  %9 = lshr i32 %8, 15
  %10 = and i32 %9, 1
  br label %13

11:                                               ; preds = %3, %1
  %12 = tail call ptr @__errno_location() #30
  store i32 9, ptr %12, align 4, !tbaa !190
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %10, %6 ], [ -1, %11 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_eof(ptr noundef %0) local_unnamed_addr #4 !prof !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !359
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #28
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call i64 @PerlIOBase_eof(ptr noundef nonnull %0) #29, !range !360
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = trunc i64 %19 to i32
  br label %23

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #30
  store i32 9, ptr %22, align 4, !tbaa !190
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ -1, %21 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOBase_eof(ptr noundef readonly %0) #8 !prof !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !206
  %9 = lshr i32 %8, 8
  %10 = and i32 %9, 1
  %11 = zext nneg i32 %10 to i64
  br label %12

12:                                               ; preds = %1, %3, %6
  %13 = phi i64 [ %11, %6 ], [ 1, %3 ], [ 1, %1 ]
  ret i64 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_PerlIO_error(ptr noundef %0) local_unnamed_addr #4 !prof !361 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3, !prof !362

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !362

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !362

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !363
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !362

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #28
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call i64 @PerlIOBase_error(ptr noundef nonnull %0) #29, !range !360
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = trunc i64 %19 to i32
  br label %23

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #30
  store i32 9, ptr %22, align 4, !tbaa !190
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ -1, %21 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOBase_error(ptr noundef readonly %0) #8 !prof !361 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !362

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !362

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !206
  %9 = lshr i32 %8, 11
  %10 = and i32 %9, 1
  %11 = zext nneg i32 %10 to i64
  br label %12

12:                                               ; preds = %1, %3, %6
  %13 = phi i64 [ %11, %6 ], [ 1, %3 ], [ 1, %1 ]
  ret i64 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_PerlIO_clearerr(ptr noundef %0) local_unnamed_addr #4 !prof !213 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3, !prof !364

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6, !prof !364

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !364

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !365
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !364

14:                                               ; preds = %10
  tail call void %12(ptr noundef nonnull %0) #28
  br label %18

15:                                               ; preds = %10, %6
  tail call void @PerlIOBase_clearerr(ptr noundef nonnull %0) #29
  br label %18

16:                                               ; preds = %3, %1
  %17 = tail call ptr @__errno_location() #30
  store i32 9, ptr %17, align 4, !tbaa !190
  br label %18

18:                                               ; preds = %14, %15, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOBase_clearerr(ptr noundef readonly %0) #4 !prof !213 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3, !prof !364

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6, !prof !364

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !206
  %9 = and i32 %8, -2305
  store i32 %9, ptr %7, align 8, !tbaa !206
  %10 = load ptr, ptr %4, align 8, !tbaa !196
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !214

12:                                               ; preds = %6
  tail call void @Perl_PerlIO_clearerr(ptr noundef nonnull %4) #29
  br label %13

13:                                               ; preds = %6, %12, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_PerlIO_setlinebuf(ptr noundef %0) local_unnamed_addr #4 !prof !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !366
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
  store i32 9, ptr %17, align 4, !tbaa !190
  br label %18

18:                                               ; preds = %14, %15, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PerlIOBase_setlinebuf(ptr noundef readonly %0) #10 !prof !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !206
  %9 = or i32 %8, 524288
  store i32 %9, ptr %7, align 8, !tbaa !206
  br label %10

10:                                               ; preds = %6, %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_has_base(ptr noundef readonly %0) local_unnamed_addr #8 !prof !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !367
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %6, %1, %3, %10
  %16 = phi i32 [ %14, %10 ], [ 0, %3 ], [ 0, %1 ], [ 0, %6 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_fast_gets(ptr noundef readonly %0) local_unnamed_addr #8 !prof !368 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3, !prof !369

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6, !prof !369

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !206
  %9 = and i32 %8, 4194304
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11, !prof !370

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !207
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !prof !371

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._PerlIO_funcs, ptr %13, i64 0, i32 27
  %17 = load ptr, ptr %16, align 8, !tbaa !372
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %11, %1, %3, %6, %15
  %21 = phi i32 [ %19, %15 ], [ 0, %6 ], [ 0, %3 ], [ 0, %1 ], [ 0, %11 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_has_cntptr(ptr noundef readonly %0) local_unnamed_addr #8 !prof !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !373
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 26
  %16 = load ptr, ptr %15, align 8, !tbaa !374
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %14, %10, %1, %3, %6
  %20 = phi i32 [ 0, %6 ], [ 0, %3 ], [ 0, %1 ], [ %18, %14 ], [ 0, %10 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_canset_cnt(ptr noundef readonly %0) local_unnamed_addr #8 !prof !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !372
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %6, %1, %3, %10
  %16 = phi i32 [ %14, %10 ], [ 0, %3 ], [ 0, %1 ], [ 0, %6 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_PerlIO_get_base(ptr noundef %0) local_unnamed_addr #4 !prof !375 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3, !prof !376

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6, !prof !376

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !376

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !367
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !376

14:                                               ; preds = %6, %10
  %15 = tail call ptr @__errno_location() #30
  store i32 22, ptr %15, align 4, !tbaa !190
  br label %20

16:                                               ; preds = %10
  %17 = tail call ptr %12(ptr noundef nonnull %0) #28
  br label %20

18:                                               ; preds = %3, %1
  %19 = tail call ptr @__errno_location() #30
  store i32 9, ptr %19, align 4, !tbaa !190
  br label %20

20:                                               ; preds = %18, %14, %16
  %21 = phi ptr [ %17, %16 ], [ null, %14 ], [ null, %18 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_PerlIO_get_bufsiz(ptr noundef %0) local_unnamed_addr #4 !prof !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !377
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %6, %10
  %15 = tail call ptr @__errno_location() #30
  store i32 22, ptr %15, align 4, !tbaa !190
  br label %20

16:                                               ; preds = %10
  %17 = tail call i64 %12(ptr noundef nonnull %0) #28
  br label %20

18:                                               ; preds = %3, %1
  %19 = tail call ptr @__errno_location() #30
  store i32 9, ptr %19, align 4, !tbaa !190
  br label %20

20:                                               ; preds = %18, %14, %16
  %21 = phi i64 [ %17, %16 ], [ -1, %14 ], [ -1, %18 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_PerlIO_get_ptr(ptr noundef %0) local_unnamed_addr #4 !prof !378 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3, !prof !379

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6, !prof !379

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !379

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !373
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !379

14:                                               ; preds = %6, %10
  %15 = tail call ptr @__errno_location() #30
  store i32 22, ptr %15, align 4, !tbaa !190
  br label %20

16:                                               ; preds = %10
  %17 = tail call ptr %12(ptr noundef nonnull %0) #28
  br label %20

18:                                               ; preds = %3, %1
  %19 = tail call ptr @__errno_location() #30
  store i32 9, ptr %19, align 4, !tbaa !190
  br label %20

20:                                               ; preds = %18, %14, %16
  %21 = phi ptr [ %17, %16 ], [ null, %14 ], [ null, %18 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_PerlIO_get_cnt(ptr noundef %0) local_unnamed_addr #4 !prof !380 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3, !prof !381

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6, !prof !381

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !381

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !374
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !381

14:                                               ; preds = %6, %10
  %15 = tail call ptr @__errno_location() #30
  store i32 22, ptr %15, align 4, !tbaa !190
  br label %20

16:                                               ; preds = %10
  %17 = tail call i64 %12(ptr noundef nonnull %0) #28
  br label %20

18:                                               ; preds = %3, %1
  %19 = tail call ptr @__errno_location() #30
  store i32 9, ptr %19, align 4, !tbaa !190
  br label %20

20:                                               ; preds = %18, %14, %16
  %21 = phi i64 [ %17, %16 ], [ -1, %14 ], [ -1, %18 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_PerlIO_set_cnt(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 !prof !189 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !196
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !207
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._PerlIO_funcs, ptr %9, i64 0, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !372
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef nonnull %0, ptr noundef null, i64 noundef %1) #28
  br label %20

16:                                               ; preds = %11, %7
  %17 = tail call ptr @__errno_location() #30
  store i32 22, ptr %17, align 4, !tbaa !190
  br label %20

18:                                               ; preds = %4, %2
  %19 = tail call ptr @__errno_location() #30
  store i32 9, ptr %19, align 4, !tbaa !190
  br label %20

20:                                               ; preds = %15, %16, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_PerlIO_set_ptrcnt(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 !prof !378 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5, !prof !379

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8, !prof !379

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !207
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !379

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 27
  %14 = load ptr, ptr %13, align 8, !tbaa !372
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !379

16:                                               ; preds = %12
  tail call void %14(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #28
  br label %21

17:                                               ; preds = %12, %8
  %18 = tail call ptr @__errno_location() #30
  store i32 22, ptr %18, align 4, !tbaa !190
  br label %21

19:                                               ; preds = %5, %3
  %20 = tail call ptr @__errno_location() #30
  store i32 9, ptr %20, align 4, !tbaa !190
  br label %21

21:                                               ; preds = %16, %17, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @PerlIOUtf8_pushed(ptr noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef readonly %3) #10 !prof !189 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !196
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %3, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._PerlIO_funcs, ptr %3, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !255
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !206
  %19 = or i32 %18, 32768
  store i32 %19, ptr %17, align 8, !tbaa !206
  br label %24

20:                                               ; preds = %11, %9
  %21 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !206
  %23 = and i32 %22, -32769
  store i32 %23, ptr %21, align 8, !tbaa !206
  br label %24

24:                                               ; preds = %4, %6, %16, %20
  %25 = phi i64 [ 0, %20 ], [ 0, %16 ], [ -1, %6 ], [ -1, %4 ]
  ret i64 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOBase_popped(ptr nocapture readnone %0) #0 !prof !236 {
  ret i64 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @PerlIO_modestr(ptr noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #10 !prof !189 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !196
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !206
  %10 = zext i32 %9 to i64
  %11 = and i64 %10, 8192
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 97, ptr %1, align 1, !tbaa !194
  %15 = and i64 %10, 1024
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 43, ptr %14, align 1, !tbaa !194
  br label %33

19:                                               ; preds = %7
  %20 = and i64 %10, 1024
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 114, ptr %1, align 1, !tbaa !194
  %24 = and i64 %10, 512
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 43, ptr %23, align 1, !tbaa !194
  br label %33

28:                                               ; preds = %19
  %29 = and i64 %10, 512
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 119, ptr %1, align 1, !tbaa !194
  br label %33

33:                                               ; preds = %17, %13, %28, %22, %26, %31, %4, %2
  %34 = phi ptr [ %1, %4 ], [ %1, %2 ], [ %18, %17 ], [ %14, %13 ], [ %27, %26 ], [ %23, %22 ], [ %32, %31 ], [ %1, %28 ]
  store i8 0, ptr %34, align 1, !tbaa !194
  ret ptr %1
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @PerlIOBase_pushed(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2, ptr noundef readonly %3) local_unnamed_addr #11 !prof !236 {
  %5 = load ptr, ptr %0, align 8, !tbaa !196
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !206
  %8 = and i32 %7, -13825
  store i32 %8, ptr %6, align 8, !tbaa !206
  %9 = icmp eq ptr %3, null
  br i1 %9, label %16, label %10, !prof !268

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %3, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !372
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !382

14:                                               ; preds = %10
  %15 = or i32 %8, 4194304
  store i32 %15, ptr %6, align 8, !tbaa !206
  br label %16

16:                                               ; preds = %14, %10, %4
  %17 = phi i32 [ %15, %14 ], [ %8, %10 ], [ %8, %4 ]
  %18 = icmp eq ptr %1, null
  br i1 %18, label %49, label %19, !prof !268

19:                                               ; preds = %16
  %20 = load i8, ptr %1, align 1, !tbaa !194
  switch i8 %20, label %24 [
    i8 35, label %21
    i8 73, label %21
  ], !prof !383

21:                                               ; preds = %19, %19
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !194
  br label %24

24:                                               ; preds = %19, %21
  %25 = phi i8 [ %20, %19 ], [ %23, %21 ]
  %26 = phi ptr [ %1, %19 ], [ %22, %21 ]
  switch i8 %25, label %29 [
    i8 114, label %31
    i8 97, label %27
    i8 119, label %28
  ], !prof !384

27:                                               ; preds = %24
  br label %31

28:                                               ; preds = %24
  br label %31

29:                                               ; preds = %24
  %30 = tail call ptr @__errno_location() #30
  store i32 22, ptr %30, align 4, !tbaa !190
  br label %57

31:                                               ; preds = %24, %28, %27
  %32 = phi i32 [ 4608, %28 ], [ 8704, %27 ], [ 1024, %24 ]
  %33 = or i32 %17, %32
  br label %34

34:                                               ; preds = %45, %31
  %35 = phi i32 [ %33, %31 ], [ %46, %45 ]
  %36 = phi ptr [ %26, %31 ], [ %37, %45 ]
  store i32 %35, ptr %6, align 8, !tbaa !206
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !194
  switch i8 %38, label %47 [
    i8 0, label %57
    i8 43, label %39
    i8 98, label %41
    i8 116, label %43
  ], !prof !385

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
  br label %34, !llvm.loop !386

47:                                               ; preds = %34
  %48 = tail call ptr @__errno_location() #30
  store i32 22, ptr %48, align 4, !tbaa !190
  br label %57

49:                                               ; preds = %16
  %50 = load ptr, ptr %5, align 8, !tbaa !203
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct._PerlIO, ptr %50, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !206
  %55 = and i32 %54, 13824
  %56 = or i32 %17, %55
  store i32 %56, ptr %6, align 8, !tbaa !206
  br label %57

57:                                               ; preds = %34, %52, %49, %47, %29
  %58 = phi i64 [ -1, %29 ], [ -1, %47 ], [ 0, %49 ], [ 0, %52 ], [ 0, %34 ]
  ret i64 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 !prof !189 {
  %4 = getelementptr inbounds i8, ptr %1, i64 %2
  %5 = load ptr, ptr %0, align 8, !tbaa !196
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !206
  %8 = and i32 %7, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  br label %12

12:                                               ; preds = %10, %3
  %13 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !387
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %18 = load ptr, ptr %13, align 8, !tbaa !387
  %19 = icmp eq ptr %18, null
  br i1 %19, label %66, label %20

20:                                               ; preds = %12, %16
  %21 = phi ptr [ %18, %16 ], [ %14, %12 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !196
  %23 = getelementptr inbounds %struct._PerlIO, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !206
  %25 = and i32 %24, 262144
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !388
  %30 = ptrtoint ptr %29 to i64
  %31 = ptrtoint ptr %21 to i64
  %32 = sub i64 %30, %31
  br label %46

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 5
  %35 = load i64, ptr %34, align 8, !tbaa !389
  %36 = getelementptr inbounds i8, ptr %21, i64 %35
  %37 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !390
  %38 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 3
  store ptr %36, ptr %38, align 8, !tbaa !388
  %39 = load ptr, ptr %0, align 8, !tbaa !196
  %40 = getelementptr inbounds %struct._PerlIO, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !206
  %42 = or i32 %41, 262144
  store i32 %42, ptr %40, align 8, !tbaa !206
  %43 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 4
  %44 = load i64, ptr %43, align 8, !tbaa !343
  %45 = sub i64 %44, %35
  store i64 %45, ptr %43, align 8, !tbaa !343
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
  store ptr %56, ptr %54, align 8, !tbaa !388
  %57 = icmp eq ptr %4, %47
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, ptr %4, i64 %55
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %56, ptr nonnull align 1 %59, i64 %51, i1 false)
  br label %60

60:                                               ; preds = %58, %53
  %61 = sub i64 %2, %51
  %62 = load ptr, ptr %0, align 8, !tbaa !196
  %63 = getelementptr inbounds %struct._PerlIO, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !206
  %65 = and i32 %64, -257
  store i32 %65, ptr %63, align 8, !tbaa !206
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
define dso_local void @Perl_PerlIO_save_errno(ptr noundef readonly %0) local_unnamed_addr #9 !prof !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #30
  %8 = load i32, ptr %7, align 4, !tbaa !190
  %9 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !391
  br label %10

10:                                               ; preds = %1, %3, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOBase_noop_ok(ptr nocapture readnone %0) #0 !prof !392 {
  ret i64 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOBase_noop_fail(ptr nocapture readnone %0) #0 !prof !189 {
  ret i64 -1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_sv_dup(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 !prof !189 {
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
define dso_local void @PerlIO_init() local_unnamed_addr #0 !prof !251 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOUnix_refcnt_inc(i32 noundef %0) local_unnamed_addr #4 !prof !189 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %15, !prof !393

3:                                                ; preds = %1
  %4 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !190
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %7, label %6, !prof !394

6:                                                ; preds = %3
  tail call fastcc void @S_more_refcounted_fds(i32 noundef %0) #29
  br label %7

7:                                                ; preds = %6, %3
  %8 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !196
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !190
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !190
  %13 = icmp slt i32 %11, 0
  br i1 %13, label %14, label %16, !prof !395

14:                                               ; preds = %7
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.40, i32 noundef %0, i32 noundef %12) #28
  br label %16

15:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.42, i32 noundef %0) #28
  br label %16

16:                                               ; preds = %7, %14, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_more_refcounted_fds(i32 noundef %0) unnamed_addr #4 !prof !189 !PGOFuncName !396 {
  %2 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !190
  %3 = and i32 %0, -16
  %4 = add nuw nsw i32 %3, 16
  %5 = icmp sgt i32 %2, %0
  br i1 %5, label %19, label %6, !prof !397

6:                                                ; preds = %1
  %7 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !196
  %8 = sext i32 %4 to i64
  %9 = shl nsw i64 %8, 2
  %10 = tail call ptr @realloc(ptr noundef %7, i64 noundef %9) #33
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !397

12:                                               ; preds = %6
  tail call void @Perl_croak_no_mem() #28
  br label %13

13:                                               ; preds = %12, %6
  store i32 %4, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !190
  store ptr %10, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !196
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIOUnix_refcnt_dec(i32 noundef %0) local_unnamed_addr #4 !prof !189 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %22, !prof !393

3:                                                ; preds = %1
  %4 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !190
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %7, label %6, !prof !393

6:                                                ; preds = %3
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.43, i32 noundef %0, i32 noundef %4) #28
  br label %7

7:                                                ; preds = %6, %3
  %8 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !196
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !190
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %17, !prof !395

13:                                               ; preds = %7
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.44, i32 noundef %0, i32 noundef %11) #28
  %14 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !196
  %15 = getelementptr inbounds i32, ptr %14, i64 %9
  %16 = load i32, ptr %15, align 4, !tbaa !190
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %16, %13 ], [ %11, %7 ]
  %19 = phi ptr [ %14, %13 ], [ %8, %7 ]
  %20 = getelementptr inbounds i32, ptr %19, i64 %9
  %21 = add nsw i32 %18, -1
  store i32 %21, ptr %20, align 4, !tbaa !190
  br label %23

22:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46, i32 noundef %0) #28
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 [ %21, %17 ], [ 0, %22 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIOUnix_refcnt(i32 noundef %0) local_unnamed_addr #4 !prof !189 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %17

3:                                                ; preds = %1
  %4 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !190
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, i32 noundef %0, i32 noundef %4) #28
  br label %7

7:                                                ; preds = %6, %3
  %8 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !196
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !190
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48, i32 noundef %0, i32 noundef %11) #28
  %14 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !196
  %15 = getelementptr inbounds i32, ptr %14, i64 %9
  %16 = load i32, ptr %15, align 4, !tbaa !190
  br label %18

17:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.49, i32 noundef %0) #28
  br label %18

18:                                               ; preds = %7, %13, %17
  %19 = phi i32 [ 0, %17 ], [ %16, %13 ], [ %11, %7 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_cleanup() local_unnamed_addr #4 !prof !251 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %3, %1 ]
  tail call void @PerlIOUnix_refcnt_inc(i32 noundef %2) #29
  %3 = add nuw nsw i32 %2, 1
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %1, !prof !214, !llvm.loop !398

5:                                                ; preds = %1
  tail call void @PerlIO_cleantable(ptr noundef nonnull @PL_perlio) #29
  br label %6

6:                                                ; preds = %5, %6
  %7 = phi i32 [ 0, %5 ], [ %9, %6 ]
  %8 = tail call i32 @PerlIOUnix_refcnt_dec(i32 noundef %7) #29
  %9 = add nuw nsw i32 %7, 1
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %6, !prof !214, !llvm.loop !399

11:                                               ; preds = %6
  %12 = load ptr, ptr @PL_known_layers, align 8, !tbaa !196
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !397

14:                                               ; preds = %11
  tail call void @PerlIO_list_free(ptr noundef nonnull %12) #29
  store ptr null, ptr @PL_known_layers, align 8, !tbaa !196
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !196
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !397

18:                                               ; preds = %15
  tail call void @PerlIO_list_free(ptr noundef nonnull %16) #29
  store ptr null, ptr @PL_def_layerlist, align 8, !tbaa !196
  br label %19

19:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @PerlIO_teardown() local_unnamed_addr #13 !prof !189 {
  %1 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !190
  %2 = icmp ne i32 %1, 0
  %3 = load ptr, ptr @PL_perlio_fd_refcnt, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !400

6:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %3) #28
  store ptr null, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !196
  store i32 0, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !190
  br label %7

7:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIOUnix_oflags(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !222 {
  %2 = load i8, ptr %0, align 1, !tbaa !194
  switch i8 %2, label %6 [
    i8 73, label %3
    i8 35, label %3
  ], !prof !401

3:                                                ; preds = %1, %1
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !194
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i8 [ %2, %1 ], [ %5, %3 ]
  %8 = phi ptr [ %0, %1 ], [ %4, %3 ]
  switch i8 %7, label %30 [
    i8 114, label %9
    i8 119, label %16
    i8 97, label %23
  ], !prof !402

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %8, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !194
  %12 = icmp eq i8 %11, 43
  %13 = getelementptr inbounds i8, ptr %8, i64 2
  %14 = select i1 %12, ptr %13, ptr %10, !prof !229
  %15 = select i1 %12, i32 2, i32 0, !prof !229
  br label %30

16:                                               ; preds = %6
  %17 = getelementptr inbounds i8, ptr %8, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !194
  %19 = icmp eq i8 %18, 43
  %20 = getelementptr inbounds i8, ptr %8, i64 2
  %21 = select i1 %19, ptr %20, ptr %17
  %22 = select i1 %19, i32 578, i32 577
  br label %30

23:                                               ; preds = %6
  %24 = getelementptr inbounds i8, ptr %8, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !194
  %26 = icmp eq i8 %25, 43
  %27 = getelementptr inbounds i8, ptr %8, i64 2
  %28 = select i1 %26, ptr %27, ptr %24
  %29 = select i1 %26, i32 1090, i32 1089
  br label %30

30:                                               ; preds = %23, %16, %9, %6
  %31 = phi ptr [ %8, %6 ], [ %14, %9 ], [ %21, %16 ], [ %28, %23 ]
  %32 = phi i1 [ true, %6 ], [ false, %9 ], [ false, %16 ], [ false, %23 ]
  %33 = phi i32 [ -1, %6 ], [ %15, %9 ], [ %22, %16 ], [ %29, %23 ]
  %34 = load i8, ptr %31, align 1, !tbaa !194
  switch i8 %34, label %39 [
    i8 98, label %35
    i8 116, label %37
  ], !prof !403

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, ptr %31, i64 1
  br label %39

37:                                               ; preds = %30
  %38 = getelementptr inbounds i8, ptr %31, i64 1
  br label %39

39:                                               ; preds = %30, %37, %35
  %40 = phi ptr [ %31, %30 ], [ %38, %37 ], [ %36, %35 ]
  %41 = load i8, ptr %40, align 1, !tbaa !194
  %42 = icmp ne i8 %41, 0
  %43 = or i1 %32, %42
  br i1 %43, label %44, label %46, !prof !404

44:                                               ; preds = %39
  %45 = tail call ptr @__errno_location() #30
  store i32 22, ptr %45, align 4, !tbaa !190
  br label %46

46:                                               ; preds = %39, %44
  %47 = phi i32 [ -1, %44 ], [ %33, %39 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOUnix_fileno(ptr nocapture noundef readonly %0) #8 !prof !309 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOUnix, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !405
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOUnix_pushed(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #4 !prof !195 {
  %5 = tail call i64 @PerlIOBase_pushed(ptr noundef %0, ptr noundef %1, ptr poison, ptr noundef %3) #29, !range !407
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = load ptr, ptr %6, align 8, !tbaa !203
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9, !prof !304

9:                                                ; preds = %4
  %10 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %6) #29
  %11 = load ptr, ptr %0, align 8, !tbaa !196
  %12 = tail call i32 @Perl_PerlIO_fileno(ptr noundef %11) #29
  %13 = icmp eq ptr %1, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @PerlIOUnix_oflags(ptr noundef nonnull %1) #29, !range !408
  br label %16

16:                                               ; preds = %9, %14
  %17 = phi i32 [ %15, %14 ], [ -1, %9 ]
  tail call fastcc void @PerlIOUnix_setfd(ptr noundef nonnull %0, i32 noundef %12, i32 noundef %17) #29
  %18 = load ptr, ptr %0, align 8, !tbaa !196
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi ptr [ %18, %16 ], [ %6, %4 ]
  %21 = getelementptr inbounds %struct._PerlIO, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !206
  %23 = or i32 %22, 2097152
  store i32 %23, ptr %21, align 8, !tbaa !206
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PerlIOUnix_setfd(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !prof !195 !PGOFuncName !409 {
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct.PerlIOUnix, ptr %4, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !405
  %6 = getelementptr inbounds %struct.PerlIOUnix, ptr %4, i64 0, i32 2
  store i32 %2, ptr %6, align 4, !tbaa !410
  tail call void @PerlIOUnix_refcnt_inc(i32 noundef %1) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOUnix_seek(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #4 !prof !348 {
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !206
  %7 = and i32 %6, 16777216
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !411

9:                                                ; preds = %3
  %10 = tail call ptr @__errno_location() #30
  store i32 29, ptr %10, align 4, !tbaa !190
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.PerlIOUnix, ptr %4, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !405
  %14 = tail call i64 @lseek64(i32 noundef %13, i64 noundef %1, i32 noundef %2) #28
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %21, label %16, !prof !349

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 8, !tbaa !196
  %18 = getelementptr inbounds %struct._PerlIO, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !206
  %20 = and i32 %19, -257
  store i32 %20, ptr %18, align 8, !tbaa !206
  br label %21

21:                                               ; preds = %11, %16, %9
  %22 = phi i64 [ -1, %9 ], [ 0, %16 ], [ -1, %11 ]
  ret i64 %22
}

; Function Attrs: nounwind optsize
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIOUnix_open(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9) #4 !prof !195 {
  %11 = alloca i64, align 8
  %12 = icmp eq ptr %7, null
  br i1 %12, label %29, label %13, !prof !304

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 8, !tbaa !196
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._PerlIO, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !207
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._PerlIO, ptr %14, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !206
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct._PerlIO_funcs, ptr %18, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !303
  %28 = tail call i64 %27(ptr noundef nonnull %7) #28
  br label %29

29:                                               ; preds = %16, %20, %25, %13, %10
  %30 = icmp sgt i32 %8, 0
  br i1 %30, label %31, label %65, !prof !412

31:                                               ; preds = %29
  %32 = load i8, ptr %3, align 1, !tbaa !194
  %33 = icmp eq i8 %32, 35
  br i1 %33, label %34, label %36, !prof !229

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %3, i64 1
  br label %38

36:                                               ; preds = %31
  %37 = tail call i32 @PerlIOUnix_oflags(ptr noundef nonnull %3) #29, !range !408
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %5, %34 ], [ %37, %36 ]
  %40 = phi i32 [ %6, %34 ], [ 438, %36 ]
  %41 = phi ptr [ %35, %34 ], [ %3, %36 ]
  %42 = icmp eq i32 %39, -1
  br i1 %42, label %65, label %43, !prof !229

43:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #31
  %44 = load ptr, ptr %9, align 8, !tbaa !196
  %45 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !279
  %47 = and i32 %46, 2098176
  %48 = icmp eq i32 %47, 1024
  br i1 %48, label %49, label %55, !prof !243

49:                                               ; preds = %43
  %50 = load ptr, ptr %44, align 8, !tbaa !280
  %51 = getelementptr inbounds %struct.xpv, ptr %50, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !281
  store i64 %52, ptr %11, align 8, !tbaa !283
  %53 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !194
  br label %58

55:                                               ; preds = %43
  %56 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %44, ptr noundef nonnull %11, i32 noundef 34) #28
  %57 = load i64, ptr %11, align 8, !tbaa !283
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi i64 [ %52, %49 ], [ %57, %55 ]
  %60 = phi ptr [ %54, %49 ], [ %56, %55 ]
  %61 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %60, i64 noundef %59) #29
  br i1 %61, label %62, label %64, !prof !243

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
  br i1 %69, label %70, label %99, !prof !304

70:                                               ; preds = %65
  %71 = load i8, ptr %68, align 1, !tbaa !194
  %72 = icmp eq i8 %71, 73
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds i8, ptr %68, i64 %73
  br i1 %12, label %75, label %78, !prof !304

75:                                               ; preds = %70
  %76 = call ptr @PerlIO_allocate() #29
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78, !prof !413

78:                                               ; preds = %70, %75
  %79 = phi ptr [ %76, %75 ], [ %7, %70 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !196
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %89, !prof !304

82:                                               ; preds = %78, %75
  %83 = phi ptr [ %79, %78 ], [ null, %75 ]
  %84 = call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #29
  %85 = call ptr @PerlIO_push(ptr noundef %83, ptr noundef %0, ptr noundef nonnull %74, ptr noundef %84) #29
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89, !prof !294

87:                                               ; preds = %82
  %88 = call i32 @close(i32 noundef %67) #28
  br label %99

89:                                               ; preds = %82, %78
  %90 = phi ptr [ %79, %78 ], [ %85, %82 ]
  call fastcc void @PerlIOUnix_setfd(ptr noundef nonnull %90, i32 noundef %67, i32 noundef %66) #29
  %91 = load ptr, ptr %90, align 8, !tbaa !196
  %92 = getelementptr inbounds %struct._PerlIO, ptr %91, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !206
  %94 = or i32 %93, 2097152
  store i32 %94, ptr %92, align 8, !tbaa !206
  %95 = load i8, ptr %74, align 1, !tbaa !194
  %96 = icmp eq i8 %95, 97
  br i1 %96, label %97, label %99, !prof !294

97:                                               ; preds = %89
  %98 = call i64 @PerlIOUnix_seek(ptr noundef nonnull %90, i64 noundef 0, i32 noundef 2) #29, !range !407
  br label %99

99:                                               ; preds = %64, %65, %89, %97, %87
  %100 = phi ptr [ null, %64 ], [ null, %87 ], [ %90, %97 ], [ %90, %89 ], [ null, %65 ]
  ret ptr %100
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_is_safe_syscall(ptr noundef %0, i64 noundef %1) unnamed_addr #4 !prof !222 !PGOFuncName !414 {
  %3 = icmp ugt i64 %1, 1
  br i1 %3, label %4, label %11, !prof !243

4:                                                ; preds = %2
  %5 = add i64 %1, -1
  %6 = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %5) #32
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !243

8:                                                ; preds = %4
  %9 = tail call ptr @__errno_location() #30
  store i32 2, ptr %9, align 4, !tbaa !190
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 59, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef %0, ptr noundef nonnull %10) #28
  br label %11

11:                                               ; preds = %4, %2, %8
  %12 = phi i1 [ false, %8 ], [ true, %2 ], [ true, %4 ]
  ret i1 %12
}

; Function Attrs: nofree optsize
declare noundef i32 @open64(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #16

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIOUnix_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #4 !prof !189 {
  %5 = load ptr, ptr %1, align 8, !tbaa !196
  %6 = getelementptr inbounds %struct.PerlIOUnix, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !405
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
  %20 = load i32, ptr %19, align 4, !tbaa !410
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
declare i32 @dup(i32 noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOUnix_read(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) #4 !prof !333 {
  %4 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !206
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %55, !prof !415

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !196
  %11 = getelementptr inbounds %struct.PerlIOUnix, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !405
  %13 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !206
  %15 = and i32 %14, 3328
  %16 = icmp eq i32 %15, 1024
  br i1 %16, label %17, label %55, !prof !416

17:                                               ; preds = %9
  %18 = tail call i64 @read(i32 noundef %12, ptr noundef %1, i64 noundef %2) #28
  %19 = icmp sgt i64 %18, -1
  br i1 %19, label %36, label %20, !prof !417

20:                                               ; preds = %17
  %21 = tail call ptr @__errno_location() #30
  %22 = load i32, ptr %21, align 4, !tbaa !190
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %47, label %27

24:                                               ; preds = %52
  %25 = load i32, ptr %21, align 4, !tbaa !190
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %47, label %27

27:                                               ; preds = %24, %20
  %28 = phi i64 [ %18, %20 ], [ %53, %24 ]
  %29 = phi i32 [ %22, %20 ], [ %25, %24 ]
  %30 = icmp eq i32 %29, 11
  br i1 %30, label %55, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !196
  %33 = getelementptr inbounds %struct._PerlIO, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !206
  %35 = or i32 %34, 2048
  store i32 %35, ptr %33, align 8, !tbaa !206
  tail call void @Perl_PerlIO_save_errno(ptr noundef nonnull %0) #29
  br label %55

36:                                               ; preds = %52, %17
  %37 = phi i64 [ %18, %17 ], [ %53, %52 ]
  %38 = icmp eq i64 %37, 0
  %39 = icmp ne i64 %2, 0
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %55, !prof !418

41:                                               ; preds = %36
  %42 = load ptr, ptr %0, align 8, !tbaa !196
  %43 = getelementptr inbounds %struct._PerlIO, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !206
  %45 = or i32 %44, 256
  store i32 %45, ptr %43, align 8, !tbaa !206
  %46 = tail call ptr @__errno_location() #30
  store i32 0, ptr %46, align 4, !tbaa !190
  br label %55

47:                                               ; preds = %20, %24
  %48 = load i32, ptr @PL_sig_pending, align 4, !tbaa !190
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0) #29
  br i1 %51, label %55, label %52

52:                                               ; preds = %47, %50
  %53 = tail call i64 @read(i32 noundef %12, ptr noundef %1, i64 noundef %2) #28
  %54 = icmp sgt i64 %53, -1
  br i1 %54, label %36, label %24, !prof !419

55:                                               ; preds = %50, %31, %27, %41, %36, %9, %3
  %56 = phi i64 [ -1, %3 ], [ 0, %9 ], [ %28, %31 ], [ %28, %27 ], [ 0, %41 ], [ %37, %36 ], [ -1, %50 ]
  ret i64 %56
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_perlio_async_run(ptr noundef %0) unnamed_addr #4 !prof !189 !PGOFuncName !420 {
  tail call void @Perl_push_scope() #28
  tail call void @Perl_save_destructor_x(ptr noundef nonnull @S_lockcnt_dec, ptr noundef %0) #28
  %2 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !208
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !206
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !206
  %7 = load i32, ptr @PL_sig_pending, align 4, !tbaa !190
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @PL_signalhook, align 8, !tbaa !196
  tail call void %10() #28
  br label %11

11:                                               ; preds = %1, %9
  %12 = load ptr, ptr %0, align 8, !tbaa !196
  %13 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !206
  %15 = and i32 %14, 33554432
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11, %23
  %18 = phi ptr [ %25, %23 ], [ %12, %11 ]
  %19 = getelementptr inbounds %struct._PerlIO, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !206
  %21 = and i32 %20, 33554432
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !203
  store ptr %24, ptr %0, align 8, !tbaa !196
  tail call void @Perl_safesysfree(ptr noundef nonnull %18) #28
  %25 = load ptr, ptr %0, align 8, !tbaa !196
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %17, !llvm.loop !421

27:                                               ; preds = %23, %17, %11
  tail call void @Perl_pop_scope() #28
  ret i1 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOUnix_write(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #4 !prof !422 {
  %4 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !206
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %39, !prof !423

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !196
  %11 = getelementptr inbounds %struct.PerlIOUnix, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !405
  %13 = tail call i64 @write(i32 noundef %12, ptr noundef %1, i64 noundef %2) #28
  %14 = icmp sgt i64 %13, -1
  br i1 %14, label %39, label %15, !prof !424

15:                                               ; preds = %9
  %16 = tail call ptr @__errno_location() #30
  %17 = load i32, ptr %16, align 4, !tbaa !190
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %31, label %22

19:                                               ; preds = %36
  %20 = load i32, ptr %16, align 4, !tbaa !190
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %31, label %22

22:                                               ; preds = %19, %15
  %23 = phi i64 [ %13, %15 ], [ %37, %19 ]
  %24 = phi i32 [ %17, %15 ], [ %20, %19 ]
  %25 = icmp eq i32 %24, 11
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8, !tbaa !196
  %28 = getelementptr inbounds %struct._PerlIO, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !206
  %30 = or i32 %29, 2048
  store i32 %30, ptr %28, align 8, !tbaa !206
  tail call void @Perl_PerlIO_save_errno(ptr noundef nonnull %0) #29
  br label %39

31:                                               ; preds = %15, %19
  %32 = load i32, ptr @PL_sig_pending, align 4, !tbaa !190
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0) #29
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %34
  %37 = tail call i64 @write(i32 noundef %12, ptr noundef %1, i64 noundef %2) #28
  %38 = icmp sgt i64 %37, -1
  br i1 %38, label %39, label %19, !prof !419

39:                                               ; preds = %34, %36, %9, %26, %22, %3
  %40 = phi i64 [ -1, %3 ], [ %23, %26 ], [ %23, %22 ], [ %13, %9 ], [ -1, %34 ], [ %37, %36 ]
  ret i64 %40
}

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOUnix_tell(ptr nocapture noundef readonly %0) #4 !prof !425 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOUnix, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !405
  %5 = tail call i64 @lseek64(i32 noundef %4, i64 noundef 0, i32 noundef 1) #28
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOUnix_close(ptr noundef %0) #4 !prof !195 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOUnix, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !405
  %5 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !206
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9, !prof !294

9:                                                ; preds = %1
  %10 = tail call i32 @PerlIOUnix_refcnt_dec(i32 noundef %4) #29
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %17, label %12, !prof !312

12:                                               ; preds = %9
  %13 = tail call i32 @close(i32 noundef %4) #28
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15, !prof !426

15:                                               ; preds = %12
  %16 = tail call ptr @__errno_location() #30
  br label %24

17:                                               ; preds = %9
  %18 = load ptr, ptr %0, align 8, !tbaa !196
  %19 = getelementptr inbounds %struct._PerlIO, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !206
  %21 = and i32 %20, -2097153
  store i32 %21, ptr %19, align 8, !tbaa !206
  br label %40

22:                                               ; preds = %1
  %23 = tail call ptr @__errno_location() #30
  store i32 9, ptr %23, align 4, !tbaa !190
  br label %40

24:                                               ; preds = %15, %32
  %25 = load i32, ptr %16, align 4, !tbaa !190
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32, ptr @PL_sig_pending, align 4, !tbaa !190
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0) #29
  br i1 %31, label %40, label %32

32:                                               ; preds = %30, %27
  %33 = tail call i32 @close(i32 noundef %4) #28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %24, !prof !419, !llvm.loop !427

35:                                               ; preds = %32, %12
  %36 = load ptr, ptr %0, align 8, !tbaa !196
  %37 = getelementptr inbounds %struct._PerlIO, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !206
  %39 = and i32 %38, -2097153
  store i32 %39, ptr %37, align 8, !tbaa !206
  br label %40

40:                                               ; preds = %24, %30, %35, %22, %17
  %41 = phi i64 [ 0, %17 ], [ -1, %22 ], [ 0, %35 ], [ -1, %30 ], [ -1, %24 ]
  ret i64 %41
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_fileno(ptr noundef readonly %0) #17 !prof !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.PerlIOStdio, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !428
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @fileno(ptr noundef nonnull %8) #28
  %12 = sext i32 %11 to i64
  br label %15

13:                                               ; preds = %6, %3, %1
  %14 = tail call ptr @__errno_location() #30
  store i32 9, ptr %14, align 4, !tbaa !190
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi i64 [ %12, %10 ], [ -1, %13 ]
  ret i64 %16
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @PerlIOStdio_mode(ptr noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #19 !prof !189 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1, !tbaa !194
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4, %7
  %8 = phi i8 [ %13, %7 ], [ %5, %4 ]
  %9 = phi ptr [ %11, %7 ], [ %0, %4 ]
  %10 = phi ptr [ %12, %7 ], [ %1, %4 ]
  %11 = getelementptr inbounds i8, ptr %9, i64 1
  %12 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %8, ptr %10, align 1, !tbaa !194
  %13 = load i8, ptr %11, align 1, !tbaa !194
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %7, !llvm.loop !430

15:                                               ; preds = %7, %4, %2
  %16 = phi ptr [ %1, %2 ], [ %1, %4 ], [ %12, %7 ]
  store i8 0, ptr %16, align 1, !tbaa !194
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_pushed(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #4 !prof !189 {
  %5 = alloca [8 x i8], align 1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !196
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !196
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._PerlIO, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !207
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
  %26 = load ptr, ptr %0, align 8, !tbaa !196
  %27 = getelementptr inbounds %struct.PerlIOStdio, ptr %26, i64 0, i32 1
  store ptr %23, ptr %27, align 8, !tbaa !428
  %28 = load ptr, ptr %0, align 8, !tbaa !196
  %29 = call i32 @Perl_PerlIO_flush(ptr noundef %28) #29
  %30 = call i64 @PerlIOBase_pushed(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr poison, ptr noundef %3) #29, !range !407
  br label %31

31:                                               ; preds = %18, %21, %25
  %32 = phi i64 [ %30, %25 ], [ -1, %21 ], [ -1, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  br label %35

33:                                               ; preds = %10, %7, %4
  %34 = tail call i64 @PerlIOBase_pushed(ptr noundef %0, ptr noundef %1, ptr poison, ptr noundef %3) #29, !range !407
  br label %35

35:                                               ; preds = %17, %31, %33
  %36 = phi i64 [ %34, %33 ], [ 0, %17 ], [ %32, %31 ]
  ret i64 %36
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIO_importFILE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !189 {
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
  %10 = load i8, ptr %1, align 1, !tbaa !194
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %9, %7
  %13 = tail call i32 @dup(i32 noundef %5) #28
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %12
  %16 = tail call noalias ptr @fdopen(i32 noundef %13, ptr noundef nonnull @.str.54) #28
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = tail call noalias ptr @fdopen(i32 noundef %13, ptr noundef nonnull @.str.55) #28
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = tail call noalias ptr @fdopen(i32 noundef %13, ptr noundef nonnull @.str.38) #28
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 @close(i32 noundef %13) #28
  br label %39

26:                                               ; preds = %15, %18, %21
  %27 = phi ptr [ %22, %21 ], [ %19, %18 ], [ %16, %15 ]
  %28 = phi ptr [ @.str.38, %21 ], [ @.str.55, %18 ], [ @.str.54, %15 ]
  %29 = tail call i32 @fclose(ptr noundef nonnull %27) #29
  br label %30

30:                                               ; preds = %26, %9
  %31 = phi ptr [ %1, %9 ], [ %28, %26 ]
  %32 = tail call ptr @PerlIO_allocate() #29
  %33 = tail call ptr @PerlIO_push(ptr noundef %32, ptr noundef nonnull @PerlIO_stdio, ptr noundef nonnull %31, ptr noundef null) #29
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %33, align 8, !tbaa !196
  %37 = getelementptr inbounds %struct.PerlIOStdio, ptr %36, i64 0, i32 1
  store ptr %0, ptr %37, align 8, !tbaa !428
  %38 = tail call i32 @fileno(ptr noundef nonnull %0) #28
  tail call void @PerlIOUnix_refcnt_inc(i32 noundef %38) #29
  br label %39

39:                                               ; preds = %12, %24, %4, %35, %30, %2
  %40 = phi ptr [ null, %2 ], [ null, %4 ], [ %33, %35 ], [ null, %30 ], [ null, %24 ], [ null, %12 ]
  ret ptr %40
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIOStdio_open(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9) #4 !prof !189 {
  %11 = alloca [8 x i8], align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #31
  %14 = icmp eq ptr %7, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %7, align 8, !tbaa !196
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #31
  %19 = load ptr, ptr %9, align 8, !tbaa !196
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !279
  %22 = and i32 %21, 2098176
  %23 = icmp eq i32 %22, 1024
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load ptr, ptr %19, align 8, !tbaa !280
  %26 = getelementptr inbounds %struct.xpv, ptr %25, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !281
  store i64 %27, ptr %12, align 8, !tbaa !283
  %28 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !194
  br label %34

30:                                               ; preds = %18
  %31 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %19, ptr noundef nonnull %12, i32 noundef 34) #28
  %32 = load ptr, ptr %7, align 8, !tbaa !196
  %33 = load i64, ptr %12, align 8, !tbaa !283
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i64 [ %27, %24 ], [ %33, %30 ]
  %36 = phi ptr [ %16, %24 ], [ %32, %30 ]
  %37 = phi ptr [ %29, %24 ], [ %31, %30 ]
  %38 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %37, i64 noundef %35) #29
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.PerlIOStdio, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !428
  %42 = call i32 @fileno(ptr noundef %41) #28
  %43 = call i32 @PerlIOUnix_refcnt_dec(i32 noundef %42) #29
  %44 = call ptr @PerlIOStdio_mode(ptr noundef %3, ptr noundef nonnull %11) #29
  %45 = load ptr, ptr %40, align 8, !tbaa !428
  %46 = call ptr @freopen64(ptr noundef %37, ptr noundef nonnull %11, ptr noundef %45) #28
  %47 = load ptr, ptr %40, align 8, !tbaa !428
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %39
  store ptr %46, ptr %40, align 8, !tbaa !428
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
  %56 = load ptr, ptr %9, align 8, !tbaa !196
  %57 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !279
  %59 = and i32 %58, 2098176
  %60 = icmp eq i32 %59, 1024
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load ptr, ptr %56, align 8, !tbaa !280
  %63 = getelementptr inbounds %struct.xpv, ptr %62, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !281
  store i64 %64, ptr %13, align 8, !tbaa !283
  %65 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !194
  br label %70

67:                                               ; preds = %55
  %68 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %56, ptr noundef nonnull %13, i32 noundef 34) #28
  %69 = load i64, ptr %13, align 8, !tbaa !283
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i64 [ %64, %61 ], [ %69, %67 ]
  %72 = phi ptr [ %66, %61 ], [ %68, %67 ]
  %73 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %72, i64 noundef %71) #29
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load i8, ptr %3, align 1, !tbaa !194
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
  %90 = load ptr, ptr %87, align 8, !tbaa !196
  %91 = getelementptr inbounds %struct.PerlIOStdio, ptr %90, i64 0, i32 1
  store ptr %78, ptr %91, align 8, !tbaa !428
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
  %105 = load i8, ptr %102, align 1, !tbaa !194
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
  %110 = load ptr, ptr @stdin, align 8, !tbaa !196
  br label %118

111:                                              ; preds = %108
  %112 = load ptr, ptr @stdout, align 8, !tbaa !196
  br label %118

113:                                              ; preds = %108
  %114 = load ptr, ptr @stderr, align 8, !tbaa !196
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
  %131 = load ptr, ptr %128, align 8, !tbaa !196
  %132 = getelementptr inbounds %struct.PerlIOStdio, ptr %131, i64 0, i32 1
  store ptr %120, ptr %132, align 8, !tbaa !428
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
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIOStdio_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #4 !prof !189 {
  %5 = alloca [8 x i8], align 1
  %6 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !196
  %10 = getelementptr inbounds %struct.PerlIOStdio, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !428
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
  %24 = load ptr, ptr %6, align 8, !tbaa !196
  %25 = getelementptr inbounds %struct.PerlIOStdio, ptr %24, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !428
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
define dso_local i64 @PerlIOStdio_close(ptr noundef %0) #4 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @__errno_location() #30
  store i32 9, ptr %7, align 4, !tbaa !190
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
  %15 = load ptr, ptr @stdin, align 8, !tbaa !196
  %16 = icmp eq ptr %4, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @stdout, align 8, !tbaa !196
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
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOStdio_read(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) #4 !prof !189 {
  %4 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !206
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !196
  %11 = getelementptr inbounds %struct.PerlIOStdio, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !428
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
  store i8 %20, ptr %1, align 1, !tbaa !194
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
  %34 = load i32, ptr %33, align 4, !tbaa !190
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, ptr @PL_sig_pending, align 4, !tbaa !190
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0) #29
  br i1 %40, label %42, label %41

41:                                               ; preds = %39, %36
  store i32 0, ptr %33, align 4, !tbaa !190
  br label %14

42:                                               ; preds = %26, %31, %29, %39, %19, %3
  %43 = phi i64 [ -1, %3 ], [ 1, %19 ], [ 0, %26 ], [ %32, %31 ], [ %24, %29 ], [ -1, %39 ]
  ret i64 %43
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOStdio_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 !prof !189 {
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct.PerlIOStdio, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !428
  %7 = tail call i32 @PerlIO_has_cntptr(ptr noundef nonnull %0) #29
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %6, i64 0, i32 1
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %1, i64 %2
  %14 = load ptr, ptr %10, align 8, !tbaa !431
  br label %15

15:                                               ; preds = %12, %35
  %16 = phi i64 [ %36, %35 ], [ %2, %12 ]
  %17 = phi ptr [ %20, %35 ], [ %13, %12 ]
  %18 = phi ptr [ %27, %35 ], [ %14, %12 ]
  %19 = phi i64 [ %37, %35 ], [ 0, %12 ]
  %20 = getelementptr inbounds i8, ptr %17, i64 -1
  %21 = load i8, ptr %20, align 1, !tbaa !194
  %22 = zext i8 %21 to i32
  %23 = tail call i32 @ungetc(i32 noundef %22, ptr noundef nonnull %6) #29
  %24 = icmp eq i32 %23, %22
  br i1 %24, label %25, label %41

25:                                               ; preds = %15
  %26 = load ptr, ptr %10, align 8, !tbaa !431
  %27 = getelementptr inbounds i8, ptr %18, i64 -1
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8, ptr %26, align 1, !tbaa !194
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
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_write(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) #4 !prof !189 {
  %4 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !206
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !196
  %11 = getelementptr inbounds %struct.PerlIOStdio, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !428
  %13 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %12) #29
  %14 = icmp sgt i64 %13, -1
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @__errno_location() #30
  %17 = load i32, ptr %16, align 4, !tbaa !190
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %22, label %33

19:                                               ; preds = %27
  %20 = load i32, ptr %16, align 4, !tbaa !190
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %33

22:                                               ; preds = %15, %19
  %23 = load i32, ptr @PL_sig_pending, align 4, !tbaa !190
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0) #29
  br i1 %26, label %33, label %27

27:                                               ; preds = %25, %22
  store i32 0, ptr %16, align 4, !tbaa !190
  %28 = load ptr, ptr %0, align 8, !tbaa !196
  %29 = getelementptr inbounds %struct.PerlIOStdio, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !428
  %31 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %30) #29
  %32 = icmp sgt i64 %31, -1
  br i1 %32, label %33, label %19

33:                                               ; preds = %19, %27, %25, %15, %9, %3
  %34 = phi i64 [ -1, %3 ], [ %13, %9 ], [ %13, %15 ], [ -1, %25 ], [ %31, %27 ], [ %31, %19 ]
  ret i64 %34
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_seek(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #17 !prof !189 {
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct.PerlIOStdio, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !428
  %7 = tail call i32 @fseek(ptr noundef %6, i64 noundef %1, i32 noundef %2) #29
  %8 = sext i32 %7 to i64
  ret i64 %8
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_tell(ptr nocapture noundef readonly %0) #17 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  %5 = tail call i64 @ftell(ptr noundef %4) #29
  ret i64 %5
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_flush(ptr nocapture noundef readonly %0) #17 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !206
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !428
  %10 = tail call i32 @fflush(ptr noundef %9) #29
  %11 = sext i32 %10 to i64
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi i64 [ %11, %7 ], [ 0, %1 ]
  ret i64 %13
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_eof(ptr nocapture noundef readonly %0) #17 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  %5 = tail call i32 @feof(ptr noundef %4) #28
  %6 = sext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree noinline nounwind optsize memory(read) uwtable
define dso_local noundef i64 @PerlIOStdio_error(ptr nocapture noundef readonly %0) #21 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  %5 = tail call i32 @ferror(ptr noundef %4) #28
  %6 = sext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @PerlIOStdio_clearerr(ptr nocapture noundef readonly %0) #17 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  tail call void @clearerr(ptr noundef %4) #28
  ret void
}

; Function Attrs: nofree nounwind optsize
declare void @clearerr(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @PerlIOStdio_setlinebuf(ptr nocapture noundef readonly %0) #17 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  %5 = tail call i32 @setvbuf(ptr noundef %4, ptr noundef null, i32 noundef 1, i64 noundef 0) #28
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @setvbuf(ptr nocapture noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @PerlIOStdio_get_base(ptr nocapture noundef readonly %0) #8 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !434
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOStdio_get_bufsiz(ptr nocapture noundef readonly %0) #8 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !435
  %7 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !434
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  ret i64 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @PerlIOStdio_get_ptr(ptr nocapture noundef readonly %0) #8 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !431
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOStdio_get_cnt(ptr nocapture noundef readonly %0) #8 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !435
  %7 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !431
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  ret i64 %11
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @PerlIOStdio_set_ptrcnt(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i64 noundef %2) local_unnamed_addr #22 !prof !189 {
  tail call void @abort() #34
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #23

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOStdio_fill(ptr noundef %0) #4 !prof !189 {
  %2 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !208
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !206
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !196
  %9 = getelementptr inbounds %struct.PerlIOStdio, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !428
  %11 = getelementptr inbounds %struct._PerlIO, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !206
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
  %26 = load i32, ptr %25, align 4, !tbaa !190
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i32, ptr @PL_sig_pending, align 4, !tbaa !190
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0) #29
  br i1 %32, label %41, label %33

33:                                               ; preds = %31, %28
  store i32 0, ptr %25, align 4, !tbaa !190
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
define dso_local noundef ptr @PerlIO_exportFILE(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 !prof !189 {
  %3 = alloca [8 x i8], align 1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !196
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
  %15 = load i8, ptr %1, align 1, !tbaa !194
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
  %25 = load ptr, ptr %0, align 8, !tbaa !196
  store ptr null, ptr %0, align 8, !tbaa !196
  %26 = call ptr @PerlIO_push(ptr noundef nonnull %0, ptr noundef nonnull @PerlIO_stdio, ptr noundef nonnull %3, ptr noundef null) #29
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 8, !tbaa !196
  %30 = getelementptr inbounds %struct.PerlIOStdio, ptr %29, i64 0, i32 1
  store ptr %22, ptr %30, align 8, !tbaa !428
  %31 = call i32 @fileno(ptr noundef nonnull %22) #28
  call void @PerlIOUnix_refcnt_inc(i32 noundef %31) #29
  %32 = load ptr, ptr %26, align 8, !tbaa !196
  br label %33

33:                                               ; preds = %24, %28
  %34 = phi ptr [ %32, %28 ], [ %0, %24 ]
  store ptr %25, ptr %34, align 8, !tbaa !196
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
define dso_local ptr @PerlIO_findFILE(ptr noundef %0) local_unnamed_addr #4 !prof !189 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = icmp eq ptr %8, @PerlIO_stdio
  br i1 %9, label %10, label %2, !llvm.loop !436

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.PerlIOStdio, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !428
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
define dso_local void @PerlIO_releaseFILE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !189 {
  %3 = load ptr, ptr %0, align 8, !tbaa !196
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2, %21
  %6 = phi ptr [ %22, %21 ], [ %3, %2 ]
  %7 = phi ptr [ %6, %21 ], [ %0, %2 ]
  %8 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !207
  %10 = icmp eq ptr %9, @PerlIO_stdio
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.PerlIOStdio, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !428
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
  %22 = load ptr, ptr %6, align 8, !tbaa !196
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !437

24:                                               ; preds = %21, %2, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOBuf_pushed(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #4 !prof !195 {
  %5 = load ptr, ptr %0, align 8, !tbaa !196
  %6 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %0) #29
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %10, label %8, !prof !304

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !196
  br label %18

10:                                               ; preds = %4
  %11 = tail call i32 @isatty(i32 noundef %6) #28
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr %0, align 8, !tbaa !196
  br i1 %12, label %18, label %14, !prof !304

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._PerlIO, ptr %13, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !206
  %17 = or i32 %16, 8912896
  store i32 %17, ptr %15, align 8, !tbaa !206
  br label %18

18:                                               ; preds = %8, %14, %10
  %19 = phi ptr [ %9, %8 ], [ %13, %14 ], [ %13, %10 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !203
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22, !prof !294

22:                                               ; preds = %18
  %23 = tail call i64 @Perl_PerlIO_tell(ptr noundef nonnull %19) #29
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %27, label %25, !prof !294

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 4
  store i64 %23, ptr %26, align 8, !tbaa !343
  br label %27

27:                                               ; preds = %22, %25, %18
  %28 = tail call i64 @PerlIOBase_pushed(ptr noundef nonnull %0, ptr noundef %1, ptr poison, ptr noundef %3) #29, !range !407
  ret i64 %28
}

; Function Attrs: nounwind optsize
declare i32 @isatty(i32 noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOBuf_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #4 !prof !195 {
  %11 = icmp eq ptr %7, null
  br i1 %11, label %39, label %12, !prof !304

12:                                               ; preds = %10
  %13 = load ptr, ptr %7, align 8, !tbaa !196
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %12
  %16 = add nsw i64 %2, -1
  %17 = load ptr, ptr %13, align 8, !tbaa !196
  %18 = getelementptr inbounds %struct._PerlIO, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !207
  %20 = tail call ptr @PerlIO_layer_fetch(ptr noundef %1, i64 noundef %16, ptr noundef %19) #29
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct._PerlIO_funcs, ptr %20, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !292
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call ptr %24(ptr noundef nonnull %20, ptr noundef %1, i64 noundef %16, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %13, i32 noundef %8, ptr noundef %9) #28
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %22, %15, %26
  %30 = load ptr, ptr %7, align 8, !tbaa !196
  %31 = getelementptr inbounds %struct._PerlIO, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !207
  %33 = getelementptr inbounds %struct._PerlIO_funcs, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !299
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
  %43 = load i8, ptr %3, align 1, !tbaa !194
  %44 = icmp eq i8 %43, 73
  %45 = icmp eq ptr %42, null
  br i1 %45, label %52, label %46, !prof !294

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct._PerlIO_funcs, ptr %42, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !292
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !294

50:                                               ; preds = %46
  %51 = tail call ptr %48(ptr noundef nonnull %42, ptr noundef %1, i64 noundef %40, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #28
  br label %54

52:                                               ; preds = %46, %39
  %53 = tail call ptr @__errno_location() #30
  store i32 22, ptr %53, align 4, !tbaa !190
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %7, %52 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %72, label %57, !prof !294

57:                                               ; preds = %54
  %58 = tail call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #29
  %59 = tail call ptr @PerlIO_push(ptr noundef nonnull %55, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %58) #29
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61, !prof !294

61:                                               ; preds = %57
  %62 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %55) #29
  %63 = icmp eq i32 %62, 2
  %64 = select i1 %44, i1 %63, i1 false
  br i1 %64, label %65, label %72, !prof !438

65:                                               ; preds = %61
  %66 = load ptr, ptr %55, align 8, !tbaa !196
  %67 = getelementptr inbounds %struct._PerlIO, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !206
  %69 = or i32 %68, 65536
  store i32 %69, ptr %67, align 8, !tbaa !206
  br label %72

70:                                               ; preds = %57
  %71 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %55) #29
  br label %72

72:                                               ; preds = %54, %61, %65, %29, %70, %38
  %73 = phi ptr [ null, %70 ], [ null, %38 ], [ %7, %29 ], [ %55, %65 ], [ %55, %61 ], [ null, %54 ]
  ret ptr %73
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOBuf_flush(ptr noundef %0) #4 !prof !392 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !206
  %5 = and i32 %4, 131072
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %46, label %7, !prof !439

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !387
  %10 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !388
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %13, label %37, !prof !424

13:                                               ; preds = %7, %33
  %14 = phi ptr [ %35, %33 ], [ %11, %7 ]
  %15 = phi ptr [ %34, %33 ], [ %9, %7 ]
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = tail call i64 @Perl_PerlIO_write(ptr noundef nonnull %2, ptr noundef %15, i64 noundef %18) #29
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %23, !prof !423

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
  %29 = load ptr, ptr %0, align 8, !tbaa !196
  %30 = getelementptr inbounds %struct._PerlIO, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !206
  %32 = or i32 %31, 2048
  store i32 %32, ptr %30, align 8, !tbaa !206
  tail call void @Perl_PerlIO_save_errno(ptr noundef nonnull %0) #29
  br label %37

33:                                               ; preds = %21, %25
  %34 = phi ptr [ %22, %21 ], [ %15, %25 ]
  %35 = load ptr, ptr %10, align 8, !tbaa !388
  %36 = icmp ult ptr %34, %35
  br i1 %36, label %13, label %37, !prof !440

37:                                               ; preds = %33, %7, %28
  %38 = phi ptr [ %15, %28 ], [ %9, %7 ], [ %34, %33 ]
  %39 = phi i32 [ -1, %28 ], [ 0, %7 ], [ 0, %33 ]
  %40 = ptrtoint ptr %38 to i64
  %41 = ptrtoint ptr %9 to i64
  %42 = sub i64 %40, %41
  %43 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 4
  %44 = load i64, ptr %43, align 8, !tbaa !343
  %45 = add nsw i64 %42, %44
  store i64 %45, ptr %43, align 8, !tbaa !343
  br label %80

46:                                               ; preds = %1
  %47 = and i32 %4, 262144
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %80, label %49, !prof !441

49:                                               ; preds = %46
  %50 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %51 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !388
  %53 = ptrtoint ptr %52 to i64
  %54 = ptrtoint ptr %50 to i64
  %55 = sub i64 %53, %54
  %56 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 4
  %57 = load i64, ptr %56, align 8, !tbaa !343
  %58 = add nsw i64 %55, %57
  store i64 %58, ptr %56, align 8, !tbaa !343
  %59 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !390
  %61 = icmp ult ptr %52, %60
  br i1 %61, label %62, label %80, !prof !442

62:                                               ; preds = %49
  %63 = load ptr, ptr %2, align 8, !tbaa !196
  %64 = icmp eq ptr %63, null
  br i1 %64, label %75, label %65, !prof !349

65:                                               ; preds = %62
  %66 = tail call i32 @Perl_PerlIO_seek(ptr noundef nonnull %2, i64 noundef %58, i32 noundef 0) #29
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68, !prof !411

68:                                               ; preds = %65
  %69 = load ptr, ptr %51, align 8, !tbaa !388
  %70 = load i64, ptr %56, align 8, !tbaa !343
  %71 = ptrtoint ptr %69 to i64
  br label %75

72:                                               ; preds = %65
  %73 = load ptr, ptr %0, align 8, !tbaa !196
  %74 = tail call i64 @Perl_PerlIO_tell(ptr noundef %73) #29
  store i64 %74, ptr %56, align 8, !tbaa !343
  br label %80

75:                                               ; preds = %68, %62
  %76 = phi i64 [ %71, %68 ], [ %53, %62 ]
  %77 = phi i64 [ %70, %68 ], [ %58, %62 ]
  %78 = sub i64 %54, %76
  %79 = add i64 %78, %77
  store i64 %79, ptr %56, align 8, !tbaa !343
  br label %102

80:                                               ; preds = %49, %72, %46, %37
  %81 = phi ptr [ %2, %37 ], [ %2, %46 ], [ %2, %49 ], [ %73, %72 ]
  %82 = phi i32 [ %39, %37 ], [ 0, %46 ], [ 0, %49 ], [ 0, %72 ]
  %83 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !387
  %85 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  store ptr %84, ptr %85, align 8, !tbaa !390
  %86 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  store ptr %84, ptr %86, align 8, !tbaa !388
  %87 = load ptr, ptr %0, align 8, !tbaa !196
  %88 = getelementptr inbounds %struct._PerlIO, ptr %87, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !206
  %90 = and i32 %89, -393217
  store i32 %90, ptr %88, align 8, !tbaa !206
  %91 = icmp eq ptr %81, null
  br i1 %91, label %99, label %92, !prof !443

92:                                               ; preds = %80
  %93 = load ptr, ptr %81, align 8, !tbaa !196
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95, !prof !443

95:                                               ; preds = %92
  %96 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %81) #29
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98, !prof !444

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98, %95, %92, %80
  %100 = phi i32 [ -1, %98 ], [ %82, %95 ], [ %82, %92 ], [ %82, %80 ]
  %101 = sext i32 %100 to i64
  br label %102

102:                                              ; preds = %75, %99
  %103 = phi i64 [ %101, %99 ], [ 0, %75 ]
  ret i64 %103
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOBuf_fill(ptr noundef %0) #4 !prof !333 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %87, !prof !415

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !206
  %9 = and i32 %8, 8388608
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !415

11:                                               ; preds = %5
  tail call void @PerlIOBase_flush_linebuf() #29
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !387
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19, !prof !334

16:                                               ; preds = %12
  %17 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %18 = load ptr, ptr %13, align 8, !tbaa !387
  br label %19

19:                                               ; preds = %12, %16
  %20 = phi ptr [ %14, %12 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !390
  %22 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  store ptr %20, ptr %22, align 8, !tbaa !388
  %23 = load ptr, ptr %2, align 8, !tbaa !196
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30, !prof !334

25:                                               ; preds = %19
  %26 = load ptr, ptr %0, align 8, !tbaa !196
  %27 = getelementptr inbounds %struct._PerlIO, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !206
  %29 = or i32 %28, 256
  store i32 %29, ptr %27, align 8, !tbaa !206
  br label %87

30:                                               ; preds = %19
  %31 = tail call i32 @PerlIO_fast_gets(ptr noundef nonnull %2) #29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %60, label %33, !prof !415

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
  %55 = load i64, ptr %54, align 8, !tbaa !389
  %56 = tail call i64 @llvm.smin.i64(i64 %52, i64 %55)
  %57 = load ptr, ptr %13, align 8, !tbaa !387
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %53, i64 %56, i1 false)
  %58 = getelementptr inbounds i8, ptr %53, i64 %56
  %59 = sub nsw i64 %52, %56
  tail call void @Perl_PerlIO_set_ptrcnt(ptr noundef nonnull %2, ptr noundef %58, i64 noundef %59) #29
  br label %64

60:                                               ; preds = %30
  %61 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 5
  %62 = load i64, ptr %61, align 8, !tbaa !389
  %63 = tail call i64 @Perl_PerlIO_read(ptr noundef nonnull %2, ptr noundef %20, i64 noundef %62) #29
  br label %64

64:                                               ; preds = %51, %60
  %65 = phi i64 [ %56, %51 ], [ %63, %60 ]
  %66 = icmp slt i64 %65, 1
  br i1 %66, label %67, label %80, !prof !445

67:                                               ; preds = %48, %64
  %68 = phi i64 [ %65, %64 ], [ %49, %48 ]
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75, !prof !446

70:                                               ; preds = %45, %67
  %71 = load ptr, ptr %0, align 8, !tbaa !196
  %72 = getelementptr inbounds %struct._PerlIO, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !206
  %74 = or i32 %73, 256
  store i32 %74, ptr %72, align 8, !tbaa !206
  br label %87

75:                                               ; preds = %67
  %76 = load ptr, ptr %0, align 8, !tbaa !196
  %77 = getelementptr inbounds %struct._PerlIO, ptr %76, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !206
  %79 = or i32 %78, 2048
  store i32 %79, ptr %77, align 8, !tbaa !206
  tail call void @Perl_PerlIO_save_errno(ptr noundef nonnull %0) #29
  br label %87

80:                                               ; preds = %64
  %81 = load ptr, ptr %13, align 8, !tbaa !387
  %82 = getelementptr inbounds i8, ptr %81, i64 %65
  store ptr %82, ptr %21, align 8, !tbaa !390
  %83 = load ptr, ptr %0, align 8, !tbaa !196
  %84 = getelementptr inbounds %struct._PerlIO, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !206
  %86 = or i32 %85, 262144
  store i32 %86, ptr %84, align 8, !tbaa !206
  br label %87

87:                                               ; preds = %70, %75, %1, %80, %25
  %88 = phi i64 [ 0, %80 ], [ -1, %25 ], [ -1, %1 ], [ -1, %75 ], [ -1, %70 ]
  ret i64 %88
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 !prof !333 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %16, label %5, !prof !334

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !334

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.PerlIOBuf, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !388
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14, !prof !334

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
define dso_local i64 @PerlIOBuf_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 !prof !447 {
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !387
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11, !prof !448

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %10 = load ptr, ptr %0, align 8, !tbaa !196
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi ptr [ %10, %8 ], [ %4, %3 ]
  %13 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !206
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %110, label %17, !prof !449

17:                                               ; preds = %11
  %18 = and i32 %14, 262144
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20, !prof !450

20:                                               ; preds = %17
  %21 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %110

23:                                               ; preds = %20
  %24 = load ptr, ptr %0, align 8, !tbaa !196
  %25 = getelementptr inbounds %struct._PerlIO, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !206
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i32 [ %26, %23 ], [ %14, %17 ]
  %29 = and i32 %28, 524288
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31, !prof !450

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %1, i64 %2
  br label %33

33:                                               ; preds = %36, %31
  %34 = phi ptr [ %32, %31 ], [ %37, %36 ]
  %35 = icmp ugt ptr %34, %1
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds i8, ptr %34, i64 -1
  %38 = load i8, ptr %37, align 1, !tbaa !194
  %39 = icmp eq i8 %38, 10
  br i1 %39, label %40, label %33, !llvm.loop !451

40:                                               ; preds = %36, %33, %27
  %41 = phi ptr [ %1, %27 ], [ %34, %33 ], [ %34, %36 ]
  %42 = icmp eq i64 %2, 0
  br i1 %42, label %103, label %43, !prof !452

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 5
  %45 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 3
  br label %46

46:                                               ; preds = %43, %97
  %47 = phi i64 [ 0, %43 ], [ %89, %97 ]
  %48 = phi ptr [ %1, %43 ], [ %88, %97 ]
  %49 = phi i64 [ %2, %43 ], [ %87, %97 ]
  %50 = load i64, ptr %44, align 8, !tbaa !389
  %51 = load ptr, ptr %45, align 8, !tbaa !388
  %52 = load ptr, ptr %5, align 8, !tbaa !387
  %53 = ptrtoint ptr %51 to i64
  %54 = ptrtoint ptr %52 to i64
  %55 = sub i64 %54, %53
  %56 = add i64 %55, %50
  %57 = tail call i64 @llvm.smin.i64(i64 %49, i64 %56)
  %58 = icmp slt i64 %49, 0
  %59 = select i1 %58, i64 %56, i64 %57
  %60 = icmp ugt ptr %41, %48
  br i1 %60, label %61, label %68, !prof !453

61:                                               ; preds = %46
  %62 = getelementptr inbounds i8, ptr %48, i64 %59
  %63 = icmp ugt ptr %41, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = ptrtoint ptr %41 to i64
  %66 = ptrtoint ptr %48 to i64
  %67 = sub i64 %65, %66
  br label %68

68:                                               ; preds = %64, %61, %46
  %69 = phi i64 [ %67, %64 ], [ %59, %61 ], [ %59, %46 ]
  %70 = load ptr, ptr %0, align 8, !tbaa !196
  %71 = getelementptr inbounds %struct._PerlIO, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !206
  %73 = or i32 %72, 131072
  store i32 %73, ptr %71, align 8, !tbaa !206
  %74 = icmp eq i64 %69, 0
  br i1 %74, label %85, label %75, !prof !453

75:                                               ; preds = %68
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %48, i64 %69, i1 false)
  %76 = sub i64 %49, %69
  %77 = getelementptr inbounds i8, ptr %48, i64 %69
  %78 = add i64 %69, %47
  %79 = load ptr, ptr %45, align 8, !tbaa !388
  %80 = getelementptr inbounds i8, ptr %79, i64 %69
  store ptr %80, ptr %45, align 8, !tbaa !388
  %81 = icmp eq ptr %77, %41
  br i1 %81, label %82, label %85, !prof !453

82:                                               ; preds = %75
  %83 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %84 = load ptr, ptr %45, align 8, !tbaa !388
  br label %85

85:                                               ; preds = %75, %82, %68
  %86 = phi ptr [ %84, %82 ], [ %80, %75 ], [ %51, %68 ]
  %87 = phi i64 [ %76, %82 ], [ %76, %75 ], [ %49, %68 ]
  %88 = phi ptr [ %41, %82 ], [ %77, %75 ], [ %48, %68 ]
  %89 = phi i64 [ %78, %82 ], [ %78, %75 ], [ %47, %68 ]
  %90 = load ptr, ptr %5, align 8, !tbaa !387
  %91 = load i64, ptr %44, align 8, !tbaa !389
  %92 = getelementptr inbounds i8, ptr %90, i64 %91
  %93 = icmp ult ptr %86, %92
  br i1 %93, label %97, label %94, !prof !454

94:                                               ; preds = %85
  %95 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %110, label %97, !prof !455, !llvm.loop !456

97:                                               ; preds = %94, %85
  %98 = icmp eq i64 %87, 0
  br i1 %98, label %99, label %46, !prof !457

99:                                               ; preds = %97
  %100 = load ptr, ptr %0, align 8, !tbaa !196
  %101 = getelementptr inbounds %struct._PerlIO, ptr %100, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !206
  br label %103

103:                                              ; preds = %99, %40
  %104 = phi i32 [ %28, %40 ], [ %102, %99 ]
  %105 = phi i64 [ 0, %40 ], [ %89, %99 ]
  %106 = and i32 %104, 65536
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108, !prof !450

108:                                              ; preds = %103
  %109 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  br label %110

110:                                              ; preds = %94, %103, %108, %20, %11
  %111 = phi i64 [ 0, %11 ], [ 0, %20 ], [ %105, %108 ], [ %105, %103 ], [ -1, %94 ]
  ret i64 %111
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #4 !prof !189 {
  %4 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0) #29
  %5 = sext i32 %4 to i64
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !196
  %9 = getelementptr inbounds %struct._PerlIO, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !206
  %11 = and i32 %10, -257
  store i32 %11, ptr %9, align 8, !tbaa !206
  %12 = tail call i32 @Perl_PerlIO_seek(ptr noundef %8, i64 noundef %1, i32 noundef %2) #29
  %13 = sext i32 %12 to i64
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = load ptr, ptr %0, align 8, !tbaa !196
  %17 = tail call i64 @Perl_PerlIO_tell(ptr noundef %16) #29
  %18 = getelementptr inbounds %struct.PerlIOBuf, ptr %16, i64 0, i32 4
  store i64 %17, ptr %18, align 8, !tbaa !343
  br label %19

19:                                               ; preds = %7, %15, %3
  %20 = phi i64 [ 0, %15 ], [ %13, %7 ], [ %5, %3 ]
  ret i64 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_tell(ptr noundef %0) #4 !prof !458 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !343
  %5 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !206
  %7 = and i32 %6, 8192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9, !prof !459

9:                                                ; preds = %1
  %10 = and i32 %6, 131072
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  %14 = load ptr, ptr %0, align 8, !tbaa !196
  %15 = tail call i64 @Perl_PerlIO_tell(ptr noundef %14) #29
  store i64 %15, ptr %3, align 8, !tbaa !343
  br label %16

16:                                               ; preds = %12, %9, %1
  %17 = phi i64 [ %15, %12 ], [ %4, %9 ], [ %4, %1 ]
  %18 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !387
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21, !prof !460

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !388
  %24 = ptrtoint ptr %23 to i64
  %25 = ptrtoint ptr %19 to i64
  %26 = sub i64 %17, %25
  %27 = add i64 %26, %24
  br label %28

28:                                               ; preds = %21, %16
  %29 = phi i64 [ %27, %21 ], [ %17, %16 ]
  ret i64 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOBuf_popped(ptr nocapture noundef readonly %0) #4 !prof !195 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !387
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 6
  %7 = icmp eq ptr %4, %6
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9, !prof !461

9:                                                ; preds = %1
  tail call void @Perl_safesysfree(ptr noundef nonnull %4) #28
  br label %10

10:                                               ; preds = %9, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %11 = load ptr, ptr %0, align 8, !tbaa !196
  %12 = getelementptr inbounds %struct._PerlIO, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !206
  %14 = and i32 %13, -393217
  store i32 %14, ptr %12, align 8, !tbaa !206
  ret i64 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_close(ptr noundef %0) #4 !prof !195 {
  %2 = tail call i64 @PerlIOBase_close(ptr noundef %0) #29
  %3 = load ptr, ptr %0, align 8, !tbaa !196
  %4 = getelementptr inbounds %struct.PerlIOBuf, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !387
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.PerlIOBuf, ptr %3, i64 0, i32 6
  %8 = icmp eq ptr %5, %7
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %11, label %10, !prof !462

10:                                               ; preds = %1
  tail call void @Perl_safesysfree(ptr noundef nonnull %5) #28
  br label %11

11:                                               ; preds = %10, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %12 = load ptr, ptr %0, align 8, !tbaa !196
  %13 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !206
  %15 = and i32 %14, -393217
  store i32 %15, ptr %13, align 8, !tbaa !206
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOBuf_get_ptr(ptr noundef %0) #4 !prof !378 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !387
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !379

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !388
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_get_cnt(ptr noundef %0) #4 !prof !380 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !387
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !prof !463

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %8 = load ptr, ptr %0, align 8, !tbaa !196
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %2, %1 ]
  %11 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !206
  %13 = and i32 %12, 262144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15, !prof !464

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !390
  %18 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !388
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  br label %23

23:                                               ; preds = %9, %15
  %24 = phi i64 [ %22, %15 ], [ 0, %9 ]
  ret i64 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOBuf_get_base(ptr nocapture noundef readonly %0) #4 !prof !375 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !387
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %21, !prof !465

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !389
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11, !prof !466

10:                                               ; preds = %6
  store i64 8192, ptr %7, align 8, !tbaa !389
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi i64 [ 8192, %10 ], [ %8, %6 ]
  %13 = tail call ptr @Perl_safesyscalloc(i64 noundef %12, i64 noundef 1) #28
  store ptr %13, ptr %3, align 8, !tbaa !387
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17, !prof !467

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 6
  store ptr %16, ptr %3, align 8, !tbaa !387
  store i64 8, ptr %7, align 8, !tbaa !389
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ %13, %11 ]
  %19 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !388
  %20 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  store ptr %18, ptr %20, align 8, !tbaa !390
  br label %21

21:                                               ; preds = %17, %1
  %22 = phi ptr [ %18, %17 ], [ %4, %1 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOBuf_bufsiz(ptr noundef %0) #4 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !387
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %8 = load ptr, ptr %3, align 8, !tbaa !387
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %11 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !390
  %13 = ptrtoint ptr %12 to i64
  %14 = ptrtoint ptr %10 to i64
  %15 = sub i64 %13, %14
  ret i64 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOBuf_set_ptrcnt(ptr noundef %0, ptr noundef %1, i64 %2) #4 !prof !378 {
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !387
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !379

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 3
  store ptr %1, ptr %11, align 8, !tbaa !388
  %12 = load ptr, ptr %0, align 8, !tbaa !196
  %13 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !206
  %15 = or i32 %14, 262144
  store i32 %15, ptr %13, align 8, !tbaa !206
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIOBuf_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #4 !prof !189 {
  %5 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #29
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOPending_fill(ptr noundef %0) #4 !prof !189 {
  %2 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0) #29
  ret i64 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOPending_close(ptr noundef %0) #4 !prof !189 {
  %2 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0) #29
  %3 = tail call i32 @Perl_PerlIO_close(ptr noundef %0) #29
  %4 = sext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOPending_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #4 !prof !189 {
  %4 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0) #29
  %5 = tail call i32 @Perl_PerlIO_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #29
  %6 = sext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOPending_flush(ptr noundef %0) #4 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !387
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 6
  %7 = icmp eq ptr %4, %6
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @Perl_safesysfree(ptr noundef nonnull %4) #28
  store ptr null, ptr %3, align 8, !tbaa !387
  br label %10

10:                                               ; preds = %9, %1
  tail call void @PerlIO_pop(ptr noundef nonnull %0) #29
  ret i64 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOPending_set_ptrcnt(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 !prof !189 {
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
define dso_local noundef i64 @PerlIOPending_pushed(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #11 !prof !189 {
  %5 = tail call i64 @PerlIOBase_pushed(ptr noundef %0, ptr noundef %1, ptr poison, ptr noundef %3) #29, !range !407
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !206
  %9 = and i32 %8, -4227073
  %10 = load ptr, ptr %6, align 8, !tbaa !203
  %11 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !206
  %13 = and i32 %12, 4227072
  %14 = or disjoint i32 %13, %9
  store i32 %14, ptr %7, align 8, !tbaa !206
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOPending_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 !prof !189 {
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
define dso_local noundef i64 @PerlIOCrlf_pushed(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #4 !prof !189 {
  %5 = load ptr, ptr %0, align 8, !tbaa !196
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !206
  %8 = or i32 %7, 16384
  store i32 %8, ptr %6, align 8, !tbaa !206
  %9 = tail call i64 @PerlIOBuf_pushed(ptr noundef nonnull %0, ptr noundef %1, ptr poison, ptr noundef %3) #29, !range !407
  %10 = load ptr, ptr %0, align 8, !tbaa !196
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %10, align 8, !tbaa !196
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._PerlIO, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !207
  %18 = icmp eq ptr %17, @PerlIO_crlf
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._PerlIO, ptr %13, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !206
  %22 = and i32 %21, 16384
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = or disjoint i32 %21, 16384
  store i32 %25, ptr %20, align 8, !tbaa !206
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
define internal fastcc void @S_inherit_utf8_flag(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !189 !PGOFuncName !468 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !196
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !206
  %10 = and i32 %9, 32768
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !206
  %15 = or i32 %14, 32768
  store i32 %15, ptr %13, align 8, !tbaa !206
  br label %16

16:                                               ; preds = %7, %12, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOCrlf_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 !prof !189 {
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct.PerlIOCrlf, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !469
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  store i8 13, ptr %6, align 1, !tbaa !194
  store ptr null, ptr %5, align 8, !tbaa !469
  %9 = load ptr, ptr %0, align 8, !tbaa !196
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %4, %3 ]
  %12 = getelementptr inbounds %struct._PerlIO, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !206
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
  %26 = load ptr, ptr %25, align 8, !tbaa !387
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %30 = load ptr, ptr %25, align 8, !tbaa !387
  %31 = icmp eq ptr %30, null
  br i1 %31, label %80, label %32

32:                                               ; preds = %24, %28
  %33 = phi ptr [ %30, %28 ], [ %26, %24 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !196
  %35 = getelementptr inbounds %struct._PerlIO, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !206
  %37 = and i32 %36, 262144
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.PerlIOBuf, ptr %11, i64 0, i32 5
  %41 = load i64, ptr %40, align 8, !tbaa !389
  %42 = getelementptr inbounds i8, ptr %33, i64 %41
  %43 = getelementptr inbounds %struct.PerlIOBuf, ptr %11, i64 0, i32 3
  store ptr %42, ptr %43, align 8, !tbaa !388
  %44 = getelementptr inbounds %struct.PerlIOBuf, ptr %11, i64 0, i32 2
  store ptr %42, ptr %44, align 8, !tbaa !390
  %45 = load ptr, ptr %0, align 8, !tbaa !196
  %46 = getelementptr inbounds %struct._PerlIO, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !206
  %48 = or i32 %47, 262144
  store i32 %48, ptr %46, align 8, !tbaa !206
  %49 = getelementptr inbounds %struct.PerlIOBuf, ptr %11, i64 0, i32 4
  %50 = load i64, ptr %49, align 8, !tbaa !343
  %51 = sub i64 %50, %41
  store i64 %51, ptr %49, align 8, !tbaa !343
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
  %60 = load ptr, ptr %55, align 8, !tbaa !388
  %61 = load ptr, ptr %25, align 8, !tbaa !387
  %62 = icmp ugt ptr %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %56
  %64 = getelementptr inbounds i8, ptr %59, i64 -1
  %65 = load i8, ptr %64, align 1, !tbaa !194
  %66 = icmp eq i8 %65, 10
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %60, i64 -2
  %69 = icmp ult ptr %68, %61
  %70 = getelementptr inbounds i8, ptr %60, i64 -1
  store ptr %70, ptr %55, align 8, !tbaa !388
  store i8 10, ptr %70, align 1, !tbaa !194
  br i1 %69, label %76, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %55, align 8, !tbaa !388
  %73 = getelementptr inbounds i8, ptr %72, i64 -1
  store ptr %73, ptr %55, align 8, !tbaa !388
  store i8 13, ptr %73, align 1, !tbaa !194
  br label %76

74:                                               ; preds = %63
  %75 = getelementptr inbounds i8, ptr %60, i64 -1
  store ptr %75, ptr %55, align 8, !tbaa !388
  store i8 %65, ptr %75, align 1, !tbaa !194
  br label %76

76:                                               ; preds = %67, %71, %74
  %77 = add nuw nsw i64 %57, 1
  %78 = add i64 %58, -1
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %88, label %56, !llvm.loop !471

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
define dso_local i64 @PerlIOCrlf_get_cnt(ptr noundef %0) #4 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !387
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %8 = load ptr, ptr %0, align 8, !tbaa !196
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %2, %1 ]
  %11 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !206
  %13 = and i32 %12, 262144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %95, label %15

15:                                               ; preds = %9
  %16 = and i32 %12, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %79, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.PerlIOCrlf, ptr %10, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !469
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i8, ptr %20, align 1, !tbaa !194
  %24 = icmp eq i8 %23, 13
  br i1 %24, label %28, label %79

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !388
  br label %28

28:                                               ; preds = %22, %25
  %29 = phi ptr [ %27, %25 ], [ %20, %22 ]
  %30 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !390
  br label %32

32:                                               ; preds = %56, %28
  %33 = phi ptr [ %31, %28 ], [ %54, %56 ]
  %34 = phi ptr [ %29, %28 ], [ %53, %56 ]
  %35 = icmp ult ptr %34, %33
  br i1 %35, label %36, label %79

36:                                               ; preds = %32
  %37 = ptrtoint ptr %33 to i64
  %38 = ptrtoint ptr %34 to i64
  %39 = sub i64 %37, %38
  %40 = getelementptr i8, ptr %34, i64 %39
  br label %41

41:                                               ; preds = %36, %48
  %42 = phi ptr [ %49, %48 ], [ %34, %36 ]
  %43 = load i8, ptr %42, align 1, !tbaa !194
  %44 = icmp eq i8 %43, 13
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %47 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 5
  br label %51

48:                                               ; preds = %41
  %49 = getelementptr inbounds i8, ptr %42, i64 1
  %50 = icmp eq ptr %49, %40
  br i1 %50, label %79, label %41, !llvm.loop !472

51:                                               ; preds = %45, %63
  %52 = phi ptr [ %73, %63 ], [ %42, %45 ]
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  %54 = load ptr, ptr %30, align 8, !tbaa !390
  %55 = icmp ult ptr %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i8, ptr %53, align 1, !tbaa !194
  %58 = icmp eq i8 %57, 10
  br i1 %58, label %59, label %32

59:                                               ; preds = %56
  store i8 10, ptr %52, align 1, !tbaa !194
  store ptr %52, ptr %19, align 8, !tbaa !469
  br label %79

60:                                               ; preds = %51
  %61 = load ptr, ptr %46, align 8, !tbaa !388
  %62 = icmp ult ptr %61, %52
  br i1 %62, label %75, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %64, ptr %46, align 8, !tbaa !388
  %65 = load ptr, ptr %3, align 8, !tbaa !387
  %66 = getelementptr inbounds i8, ptr %65, i64 1
  store ptr %66, ptr %3, align 8, !tbaa !387
  %67 = load i64, ptr %47, align 8, !tbaa !389
  %68 = add i64 %67, -1
  store i64 %68, ptr %47, align 8, !tbaa !389
  %69 = tail call i32 @Perl_PerlIO_fill(ptr noundef nonnull %0) #29
  %70 = load i64, ptr %47, align 8, !tbaa !389
  %71 = add i64 %70, 1
  store i64 %71, ptr %47, align 8, !tbaa !389
  %72 = load ptr, ptr %3, align 8, !tbaa !387
  %73 = getelementptr inbounds i8, ptr %72, i64 -1
  store ptr %73, ptr %3, align 8, !tbaa !387
  store ptr %73, ptr %46, align 8, !tbaa !388
  store i8 13, ptr %73, align 1, !tbaa !194
  %74 = icmp eq i32 %69, 0
  br i1 %74, label %51, label %79

75:                                               ; preds = %60
  store ptr %52, ptr %19, align 8, !tbaa !469
  %76 = ptrtoint ptr %52 to i64
  %77 = ptrtoint ptr %61 to i64
  %78 = sub i64 %76, %77
  br label %95

79:                                               ; preds = %32, %48, %63, %59, %22, %15
  %80 = getelementptr inbounds %struct.PerlIOCrlf, ptr %10, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !469
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds i8, ptr %81, i64 1
  br label %88

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !390
  br label %88

88:                                               ; preds = %85, %83
  %89 = phi ptr [ %84, %83 ], [ %87, %85 ]
  %90 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !388
  %92 = ptrtoint ptr %89 to i64
  %93 = ptrtoint ptr %91 to i64
  %94 = sub i64 %92, %93
  br label %95

95:                                               ; preds = %75, %9, %88
  %96 = phi i64 [ %94, %88 ], [ %78, %75 ], [ 0, %9 ]
  ret i64 %96
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOCrlf_set_ptrcnt(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 !prof !189 {
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !387
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  br label %10

10:                                               ; preds = %8, %3
  %11 = icmp eq ptr %1, null
  %12 = getelementptr inbounds %struct.PerlIOCrlf, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !469
  br i1 %11, label %14, label %32

14:                                               ; preds = %10
  %15 = icmp eq ptr %13, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !390
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i8, ptr %13, align 1, !tbaa !194
  %23 = icmp eq i8 %22, 13
  %24 = select i1 %23, ptr %13, ptr %17
  br label %28

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !390
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
  store i8 13, ptr %13, align 1, !tbaa !194
  store ptr null, ptr %38, align 8, !tbaa !469
  %39 = getelementptr inbounds i8, ptr %33, i64 1
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi ptr [ %39, %37 ], [ %33, %32 ]
  %42 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !388
  %43 = load ptr, ptr %0, align 8, !tbaa !196
  %44 = getelementptr inbounds %struct._PerlIO, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !206
  %46 = or i32 %45, 262144
  store i32 %46, ptr %44, align 8, !tbaa !206
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOCrlf_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 !prof !189 {
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !206
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i64 @PerlIOBuf_write(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #29
  br label %89

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %1, i64 %2
  %13 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !387
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0) #29
  %18 = load ptr, ptr %0, align 8, !tbaa !196
  %19 = getelementptr inbounds %struct._PerlIO, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !206
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
  %32 = load ptr, ptr %13, align 8, !tbaa !387
  %33 = load i64, ptr %28, align 8, !tbaa !389
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = load ptr, ptr %0, align 8, !tbaa !196
  %36 = getelementptr inbounds %struct._PerlIO, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !206
  %38 = or i32 %37, 131072
  store i32 %38, ptr %36, align 8, !tbaa !206
  br label %39

39:                                               ; preds = %64, %30
  %40 = phi ptr [ %31, %30 ], [ %65, %64 ]
  %41 = icmp ult ptr %40, %12
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load ptr, ptr %29, align 8, !tbaa !388
  %44 = icmp ult ptr %43, %34
  br i1 %44, label %45, label %71

45:                                               ; preds = %42
  %46 = load i8, ptr %40, align 1, !tbaa !194
  %47 = icmp eq i8 %46, 10
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, ptr %43, i64 2
  %50 = icmp ugt ptr %49, %34
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %52, ptr %29, align 8, !tbaa !388
  store i8 13, ptr %43, align 1, !tbaa !194
  %53 = load ptr, ptr %29, align 8, !tbaa !388
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %54, ptr %29, align 8, !tbaa !388
  store i8 10, ptr %53, align 1, !tbaa !194
  %55 = getelementptr inbounds i8, ptr %40, i64 1
  %56 = load ptr, ptr %0, align 8, !tbaa !196
  %57 = getelementptr inbounds %struct._PerlIO, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !206
  %59 = and i32 %58, 524288
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %68

61:                                               ; preds = %45
  %62 = getelementptr inbounds i8, ptr %40, i64 1
  %63 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %63, ptr %29, align 8, !tbaa !388
  store i8 %46, ptr %43, align 1, !tbaa !194
  br label %64

64:                                               ; preds = %51, %61
  %65 = phi ptr [ %55, %51 ], [ %62, %61 ]
  %66 = load ptr, ptr %29, align 8, !tbaa !388
  %67 = icmp ult ptr %66, %34
  br i1 %67, label %39, label %68, !llvm.loop !473

68:                                               ; preds = %64, %51, %48
  %69 = phi ptr [ %40, %48 ], [ %55, %51 ], [ %65, %64 ]
  %70 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %0) #29
  br label %71

71:                                               ; preds = %39, %42, %68
  %72 = phi ptr [ %69, %68 ], [ %40, %42 ], [ %40, %39 ]
  %73 = icmp ult ptr %72, %12
  br i1 %73, label %30, label %74, !llvm.loop !474

74:                                               ; preds = %71
  %75 = load ptr, ptr %0, align 8, !tbaa !196
  %76 = getelementptr inbounds %struct._PerlIO, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !206
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
define dso_local noundef i64 @PerlIOCrlf_flush(ptr noundef %0) #4 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.PerlIOCrlf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !469
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8 13, ptr %4, align 1, !tbaa !194
  store ptr null, ptr %3, align 8, !tbaa !469
  br label %7

7:                                                ; preds = %6, %1
  %8 = tail call i64 @PerlIOBuf_flush(ptr noundef nonnull %0) #29, !range !407
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOCrlf_binmode(ptr noundef %0) #4 !prof !189 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !206
  %5 = and i32 %4, 16384
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = and i32 %4, -16385
  store i32 %8, ptr %3, align 8, !tbaa !206
  tail call void @PerlIO_pop(ptr noundef nonnull %0) #29
  br label %9

9:                                                ; preds = %7, %1
  ret i64 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_PerlIO_stdin() local_unnamed_addr #4 !prof !475 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !196
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !476

3:                                                ; preds = %0
  tail call void @PerlIO_stdstreams() #29
  %4 = load ptr, ptr @PL_perlio, align 8, !tbaa !196
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 1
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_PerlIO_stdout() local_unnamed_addr #4 !prof !477 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !196
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !478

3:                                                ; preds = %0
  tail call void @PerlIO_stdstreams() #29
  %4 = load ptr, ptr @PL_perlio, align 8, !tbaa !196
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 2
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_PerlIO_stderr() local_unnamed_addr #4 !prof !213 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !196
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !364

3:                                                ; preds = %0
  tail call void @PerlIO_stdstreams() #29
  %4 = load ptr, ptr @PL_perlio, align 8, !tbaa !196
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 3
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @PerlIO_getname(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 !prof !189 {
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.60) #28
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_open(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !189 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %4 = tail call ptr @Perl_newSVpv(ptr noundef %0, i64 noundef 0) #28
  %5 = tail call ptr @Perl_sv_2mortal(ptr noundef %4) #28
  store ptr %5, ptr %3, align 8, !tbaa !196
  %6 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef %1, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIO_reopen(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !189 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  %5 = tail call ptr @Perl_newSVpv(ptr noundef %0, i64 noundef 0) #28
  %6 = tail call ptr @Perl_sv_2mortal(ptr noundef %5) #28
  store ptr %6, ptr %4, align 8, !tbaa !196
  %7 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef %1, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_getc(ptr noundef %0) local_unnamed_addr #4 !prof !189 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #31
  %3 = call i64 @Perl_PerlIO_read(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 1) #29
  %4 = icmp eq i64 %3, 1
  %5 = load i8, ptr %2, align 1
  %6 = zext i8 %5 to i32
  %7 = select i1 %4, i32 %6, i32 -1, !prof !479
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #31
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PerlIO_ungetc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !189 {
  %3 = alloca i8, align 1
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #31
  %6 = trunc i32 %1 to i8
  store i8 %6, ptr %3, align 1, !tbaa !194
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
define dso_local i32 @PerlIO_putc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !189 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #31
  %4 = trunc i32 %1 to i8
  store i8 %4, ptr %3, align 1, !tbaa !194
  %5 = call i64 @Perl_PerlIO_write(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 1) #29
  %6 = trunc i64 %5 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #31
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_puts(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !189 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %4 = tail call i64 @Perl_PerlIO_write(ptr noundef %0, ptr noundef %1, i64 noundef %3) #29
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIO_rewind(ptr noundef %0) local_unnamed_addr #4 !prof !189 {
  %2 = tail call i32 @Perl_PerlIO_seek(ptr noundef %0, i64 noundef 0, i32 noundef 0) #29
  tail call void @Perl_PerlIO_clearerr(ptr noundef %0) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !189 {
  %4 = alloca i64, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #31
  call void @llvm.va_copy(ptr nonnull %5, ptr %2)
  %6 = call ptr @Perl_vnewSVpvf(ptr noundef %1, ptr noundef nonnull %5) #28
  call void @llvm.va_end(ptr nonnull %5)
  %7 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !279
  %9 = and i32 %8, 2098176
  %10 = icmp eq i32 %9, 1024
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !tbaa !280
  %13 = getelementptr inbounds %struct.xpv, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !281
  store i64 %14, ptr %4, align 8, !tbaa !283
  %15 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  br label %20

17:                                               ; preds = %3
  %18 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %6, ptr noundef nonnull %4, i32 noundef 34) #28
  %19 = load i64, ptr %4, align 8, !tbaa !283
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
define dso_local i32 @PerlIO_printf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #4 !prof !189 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #31
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @PerlIO_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #29
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #31
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_stdoutf(ptr noundef %0, ...) local_unnamed_addr #4 !prof !189 {
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
declare noalias noundef ptr @tmpfile64() local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Perl_PerlIO_restore_errno(ptr noundef readonly %0) local_unnamed_addr #9 !prof !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !391
  %9 = tail call ptr @__errno_location() #30
  store i32 %8, ptr %9, align 4, !tbaa !190
  br label %10

10:                                               ; preds = %1, %3, %6
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_refcounted_he_fetch_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_setpos(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !189 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !279
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
  %22 = load ptr, ptr %1, align 8, !tbaa !280
  %23 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !281
  store i64 %24, ptr %3, align 8, !tbaa !283
  %25 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !194
  br label %30

27:                                               ; preds = %18
  %28 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef 2) #28
  %29 = load i64, ptr %3, align 8, !tbaa !283
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
  %36 = load i64, ptr %32, align 8, !tbaa !283
  %37 = call i32 @Perl_PerlIO_seek(ptr noundef nonnull %0, i64 noundef %36, i32 noundef 0) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  br label %40

38:                                               ; preds = %34, %16, %11
  %39 = tail call ptr @__errno_location() #30
  store i32 22, ptr %39, align 4, !tbaa !190
  br label %40

40:                                               ; preds = %35, %38
  %41 = phi i32 [ %37, %35 ], [ -1, %38 ]
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerlIO_getpos(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !189 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %4 = tail call i64 @Perl_PerlIO_tell(ptr noundef %0) #29
  store i64 %4, ptr %3, align 8, !tbaa !283
  call void @Perl_sv_setpvn(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 8) #28
  %5 = load i64, ptr %3, align 8, !tbaa !283
  %6 = icmp eq i64 %5, -1
  %7 = sext i1 %6 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  ret i32 %7
}

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @Perl_noperl_die(ptr nocapture noundef readonly %0, ...) local_unnamed_addr #22 !prof !189 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #31
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !196
  %4 = call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %2) #35
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef 1) #34
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #18

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #23

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: optsize
declare void @Perl_croak_no_mem() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @Perl_save_destructor_x(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @S_lockcnt_dec(ptr nocapture noundef readonly %0) #10 !prof !189 !PGOFuncName !480 {
  %2 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !208
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !206
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 8, !tbaa !206
  ret void
}

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
attributes #13 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline nounwind optsize memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!188}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491971510}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523442, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 63, i32 4652}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!35 = !{ptr @PerlIO_allocate, ptr @Perl_safesyscalloc, i64 1}
!36 = !{ptr @PerlIO_cleantable, ptr @PerlIO_cleantable, i64 1}
!37 = !{ptr @PerlIO_cleantable, ptr @Perl_PerlIO_close, i64 2}
!38 = !{ptr @PerlIO_cleantable, ptr @Perl_safesysfree, i64 1}
!39 = !{ptr @Perl_PerlIO_close, ptr @PerlIO__close, i64 68}
!40 = !{ptr @Perl_PerlIO_close, ptr @PerlIO_pop, i64 133}
!41 = !{ptr @PerlIO_list_alloc, ptr @Perl_safesyscalloc, i64 65}
!42 = !{ptr @PerlIO_list_free, ptr @S_SvREFCNT_dec, i64 129}
!43 = !{ptr @PerlIO_list_free, ptr @Perl_safesysfree, i64 125}
!44 = !{ptr @S_SvREFCNT_dec, ptr @Perl_sv_free2, i64 1}
!45 = !{ptr @PerlIO_list_push, ptr @Perl_safesysrealloc, i64 1}
!46 = !{ptr @PerlIO_list_push, ptr @Perl_safesysmalloc, i64 64}
!47 = !{ptr @PerlIO_clone_list, ptr @PerlIO_list_alloc, i64 62}
!48 = !{ptr @PerlIO_clone_list, ptr @PerlIO_list_push, i64 123}
!49 = !{ptr @Perl_PerlIO_flush, ptr @__errno_location, i64 1}
!50 = !{ptr @Perl_PerlIO_flush, ptr @Perl_PerlIO_flush, i64 4}
!51 = !{ptr @PerlIO_pop, ptr @Perl_safesysfree, i64 133}
!52 = !{ptr @PerlIO_define_layer, ptr @PerlIO_list_alloc, i64 2}
!53 = !{ptr @PerlIO_define_layer, ptr @PerlIO_list_push, i64 8}
!54 = !{ptr @PerlIO_default_buffer, ptr @PerlIO_list_push, i64 1}
!55 = !{ptr @PerlIO_layer_fetch, ptr @Perl_croak, i64 1}
!56 = !{ptr @PerlIO_default_layers, ptr @PerlIO_list_alloc, i64 2}
!57 = !{ptr @PerlIO_default_layers, ptr @PerlIO_define_layer, i64 16}
!58 = !{ptr @PerlIO_default_layers, ptr @PerlIO_list_push, i64 2}
!59 = !{ptr @PerlIO_default_layers, ptr @PerlIO_default_buffer, i64 3}
!60 = !{ptr @Perl_boot_core_PerlIO, ptr @Perl_newXS, i64 2}
!61 = !{ptr @PerlIO_default_layer, ptr @PerlIO_default_layers, i64 68}
!62 = !{ptr @PerlIO_default_layer, ptr @PerlIO_layer_fetch, i64 68}
!63 = !{ptr @PerlIO_stdstreams, ptr @PerlIO_init_table, i64 1}
!64 = !{ptr @PerlIO_stdstreams, ptr @PerlIO_fdopen, i64 3}
!65 = !{ptr @PerlIO_init_table, ptr @Perl_safesyscalloc, i64 1}
!66 = !{ptr @PerlIO_push, ptr @Perl_croak, i64 2}
!67 = !{ptr @PerlIO_push, ptr @Perl_safesyscalloc, i64 134}
!68 = !{ptr @PerlIO_push, ptr @PerlIO_pop, i64 1}
!69 = !{ptr @PerlIO__close, ptr @PerlIOBase_close, i64 2}
!70 = !{ptr @PerlIO__close, ptr @__errno_location, i64 2}
!71 = !{ptr @PerlIOBase_close, ptr @Perl_PerlIO_flush, i64 66}
!72 = !{ptr @PerlIOBase_close, ptr @__errno_location, i64 2}
!73 = !{ptr @Perl_PerlIO_fileno, ptr @PerlIOBase_fileno, i64 2}
!74 = !{ptr @Perl_PerlIO_fileno, ptr @__errno_location, i64 2}
!75 = !{ptr @PerlIOBase_fileno, ptr @Perl_PerlIO_fileno, i64 136}
!76 = !{ptr @PerlIO_resolve_layers, ptr @PerlIO_default_layers, i64 68}
!77 = !{ptr @PerlIO_resolve_layers, ptr @PerlIO_stdstreams, i64 2}
!78 = !{ptr @PerlIO_resolve_layers, ptr @Perl_PerlIO_context_layers, i64 7}
!79 = !{ptr @PerlIO_resolve_layers, ptr @PerlIO_clone_list, i64 60}
!80 = !{ptr @PerlIO_resolve_layers, ptr @PerlIO_parse_layers, i64 61}
!81 = !{ptr @PerlIO_resolve_layers, ptr @PerlIO_list_free, i64 1}
!82 = !{ptr @Perl_PerlIO_context_layers, ptr @Perl_refcounted_he_fetch_pvn, i64 1}
!83 = !{ptr @PerlIO_openn, ptr @PerlIO_tmpfile, i64 1}
!84 = !{ptr @PerlIO_openn, ptr @PerlIO_list_alloc, i64 1}
!85 = !{ptr @PerlIO_openn, ptr @PerlIO_list_push, i64 19}
!86 = !{ptr @PerlIO_openn, ptr @S_SvREFCNT_dec, i64 19}
!87 = !{ptr @PerlIO_openn, ptr @PerlIO_resolve_layers, i64 66}
!88 = !{ptr @PerlIO_openn, ptr @PerlIO_layer_fetch, i64 67}
!89 = !{ptr @PerlIO_openn, ptr @PerlIO_apply_layera, i64 1}
!90 = !{ptr @PerlIO_openn, ptr @Perl_PerlIO_close, i64 1}
!91 = !{ptr @PerlIO_openn, ptr @PerlIO_list_free, i64 66}
!92 = !{ptr @Perl_PerlIO_read, ptr @PerlIOBase_read, i64 2}
!93 = !{ptr @Perl_PerlIO_read, ptr @__errno_location, i64 2}
!94 = !{ptr @PerlIOBase_read, ptr @__errno_location, i64 1}
!95 = !{ptr @PerlIOBase_read, ptr @Perl_PerlIO_save_errno, i64 1}
!96 = !{ptr @PerlIOBase_read, ptr @Perl_PerlIO_get_cnt, i64 1999}
!97 = !{ptr @PerlIOBase_read, ptr @Perl_PerlIO_get_ptr, i64 976}
!98 = !{ptr @PerlIOBase_read, ptr @Perl_PerlIO_set_ptrcnt, i64 976}
!99 = !{ptr @PerlIOBase_read, ptr @Perl_PerlIO_fill, i64 835}
!100 = !{ptr @Perl_PerlIO_write, ptr @__errno_location, i64 4}
!101 = !{ptr @Perl_PerlIO_seek, ptr @__errno_location, i64 4}
!102 = !{ptr @Perl_PerlIO_tell, ptr @__errno_location, i64 4}
!103 = !{ptr @Perl_PerlIO_fill, ptr @__errno_location, i64 4}
!104 = !{ptr @PerlIO_isutf8, ptr @__errno_location, i64 2}
!105 = !{ptr @Perl_PerlIO_error, ptr @PerlIOBase_error, i64 2}
!106 = !{ptr @Perl_PerlIO_error, ptr @__errno_location, i64 2}
!107 = !{ptr @Perl_PerlIO_clearerr, ptr @__errno_location, i64 1}
!108 = !{ptr @PerlIOBase_clearerr, ptr @Perl_PerlIO_clearerr, i64 1}
!109 = !{ptr @Perl_PerlIO_get_base, ptr @__errno_location, i64 4}
!110 = !{ptr @Perl_PerlIO_get_ptr, ptr @__errno_location, i64 4}
!111 = !{ptr @Perl_PerlIO_get_cnt, ptr @__errno_location, i64 4}
!112 = !{ptr @Perl_PerlIO_set_ptrcnt, ptr @__errno_location, i64 4}
!113 = !{ptr @PerlIOBase_pushed, ptr @__errno_location, i64 1}
!114 = !{ptr @PerlIO_cleanup, ptr @PerlIOUnix_refcnt_inc, i64 2}
!115 = !{ptr @PerlIO_cleanup, ptr @PerlIO_cleantable, i64 1}
!116 = !{ptr @PerlIO_cleanup, ptr @PerlIOUnix_refcnt_dec, i64 2}
!117 = !{ptr @PerlIO_cleanup, ptr @PerlIO_list_free, i64 2}
!118 = !{ptr @PerlIOUnix_oflags, ptr @__errno_location, i64 2}
!119 = !{ptr @PerlIOUnix_pushed, ptr @PerlIOBase_pushed, i64 68}
!120 = !{ptr @PerlIOUnix_pushed, ptr @Perl_PerlIO_flush, i64 1}
!121 = !{ptr @PerlIOUnix_pushed, ptr @Perl_PerlIO_fileno, i64 1}
!122 = !{ptr @PerlIOUnix_pushed, ptr @PerlIOUnix_oflags, i64 1}
!123 = !{ptr @PerlIOUnix_pushed, ptr @PerlIOUnix_setfd, i64 1}
!124 = !{ptr @PerlIOUnix_setfd, ptr @PerlIOUnix_refcnt_inc, i64 68}
!125 = !{ptr @PerlIOUnix_seek, ptr @__errno_location, i64 1}
!126 = !{ptr @PerlIOUnix_seek, ptr @lseek64, i64 26}
!127 = !{ptr @PerlIOUnix_open, ptr @PerlIOUnix_oflags, i64 63}
!128 = !{ptr @PerlIOUnix_open, ptr @Perl_sv_2pv_flags, i64 1}
!129 = !{ptr @PerlIOUnix_open, ptr @S_is_safe_syscall, i64 63}
!130 = !{ptr @PerlIOUnix_open, ptr @open64, i64 62}
!131 = !{ptr @PerlIOUnix_open, ptr @PerlIO_allocate, i64 65}
!132 = !{ptr @PerlIOUnix_open, ptr @PerlIO_arg_fetch, i64 65}
!133 = !{ptr @PerlIOUnix_open, ptr @PerlIO_push, i64 65}
!134 = !{ptr @PerlIOUnix_open, ptr @close, i64 1}
!135 = !{ptr @PerlIOUnix_open, ptr @PerlIOUnix_setfd, i64 65}
!136 = !{ptr @PerlIOUnix_open, ptr @PerlIOUnix_seek, i64 1}
!137 = !{ptr @S_is_safe_syscall, ptr @memchr, i64 64}
!138 = !{ptr @S_is_safe_syscall, ptr @__errno_location, i64 1}
!139 = !{ptr @S_is_safe_syscall, ptr @Perl_ck_warner, i64 1}
!140 = !{ptr @PerlIOUnix_read, ptr @read, i64 817}
!141 = !{ptr @PerlIOUnix_read, ptr @__errno_location, i64 39}
!142 = !{ptr @PerlIOUnix_write, ptr @write, i64 18389}
!143 = !{ptr @PerlIOUnix_write, ptr @__errno_location, i64 1}
!144 = !{ptr @PerlIOUnix_tell, ptr @lseek64, i64 95}
!145 = !{ptr @PerlIOUnix_close, ptr @PerlIOUnix_refcnt_dec, i64 67}
!146 = !{ptr @PerlIOUnix_close, ptr @close, i64 64}
!147 = !{ptr @PerlIOUnix_close, ptr @__errno_location, i64 2}
!148 = !{ptr @PerlIOUnix_close, ptr @S_perlio_async_run, i64 1}
!149 = !{ptr @PerlIOBuf_pushed, ptr @Perl_PerlIO_fileno, i64 68}
!150 = !{ptr @PerlIOBuf_pushed, ptr @isatty, i64 67}
!151 = !{ptr @PerlIOBuf_pushed, ptr @Perl_PerlIO_tell, i64 67}
!152 = !{ptr @PerlIOBuf_pushed, ptr @PerlIOBase_pushed, i64 68}
!153 = !{ptr @PerlIOBuf_open, ptr @PerlIO_layer_fetch, i64 68}
!154 = !{ptr @PerlIOBuf_open, ptr @PerlIO_arg_fetch, i64 67}
!155 = !{ptr @PerlIOBuf_open, ptr @PerlIO_default_layer, i64 67}
!156 = !{ptr @PerlIOBuf_open, ptr @__errno_location, i64 2}
!157 = !{ptr @PerlIOBuf_open, ptr @PerlIO_push, i64 66}
!158 = !{ptr @PerlIOBuf_open, ptr @Perl_PerlIO_fileno, i64 65}
!159 = !{ptr @PerlIOBuf_open, ptr @Perl_PerlIO_close, i64 1}
!160 = !{ptr @PerlIOBuf_flush, ptr @Perl_PerlIO_write, i64 18389}
!161 = !{ptr @PerlIOBuf_flush, ptr @Perl_PerlIO_error, i64 1}
!162 = !{ptr @PerlIOBuf_flush, ptr @Perl_PerlIO_get_base, i64 885}
!163 = !{ptr @PerlIOBuf_flush, ptr @Perl_PerlIO_seek, i64 27}
!164 = !{ptr @PerlIOBuf_flush, ptr @Perl_PerlIO_tell, i64 26}
!165 = !{ptr @PerlIOBuf_flush, ptr @Perl_PerlIO_flush, i64 19278}
!166 = !{ptr @PerlIOBuf_fill, ptr @Perl_PerlIO_flush, i64 820}
!167 = !{ptr @PerlIOBuf_fill, ptr @PerlIOBase_flush_linebuf, i64 1}
!168 = !{ptr @PerlIOBuf_fill, ptr @Perl_PerlIO_get_base, i64 1}
!169 = !{ptr @PerlIOBuf_fill, ptr @PerlIO_fast_gets, i64 818}
!170 = !{ptr @PerlIOBuf_fill, ptr @Perl_PerlIO_get_cnt, i64 1}
!171 = !{ptr @PerlIOBuf_fill, ptr @Perl_PerlIO_get_ptr, i64 1}
!172 = !{ptr @PerlIOBuf_fill, ptr @Perl_PerlIO_set_ptrcnt, i64 1}
!173 = !{ptr @PerlIOBuf_fill, ptr @Perl_PerlIO_read, i64 817}
!174 = !{ptr @PerlIOBuf_fill, ptr @Perl_PerlIO_save_errno, i64 1}
!175 = !{ptr @PerlIOBuf_read, ptr @Perl_PerlIO_get_base, i64 1}
!176 = !{ptr @PerlIOBuf_read, ptr @PerlIOBase_read, i64 818}
!177 = !{ptr @PerlIOBuf_write, ptr @Perl_PerlIO_get_base, i64 2}
!178 = !{ptr @PerlIOBuf_write, ptr @Perl_PerlIO_flush, i64 487}
!179 = !{ptr @PerlIOBuf_close, ptr @PerlIOBase_close, i64 68}
!180 = !{ptr @PerlIOBuf_close, ptr @Perl_safesysfree, i64 64}
!181 = !{ptr @PerlIOBuf_get_ptr, ptr @Perl_PerlIO_get_base, i64 1}
!182 = !{ptr @PerlIOBuf_get_cnt, ptr @Perl_PerlIO_get_base, i64 66}
!183 = !{ptr @PerlIOBuf_get_base, ptr @Perl_safesyscalloc, i64 67}
!184 = !{ptr @PerlIOBuf_set_ptrcnt, ptr @Perl_PerlIO_get_base, i64 1}
!185 = !{ptr @Perl_PerlIO_stdin, ptr @PerlIO_stdstreams, i64 1}
!186 = !{ptr @Perl_PerlIO_stdout, ptr @PerlIO_stdstreams, i64 1}
!187 = !{ptr @Perl_PerlIO_stderr, ptr @PerlIO_stdstreams, i64 1}
!188 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!189 = !{!"function_entry_count", i64 0}
!190 = !{!191, !191, i64 0}
!191 = !{!"int", !192, i64 0}
!192 = !{!"omnipotent char", !193, i64 0}
!193 = !{!"Simple C/C++ TBAA"}
!194 = !{!192, !192, i64 0}
!195 = !{!"function_entry_count", i64 68}
!196 = !{!197, !197, i64 0}
!197 = !{!"any pointer", !192, i64 0}
!198 = !{!"branch_weights", i32 1, i32 127}
!199 = !{!"branch_weights", i32 127, i32 8705}
!200 = !{!"branch_weights", i32 1, i32 372}
!201 = distinct !{!201, !202}
!202 = !{!"llvm.loop.mustprogress"}
!203 = !{!204, !197, i64 0}
!204 = !{!"_PerlIO", !197, i64 0, !197, i64 8, !191, i64 16, !191, i64 20, !197, i64 24}
!205 = !{!"branch_weights", i32 69, i32 305}
!206 = !{!204, !191, i64 16}
!207 = !{!204, !197, i64 8}
!208 = !{!204, !197, i64 24}
!209 = !{!210, !197, i64 80}
!210 = !{!"_PerlIO_funcs", !211, i64 0, !197, i64 8, !211, i64 16, !191, i64 24, !197, i64 32, !197, i64 40, !197, i64 48, !197, i64 56, !197, i64 64, !197, i64 72, !197, i64 80, !197, i64 88, !197, i64 96, !197, i64 104, !197, i64 112, !197, i64 120, !197, i64 128, !197, i64 136, !197, i64 144, !197, i64 152, !197, i64 160, !197, i64 168, !197, i64 176, !197, i64 184, !197, i64 192, !197, i64 200, !197, i64 208, !197, i64 216}
!211 = !{!"long", !192, i64 0}
!212 = !{!210, !197, i64 64}
!213 = !{!"function_entry_count", i64 2}
!214 = !{!"branch_weights", i32 2, i32 2}
!215 = !{!"branch_weights", i32 61, i32 4}
!216 = !{!"branch_weights", i32 62, i32 2}
!217 = distinct !{!217, !202}
!218 = !{!"branch_weights", i32 69, i32 137}
!219 = !{!"branch_weights", i32 137, i32 1}
!220 = !{!"branch_weights", i32 127, i32 26113}
!221 = distinct !{!221, !202}
!222 = !{!"function_entry_count", i64 65}
!223 = !{!224, !211, i64 0}
!224 = !{!"PerlIO_list_s", !211, i64 0, !211, i64 8, !211, i64 16, !197, i64 24}
!225 = !{!"function_entry_count", i64 70}
!226 = !{!"branch_weights", i32 1, i32 71}
!227 = !{!"branch_weights", i32 66, i32 6}
!228 = !{!224, !197, i64 24}
!229 = !{!"branch_weights", i32 1, i32 66}
!230 = !{!224, !211, i64 8}
!231 = !{!"branch_weights", i32 131, i32 1}
!232 = !{!233, !197, i64 8}
!233 = !{!"", !197, i64 0, !197, i64 8}
!234 = !{!"branch_weights", i32 143, i32 131}
!235 = distinct !{!235, !202}
!236 = !{!"function_entry_count", i64 136}
!237 = !{!"perlio.c:S_SvREFCNT_dec"}
!238 = !{!239, !191, i64 8}
!239 = !{!"sv", !197, i64 0, !191, i64 8, !191, i64 12, !192, i64 16}
!240 = !{!"branch_weights", i32 1, i32 129}
!241 = !{!224, !211, i64 16}
!242 = !{!"branch_weights", i32 72, i32 66}
!243 = !{!"branch_weights", i32 66, i32 1}
!244 = !{!233, !197, i64 0}
!245 = !{!"branch_weights", i32 9, i32 129}
!246 = !{!"function_entry_count", i64 63}
!247 = !{!"branch_weights", i32 1, i32 64}
!248 = !{!"branch_weights", i32 127, i32 1}
!249 = !{!"branch_weights", i32 127, i32 127}
!250 = distinct !{!250, !202}
!251 = !{!"function_entry_count", i64 1}
!252 = distinct !{!252, !202}
!253 = !{!"branch_weights", i32 57, i32 7}
!254 = !{!"branch_weights", i32 1, i32 7}
!255 = !{!210, !191, i64 24}
!256 = !{!"branch_weights", i32 7, i32 1}
!257 = !{!"branch_weights", i32 7, i32 0}
!258 = distinct !{!258, !202}
!259 = !{!"branch_weights", i32 2, i32 62}
!260 = distinct !{!260, !202}
!261 = !{!"function_entry_count", i64 38565}
!262 = !{!"branch_weights", i32 2, i32 38565}
!263 = !{!"branch_weights", i32 1, i32 38565}
!264 = !{!210, !197, i64 136}
!265 = distinct !{!265, !202}
!266 = !{!"branch_weights", i32 4, i32 1}
!267 = distinct !{!267, !202}
!268 = !{!"branch_weights", i32 1, i32 137}
!269 = !{!210, !197, i64 40}
!270 = !{!210, !197, i64 8}
!271 = distinct !{!271, !202}
!272 = distinct !{!272, !202}
!273 = !{!274, !274, i64 0}
!274 = !{!"_Bool", !192, i64 0}
!275 = !{i8 0, i8 2}
!276 = !{}
!277 = !{!278, !191, i64 8}
!278 = !{!"cv", !197, i64 0, !191, i64 8, !191, i64 12, !192, i64 16}
!279 = !{!239, !191, i64 12}
!280 = !{!239, !197, i64 0}
!281 = !{!282, !211, i64 16}
!282 = !{!"xpv", !197, i64 0, !192, i64 8, !211, i64 16, !192, i64 24}
!283 = !{!211, !211, i64 0}
!284 = !{!"function_entry_count", i64 8}
!285 = !{!"branch_weights", i32 2, i32 8}
!286 = !{!"branch_weights", i32 64, i32 4160, i32 4096}
!287 = distinct !{!287, !202}
!288 = distinct !{!288, !202}
!289 = distinct !{!289, !202}
!290 = !{!"function_entry_count", i64 204}
!291 = !{!"branch_weights", i32 205, i32 1}
!292 = !{!210, !197, i64 48}
!293 = !{!"branch_weights", i32 2, i32 136}
!294 = !{!"branch_weights", i32 1, i32 69}
!295 = !{!"branch_weights", i32 2, i32 1}
!296 = !{!"perlio.c:PerlIO_init_table"}
!297 = !{!210, !211, i64 0}
!298 = !{!210, !211, i64 16}
!299 = !{!210, !197, i64 32}
!300 = !{!210, !197, i64 56}
!301 = distinct !{!301, !202}
!302 = !{i32 -1, i32 1}
!303 = !{!210, !197, i64 128}
!304 = !{!"branch_weights", i32 69, i32 1}
!305 = !{!"function_entry_count", i64 276}
!306 = !{!"branch_weights", i32 1, i32 277}
!307 = !{!210, !197, i64 72}
!308 = !{i64 -2147483648, i64 2147483648}
!309 = !{!"function_entry_count", i64 138}
!310 = !{!"branch_weights", i32 1, i32 139}
!311 = !{!"branch_weights", i32 2, i32 68}
!312 = !{!"branch_weights", i32 4, i32 66}
!313 = !{!"branch_weights", i32 6, i32 64}
!314 = !{!"branch_weights", i32 1844754676, i32 302728972}
!315 = !{!"branch_weights", i32 -2147483648, i32 0}
!316 = !{!"branch_weights", i32 64, i32 1}
!317 = !{!"branch_weights", i32 1, i32 6}
!318 = !{!"perlio.c:PerlIO_layer_from_ref"}
!319 = !{!"function_entry_count", i64 5}
!320 = !{!"branch_weights", i32 3, i32 4}
!321 = !{!322, !191, i64 56}
!322 = !{!"cop", !197, i64 0, !197, i64 8, !197, i64 16, !211, i64 24, !191, i64 32, !191, i64 33, !191, i64 33, !191, i64 33, !191, i64 33, !191, i64 33, !191, i64 33, !191, i64 33, !192, i64 34, !192, i64 35, !191, i64 36, !197, i64 40, !197, i64 48, !191, i64 56, !191, i64 60, !197, i64 64, !197, i64 72}
!323 = !{!"branch_weights", i32 6, i32 1}
!324 = !{!322, !197, i64 72}
!325 = !{!"branch_weights", i32 4554, i32 346}
!326 = !{!"branch_weights", i32 1719048257, i32 428435391}
!327 = distinct !{!327, !202}
!328 = !{!"branch_weights", i32 8705, i32 127}
!329 = !{!"branch_weights", i32 0, i32 -2147483648}
!330 = !{!"function_entry_count", i64 1640}
!331 = !{!"branch_weights", i32 1, i32 1641}
!332 = !{!210, !197, i64 88}
!333 = !{!"function_entry_count", i64 820}
!334 = !{!"branch_weights", i32 1, i32 821}
!335 = !{!"branch_weights", i32 1, i32 782}
!336 = !{!"branch_weights", i32 1047618349, i32 1099865299}
!337 = !{!"branch_weights", i32 783, i32 821}
!338 = !{!"branch_weights", i32 613089, i32 1567}
!339 = !{!"branch_weights", i32 1, i32 2147483647}
!340 = !{!"branch_weights", i32 1097842396, i32 1049641252}
!341 = !{!"branch_weights", i32 -930926167, i32 -763572650}
!342 = !{!210, !197, i64 96}
!343 = !{!344, !211, i64 56}
!344 = !{!"", !204, i64 0, !197, i64 32, !197, i64 40, !197, i64 48, !211, i64 56, !211, i64 64, !211, i64 72}
!345 = !{!"function_entry_count", i64 60431}
!346 = !{!"branch_weights", i32 1, i32 60432}
!347 = !{!210, !197, i64 104}
!348 = !{!"function_entry_count", i64 27}
!349 = !{!"branch_weights", i32 1, i32 28}
!350 = !{!210, !197, i64 112}
!351 = !{!"function_entry_count", i64 3887}
!352 = !{!"branch_weights", i32 1, i32 3888}
!353 = !{!210, !197, i64 120}
!354 = distinct !{!354, !202}
!355 = distinct !{!355, !202}
!356 = !{!210, !197, i64 144}
!357 = !{!"function_entry_count", i64 130424}
!358 = !{!"branch_weights", i32 1, i32 130425}
!359 = !{!210, !197, i64 152}
!360 = !{i64 0, i64 2}
!361 = !{!"function_entry_count", i64 42075}
!362 = !{!"branch_weights", i32 1, i32 42076}
!363 = !{!210, !197, i64 160}
!364 = !{!"branch_weights", i32 1, i32 3}
!365 = !{!210, !197, i64 168}
!366 = !{!210, !197, i64 176}
!367 = !{!210, !197, i64 184}
!368 = !{!"function_entry_count", i64 88353}
!369 = !{!"branch_weights", i32 1, i32 88354}
!370 = !{!"branch_weights", i32 821, i32 87534}
!371 = !{!"branch_weights", i32 1, i32 87534}
!372 = !{!210, !197, i64 216}
!373 = !{!210, !197, i64 200}
!374 = !{!210, !197, i64 208}
!375 = !{!"function_entry_count", i64 951}
!376 = !{!"branch_weights", i32 1, i32 952}
!377 = !{!210, !197, i64 192}
!378 = !{!"function_entry_count", i64 89135}
!379 = !{!"branch_weights", i32 1, i32 89136}
!380 = !{!"function_entry_count", i64 89955}
!381 = !{!"branch_weights", i32 1, i32 89956}
!382 = !{!"branch_weights", i32 69, i32 69}
!383 = !{!"branch_weights", i32 18358, i32 138, i32 548}
!384 = !{!"branch_weights", i32 1, i32 133, i32 1, i32 5}
!385 = !{!"branch_weights", i32 1, i32 548, i32 1, i32 1, i32 1}
!386 = distinct !{!386, !202}
!387 = !{!344, !197, i64 32}
!388 = !{!344, !197, i64 48}
!389 = !{!344, !211, i64 64}
!390 = !{!344, !197, i64 40}
!391 = !{!204, !191, i64 20}
!392 = !{!"function_entry_count", i64 19282}
!393 = !{!"branch_weights", i32 72, i32 1}
!394 = !{!"branch_weights", i32 71, i32 2}
!395 = !{!"branch_weights", i32 1, i32 72}
!396 = !{!"perlio.c:S_more_refcounted_fds"}
!397 = !{!"branch_weights", i32 1, i32 2}
!398 = distinct !{!398, !202}
!399 = distinct !{!399, !202}
!400 = !{!"branch_weights", i32 4, i32 5}
!401 = !{!"branch_weights", i32 4356, i32 67, i32 66}
!402 = !{!"branch_weights", i32 1, i32 66, i32 1, i32 1}
!403 = !{!"branch_weights", i32 66, i32 1, i32 1}
!404 = !{!"branch_weights", i32 133, i32 4356}
!405 = !{!406, !191, i64 32}
!406 = !{!"", !204, i64 0, !191, i64 32, !191, i64 36}
!407 = !{i64 -1, i64 1}
!408 = !{i32 -1, i32 1091}
!409 = !{!"perlio.c:PerlIOUnix_setfd"}
!410 = !{!406, !191, i64 36}
!411 = !{!"branch_weights", i32 28, i32 1}
!412 = !{!"branch_weights", i32 66, i32 4}
!413 = !{!"branch_weights", i32 31122952, i32 2116360696}
!414 = !{!"perlio.c:S_is_safe_syscall"}
!415 = !{!"branch_weights", i32 821, i32 1}
!416 = !{!"branch_weights", i32 674041, i32 1643}
!417 = !{!"branch_weights", i32 820, i32 1}
!418 = !{!"branch_weights", i32 1521, i32 31359}
!419 = !{!"branch_weights", i32 1, i32 0}
!420 = !{!"perlio.c:S_perlio_async_run"}
!421 = distinct !{!421, !202}
!422 = !{!"function_entry_count", i64 18390}
!423 = !{!"branch_weights", i32 18391, i32 1}
!424 = !{!"branch_weights", i32 18390, i32 1}
!425 = !{!"function_entry_count", i64 95}
!426 = !{!"branch_weights", i32 65, i32 1}
!427 = distinct !{!427, !202}
!428 = !{!429, !197, i64 32}
!429 = !{!"", !204, i64 0, !197, i64 32}
!430 = distinct !{!430, !202}
!431 = !{!432, !197, i64 8}
!432 = !{!"_IO_FILE", !191, i64 0, !197, i64 8, !197, i64 16, !197, i64 24, !197, i64 32, !197, i64 40, !197, i64 48, !197, i64 56, !197, i64 64, !197, i64 72, !197, i64 80, !197, i64 88, !197, i64 96, !197, i64 104, !191, i64 112, !191, i64 116, !211, i64 120, !433, i64 128, !192, i64 130, !192, i64 131, !197, i64 136, !211, i64 144, !197, i64 152, !197, i64 160, !197, i64 168, !197, i64 176, !211, i64 184, !191, i64 192, !192, i64 196}
!433 = !{!"short", !192, i64 0}
!434 = !{!432, !197, i64 24}
!435 = !{!432, !197, i64 16}
!436 = distinct !{!436, !202}
!437 = distinct !{!437, !202}
!438 = !{!"branch_weights", i32 8, i32 342}
!439 = !{!"branch_weights", i32 893, i32 18391}
!440 = !{!"branch_weights", i32 1, i32 18390}
!441 = !{!"branch_weights", i32 8, i32 886}
!442 = !{!"branch_weights", i32 28, i32 859}
!443 = !{!"branch_weights", i32 1, i32 19283}
!444 = !{!"branch_weights", i32 19283, i32 1}
!445 = !{!"branch_weights", i32 101452425, i32 2046031223}
!446 = !{!"branch_weights", i32 2093720832, i32 53762816}
!447 = !{!"function_entry_count", i64 42041}
!448 = !{!"branch_weights", i32 2, i32 42041}
!449 = !{!"branch_weights", i32 1, i32 42042}
!450 = !{!"branch_weights", i32 42042, i32 1}
!451 = distinct !{!451, !202}
!452 = !{!"branch_weights", i32 1, i32 42041}
!453 = !{!"branch_weights", i32 1, i32 42522}
!454 = !{!"branch_weights", i32 42039, i32 484}
!455 = !{!"branch_weights", i32 1, i32 484}
!456 = distinct !{!456, !202}
!457 = !{!"branch_weights", i32 42041, i32 481}
!458 = !{!"function_entry_count", i64 3792}
!459 = !{!"branch_weights", i32 3793, i32 1}
!460 = !{!"branch_weights", i32 1, i32 3793}
!461 = !{!"branch_weights", i32 139, i32 1}
!462 = !{!"branch_weights", i32 271, i32 4489}
!463 = !{!"branch_weights", i32 66, i32 89891}
!464 = !{!"branch_weights", i32 104, i32 89853}
!465 = !{!"branch_weights", i32 67, i32 886}
!466 = !{!"branch_weights", i32 67, i32 1}
!467 = !{!"branch_weights", i32 1, i32 67}
!468 = !{!"perlio.c:S_inherit_utf8_flag"}
!469 = !{!470, !197, i64 80}
!470 = !{!"", !344, i64 0, !197, i64 80}
!471 = distinct !{!471, !202}
!472 = distinct !{!472, !202}
!473 = distinct !{!473, !202}
!474 = distinct !{!474, !202}
!475 = !{!"function_entry_count", i64 4}
!476 = !{!"branch_weights", i32 1, i32 5}
!477 = !{!"function_entry_count", i64 3}
!478 = !{!"branch_weights", i32 1, i32 4}
!479 = !{!"branch_weights", i32 783, i32 39}
!480 = !{!"perlio.c:S_lockcnt_dec"}
