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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @perlsio_binmode(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !134 {
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @PerlIO_intmode2str(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #1 !prof !134 {
  %4 = and i32 %0, 3
  %5 = icmp eq i32 %4, 1
  %6 = select i1 %5, i32 62, i32 43
  %7 = icmp eq i32 %4, 0
  %8 = icmp eq ptr %2, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = icmp ne i32 %4, 0
  %11 = zext i1 %10 to i32
  store i32 %11, ptr %2, align 4, !tbaa !135
  br label %12

12:                                               ; preds = %9, %3
  br i1 %7, label %13, label %14

13:                                               ; preds = %12
  store i8 114, ptr %1, align 1, !tbaa !139
  br label %24

14:                                               ; preds = %12
  %15 = and i32 %0, 1024
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  store i8 97, ptr %1, align 1, !tbaa !139
  br i1 %5, label %24, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 43, ptr %19, align 1, !tbaa !139
  br label %24

20:                                               ; preds = %14
  br i1 %5, label %21, label %22

21:                                               ; preds = %20
  store i8 119, ptr %1, align 1, !tbaa !139
  br label %24

22:                                               ; preds = %20
  store i8 114, ptr %1, align 1, !tbaa !139
  %23 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 43, ptr %23, align 1, !tbaa !139
  br label %24

24:                                               ; preds = %18, %17, %22, %21, %13
  %25 = phi i32 [ %6, %18 ], [ %6, %17 ], [ %6, %22 ], [ %6, %21 ], [ 60, %13 ]
  %26 = phi i64 [ 2, %18 ], [ 1, %17 ], [ 2, %22 ], [ 1, %21 ], [ 1, %13 ]
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  store i8 0, ptr %27, align 1, !tbaa !139
  ret i32 %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @PerlIO_debug(ptr nocapture noundef readnone %0, ...) local_unnamed_addr #0 !prof !134 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PerlIO_allocate() local_unnamed_addr #4 !prof !134 {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi ptr [ @PL_perlio, %0 ], [ %3, %16 ]
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5, !prof !142

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i64 2016
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i32 %11, 1
  %9 = icmp eq i32 %8, 64
  br i1 %9, label %16, label %10, !prof !143, !llvm.loop !144

10:                                               ; preds = %5, %7
  %11 = phi i32 [ %8, %7 ], [ 1, %5 ]
  %12 = phi ptr [ %13, %7 ], [ %3, %5 ]
  %13 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !147
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !prof !149

16:                                               ; preds = %7, %10
  %17 = phi ptr [ %6, %7 ], [ %13, %10 ]
  %18 = phi i32 [ 0, %7 ], [ 7, %10 ]
  switch i32 %18, label %29 [
    i32 0, label %1
    i32 7, label %24
  ], !prof !150, !llvm.loop !151

19:                                               ; preds = %1
  %20 = tail call ptr @Perl_safesyscalloc(i64 noundef 64, i64 noundef 32) #33
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._PerlIO, ptr %20, i64 1
  store ptr %20, ptr %2, align 8, !tbaa !140
  br label %24

24:                                               ; preds = %16, %22
  %25 = phi ptr [ %23, %22 ], [ %17, %16 ]
  %26 = getelementptr inbounds %struct._PerlIO, ptr %25, i64 0, i32 2
  store i32 0, ptr %26, align 8, !tbaa !152
  %27 = getelementptr inbounds %struct._PerlIO, ptr %25, i64 0, i32 1
  store ptr null, ptr %27, align 8, !tbaa !153
  %28 = getelementptr inbounds %struct._PerlIO, ptr %25, i64 0, i32 4
  store ptr %25, ptr %28, align 8, !tbaa !154
  br label %29

29:                                               ; preds = %16, %19, %24
  %30 = phi ptr [ %25, %24 ], [ null, %19 ], [ undef, %16 ]
  ret ptr %30
}

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIO_fdupopen(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 !prof !134 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !155
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @PerlIO_allocate()
  %18 = tail call ptr %14(ptr noundef %17, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #33
  br label %24

19:                                               ; preds = %12, %8
  %20 = tail call ptr @PerlIO_allocate()
  %21 = tail call ptr @PerlIOBase_dup(ptr noundef %20, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %24

22:                                               ; preds = %5, %3
  %23 = tail call ptr @__errno_location() #34
  store i32 9, ptr %23, align 4, !tbaa !135
  br label %24

24:                                               ; preds = %16, %19, %22
  %25 = phi ptr [ null, %22 ], [ %18, %16 ], [ %21, %19 ]
  ret ptr %25
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 !prof !134 {
  %5 = alloca [8 x i8], align 1
  %6 = load ptr, ptr %1, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !140
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._PerlIO, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !153
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._PerlIO_funcs, ptr %13, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call ptr %17(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, i32 noundef %3) #33
  br label %23

21:                                               ; preds = %15, %11
  %22 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, i32 noundef %3)
  br label %23

23:                                               ; preds = %19, %21, %8, %4
  %24 = phi ptr [ %0, %8 ], [ %0, %4 ], [ %20, %19 ], [ %22, %21 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %92, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %1, align 8, !tbaa !140
  %28 = getelementptr inbounds %struct._PerlIO, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #33
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct._PerlIO_funcs, ptr %29, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !158
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call ptr %33(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #33
  br label %37

37:                                               ; preds = %31, %35, %26
  %38 = phi ptr [ %36, %35 ], [ null, %31 ], [ null, %26 ]
  %39 = load ptr, ptr %1, align 8, !tbaa !140
  %40 = icmp eq ptr %39, null
  br i1 %40, label %67, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct._PerlIO, ptr %39, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !152
  %44 = zext i32 %43 to i64
  %45 = and i64 %44, 8192
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 97, ptr %5, align 1, !tbaa !139
  %49 = and i64 %44, 1024
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 43, ptr %48, align 1, !tbaa !139
  br label %67

53:                                               ; preds = %41
  %54 = and i64 %44, 1024
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 114, ptr %5, align 1, !tbaa !139
  %58 = and i64 %44, 512
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 43, ptr %57, align 1, !tbaa !139
  br label %67

62:                                               ; preds = %53
  %63 = and i64 %44, 512
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 119, ptr %5, align 1, !tbaa !139
  br label %67

67:                                               ; preds = %37, %47, %51, %56, %60, %62, %65
  %68 = phi ptr [ %5, %37 ], [ %52, %51 ], [ %48, %47 ], [ %61, %60 ], [ %57, %56 ], [ %66, %65 ], [ %5, %62 ]
  store i8 0, ptr %68, align 1, !tbaa !139
  %69 = call ptr @PerlIO_push(ptr noundef nonnull %24, ptr noundef %29, ptr noundef nonnull %5, ptr noundef %38)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %1, align 8, !tbaa !140
  %73 = getelementptr inbounds %struct._PerlIO, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !152
  %75 = and i32 %74, 32768
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = load ptr, ptr %69, align 8, !tbaa !140
  %79 = getelementptr inbounds %struct._PerlIO, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !152
  %81 = or i32 %80, 32768
  store i32 %81, ptr %79, align 8, !tbaa !152
  br label %82

82:                                               ; preds = %77, %71, %67
  %83 = icmp eq ptr %38, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !159
  %87 = icmp ugt i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = add i32 %86, -1
  store i32 %89, ptr %85, align 8, !tbaa !159
  br label %91

90:                                               ; preds = %84
  call void @Perl_sv_free2(ptr noundef nonnull %38, i32 noundef %86) #33
  br label %91

91:                                               ; preds = %82, %88, %90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #33
  br label %92

92:                                               ; preds = %91, %23
  %93 = phi ptr [ %69, %91 ], [ null, %23 ]
  ret ptr %93
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @PerlIO_cleantable(ptr nocapture noundef %0) local_unnamed_addr #4 !prof !161 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4, !prof !162

4:                                                ; preds = %1
  tail call void @PerlIO_cleantable(ptr noundef nonnull %2)
  br label %5

5:                                                ; preds = %4, %12
  %6 = phi i64 [ 63, %4 ], [ %13, %12 ]
  %7 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !163

10:                                               ; preds = %5
  %11 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %7)
  br label %12

12:                                               ; preds = %10, %5
  %13 = add nsw i64 %6, -1
  %14 = icmp ugt i64 %6, 1
  br i1 %14, label %5, label %15, !prof !164, !llvm.loop !165

15:                                               ; preds = %12
  tail call void @Perl_safesysfree(ptr noundef nonnull %2) #33
  store ptr null, ptr %0, align 8, !tbaa !140
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_PerlIO_close(ptr noundef %0) local_unnamed_addr #4 !prof !166 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3, !prof !142

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !142

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !142

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !167
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !142

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #33, !prof !168
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call i64 @PerlIOBase_close(ptr noundef nonnull %0)
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = trunc i64 %19 to i32
  br label %23

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #34
  store i32 9, ptr %22, align 4, !tbaa !135
  br label %23

23:                                               ; preds = %18, %21
  %24 = phi i32 [ %20, %18 ], [ -1, %21 ]
  %25 = icmp eq ptr %0, null
  br i1 %25, label %64, label %26, !prof !169

26:                                               ; preds = %23, %61
  %27 = phi ptr [ %62, %61 ], [ %0, %23 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !140
  %29 = icmp eq ptr %28, null
  br i1 %29, label %64, label %30, !prof !170

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._PerlIO, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !153
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34, !prof !171

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct._PerlIO_funcs, ptr %32, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !172
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38, !prof !171

38:                                               ; preds = %34
  %39 = tail call i64 %36(ptr noundef nonnull %27) #33, !prof !173
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %53, !prof !174

41:                                               ; preds = %38, %34, %30
  %42 = getelementptr inbounds %struct._PerlIO, ptr %27, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !154
  %44 = getelementptr inbounds %struct._PerlIO, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !152
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47, !prof !174

47:                                               ; preds = %41
  %48 = load ptr, ptr %27, align 8, !tbaa !140
  %49 = getelementptr inbounds %struct._PerlIO, ptr %48, i64 0, i32 2
  store i32 33554432, ptr %49, align 8, !tbaa !152
  %50 = getelementptr inbounds %struct._PerlIO, ptr %48, i64 0, i32 1
  store ptr null, ptr %50, align 8, !tbaa !153
  br label %53

51:                                               ; preds = %41
  %52 = load ptr, ptr %28, align 8, !tbaa !147
  store ptr %52, ptr %27, align 8, !tbaa !140
  tail call void @Perl_safesysfree(ptr noundef nonnull %28) #33
  br label %53

53:                                               ; preds = %38, %47, %51
  %54 = getelementptr inbounds %struct._PerlIO, ptr %27, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !154
  %56 = getelementptr inbounds %struct._PerlIO, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !152
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59, !prof !174

59:                                               ; preds = %53
  %60 = load ptr, ptr %27, align 8, !tbaa !140
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi ptr [ %60, %59 ], [ %27, %53 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %26, !prof !175, !llvm.loop !176

64:                                               ; preds = %26, %61, %23
  ret i32 %24
}

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @PerlIO_list_alloc() local_unnamed_addr #6 !prof !134 {
  %1 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 32) #33
  store i64 1, ptr %1, align 8, !tbaa !177
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local void @PerlIO_list_free(ptr noundef %0) local_unnamed_addr #4 !prof !161 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3, !prof !179

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8, !tbaa !177
  %5 = add nsw i64 %4, -1
  store i64 %5, ptr %0, align 8, !tbaa !177
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %35, !prof !180

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11, !prof !182

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !183
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %32, !prof !184

15:                                               ; preds = %11, %28
  %16 = phi i64 [ %29, %28 ], [ 0, %11 ]
  %17 = load ptr, ptr %8, align 8, !tbaa !181
  %18 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %17, i64 %16, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !185
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21, !prof !187

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !159
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %27, !prof !188

25:                                               ; preds = %21
  %26 = add i32 %23, -1
  store i32 %26, ptr %22, align 8, !tbaa !159
  br label %28

27:                                               ; preds = %21
  tail call void @Perl_sv_free2(ptr noundef nonnull %19, i32 noundef %23) #33
  br label %28

28:                                               ; preds = %15, %25, %27
  %29 = add nuw nsw i64 %16, 1
  %30 = load i64, ptr %12, align 8, !tbaa !183
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %15, label %32, !prof !189, !llvm.loop !190

32:                                               ; preds = %28, %11
  %33 = load ptr, ptr %8, align 8, !tbaa !181
  tail call void @Perl_safesysfree(ptr noundef %33) #33
  br label %34

34:                                               ; preds = %32, %7
  tail call void @Perl_safesysfree(ptr noundef nonnull %0) #33
  br label %35

35:                                               ; preds = %3, %34, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PerlIO_list_push(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !191 {
  %4 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !183
  %6 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !192
  %8 = icmp slt i64 %5, %7
  br i1 %8, label %21, label %9, !prof !193

9:                                                ; preds = %3
  %10 = add nsw i64 %7, 8
  store i64 %10, ptr %6, align 8, !tbaa !192
  %11 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = icmp eq ptr %12, null
  %14 = shl i64 %10, 4
  br i1 %13, label %17, label %15, !prof !194

15:                                               ; preds = %9
  %16 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %12, i64 noundef %14) #33
  br label %19

17:                                               ; preds = %9
  %18 = tail call ptr @Perl_safesysmalloc(i64 noundef %14) #33
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %16, %15 ], [ %18, %17 ]
  store ptr %20, ptr %11, align 8, !tbaa !181
  br label %21

21:                                               ; preds = %19, %3
  %22 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !181
  %24 = load i64, ptr %4, align 8, !tbaa !183
  %25 = add nsw i64 %24, 1
  store i64 %25, ptr %4, align 8, !tbaa !183
  %26 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %23, i64 %24
  store ptr %1, ptr %26, align 8, !tbaa !195
  %27 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %23, i64 %24, i32 1
  store ptr %2, ptr %27, align 8, !tbaa !185
  %28 = icmp eq ptr %2, null
  br i1 %28, label %33, label %29, !prof !187

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !159
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !159
  br label %33

33:                                               ; preds = %29, %21
  ret void
}

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @PerlIO_clone_list(ptr noundef readonly %0, ptr nocapture readnone %1) local_unnamed_addr #4 !prof !196 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %51, label %4, !prof !197

4:                                                ; preds = %2
  %5 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 32) #33
  store i64 1, ptr %5, align 8, !tbaa !177
  %6 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !183
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %51, !prof !198

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.PerlIO_list_s, ptr %5, i64 0, i32 1
  %12 = getelementptr inbounds %struct.PerlIO_list_s, ptr %5, i64 0, i32 2
  %13 = getelementptr inbounds %struct.PerlIO_list_s, ptr %5, i64 0, i32 3
  br label %14

14:                                               ; preds = %9, %47
  %15 = phi i64 [ 0, %9 ], [ %48, %47 ]
  %16 = load ptr, ptr %10, align 8, !tbaa !181
  %17 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %16, i64 %15
  %18 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %16, i64 %15, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !185
  %20 = load ptr, ptr %17, align 8, !tbaa !195
  %21 = load i64, ptr %11, align 8, !tbaa !183
  %22 = load i64, ptr %12, align 8, !tbaa !192
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %36, label %24, !prof !193

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.PerlIO_list_s, ptr %5, i64 0, i32 3
  %26 = add nsw i64 %22, 8
  store i64 %26, ptr %12, align 8, !tbaa !192
  %27 = load ptr, ptr %25, align 8, !tbaa !181
  %28 = icmp eq ptr %27, null
  %29 = shl i64 %26, 4
  br i1 %28, label %32, label %30, !prof !194

30:                                               ; preds = %24
  %31 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %27, i64 noundef %29) #33
  br label %34

32:                                               ; preds = %24
  %33 = tail call ptr @Perl_safesysmalloc(i64 noundef %29) #33
  br label %34

34:                                               ; preds = %30, %32
  %35 = phi ptr [ %33, %32 ], [ %31, %30 ]
  store ptr %35, ptr %25, align 8, !tbaa !181
  br label %36

36:                                               ; preds = %34, %14
  %37 = load ptr, ptr %13, align 8, !tbaa !181
  %38 = load i64, ptr %11, align 8, !tbaa !183
  %39 = add nsw i64 %38, 1
  store i64 %39, ptr %11, align 8, !tbaa !183
  %40 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %37, i64 %38
  store ptr %20, ptr %40, align 8, !tbaa !195
  %41 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %37, i64 %38, i32 1
  store ptr %19, ptr %41, align 8, !tbaa !185
  %42 = icmp eq ptr %19, null
  br i1 %42, label %47, label %43, !prof !187

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !159
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 8, !tbaa !159
  br label %47

47:                                               ; preds = %36, %43
  %48 = add nuw nsw i64 %15, 1
  %49 = load i64, ptr %6, align 8, !tbaa !183
  %50 = icmp sgt i64 %49, %48
  br i1 %50, label %14, label %51, !prof !199, !llvm.loop !200

51:                                               ; preds = %47, %4, %2
  %52 = phi ptr [ null, %2 ], [ %5, %4 ], [ %5, %47 ]
  ret ptr %52
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @PerlIO_clone(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !134 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PerlIO_destruct() local_unnamed_addr #4 !prof !201 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !140
  %2 = icmp eq ptr %1, null
  br i1 %2, label %39, label %6, !prof !202

3:                                                ; preds = %36
  %4 = load ptr, ptr %7, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6, !prof !203, !llvm.loop !204

6:                                                ; preds = %0, %3
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  br label %8

8:                                                ; preds = %6, %36
  %9 = phi ptr [ %7, %6 ], [ %11, %36 ]
  %10 = phi i32 [ 1, %6 ], [ %37, %36 ]
  %11 = getelementptr inbounds %struct._PerlIO, ptr %9, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !140
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14, !prof !205

14:                                               ; preds = %8, %32
  %15 = phi ptr [ %34, %32 ], [ %12, %8 ]
  %16 = phi ptr [ %33, %32 ], [ %11, %8 ]
  %17 = getelementptr inbounds %struct._PerlIO, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !153
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20, !prof !206

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._PerlIO_funcs, ptr %18, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !207
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25, !prof !208

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct._PerlIO_funcs, ptr %18, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !209
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i64 %27(ptr noundef nonnull %16) #33
  br label %31

31:                                               ; preds = %25, %29
  tail call void @PerlIO_pop(ptr noundef nonnull %16)
  br label %32

32:                                               ; preds = %14, %20, %31
  %33 = phi ptr [ %16, %31 ], [ %15, %20 ], [ %15, %14 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !140
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %14, !prof !208, !llvm.loop !210

36:                                               ; preds = %32, %8
  %37 = add nuw nsw i32 %10, 1
  %38 = icmp eq i32 %37, 64
  br i1 %38, label %3, label %8, !prof !211, !llvm.loop !212

39:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_PerlIO_flush(ptr noundef %0) local_unnamed_addr #4 !prof !213 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %6, !prof !214

3:                                                ; preds = %1
  %4 = load ptr, ptr @PL_perlio, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %25, !prof !202

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !140
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9, !prof !215

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !153
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13, !prof !215

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._PerlIO_funcs, ptr %11, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !209
  %16 = icmp eq ptr %15, null
  br i1 %16, label %54, label %17, !prof !215

17:                                               ; preds = %13
  %18 = tail call i64 %15(ptr noundef nonnull %0) #33, !prof !216
  %19 = trunc i64 %18 to i32
  br label %54

20:                                               ; preds = %6
  %21 = tail call ptr @__errno_location() #34
  store i32 9, ptr %21, align 4, !tbaa !135
  br label %54

22:                                               ; preds = %50
  %23 = load ptr, ptr %26, align 8, !tbaa !140
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25, !prof !203, !llvm.loop !217

25:                                               ; preds = %3, %22
  %26 = phi ptr [ %23, %22 ], [ %4, %3 ]
  %27 = phi i32 [ %51, %22 ], [ 0, %3 ]
  br label %28

28:                                               ; preds = %25, %50
  %29 = phi ptr [ %26, %25 ], [ %32, %50 ]
  %30 = phi i32 [ 1, %25 ], [ %52, %50 ]
  %31 = phi i32 [ %27, %25 ], [ %51, %50 ]
  %32 = getelementptr inbounds %struct._PerlIO, ptr %29, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !140
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35, !prof !163

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct._PerlIO, ptr %33, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !153
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39, !prof !218

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct._PerlIO_funcs, ptr %37, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !209
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43, !prof !218

43:                                               ; preds = %39
  %44 = tail call i64 %41(ptr noundef nonnull %32) #33, !prof !219
  %45 = trunc i64 %44 to i32
  br label %46

46:                                               ; preds = %35, %39, %43
  %47 = phi i32 [ %45, %43 ], [ 0, %39 ], [ 0, %35 ]
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 %31, i32 -1, !prof !220
  br label %50

50:                                               ; preds = %46, %28
  %51 = phi i32 [ %31, %28 ], [ %49, %46 ]
  %52 = add nuw nsw i32 %30, 1
  %53 = icmp eq i32 %52, 64
  br i1 %53, label %22, label %28, !prof !211, !llvm.loop !221

54:                                               ; preds = %22, %3, %17, %13, %9, %20
  %55 = phi i32 [ -1, %20 ], [ %19, %17 ], [ 0, %13 ], [ 0, %9 ], [ 0, %3 ], [ %51, %22 ]
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define dso_local void @PerlIO_pop(ptr noundef %0) local_unnamed_addr #4 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4, !prof !171

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !171

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._PerlIO_funcs, ptr %6, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12, !prof !171

12:                                               ; preds = %8
  %13 = tail call i64 %10(ptr noundef nonnull %0) #33, !prof !222
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %27, !prof !174

15:                                               ; preds = %12, %8, %4
  %16 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !154
  %18 = getelementptr inbounds %struct._PerlIO, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !152
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !174

21:                                               ; preds = %15
  %22 = load ptr, ptr %0, align 8, !tbaa !140
  %23 = getelementptr inbounds %struct._PerlIO, ptr %22, i64 0, i32 2
  store i32 33554432, ptr %23, align 8, !tbaa !152
  %24 = getelementptr inbounds %struct._PerlIO, ptr %22, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !153
  br label %27

25:                                               ; preds = %15
  %26 = load ptr, ptr %2, align 8, !tbaa !147
  store ptr %26, ptr %0, align 8, !tbaa !140
  tail call void @Perl_safesysfree(ptr noundef nonnull %2) #33
  br label %27

27:                                               ; preds = %1, %25, %21, %12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIO_get_layers(ptr noundef readonly %0) local_unnamed_addr #6 !prof !134 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @Perl_newSV_type(i32 noundef 11) #33
  %4 = icmp eq ptr %0, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #33
  %9 = load ptr, ptr %0, align 8, !tbaa !140
  store ptr %9, ptr %2, align 8, !tbaa !140
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %8, %34
  %12 = phi ptr [ %42, %34 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !153
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct._PerlIO_funcs, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !223
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = call ptr @Perl_newSVpv(ptr noundef nonnull %18, i64 noundef 0) #33
  br label %22

22:                                               ; preds = %11, %16, %20
  %23 = phi ptr [ %21, %20 ], [ @PL_sv_undef, %16 ], [ @PL_sv_undef, %11 ]
  %24 = load ptr, ptr %2, align 8, !tbaa !140
  %25 = getelementptr inbounds %struct._PerlIO, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !153
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct._PerlIO_funcs, ptr %26, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !158
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call ptr %30(ptr noundef nonnull %2, ptr noundef null, i32 noundef 0) #33
  br label %34

34:                                               ; preds = %22, %28, %32
  %35 = phi ptr [ %33, %32 ], [ @PL_sv_undef, %28 ], [ @PL_sv_undef, %22 ]
  call void @Perl_av_push(ptr noundef %3, ptr noundef %23) #33
  call void @Perl_av_push(ptr noundef %3, ptr noundef %35) #33
  %36 = load ptr, ptr %2, align 8, !tbaa !140
  %37 = getelementptr inbounds %struct._PerlIO, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !152
  %39 = zext i32 %38 to i64
  %40 = call ptr @Perl_newSViv(i64 noundef %39) #33
  call void @Perl_av_push(ptr noundef %3, ptr noundef %40) #33
  %41 = load ptr, ptr %2, align 8, !tbaa !140
  %42 = load ptr, ptr %41, align 8, !tbaa !140
  store ptr %42, ptr %2, align 8, !tbaa !140
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %11, !llvm.loop !224

44:                                               ; preds = %34, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #33
  br label %45

45:                                               ; preds = %44, %5, %1
  ret ptr %3
}

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #5

declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIO_find_layer(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #6 !prof !134 {
  br label %4

4:                                                ; preds = %63, %3
  %5 = phi i64 [ %1, %3 ], [ %11, %63 ]
  %6 = phi i32 [ %2, %3 ], [ 0, %63 ]
  %7 = icmp slt i64 %5, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #35
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i64 [ %9, %8 ], [ %5, %4 ]
  %12 = load ptr, ptr @PL_known_layers, align 8, !tbaa !140
  %13 = getelementptr inbounds %struct.PerlIO_list_s, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !183
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.PerlIO_list_s, ptr %12, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !181
  br label %22

19:                                               ; preds = %35
  %20 = add nuw nsw i64 %24, 1
  %21 = icmp eq i64 %20, %14
  br i1 %21, label %38, label %22, !llvm.loop !225

22:                                               ; preds = %16, %19
  %23 = phi ptr [ undef, %16 ], [ %37, %19 ]
  %24 = phi i64 [ 0, %16 ], [ %20, %19 ]
  %25 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %18, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !195
  %27 = getelementptr inbounds %struct._PerlIO_funcs, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !223
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #35
  %30 = icmp eq i64 %29, %11
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = tail call i32 @bcmp(ptr %28, ptr %0, i64 %11)
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %33, ptr %23, ptr %26
  br label %35

35:                                               ; preds = %31, %22
  %36 = phi i1 [ true, %22 ], [ %33, %31 ]
  %37 = phi ptr [ %23, %22 ], [ %34, %31 ]
  br i1 %36, label %19, label %64

38:                                               ; preds = %19, %10
  %39 = icmp ne i32 %6, 0
  %40 = load ptr, ptr @PL_subname, align 8
  %41 = icmp ne ptr %40, null
  %42 = select i1 %39, i1 %41, i1 false
  %43 = load ptr, ptr @PL_def_layerlist, align 8
  %44 = icmp ne ptr %43, null
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %64

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.PerlIO_list_s, ptr %43, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !183
  %49 = icmp sgt i64 %48, 1
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i8, ptr @PL_in_load_module, align 1, !tbaa !226, !range !228, !noundef !229
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #33
  br label %64

54:                                               ; preds = %50
  %55 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.6, i64 noundef 6) #33
  %56 = tail call ptr @Perl_newSVpvn(ptr noundef %0, i64 noundef %11) #33
  %57 = tail call ptr @Perl_get_cvn_flags(ptr noundef nonnull @.str.7, i64 noundef 25, i32 noundef 0) #33
  tail call void @Perl_push_scope() #33
  tail call void @Perl_save_bool(ptr noundef nonnull @PL_in_load_module) #33
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  tail call void @Perl_save_generic_svref(ptr noundef nonnull @PL_warnhook) #33
  %60 = getelementptr inbounds %struct.cv, ptr %57, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !230
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !230
  store ptr %57, ptr @PL_warnhook, align 8, !tbaa !140
  br label %63

63:                                               ; preds = %59, %54
  store i8 1, ptr @PL_in_load_module, align 1, !tbaa !226
  tail call void (i32, ptr, ptr, ...) @Perl_load_module(i32 noundef 0, ptr noundef %55, ptr noundef null, ptr noundef %56, ptr noundef null) #33
  tail call void @Perl_pop_scope() #33
  br label %4

64:                                               ; preds = %35, %38, %46, %53
  %65 = phi ptr [ null, %53 ], [ null, %46 ], [ null, %38 ], [ %37, %35 ]
  ret ptr %65
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #5

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @Perl_get_cvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @Perl_push_scope() local_unnamed_addr #5

declare void @Perl_save_bool(ptr noundef) local_unnamed_addr #5

declare void @Perl_save_generic_svref(ptr noundef) local_unnamed_addr #5

declare void @Perl_load_module(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @Perl_pop_scope() local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIO_tab_sv(ptr noundef %0) local_unnamed_addr #6 !prof !134 {
  %2 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str.9, i32 noundef 13, i32 noundef 1) #33
  %3 = ptrtoint ptr %0 to i64
  %4 = tail call ptr @Perl_newSViv(i64 noundef %3) #33
  %5 = tail call ptr @Perl_newRV_noinc(ptr noundef %4) #33
  %6 = tail call ptr @Perl_sv_bless(ptr noundef %5, ptr noundef %2) #33
  ret ptr %6
}

declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_PerlIO__Layer__NoWarnings(ptr nocapture readnone %0) #6 !prof !134 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !140
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !140
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !140
  %5 = load i32, ptr %3, align 4, !tbaa !135
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !140
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = sext i32 %7 to i64
  %17 = getelementptr inbounds ptr, ptr %6, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !140
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !232
  %21 = and i32 %20, 2098176
  %22 = icmp eq i32 %21, 1024
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %18, ptr noundef null, i32 noundef 34) #33
  br label %25

25:                                               ; preds = %15, %23, %1
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !140
  %27 = sext i32 %7 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = getelementptr inbounds ptr, ptr %28, i64 -1
  store ptr %29, ptr @PL_stack_sp, align 8, !tbaa !140
  ret void
}

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_PerlIO__Layer__find(ptr nocapture readnone %0) #6 !prof !134 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !140
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !140
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !140
  %6 = load i32, ptr %4, align 4, !tbaa !135
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !140
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11) #33
  br label %115

18:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #33
  %19 = sext i32 %6 to i64
  %20 = getelementptr ptr, ptr %7, i64 %19
  %21 = getelementptr ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !140
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !232
  %25 = and i32 %24, 2098176
  %26 = icmp eq i32 %25, 1024
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load ptr, ptr %22, align 8, !tbaa !233
  %29 = getelementptr inbounds %struct.xpv, ptr %28, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !234
  store i64 %30, ptr %2, align 8, !tbaa !236
  %31 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !139
  br label %35

33:                                               ; preds = %18
  %34 = call ptr @Perl_sv_2pv_flags(ptr noundef %22, ptr noundef nonnull %2, i32 noundef 34) #33
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = icmp eq i32 %15, 2
  br i1 %37, label %99, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @PL_stack_base, align 8, !tbaa !140
  %40 = sext i32 %6 to i64
  %41 = getelementptr ptr, ptr %39, i64 %40
  %42 = getelementptr ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8, !tbaa !140
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !232
  %46 = and i32 %45, 2097152
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %38
  %49 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %43, i32 noundef 2) #33
  br label %99

50:                                               ; preds = %38
  %51 = and i32 %45, 65280
  %52 = icmp ne i32 %51, 0
  %53 = and i32 %45, 255
  %54 = icmp eq i32 %53, 8
  %55 = or i1 %52, %54
  %56 = and i32 %45, 16777471
  %57 = icmp eq i32 %56, 16777226
  %58 = or i1 %57, %55
  br i1 %58, label %59, label %99

59:                                               ; preds = %50
  %60 = and i32 %45, 1024
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %43, align 8, !tbaa !233
  %64 = icmp eq ptr %63, null
  br i1 %64, label %99, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.xpv, ptr %63, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !234
  %68 = icmp ugt i64 %67, 1
  br i1 %68, label %99, label %69

69:                                               ; preds = %65
  %70 = icmp eq i64 %67, 0
  br i1 %70, label %99, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !139
  %74 = load i8, ptr %73, align 1, !tbaa !139
  %75 = icmp ne i8 %74, 48
  br label %99

76:                                               ; preds = %59
  %77 = and i32 %45, 768
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %76
  %80 = and i32 %45, 256
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %43, align 8, !tbaa !233
  %84 = getelementptr inbounds %struct.xpviv, ptr %83, i64 0, i32 4
  %85 = load i64, ptr %84, align 8, !tbaa !139
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82, %79
  %88 = and i32 %45, 512
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %43, align 8, !tbaa !233
  %92 = getelementptr inbounds %struct.xpvnv, ptr %91, i64 0, i32 5
  %93 = load double, ptr %92, align 8, !tbaa !139
  %94 = fcmp uno double %93, 0.000000e+00
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = fcmp une double %93, 0.000000e+00
  br label %99

97:                                               ; preds = %76
  %98 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %43, i32 noundef 0) #33
  br label %99

99:                                               ; preds = %90, %82, %95, %87, %62, %69, %71, %65, %50, %35, %48, %97
  %100 = phi i1 [ %49, %48 ], [ %98, %97 ], [ false, %35 ], [ false, %50 ], [ false, %62 ], [ true, %65 ], [ false, %69 ], [ %75, %71 ], [ true, %82 ], [ false, %87 ], [ %96, %95 ], [ true, %90 ]
  %101 = load i64, ptr %2, align 8, !tbaa !236
  %102 = zext i1 %100 to i32
  %103 = call ptr @PerlIO_find_layer(ptr noundef %36, i64 noundef %101, i32 noundef %102)
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = call ptr @PerlIO_tab_sv(ptr noundef nonnull %103)
  %107 = call ptr @Perl_sv_2mortal(ptr noundef %106) #33
  br label %108

108:                                              ; preds = %99, %105
  %109 = phi ptr [ %107, %105 ], [ @PL_sv_undef, %99 ]
  %110 = load ptr, ptr @PL_stack_base, align 8, !tbaa !140
  %111 = sext i32 %8 to i64
  %112 = getelementptr inbounds ptr, ptr %110, i64 %111
  store ptr %109, ptr %112, align 8, !tbaa !140
  %113 = load ptr, ptr @PL_stack_base, align 8, !tbaa !140
  %114 = getelementptr inbounds ptr, ptr %113, i64 %111
  store ptr %114, ptr @PL_stack_sp, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #33
  br label %115

115:                                              ; preds = %108, %17
  ret void
}

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local void @PerlIO_define_layer(ptr noundef %0) local_unnamed_addr #6 !prof !237 {
  %2 = load ptr, ptr @PL_known_layers, align 8, !tbaa !140
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !238

4:                                                ; preds = %1
  %5 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 32) #33
  store i64 1, ptr %5, align 8, !tbaa !177
  store ptr %5, ptr @PL_known_layers, align 8, !tbaa !140
  br label %6

6:                                                ; preds = %4, %1
  %7 = load ptr, ptr @PL_known_layers, align 8, !tbaa !140
  tail call void @PerlIO_list_push(ptr noundef %7, ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PerlIO_parse_layers(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !196 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %116, label %4, !prof !197

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !139
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %116, label %7, !prof !239

7:                                                ; preds = %4, %111
  %8 = phi i1 [ %114, %111 ], [ %6, %4 ]
  %9 = phi ptr [ %112, %111 ], [ %1, %4 ]
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi ptr [ %20, %19 ], [ %9, %7 ]
  %12 = load i8, ptr %11, align 1, !tbaa !139
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !135
  %16 = and i32 %15, 17408
  %17 = icmp eq i32 %16, 17408
  br i1 %17, label %19, label %18, !prof !240

18:                                               ; preds = %10
  switch i8 %12, label %21 [
    i8 58, label %19
    i8 0, label %111
  ], !prof !241

19:                                               ; preds = %18, %10
  %20 = getelementptr inbounds i8, ptr %11, i64 1
  br label %10, !llvm.loop !242

21:                                               ; preds = %18
  %22 = and i32 %15, 81920
  %23 = icmp eq i32 %22, 81920
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = sext i8 %12 to i32
  %26 = icmp eq i8 %12, 39
  %27 = select i1 %26, i32 34, i32 39
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef %27, i32 noundef %25, i32 noundef %27, ptr noundef nonnull %11) #33
  %28 = tail call ptr @__errno_location() #34
  store i32 22, ptr %28, align 4, !tbaa !135
  br label %108

29:                                               ; preds = %21, %29
  %30 = phi ptr [ %31, %29 ], [ %11, %21 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !139
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !135
  %36 = and i32 %35, 16385
  %37 = icmp eq i32 %36, 16385
  br i1 %37, label %29, label %38, !llvm.loop !243

38:                                               ; preds = %29
  %39 = ptrtoint ptr %31 to i64
  %40 = ptrtoint ptr %11 to i64
  %41 = sub i64 %39, %40
  %42 = icmp eq i8 %32, 40
  br i1 %42, label %43, label %81

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, ptr %30, i64 2
  %45 = ptrtoint ptr %44 to i64
  br label %46

46:                                               ; preds = %43, %72
  %47 = phi i1 [ false, %43 ], [ %76, %72 ]
  %48 = phi i32 [ 1, %43 ], [ %75, %72 ]
  %49 = phi i64 [ 0, %43 ], [ %74, %72 ]
  %50 = phi ptr [ %44, %43 ], [ %73, %72 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  %52 = load i8, ptr %50, align 1, !tbaa !139
  switch i8 %52, label %72 [
    i8 41, label %53
    i8 40, label %59
    i8 92, label %61
    i8 0, label %65
  ]

53:                                               ; preds = %46
  %54 = add nsw i32 %48, -1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = ptrtoint ptr %50 to i64
  %58 = sub i64 %57, %45
  br label %72

59:                                               ; preds = %46
  %60 = add nsw i32 %48, 1
  br label %72

61:                                               ; preds = %46
  %62 = getelementptr inbounds i8, ptr %50, i64 2
  %63 = load i8, ptr %51, align 1, !tbaa !139
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61, %46
  %66 = phi i64 [ 1, %46 ], [ 2, %61 ]
  %67 = getelementptr inbounds i8, ptr %50, i64 %66
  %68 = getelementptr inbounds i8, ptr %67, i64 -1
  %69 = ptrtoint ptr %68 to i64
  %70 = sub i64 %69, %40
  %71 = trunc i64 %70 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 8, ptr noundef nonnull @.str.14, i32 noundef %71, ptr noundef nonnull %11) #33
  br label %77

72:                                               ; preds = %46, %61, %53, %56, %59
  %73 = phi ptr [ %51, %46 ], [ %62, %61 ], [ %51, %59 ], [ %51, %56 ], [ %51, %53 ]
  %74 = phi i64 [ %49, %46 ], [ %49, %61 ], [ %49, %59 ], [ %58, %56 ], [ %49, %53 ]
  %75 = phi i32 [ %48, %46 ], [ %48, %61 ], [ %60, %59 ], [ 0, %56 ], [ %54, %53 ]
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %46, !llvm.loop !244

77:                                               ; preds = %72, %65
  %78 = phi i64 [ %49, %65 ], [ %74, %72 ]
  %79 = phi i1 [ %47, %65 ], [ %76, %72 ]
  %80 = phi ptr [ %68, %65 ], [ %73, %72 ]
  br i1 %79, label %81, label %108

81:                                               ; preds = %77, %38
  %82 = phi ptr [ %80, %77 ], [ %31, %38 ]
  %83 = phi ptr [ %44, %77 ], [ null, %38 ]
  %84 = phi i64 [ %78, %77 ], [ 0, %38 ]
  %85 = icmp ugt ptr %82, %11
  br i1 %85, label %86, label %107

86:                                               ; preds = %81
  %87 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull %11, i64 noundef %41, i32 noundef 1)
  %88 = icmp eq ptr %87, null
  br i1 %88, label %104, label %89

89:                                               ; preds = %86
  %90 = icmp eq ptr %83, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %89
  %92 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull %83, i64 noundef %84) #33
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi ptr [ %92, %91 ], [ null, %89 ]
  %95 = icmp eq ptr %94, null
  %96 = select i1 %95, ptr @PL_sv_undef, ptr %94
  tail call void @PerlIO_list_push(ptr noundef %0, ptr noundef nonnull %87, ptr noundef nonnull %96)
  br i1 %95, label %106, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.sv, ptr %94, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !159
  %100 = icmp ugt i32 %99, 1
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = add i32 %99, -1
  store i32 %102, ptr %98, align 8, !tbaa !159
  br label %106

103:                                              ; preds = %97
  tail call void @Perl_sv_free2(ptr noundef nonnull %94, i32 noundef %99) #33
  br label %106

104:                                              ; preds = %86
  %105 = trunc i64 %41 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 8, ptr noundef nonnull @.str.15, i32 noundef %105, ptr noundef nonnull %11) #33
  br label %106

106:                                              ; preds = %103, %101, %93, %104
  br i1 %88, label %108, label %107

107:                                              ; preds = %106, %81
  br label %108

108:                                              ; preds = %106, %77, %107, %24
  %109 = phi ptr [ %82, %107 ], [ %11, %77 ], [ %11, %24 ], [ %11, %106 ]
  %110 = phi i1 [ true, %107 ], [ false, %77 ], [ false, %24 ], [ false, %106 ]
  br i1 %110, label %111, label %115

111:                                              ; preds = %18, %108
  %112 = phi ptr [ %109, %108 ], [ %11, %18 ]
  %113 = load i8, ptr %112, align 1, !tbaa !139
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %116, label %7, !prof !198, !llvm.loop !245

115:                                              ; preds = %108
  br i1 %8, label %116, label %117, !prof !246

116:                                              ; preds = %111, %4, %115, %2
  br label %117

117:                                              ; preds = %115, %116
  %118 = phi i32 [ -1, %115 ], [ 0, %116 ]
  ret i32 %118
}

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local void @PerlIO_default_buffer(ptr nocapture noundef %0) local_unnamed_addr #6 !prof !134 {
  tail call void @PerlIO_list_push(ptr noundef %0, ptr noundef nonnull @PerlIO_perlio, ptr noundef nonnull @PL_sv_undef)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @PerlIO_arg_fetch(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #9 !prof !134 {
  %3 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  %5 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %4, i64 %1, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !185
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIO_layer_fetch(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef readnone %2) local_unnamed_addr #6 !prof !134 {
  %4 = icmp sgt i64 %1, -1
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !183
  %8 = icmp sgt i64 %7, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PerlIO_list_s, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !181
  %12 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %11, i64 %1
  %13 = load ptr, ptr %12, align 8, !tbaa !195
  br label %17

14:                                               ; preds = %5, %3
  %15 = icmp eq ptr %2, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18) #33
  br label %17

17:                                               ; preds = %14, %16, %9
  %18 = phi ptr [ %13, %9 ], [ %2, %16 ], [ %2, %14 ]
  ret ptr %18
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOPop_pushed(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #6 !prof !134 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !140
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !153
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._PerlIO_funcs, ptr %11, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !209
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i64 %15(ptr noundef nonnull %0) #33
  br label %19

19:                                               ; preds = %9, %13, %17
  tail call void @PerlIO_pop(ptr noundef nonnull %0)
  br label %20

20:                                               ; preds = %4, %6, %19
  %21 = phi i64 [ 0, %19 ], [ -1, %6 ], [ -1, %4 ]
  ret i64 %21
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIOBase_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #6 !prof !134 {
  %11 = add nsw i64 %2, -1
  %12 = tail call ptr @PerlIO_default_layers()
  %13 = getelementptr inbounds %struct.PerlIO_list_s, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !183
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.PerlIO_list_s, ptr %12, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !181
  %19 = load ptr, ptr %18, align 8, !tbaa !195
  br label %20

20:                                               ; preds = %10, %16
  %21 = phi ptr [ %19, %16 ], [ @PerlIO_stdio, %10 ]
  %22 = icmp sgt i64 %2, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.PerlIO_list_s, ptr %1, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !183
  %26 = icmp slt i64 %25, %2
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.PerlIO_list_s, ptr %1, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !181
  %30 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %29, i64 %11
  %31 = load ptr, ptr %30, align 8, !tbaa !195
  br label %35

32:                                               ; preds = %23, %20
  %33 = icmp eq ptr %21, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18) #33
  br label %35

35:                                               ; preds = %27, %32, %34
  %36 = phi ptr [ %31, %27 ], [ %21, %34 ], [ %21, %32 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %54, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct._PerlIO_funcs, ptr %36, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !247
  %41 = icmp eq ptr %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = tail call ptr %40(ptr noundef nonnull %36, ptr noundef %1, i64 noundef %11, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #33
  %44 = icmp eq ptr %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.PerlIO_list_s, ptr %1, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !181
  %48 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %47, i64 %2, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !185
  %50 = tail call ptr @PerlIO_push(ptr noundef nonnull %43, ptr noundef %0, ptr noundef %3, ptr noundef %49)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %43)
  br label %56

54:                                               ; preds = %38, %35
  %55 = tail call ptr @__errno_location() #34
  store i32 22, ptr %55, align 4, !tbaa !135
  br label %56

56:                                               ; preds = %52, %45, %42, %54
  %57 = phi ptr [ null, %54 ], [ null, %52 ], [ %43, %45 ], [ %43, %42 ]
  ret ptr %57
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PerlIO_default_layers() local_unnamed_addr #4 !prof !248 {
  %1 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !140
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7, !prof !249

3:                                                ; preds = %0
  %4 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 32) #33
  store i64 1, ptr %4, align 8, !tbaa !177
  store ptr %4, ptr @PL_def_layerlist, align 8, !tbaa !140
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_unix)
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_raw)
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_perlio)
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_stdio)
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_crlf)
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_utf8)
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_remove)
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_byte)
  %5 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !140
  tail call void @PerlIO_list_push(ptr noundef %5, ptr noundef nonnull @PerlIO_unix, ptr noundef nonnull @PL_sv_undef)
  %6 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !140
  tail call void @PerlIO_list_push(ptr noundef %6, ptr noundef nonnull @PerlIO_perlio, ptr noundef nonnull @PL_sv_undef)
  br label %7

7:                                                ; preds = %3, %0
  %8 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !140
  %9 = getelementptr inbounds %struct.PerlIO_list_s, ptr %8, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !183
  %11 = icmp slt i64 %10, 2
  br i1 %11, label %12, label %13, !prof !171

12:                                               ; preds = %7
  tail call void @PerlIO_list_push(ptr noundef %8, ptr noundef nonnull @PerlIO_perlio, ptr noundef nonnull @PL_sv_undef)
  br label %13

13:                                               ; preds = %12, %7
  %14 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !140
  ret ptr %14
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_boot_core_PerlIO() local_unnamed_addr #6 !prof !201 {
  %1 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.20, ptr noundef nonnull @XS_PerlIO__Layer__find, ptr noundef nonnull @.str.21) #33
  %2 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_PerlIO__Layer__NoWarnings, ptr noundef nonnull @.str.21) #33
  ret void
}

declare ptr @Perl_newXS(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIO_default_layer(i32 noundef %0) local_unnamed_addr #6 !prof !134 {
  %2 = tail call ptr @PerlIO_default_layers()
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.PerlIO_list_s, ptr %2, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !183
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, %0
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ %8, %4 ], [ %0, %1 ]
  %11 = sext i32 %10 to i64
  %12 = icmp sgt i32 %10, -1
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.PerlIO_list_s, ptr %2, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !183
  %16 = icmp sgt i64 %15, %11
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.PerlIO_list_s, ptr %2, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !181
  %20 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %19, i64 %11
  %21 = load ptr, ptr %20, align 8, !tbaa !195
  br label %22

22:                                               ; preds = %9, %13, %17
  %23 = phi ptr [ %21, %17 ], [ @PerlIO_stdio, %13 ], [ @PerlIO_stdio, %9 ]
  ret ptr %23
}

; Function Attrs: cold nounwind uwtable
define dso_local void @PerlIO_stdstreams() local_unnamed_addr #6 !prof !201 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !140
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %8, !prof !250

3:                                                ; preds = %0
  %4 = tail call ptr @Perl_safesyscalloc(i64 noundef 64, i64 noundef 32) #33
  store ptr %4, ptr @PL_perlio, align 8, !tbaa !140
  %5 = tail call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null)
  %6 = tail call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null)
  %7 = tail call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %8

8:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIO_fdopen(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !134 {
  %3 = tail call ptr @PerlIO_openn(ptr noundef null, ptr noundef %1, i32 noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @PerlIO_push(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 !prof !248 {
  %5 = load i64, ptr %1, align 8, !tbaa !251
  %6 = icmp eq i64 %5, 224
  br i1 %6, label %8, label %7, !prof !174

7:                                                ; preds = %4
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i64 noundef %5, ptr noundef nonnull @.str.26, i64 noundef 224) #33
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._PerlIO_funcs, ptr %1, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !252
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %35, label %12, !prof !171

12:                                               ; preds = %8
  %13 = icmp ult i64 %10, 32
  br i1 %13, label %14, label %15, !prof !171

14:                                               ; preds = %12
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i64 noundef %10, ptr noundef nonnull @.str.26, i64 noundef 32) #33
  br label %15

15:                                               ; preds = %14, %12
  %16 = icmp eq ptr %0, null
  br i1 %16, label %44, label %17, !prof !171

17:                                               ; preds = %15
  %18 = load i64, ptr %9, align 8, !tbaa !252
  %19 = tail call ptr @Perl_safesyscalloc(i64 noundef %18, i64 noundef 1) #33
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21, !prof !171

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !140
  store ptr %22, ptr %19, align 8, !tbaa !147
  %23 = getelementptr inbounds %struct._PerlIO, ptr %19, i64 0, i32 1
  store ptr %1, ptr %23, align 8, !tbaa !153
  %24 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !154
  %26 = getelementptr inbounds %struct._PerlIO, ptr %19, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !154
  store ptr %19, ptr %0, align 8, !tbaa !140
  %27 = load ptr, ptr %23, align 8, !tbaa !153
  %28 = getelementptr inbounds %struct._PerlIO_funcs, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !253
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31, !prof !171

31:                                               ; preds = %21
  %32 = tail call i64 %29(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %1) #33, !prof !254
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %44, label %34, !prof !174

34:                                               ; preds = %31
  tail call void @PerlIO_pop(ptr noundef nonnull %0)
  br label %45

35:                                               ; preds = %8
  %36 = icmp eq ptr %0, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct._PerlIO_funcs, ptr %1, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !253
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = tail call i64 %39(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %1) #33
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %21, %31, %15, %41, %35, %37
  br label %45

45:                                               ; preds = %17, %34, %41, %44
  %46 = phi ptr [ %0, %44 ], [ null, %41 ], [ null, %34 ], [ null, %17 ]
  ret ptr %46
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOBase_binmode(ptr noundef %0) #6 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !207
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, -32769
  store i32 %18, ptr %16, align 8, !tbaa !152
  br label %20

19:                                               ; preds = %10, %6
  tail call void @PerlIO_pop(ptr noundef nonnull %0)
  br label %20

20:                                               ; preds = %1, %3, %15, %19
  %21 = phi i64 [ 0, %19 ], [ 0, %15 ], [ -1, %3 ], [ -1, %1 ]
  ret i64 %21
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIORaw_pushed(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #6 !prof !134 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %50, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !140
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !153
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._PerlIO_funcs, ptr %11, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !209
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i64 %15(ptr noundef nonnull %0) #33
  br label %19

19:                                               ; preds = %9, %13, %17
  %20 = load ptr, ptr %0, align 8, !tbaa !140
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %19, %40
  %23 = phi ptr [ %42, %40 ], [ %20, %19 ]
  %24 = phi ptr [ %41, %40 ], [ %0, %19 ]
  %25 = getelementptr inbounds %struct._PerlIO, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !153
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct._PerlIO_funcs, ptr %26, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !255
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = tail call i64 %30(ptr noundef nonnull %24) #33
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load ptr, ptr %24, align 8, !tbaa !140
  %37 = icmp eq ptr %36, %23
  %38 = select i1 %37, ptr %36, ptr %24
  br label %40

39:                                               ; preds = %28, %22
  tail call void @PerlIO_pop(ptr noundef nonnull %24)
  br label %40

40:                                               ; preds = %35, %39
  %41 = phi ptr [ %24, %39 ], [ %38, %35 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !140
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %22, !llvm.loop !256

44:                                               ; preds = %40, %19
  %45 = load ptr, ptr %0, align 8, !tbaa !140
  %46 = icmp eq ptr %45, null
  br label %47

47:                                               ; preds = %32, %44
  %48 = phi i64 [ 0, %44 ], [ -1, %32 ]
  %49 = phi i1 [ %46, %44 ], [ false, %32 ]
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %6, %4
  br label %51

51:                                               ; preds = %47, %50
  %52 = phi i64 [ %48, %47 ], [ -1, %50 ]
  ret i64 %52
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @PerlIO_apply_layera(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 !prof !134 {
  %6 = getelementptr inbounds %struct.PerlIO_list_s, ptr %2, i64 0, i32 1
  %7 = getelementptr inbounds %struct.PerlIO_list_s, ptr %2, i64 0, i32 3
  %8 = getelementptr inbounds %struct.PerlIO_list_s, ptr %2, i64 0, i32 3
  br label %9

9:                                                ; preds = %34, %5
  %10 = phi i32 [ 0, %5 ], [ %35, %34 ]
  %11 = phi i64 [ %3, %5 ], [ %36, %34 ]
  %12 = icmp slt i64 %11, %4
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  %14 = icmp sgt i64 %11, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = load i64, ptr %6, align 8, !tbaa !183
  %17 = icmp sgt i64 %16, %11
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load ptr, ptr %7, align 8, !tbaa !181
  %20 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %19, i64 %11
  %21 = load ptr, ptr %20, align 8, !tbaa !195
  br label %23

22:                                               ; preds = %15, %13
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18) #33
  br label %23

23:                                               ; preds = %18, %22
  %24 = phi ptr [ %21, %18 ], [ null, %22 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %8, align 8, !tbaa !181
  %28 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %27, i64 %11, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !185
  %30 = tail call ptr @PerlIO_push(ptr noundef %0, ptr noundef nonnull %24, ptr noundef %1, ptr noundef %29)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %26, %23
  %33 = add nsw i64 %11, 1
  br label %34

34:                                               ; preds = %26, %32
  %35 = phi i32 [ %10, %32 ], [ -1, %26 ]
  %36 = phi i64 [ %33, %32 ], [ %11, %26 ]
  %37 = phi i1 [ true, %32 ], [ false, %26 ]
  br i1 %37, label %9, label %38

38:                                               ; preds = %34, %9
  %39 = phi i32 [ %10, %9 ], [ %35, %34 ]
  ret i32 %39
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @PerlIO_apply_layers(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 !prof !134 {
  tail call void @Perl_push_scope() #33
  %4 = load ptr, ptr @PL_errgv, align 8, !tbaa !140
  %5 = tail call ptr @Perl_save_scalar(ptr noundef %4) #33
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 32) #33
  store i64 1, ptr %10, align 8, !tbaa !177
  %11 = tail call i32 @PerlIO_parse_layers(ptr noundef nonnull %10, ptr noundef nonnull %2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.PerlIO_list_s, ptr %10, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !183
  %16 = tail call i32 @PerlIO_apply_layera(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %10, i64 noundef 0, i64 noundef %15), !range !257
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 [ %16, %13 ], [ -1, %9 ]
  tail call void @PerlIO_list_free(ptr noundef nonnull %10)
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi i32 [ %18, %17 ], [ 0, %3 ]
  tail call void @Perl_pop_scope() #33
  ret i32 %20
}

declare ptr @Perl_save_scalar(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local i32 @PerlIO_binmode(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #6 !prof !134 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @PerlIO_apply_layers(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %3), !range !257
  %8 = icmp eq i32 %7, 0
  br label %12

9:                                                ; preds = %4
  %10 = tail call ptr @PerlIO_push(ptr noundef nonnull %0, ptr noundef nonnull @PerlIO_raw, ptr noundef null, ptr noundef null)
  %11 = icmp ne ptr %10, null
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ %8, %6 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PerlIO__close(ptr noundef %0) local_unnamed_addr #4 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3, !prof !142

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !142

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !142

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !167
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !142

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #33, !prof !258
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call i64 @PerlIOBase_close(ptr noundef nonnull %0)
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = trunc i64 %19 to i32
  br label %23

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #34
  store i32 9, ptr %22, align 4, !tbaa !135
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ -1, %21 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PerlIOBase_close(ptr noundef %0) local_unnamed_addr #4 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3, !prof !142

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6, !prof !142

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10, !prof !142

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !209
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14, !prof !142

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #33, !prof !259
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  br label %18

18:                                               ; preds = %6, %10, %14
  %19 = phi i64 [ %17, %14 ], [ 0, %10 ], [ 0, %6 ]
  %20 = load ptr, ptr %0, align 8, !tbaa !140
  %21 = getelementptr inbounds %struct._PerlIO, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !152
  %23 = and i32 %22, -2098689
  store i32 %23, ptr %21, align 8, !tbaa !152
  br label %24

24:                                               ; preds = %45, %18
  %25 = phi ptr [ %4, %18 ], [ %46, %45 ]
  %26 = phi i64 [ %19, %18 ], [ %47, %45 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !140
  %28 = icmp eq ptr %27, null
  br i1 %28, label %51, label %29, !prof !142

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct._PerlIO, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !153
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33, !prof !142

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct._PerlIO_funcs, ptr %31, i64 0, i32 16
  %35 = load ptr, ptr %34, align 8, !tbaa !167
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37, !prof !142

37:                                               ; preds = %33
  %38 = tail call i64 %35(ptr noundef nonnull %25) #33, !prof !260
  %39 = icmp eq i64 %38, 0
  %40 = select i1 %39, i64 %26, i64 -1, !prof !261
  br label %45

41:                                               ; preds = %33, %29
  %42 = getelementptr inbounds %struct._PerlIO, ptr %27, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !152
  %44 = and i32 %43, -2098689
  store i32 %44, ptr %42, align 8, !tbaa !152
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi ptr [ %25, %37 ], [ %27, %41 ]
  %47 = phi i64 [ %40, %37 ], [ %26, %41 ]
  %48 = phi i1 [ false, %37 ], [ true, %41 ]
  br i1 %48, label %24, label %51, !prof !142

49:                                               ; preds = %3, %1
  %50 = tail call ptr @__errno_location() #34
  store i32 9, ptr %50, align 4, !tbaa !135
  br label %51

51:                                               ; preds = %45, %24, %49
  %52 = phi i64 [ -1, %49 ], [ %26, %24 ], [ %47, %45 ]
  ret i64 %52
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_PerlIO_fileno(ptr noundef %0) local_unnamed_addr #4 !prof !262 {
  br label %2

2:                                                ; preds = %19, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %19 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5, !prof !263

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8, !prof !263

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12, !prof !263

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !264
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !263

16:                                               ; preds = %12
  %17 = tail call i64 %14(ptr noundef nonnull %3) #33, !prof !265
  %18 = trunc i64 %17 to i32
  br label %22

19:                                               ; preds = %12, %8
  br label %2

20:                                               ; preds = %5, %2
  %21 = tail call ptr @__errno_location() #34
  store i32 9, ptr %21, align 4, !tbaa !135
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi i32 [ -1, %20 ], [ %18, %16 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PerlIOBase_fileno(ptr noundef readonly %0) #4 !prof !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !267

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !267

6:                                                ; preds = %3
  %7 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %4)
  %8 = sext i32 %7 to i64
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi i64 [ %8, %6 ], [ -1, %3 ], [ -1, %1 ]
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PerlIO_resolve_layers(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #4 !prof !166 {
  %5 = tail call ptr @PerlIO_default_layers()
  %6 = load ptr, ptr @PL_perlio, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !268

8:                                                ; preds = %4
  tail call void @PerlIO_stdstreams()
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %52, label %11, !prof !269

11:                                               ; preds = %9
  %12 = load ptr, ptr %3, align 8, !tbaa !140
  %13 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !232
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %52, label %17, !prof !194

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !232
  %22 = and i32 %21, 1048576
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %17
  %25 = and i32 %21, 255
  %26 = icmp ult i32 %25, 11
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = add nsw i32 %25, -9
  %29 = icmp ult i32 %28, 2
  %30 = and i32 %21, 16826368
  %31 = icmp eq i32 %30, 32768
  %32 = and i1 %31, %29
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.64, i64 noundef 6, i32 noundef 1)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 8, ptr noundef nonnull @.str.65) #33
  br label %47

37:                                               ; preds = %27, %24
  %38 = trunc i32 %21 to i8
  switch i8 %38, label %47 [
    i8 11, label %39
    i8 12, label %41
    i8 13, label %43
    i8 9, label %45
  ]

39:                                               ; preds = %37
  %40 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.66, i64 noundef 5, i32 noundef 0)
  br label %47

41:                                               ; preds = %37
  %42 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.67, i64 noundef 4, i32 noundef 0)
  br label %47

43:                                               ; preds = %37
  %44 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.68, i64 noundef 4, i32 noundef 0)
  br label %47

45:                                               ; preds = %37
  %46 = tail call ptr @PerlIO_find_layer(ptr noundef nonnull @.str.69, i64 noundef 4, i32 noundef 0)
  br label %47

47:                                               ; preds = %33, %36, %37, %39, %41, %43, %45
  %48 = phi ptr [ %46, %45 ], [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %34, %36 ], [ %34, %33 ], [ null, %37 ]
  %49 = icmp ne ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 32) #33
  store i64 1, ptr %51, align 8, !tbaa !177
  tail call void @PerlIO_list_push(ptr noundef nonnull %51, ptr noundef nonnull %48, ptr noundef nonnull @PL_sv_undef)
  br label %52

52:                                               ; preds = %11, %17, %50, %47, %9
  %53 = phi ptr [ %5, %9 ], [ %5, %17 ], [ %5, %11 ], [ %51, %50 ], [ %5, %47 ]
  %54 = phi i1 [ false, %9 ], [ false, %17 ], [ false, %11 ], [ true, %50 ], [ %49, %47 ]
  %55 = icmp eq ptr %0, null
  br i1 %55, label %59, label %56, !prof !270

56:                                               ; preds = %52
  %57 = load i8, ptr %0, align 1, !tbaa !139
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %61, !prof !197

59:                                               ; preds = %56, %52
  %60 = tail call ptr @Perl_PerlIO_context_layers(ptr noundef %1)
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi ptr [ %0, %56 ], [ %60, %59 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64, !prof !270

64:                                               ; preds = %61
  %65 = load i8, ptr %62, align 1, !tbaa !139
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %75, label %67, !prof !197

67:                                               ; preds = %64
  br i1 %54, label %70, label %68, !prof !197

68:                                               ; preds = %67
  %69 = tail call ptr @PerlIO_clone_list(ptr noundef %53, ptr poison)
  br label %70

70:                                               ; preds = %67, %68
  %71 = phi ptr [ %69, %68 ], [ %53, %67 ]
  %72 = tail call i32 @PerlIO_parse_layers(ptr noundef %71, ptr noundef nonnull %62)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74, !prof !246

74:                                               ; preds = %70
  tail call void @PerlIO_list_free(ptr noundef %71)
  br label %79

75:                                               ; preds = %64, %61
  br i1 %54, label %79, label %76, !prof !271

76:                                               ; preds = %75
  %77 = load i64, ptr %53, align 8, !tbaa !177
  %78 = add nsw i64 %77, 1
  store i64 %78, ptr %53, align 8, !tbaa !177
  br label %79

79:                                               ; preds = %75, %76, %74, %70
  %80 = phi ptr [ null, %74 ], [ %71, %70 ], [ %53, %76 ], [ %53, %75 ]
  ret ptr %80
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_PerlIO_context_layers(ptr noundef readonly %0) local_unnamed_addr #6 !prof !272 {
  %2 = load ptr, ptr @PL_curcop, align 8, !tbaa !140
  %3 = icmp eq ptr %2, null
  br i1 %3, label %46, label %4, !prof !271

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %15, label %6, !prof !271

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !tbaa !139
  %8 = icmp eq i8 %7, 114
  br i1 %8, label %15, label %9, !prof !273

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !274
  %12 = and i32 %11, 524288
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr null, ptr @.str.62, !prof !220
  br label %21

15:                                               ; preds = %6, %4
  %16 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !274
  %18 = and i32 %17, 262144
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr null, ptr @.str.63, !prof !276
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi i1 [ %13, %9 ], [ %19, %15 ]
  %23 = phi ptr [ %14, %9 ], [ %20, %15 ]
  br i1 %22, label %46, label %24, !prof !277

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 13
  %26 = load ptr, ptr %25, align 8, !tbaa !278
  %27 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %26, ptr noundef %23, i64 noundef 5, i32 noundef 0, i32 noundef 0) #33
  %28 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !232
  %30 = and i32 %29, 65280
  %31 = icmp ne i32 %30, 0
  %32 = and i32 %29, 255
  %33 = icmp eq i32 %32, 8
  %34 = or i1 %31, %33
  %35 = and i32 %29, 16777471
  %36 = icmp eq i32 %35, 16777226
  %37 = or i1 %36, %34
  br i1 %37, label %38, label %46

38:                                               ; preds = %24
  %39 = and i32 %29, 2098176
  %40 = icmp eq i32 %39, 1024
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !139
  br label %46

44:                                               ; preds = %38
  %45 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %27, ptr noundef null, i32 noundef 34) #33
  br label %46

46:                                               ; preds = %44, %41, %24, %21, %1
  %47 = phi ptr [ null, %1 ], [ null, %21 ], [ %43, %41 ], [ %45, %44 ], [ null, %24 ]
  ret ptr %47
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PerlIO_openn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #4 !prof !166 {
  %9 = alloca ptr, align 8
  %10 = icmp eq ptr %5, null
  %11 = icmp eq i32 %6, 1
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %34, !prof !279

13:                                               ; preds = %8
  %14 = load ptr, ptr %7, align 8, !tbaa !140
  %15 = icmp eq ptr %14, @PL_sv_undef
  br i1 %15, label %16, label %34, !prof !182

16:                                               ; preds = %13
  %17 = tail call ptr @PerlIO_tmpfile()
  %18 = icmp eq ptr %17, null
  br i1 %18, label %172, label %19

19:                                               ; preds = %16
  %20 = icmp eq ptr %0, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !139
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %19
  %25 = tail call ptr @Perl_PerlIO_context_layers(ptr noundef %1)
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi ptr [ %0, %21 ], [ %25, %24 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %172, label %29

29:                                               ; preds = %26
  %30 = load i8, ptr %27, align 1, !tbaa !139
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %172, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @PerlIO_apply_layers(ptr noundef nonnull %17, ptr noundef %1, ptr noundef nonnull %27), !range !257
  br label %172

34:                                               ; preds = %13, %8
  br i1 %10, label %72, label %35, !prof !261

35:                                               ; preds = %34
  %36 = load ptr, ptr %5, align 8, !tbaa !140
  %37 = icmp eq ptr %36, null
  br i1 %37, label %72, label %38

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #33
  store ptr %36, ptr %9, align 8, !tbaa !140
  %39 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 32) #33
  store i64 1, ptr %39, align 8, !tbaa !177
  %40 = load ptr, ptr %9, align 8, !tbaa !140
  %41 = icmp eq ptr %40, null
  br i1 %41, label %71, label %42

42:                                               ; preds = %38, %67
  %43 = phi ptr [ %69, %67 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct._PerlIO, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !153
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct._PerlIO_funcs, ptr %45, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !158
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call ptr %49(ptr noundef nonnull %9, ptr noundef null, i32 noundef 0) #33
  br label %53

53:                                               ; preds = %51, %47, %42
  %54 = phi ptr [ %52, %51 ], [ null, %47 ], [ null, %42 ]
  %55 = load ptr, ptr %9, align 8, !tbaa !140
  %56 = getelementptr inbounds %struct._PerlIO, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !153
  %58 = icmp eq ptr %54, null
  %59 = select i1 %58, ptr @PL_sv_undef, ptr %54
  call void @PerlIO_list_push(ptr noundef nonnull %39, ptr noundef %57, ptr noundef nonnull %59)
  br i1 %58, label %67, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !159
  %63 = icmp ugt i32 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = add i32 %62, -1
  store i32 %65, ptr %61, align 8, !tbaa !159
  br label %67

66:                                               ; preds = %60
  call void @Perl_sv_free2(ptr noundef nonnull %54, i32 noundef %62) #33
  br label %67

67:                                               ; preds = %53, %64, %66
  %68 = load ptr, ptr %9, align 8, !tbaa !140
  %69 = load ptr, ptr %68, align 8, !tbaa !147
  store ptr %69, ptr %9, align 8, !tbaa !140
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %42, !llvm.loop !280

71:                                               ; preds = %67, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #33
  br label %75

72:                                               ; preds = %35, %34
  %73 = tail call ptr @PerlIO_resolve_layers(ptr noundef %0, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %172, label %75, !prof !142

75:                                               ; preds = %72, %71
  %76 = phi ptr [ %39, %71 ], [ %73, %72 ]
  %77 = getelementptr inbounds %struct.PerlIO_list_s, ptr %76, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !183
  %79 = add nsw i64 %78, -1
  br label %80

80:                                               ; preds = %102, %75
  %81 = phi i64 [ %79, %75 ], [ %103, %102 ]
  %82 = phi ptr [ null, %75 ], [ %104, %102 ]
  %83 = icmp sgt i64 %81, -1
  br i1 %83, label %84, label %106, !prof !261

84:                                               ; preds = %80
  %85 = load i64, ptr %77, align 8, !tbaa !183
  %86 = icmp sgt i64 %85, %81
  br i1 %86, label %87, label %92, !prof !261

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.PerlIO_list_s, ptr %76, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !181
  %90 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %89, i64 %81
  %91 = load ptr, ptr %90, align 8, !tbaa !195
  br label %93

92:                                               ; preds = %84
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18) #33
  br label %93

93:                                               ; preds = %87, %92
  %94 = phi ptr [ %91, %87 ], [ null, %92 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96, !prof !142

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct._PerlIO_funcs, ptr %94, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !247
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102, !prof !142

100:                                              ; preds = %96, %93
  %101 = add nsw i64 %81, -1
  br label %102

102:                                              ; preds = %96, %100
  %103 = phi i64 [ %101, %100 ], [ %81, %96 ]
  %104 = phi ptr [ %82, %100 ], [ %94, %96 ]
  %105 = phi i1 [ true, %100 ], [ false, %96 ]
  br i1 %105, label %80, label %106, !prof !142

106:                                              ; preds = %102, %80
  %107 = phi i64 [ %81, %80 ], [ %103, %102 ]
  %108 = phi ptr [ %82, %80 ], [ %104, %102 ]
  %109 = icmp eq ptr %108, null
  br i1 %109, label %140, label %110, !prof !142

110:                                              ; preds = %106
  %111 = icmp sgt i32 %6, 1
  br i1 %111, label %112, label %120, !prof !142

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct._PerlIO_funcs, ptr %108, i64 0, i32 3
  %114 = load i32, ptr %113, align 8, !tbaa !207
  %115 = and i32 %114, 131072
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct._PerlIO_funcs, ptr %108, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !223
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.32, ptr noundef %119) #33
  br label %120

120:                                              ; preds = %117, %112, %110
  %121 = getelementptr inbounds %struct._PerlIO_funcs, ptr %108, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !247
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124, !prof !142

124:                                              ; preds = %120
  %125 = call ptr %122(ptr noundef nonnull %108, ptr noundef nonnull %76, i64 noundef %107, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #33, !prof !281
  br label %128

126:                                              ; preds = %120
  %127 = tail call ptr @__errno_location() #34
  store i32 22, ptr %127, align 4, !tbaa !135
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi ptr [ %125, %124 ], [ null, %126 ]
  %130 = icmp eq ptr %129, null
  br i1 %130, label %140, label %131, !prof !142

131:                                              ; preds = %128
  %132 = add nsw i64 %107, 1
  %133 = load i64, ptr %77, align 8, !tbaa !183
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %140, !prof !142

135:                                              ; preds = %131
  %136 = call i32 @PerlIO_apply_layera(ptr noundef nonnull %129, ptr noundef %1, ptr noundef nonnull %76, i64 noundef %132, i64 noundef %133), !range !257
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = call i32 @Perl_PerlIO_close(ptr noundef nonnull %129)
  br label %140

140:                                              ; preds = %106, %131, %138, %135, %128
  %141 = phi ptr [ null, %138 ], [ %129, %135 ], [ %129, %131 ], [ null, %128 ], [ %5, %106 ]
  %142 = load i64, ptr %76, align 8, !tbaa !177
  %143 = add nsw i64 %142, -1
  store i64 %143, ptr %76, align 8, !tbaa !177
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %172, !prof !180

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.PerlIO_list_s, ptr %76, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !181
  %148 = icmp eq ptr %147, null
  br i1 %148, label %171, label %149, !prof !182

149:                                              ; preds = %145
  %150 = load i64, ptr %77, align 8, !tbaa !183
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %169, !prof !184

152:                                              ; preds = %149, %165
  %153 = phi i64 [ %166, %165 ], [ 0, %149 ]
  %154 = load ptr, ptr %146, align 8, !tbaa !181
  %155 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %154, i64 %153, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !185
  %157 = icmp eq ptr %156, null
  br i1 %157, label %165, label %158, !prof !187

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.sv, ptr %156, i64 0, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !159
  %161 = icmp ugt i32 %160, 1
  br i1 %161, label %162, label %164, !prof !188

162:                                              ; preds = %158
  %163 = add i32 %160, -1
  store i32 %163, ptr %159, align 8, !tbaa !159
  br label %165

164:                                              ; preds = %158
  call void @Perl_sv_free2(ptr noundef nonnull %156, i32 noundef %160) #33
  br label %165

165:                                              ; preds = %164, %162, %152
  %166 = add nuw nsw i64 %153, 1
  %167 = load i64, ptr %77, align 8, !tbaa !183
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %152, label %169, !prof !189, !llvm.loop !190

169:                                              ; preds = %165, %149
  %170 = load ptr, ptr %146, align 8, !tbaa !181
  call void @Perl_safesysfree(ptr noundef %170) #33
  br label %171

171:                                              ; preds = %169, %145
  call void @Perl_safesysfree(ptr noundef nonnull %76) #33
  br label %172

172:                                              ; preds = %171, %140, %72, %26, %29, %32, %16
  %173 = phi ptr [ %17, %32 ], [ %17, %29 ], [ %17, %26 ], [ null, %16 ], [ null, %72 ], [ %141, %140 ], [ %141, %171 ]
  ret ptr %173
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIO_tmpfile() local_unnamed_addr #6 !prof !134 {
  %1 = tail call noalias ptr @tmpfile64()
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @fileno(ptr noundef nonnull %1) #33
  %5 = tail call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ null, %0 ]
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_PerlIO_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 !prof !134 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5, !prof !282

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8, !prof !282

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12, !prof !282

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !283
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !282

16:                                               ; preds = %12
  %17 = tail call i64 %14(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #33, !prof !284
  br label %22

18:                                               ; preds = %12, %8
  %19 = tail call i64 @PerlIOBase_read(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  br label %22

20:                                               ; preds = %5, %3
  %21 = tail call ptr @__errno_location() #34
  store i32 9, ptr %21, align 4, !tbaa !135
  br label %22

22:                                               ; preds = %16, %18, %20
  %23 = phi i64 [ -1, %20 ], [ %17, %16 ], [ %19, %18 ]
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PerlIOBase_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 !prof !285 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %140, label %5, !prof !286

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !140
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !152
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !286

11:                                               ; preds = %5
  %12 = icmp eq i64 %2, 0
  br i1 %12, label %135, label %21, !prof !287

13:                                               ; preds = %5
  %14 = or i32 %8, 2048
  store i32 %14, ptr %7, align 8, !tbaa !152
  %15 = tail call ptr @__errno_location() #34
  store i32 9, ptr %15, align 4, !tbaa !135
  %16 = icmp eq ptr %6, null
  br i1 %16, label %140, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 3
  store i32 9, ptr %18, align 4, !tbaa !288
  br label %140

19:                                               ; preds = %130
  %20 = icmp eq i64 %131, 0
  br i1 %20, label %135, label %134, !prof !289

21:                                               ; preds = %11, %134
  %22 = phi i64 [ %131, %134 ], [ %2, %11 ]
  %23 = phi ptr [ %132, %134 ], [ %1, %11 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !140
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %26, !prof !290

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct._PerlIO, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !153
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30, !prof !290

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._PerlIO_funcs, ptr %28, i64 0, i32 26
  %32 = load ptr, ptr %31, align 8, !tbaa !291
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !290

34:                                               ; preds = %30
  %35 = tail call i64 %32(ptr noundef nonnull %0) #33, !prof !292
  br label %38

36:                                               ; preds = %30, %26
  %37 = tail call ptr @__errno_location() #34
  store i32 22, ptr %37, align 4, !tbaa !135
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ undef, %36 ]
  %40 = phi i1 [ false, %34 ], [ true, %36 ]
  br i1 %40, label %43, label %44, !prof !290

41:                                               ; preds = %21
  %42 = tail call ptr @__errno_location() #34
  store i32 9, ptr %42, align 4, !tbaa !135
  br label %43

43:                                               ; preds = %41, %38
  br label %44

44:                                               ; preds = %38, %43
  %45 = phi i64 [ %39, %38 ], [ -1, %43 ]
  %46 = icmp sgt i64 %45, 0
  %47 = tail call i64 @llvm.smin.i64(i64 %22, i64 %45)
  %48 = icmp slt i64 %22, 0
  %49 = select i1 %48, i64 %45, i64 %47, !prof !293
  %50 = select i1 %46, i64 %49, i64 0, !prof !294
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %97, !prof !294

52:                                               ; preds = %44
  %53 = load ptr, ptr %0, align 8, !tbaa !140
  %54 = icmp eq ptr %53, null
  br i1 %54, label %70, label %55, !prof !295

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct._PerlIO, ptr %53, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !153
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59, !prof !295

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct._PerlIO_funcs, ptr %57, i64 0, i32 25
  %61 = load ptr, ptr %60, align 8, !tbaa !296
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63, !prof !295

63:                                               ; preds = %59
  %64 = tail call ptr %61(ptr noundef nonnull %0) #33, !prof !297
  br label %67

65:                                               ; preds = %59, %55
  %66 = tail call ptr @__errno_location() #34
  store i32 22, ptr %66, align 4, !tbaa !135
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi ptr [ %64, %63 ], [ undef, %65 ]
  %69 = phi i1 [ false, %63 ], [ true, %65 ]
  br i1 %69, label %72, label %73, !prof !295

70:                                               ; preds = %52
  %71 = tail call ptr @__errno_location() #34
  store i32 9, ptr %71, align 4, !tbaa !135
  br label %72

72:                                               ; preds = %70, %67
  br label %73

73:                                               ; preds = %67, %72
  %74 = phi ptr [ %68, %67 ], [ null, %72 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %74, i64 %50, i1 false), !prof !298
  %75 = getelementptr inbounds i8, ptr %74, i64 %50
  %76 = sub nsw i64 %45, %50
  %77 = load ptr, ptr %0, align 8, !tbaa !140
  %78 = icmp eq ptr %77, null
  br i1 %78, label %90, label %79, !prof !295

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct._PerlIO, ptr %77, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !153
  %82 = icmp eq ptr %81, null
  br i1 %82, label %88, label %83, !prof !295

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct._PerlIO_funcs, ptr %81, i64 0, i32 27
  %85 = load ptr, ptr %84, align 8, !tbaa !299
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87, !prof !295

87:                                               ; preds = %83
  tail call void %85(ptr noundef nonnull %0, ptr noundef nonnull %75, i64 noundef %76) #33, !prof !300
  br label %92

88:                                               ; preds = %83, %79
  %89 = tail call ptr @__errno_location() #34
  store i32 22, ptr %89, align 4, !tbaa !135
  br label %92

90:                                               ; preds = %73
  %91 = tail call ptr @__errno_location() #34
  store i32 9, ptr %91, align 4, !tbaa !135
  br label %92

92:                                               ; preds = %87, %88, %90
  %93 = sub i64 %22, %50
  %94 = getelementptr inbounds i8, ptr %23, i64 %50
  %95 = icmp eq i64 %76, 0
  %96 = select i1 %95, i32 4, i32 0, !prof !301
  br i1 %95, label %130, label %97, !prof !301

97:                                               ; preds = %92, %44
  %98 = phi i64 [ %93, %92 ], [ %22, %44 ]
  %99 = phi ptr [ %94, %92 ], [ %23, %44 ]
  %100 = phi i64 [ %76, %92 ], [ %45, %44 ]
  %101 = icmp ne i64 %98, 0
  %102 = icmp slt i64 %100, 1
  %103 = and i1 %101, %102
  br i1 %103, label %104, label %129, !prof !302

104:                                              ; preds = %97
  %105 = load ptr, ptr %0, align 8, !tbaa !140
  %106 = icmp eq ptr %105, null
  br i1 %106, label %123, label %107, !prof !286

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct._PerlIO, ptr %105, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !153
  %110 = icmp eq ptr %109, null
  br i1 %110, label %118, label %111, !prof !286

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct._PerlIO_funcs, ptr %109, i64 0, i32 18
  %113 = load ptr, ptr %112, align 8, !tbaa !303
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115, !prof !286

115:                                              ; preds = %111
  %116 = tail call i64 %113(ptr noundef nonnull %0) #33, !prof !304
  %117 = trunc i64 %116 to i32
  br label %120

118:                                              ; preds = %111, %107
  %119 = tail call ptr @__errno_location() #34
  store i32 22, ptr %119, align 4, !tbaa !135
  br label %120

120:                                              ; preds = %118, %115
  %121 = phi i32 [ %117, %115 ], [ undef, %118 ]
  %122 = phi i1 [ false, %115 ], [ true, %118 ]
  br i1 %122, label %125, label %126, !prof !286

123:                                              ; preds = %104
  %124 = tail call ptr @__errno_location() #34
  store i32 9, ptr %124, align 4, !tbaa !135
  br label %125

125:                                              ; preds = %123, %120
  br label %126

126:                                              ; preds = %120, %125
  %127 = phi i32 [ %121, %120 ], [ -1, %125 ]
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130, !prof !305

129:                                              ; preds = %126, %97
  br label %130

130:                                              ; preds = %92, %126, %129
  %131 = phi i64 [ %98, %129 ], [ %98, %126 ], [ %93, %92 ]
  %132 = phi ptr [ %99, %129 ], [ %99, %126 ], [ %94, %92 ]
  %133 = phi i32 [ 0, %129 ], [ 3, %126 ], [ %96, %92 ]
  switch i32 %133, label %142 [
    i32 0, label %19
    i32 4, label %134
    i32 3, label %135
  ], !prof !306

134:                                              ; preds = %130, %19
  br label %21, !llvm.loop !307

135:                                              ; preds = %19, %130, %11
  %136 = phi ptr [ %1, %11 ], [ %132, %130 ], [ %132, %19 ]
  %137 = ptrtoint ptr %136 to i64
  %138 = ptrtoint ptr %1 to i64
  %139 = sub i64 %137, %138
  br label %140

140:                                              ; preds = %17, %13, %3, %135
  %141 = phi i64 [ %139, %135 ], [ 0, %3 ], [ 0, %13 ], [ 0, %17 ]
  ret i64 %141

142:                                              ; preds = %130
  unreachable
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_PerlIO_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 !prof !134 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !308
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i64 %14(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #33
  br label %26

18:                                               ; preds = %12, %8
  %19 = tail call i64 @Perl_PerlIO_tell(ptr noundef nonnull %0)
  %20 = tail call ptr @PerlIO_push(ptr noundef nonnull %0, ptr noundef nonnull @PerlIO_pending, ptr noundef nonnull @.str.38, ptr noundef null)
  %21 = load ptr, ptr %0, align 8, !tbaa !140
  %22 = getelementptr inbounds %struct.PerlIOBuf, ptr %21, i64 0, i32 4
  store i64 %19, ptr %22, align 8, !tbaa !309
  %23 = tail call i64 @PerlIOBuf_unread(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  br label %26

24:                                               ; preds = %5, %3
  %25 = tail call ptr @__errno_location() #34
  store i32 9, ptr %25, align 4, !tbaa !135
  br label %26

26:                                               ; preds = %16, %18, %24
  %27 = phi i64 [ -1, %24 ], [ %17, %16 ], [ %23, %18 ]
  ret i64 %27
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOBase_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6 !prof !134 {
  %4 = tail call i64 @Perl_PerlIO_tell(ptr noundef %0)
  %5 = tail call ptr @PerlIO_push(ptr noundef %0, ptr noundef nonnull @PerlIO_pending, ptr noundef nonnull @.str.38, ptr noundef null)
  %6 = load ptr, ptr %0, align 8, !tbaa !140
  %7 = getelementptr inbounds %struct.PerlIOBuf, ptr %6, i64 0, i32 4
  store i64 %4, ptr %7, align 8, !tbaa !309
  %8 = tail call i64 @PerlIOBuf_unread(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_PerlIO_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 !prof !311 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %23, label %5, !prof !312

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8, !prof !312

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12, !prof !312

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !313
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !312

16:                                               ; preds = %12
  %17 = tail call i64 %14(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #33, !prof !314
  br label %20

18:                                               ; preds = %12, %8
  %19 = tail call ptr @__errno_location() #34
  store i32 22, ptr %19, align 4, !tbaa !135
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ undef, %18 ]
  %22 = phi i1 [ false, %16 ], [ true, %18 ]
  br i1 %22, label %25, label %26, !prof !312

23:                                               ; preds = %5, %3
  %24 = tail call ptr @__errno_location() #34
  store i32 9, ptr %24, align 4, !tbaa !135
  br label %25

25:                                               ; preds = %20, %23
  br label %26

26:                                               ; preds = %20, %25
  %27 = phi i64 [ %21, %20 ], [ -1, %25 ]
  ret i64 %27
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_PerlIO_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #6 !prof !315 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5, !prof !316

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8, !prof !316

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12, !prof !316

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !317
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !316

16:                                               ; preds = %12
  %17 = tail call i64 %14(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2) #33, !prof !318
  %18 = trunc i64 %17 to i32
  br label %21

19:                                               ; preds = %12, %8
  %20 = tail call ptr @__errno_location() #34
  store i32 22, ptr %20, align 4, !tbaa !135
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %18, %16 ], [ undef, %19 ]
  %23 = phi i1 [ false, %16 ], [ true, %19 ]
  br i1 %23, label %26, label %27, !prof !316

24:                                               ; preds = %5, %3
  %25 = tail call ptr @__errno_location() #34
  store i32 9, ptr %25, align 4, !tbaa !135
  br label %26

26:                                               ; preds = %21, %24
  br label %27

27:                                               ; preds = %21, %26
  %28 = phi i32 [ %22, %21 ], [ -1, %26 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_PerlIO_tell(ptr noundef %0) local_unnamed_addr #4 !prof !319 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3, !prof !320

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !320

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !320

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !321
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !320

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #33, !prof !322
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call ptr @__errno_location() #34
  store i32 22, ptr %17, align 4, !tbaa !135
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ undef, %16 ]
  %20 = phi i1 [ false, %14 ], [ true, %16 ]
  br i1 %20, label %23, label %24, !prof !320

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #34
  store i32 9, ptr %22, align 4, !tbaa !135
  br label %23

23:                                               ; preds = %18, %21
  br label %24

24:                                               ; preds = %18, %23
  %25 = phi i64 [ %19, %18 ], [ -1, %23 ]
  ret i64 %25
}

; Function Attrs: cold nounwind uwtable
define dso_local void @PerlIOBase_flush_linebuf() local_unnamed_addr #6 !prof !134 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !140
  %2 = icmp eq ptr %1, null
  br i1 %2, label %32, label %6

3:                                                ; preds = %29
  %4 = load ptr, ptr %7, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6, !llvm.loop !323

6:                                                ; preds = %0, %3
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  br label %8

8:                                                ; preds = %6, %29
  %9 = phi ptr [ %7, %6 ], [ %11, %29 ]
  %10 = phi i32 [ 1, %6 ], [ %30, %29 ]
  %11 = getelementptr inbounds %struct._PerlIO, ptr %9, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !140
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !152
  %17 = and i32 %16, 524800
  %18 = icmp eq i32 %17, 524800
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !153
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._PerlIO_funcs, ptr %21, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !209
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i64 %25(ptr noundef nonnull %11) #33
  br label %29

29:                                               ; preds = %27, %23, %19, %14, %8
  %30 = add nuw nsw i32 %10, 1
  %31 = icmp eq i32 %30, 64
  br i1 %31, label %3, label %8, !llvm.loop !324

32:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_PerlIO_fill(ptr noundef %0) local_unnamed_addr #4 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3, !prof !286

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6, !prof !286

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10, !prof !286

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !303
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !286

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #33, !prof !325
  %16 = trunc i64 %15 to i32
  br label %19

17:                                               ; preds = %10, %6
  %18 = tail call ptr @__errno_location() #34
  store i32 22, ptr %18, align 4, !tbaa !135
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %16, %14 ], [ undef, %17 ]
  %21 = phi i1 [ false, %14 ], [ true, %17 ]
  br i1 %21, label %24, label %25, !prof !286

22:                                               ; preds = %3, %1
  %23 = tail call ptr @__errno_location() #34
  store i32 9, ptr %23, align 4, !tbaa !135
  br label %24

24:                                               ; preds = %19, %22
  br label %25

25:                                               ; preds = %19, %24
  %26 = phi i32 [ %20, %19 ], [ -1, %24 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_isutf8(ptr noundef readonly %0) local_unnamed_addr #10 !prof !326 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !327

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6, !prof !327

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !152
  %9 = lshr i32 %8, 15
  %10 = and i32 %9, 1
  br label %13

11:                                               ; preds = %3, %1
  %12 = tail call ptr @__errno_location() #34
  store i32 9, ptr %12, align 4, !tbaa !135
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %10, %6 ], [ -1, %11 ]
  ret i32 %14
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_PerlIO_eof(ptr noundef %0) local_unnamed_addr #6 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !328
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #33
  %16 = trunc i64 %15 to i32
  br label %24

17:                                               ; preds = %10, %6
  %18 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !152
  %20 = lshr i32 %19, 8
  %21 = and i32 %20, 1
  br label %24

22:                                               ; preds = %3, %1
  %23 = tail call ptr @__errno_location() #34
  store i32 9, ptr %23, align 4, !tbaa !135
  br label %24

24:                                               ; preds = %14, %17, %22
  %25 = phi i32 [ -1, %22 ], [ %16, %14 ], [ %21, %17 ]
  ret i32 %25
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOBase_eof(ptr noundef readonly %0) #9 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !152
  %9 = lshr i32 %8, 8
  %10 = and i32 %9, 1
  %11 = zext nneg i32 %10 to i64
  br label %12

12:                                               ; preds = %1, %3, %6
  %13 = phi i64 [ %11, %6 ], [ 1, %3 ], [ 1, %1 ]
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_PerlIO_error(ptr noundef %0) local_unnamed_addr #4 !prof !329 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3, !prof !330

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6, !prof !330

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10, !prof !330

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !331
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !330

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #33, !prof !332
  %16 = trunc i64 %15 to i32
  br label %24

17:                                               ; preds = %10, %6
  %18 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !152
  %20 = lshr i32 %19, 11
  %21 = and i32 %20, 1
  br label %24

22:                                               ; preds = %3, %1
  %23 = tail call ptr @__errno_location() #34
  store i32 9, ptr %23, align 4, !tbaa !135
  br label %24

24:                                               ; preds = %14, %17, %22
  %25 = phi i32 [ -1, %22 ], [ %16, %14 ], [ %21, %17 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOBase_error(ptr noundef readonly %0) #11 !prof !329 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !330

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !330

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !152
  %9 = lshr i32 %8, 11
  %10 = and i32 %9, 1
  %11 = zext nneg i32 %10 to i64
  br label %12

12:                                               ; preds = %1, %3, %6
  %13 = phi i64 [ %11, %6 ], [ 1, %3 ], [ 1, %1 ]
  ret i64 %13
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_PerlIO_clearerr(ptr noundef %0) local_unnamed_addr #6 !prof !161 {
  br label %2

2:                                                ; preds = %17, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %17 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5, !prof !333

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8, !prof !333

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !333

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !334
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !333

16:                                               ; preds = %12
  tail call void %14(ptr noundef nonnull %3) #33, !prof !335
  br label %25

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !152
  %20 = and i32 %19, -2305
  store i32 %20, ptr %18, align 8, !tbaa !152
  %21 = load ptr, ptr %6, align 8, !tbaa !140
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %2

23:                                               ; preds = %5, %2
  %24 = tail call ptr @__errno_location() #34
  store i32 9, ptr %24, align 4, !tbaa !135
  br label %25

25:                                               ; preds = %17, %16, %23
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @PerlIOBase_clearerr(ptr noundef readonly %0) #6 !prof !161 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3, !prof !333

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6, !prof !333

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !152
  %9 = and i32 %8, -2305
  store i32 %9, ptr %7, align 8, !tbaa !152
  %10 = load ptr, ptr %4, align 8, !tbaa !140
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !162

12:                                               ; preds = %6
  tail call void @Perl_PerlIO_clearerr(ptr noundef nonnull %4)
  br label %13

13:                                               ; preds = %6, %12, %3, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_PerlIO_setlinebuf(ptr noundef %0) local_unnamed_addr #6 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !336
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef nonnull %0) #33
  br label %21

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = or i32 %17, 524288
  store i32 %18, ptr %16, align 8, !tbaa !152
  br label %21

19:                                               ; preds = %3, %1
  %20 = tail call ptr @__errno_location() #34
  store i32 9, ptr %20, align 4, !tbaa !135
  br label %21

21:                                               ; preds = %15, %14, %19
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PerlIOBase_setlinebuf(ptr noundef readonly %0) #12 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !152
  %9 = or i32 %8, 524288
  store i32 %9, ptr %7, align 8, !tbaa !152
  br label %10

10:                                               ; preds = %6, %3, %1
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_has_base(ptr noundef readonly %0) local_unnamed_addr #9 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !337
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %6, %10
  %16 = phi i32 [ %14, %10 ], [ undef, %6 ]
  br i1 %9, label %17, label %18

17:                                               ; preds = %15, %3, %1
  br label %18

18:                                               ; preds = %15, %17
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_fast_gets(ptr noundef readonly %0) local_unnamed_addr #11 !prof !338 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3, !prof !339

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6, !prof !339

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !152
  %9 = and i32 %8, 4194304
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11, !prof !339

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !153
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !prof !339

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._PerlIO_funcs, ptr %13, i64 0, i32 27
  %17 = load ptr, ptr %16, align 8, !tbaa !299
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %11, %15
  %21 = phi i32 [ %19, %15 ], [ undef, %11 ]
  br i1 %14, label %22, label %23, !prof !339

22:                                               ; preds = %20, %6, %3, %1
  br label %23

23:                                               ; preds = %20, %22
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  ret i32 %24
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_has_cntptr(ptr noundef readonly %0) local_unnamed_addr #9 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !296
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 26
  %16 = load ptr, ptr %15, align 8, !tbaa !291
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %6, %10, %14
  %20 = phi i32 [ 0, %10 ], [ %18, %14 ], [ undef, %6 ]
  br i1 %9, label %21, label %22

21:                                               ; preds = %19, %3, %1
  br label %22

22:                                               ; preds = %19, %21
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  ret i32 %23
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIO_canset_cnt(ptr noundef readonly %0) local_unnamed_addr #9 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !299
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %6, %10
  %16 = phi i32 [ %14, %10 ], [ undef, %6 ]
  br i1 %9, label %17, label %18

17:                                               ; preds = %15, %3, %1
  br label %18

18:                                               ; preds = %15, %17
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_PerlIO_get_base(ptr noundef %0) local_unnamed_addr #4 !prof !201 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3, !prof !340

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !340

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !340

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !337
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !340

14:                                               ; preds = %10
  %15 = tail call ptr %12(ptr noundef nonnull %0) #33, !prof !341
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call ptr @__errno_location() #34
  store i32 22, ptr %17, align 4, !tbaa !135
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ undef, %16 ]
  %20 = phi i1 [ false, %14 ], [ true, %16 ]
  br i1 %20, label %23, label %24, !prof !340

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #34
  store i32 9, ptr %22, align 4, !tbaa !135
  br label %23

23:                                               ; preds = %18, %21
  br label %24

24:                                               ; preds = %18, %23
  %25 = phi ptr [ %19, %18 ], [ null, %23 ]
  ret ptr %25
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_PerlIO_get_bufsiz(ptr noundef %0) local_unnamed_addr #6 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !342
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #33
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call ptr @__errno_location() #34
  store i32 22, ptr %17, align 4, !tbaa !135
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ undef, %16 ]
  %20 = phi i1 [ false, %14 ], [ true, %16 ]
  br i1 %20, label %23, label %24

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #34
  store i32 9, ptr %22, align 4, !tbaa !135
  br label %23

23:                                               ; preds = %18, %21
  br label %24

24:                                               ; preds = %18, %23
  %25 = phi i64 [ %19, %18 ], [ -1, %23 ]
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_PerlIO_get_ptr(ptr noundef %0) local_unnamed_addr #4 !prof !343 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3, !prof !295

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !295

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !295

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !296
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !295

14:                                               ; preds = %10
  %15 = tail call ptr %12(ptr noundef nonnull %0) #33, !prof !344
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call ptr @__errno_location() #34
  store i32 22, ptr %17, align 4, !tbaa !135
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ undef, %16 ]
  %20 = phi i1 [ false, %14 ], [ true, %16 ]
  br i1 %20, label %23, label %24, !prof !295

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #34
  store i32 9, ptr %22, align 4, !tbaa !135
  br label %23

23:                                               ; preds = %18, %21
  br label %24

24:                                               ; preds = %18, %23
  %25 = phi ptr [ %19, %18 ], [ null, %23 ]
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_PerlIO_get_cnt(ptr noundef %0) local_unnamed_addr #4 !prof !343 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3, !prof !290

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !290

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !290

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !291
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !290

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #33, !prof !345
  br label %18

16:                                               ; preds = %10, %6
  %17 = tail call ptr @__errno_location() #34
  store i32 22, ptr %17, align 4, !tbaa !135
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ undef, %16 ]
  %20 = phi i1 [ false, %14 ], [ true, %16 ]
  br i1 %20, label %23, label %24, !prof !290

21:                                               ; preds = %3, %1
  %22 = tail call ptr @__errno_location() #34
  store i32 9, ptr %22, align 4, !tbaa !135
  br label %23

23:                                               ; preds = %18, %21
  br label %24

24:                                               ; preds = %18, %23
  %25 = phi i64 [ %19, %18 ], [ -1, %23 ]
  ret i64 %25
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_PerlIO_set_cnt(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 !prof !134 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !140
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !153
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._PerlIO_funcs, ptr %9, i64 0, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !299
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef nonnull %0, ptr noundef null, i64 noundef %1) #33
  br label %20

16:                                               ; preds = %11, %7
  %17 = tail call ptr @__errno_location() #34
  store i32 22, ptr %17, align 4, !tbaa !135
  br label %20

18:                                               ; preds = %4, %2
  %19 = tail call ptr @__errno_location() #34
  store i32 9, ptr %19, align 4, !tbaa !135
  br label %20

20:                                               ; preds = %15, %16, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_PerlIO_set_ptrcnt(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 !prof !343 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5, !prof !295

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8, !prof !295

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !295

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 27
  %14 = load ptr, ptr %13, align 8, !tbaa !299
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !295

16:                                               ; preds = %12
  tail call void %14(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #33, !prof !346
  br label %21

17:                                               ; preds = %12, %8
  %18 = tail call ptr @__errno_location() #34
  store i32 22, ptr %18, align 4, !tbaa !135
  br label %21

19:                                               ; preds = %5, %3
  %20 = tail call ptr @__errno_location() #34
  store i32 9, ptr %20, align 4, !tbaa !135
  br label %21

21:                                               ; preds = %16, %17, %19
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @PerlIOUtf8_pushed(ptr noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef readonly %3) #12 !prof !134 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !140
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %3, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._PerlIO_funcs, ptr %3, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !207
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !152
  %19 = or i32 %18, 32768
  store i32 %19, ptr %17, align 8, !tbaa !152
  br label %24

20:                                               ; preds = %11, %9
  %21 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !152
  %23 = and i32 %22, -32769
  store i32 %23, ptr %21, align 8, !tbaa !152
  br label %24

24:                                               ; preds = %4, %6, %16, %20
  %25 = phi i64 [ 0, %20 ], [ 0, %16 ], [ -1, %6 ], [ -1, %4 ]
  ret i64 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOBase_popped(ptr nocapture readnone %0) #13 !prof !166 {
  ret i64 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @PerlIO_modestr(ptr noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #12 !prof !134 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !140
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !152
  %10 = zext i32 %9 to i64
  %11 = and i64 %10, 8192
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 97, ptr %1, align 1, !tbaa !139
  %15 = and i64 %10, 1024
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 43, ptr %14, align 1, !tbaa !139
  br label %33

19:                                               ; preds = %7
  %20 = and i64 %10, 1024
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 114, ptr %1, align 1, !tbaa !139
  %24 = and i64 %10, 512
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 43, ptr %23, align 1, !tbaa !139
  br label %33

28:                                               ; preds = %19
  %29 = and i64 %10, 512
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 119, ptr %1, align 1, !tbaa !139
  br label %33

33:                                               ; preds = %17, %13, %28, %22, %26, %31, %4, %2
  %34 = phi ptr [ %1, %4 ], [ %1, %2 ], [ %18, %17 ], [ %14, %13 ], [ %27, %26 ], [ %23, %22 ], [ %32, %31 ], [ %1, %28 ]
  store i8 0, ptr %34, align 1, !tbaa !139
  ret ptr %1
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @PerlIOBase_pushed(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2, ptr noundef readonly %3) local_unnamed_addr #14 !prof !248 {
  %5 = load ptr, ptr %0, align 8, !tbaa !140
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !152
  %8 = and i32 %7, -13825
  store i32 %8, ptr %6, align 8, !tbaa !152
  %9 = icmp eq ptr %3, null
  br i1 %9, label %16, label %10, !prof !171

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %3, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !299
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !347

14:                                               ; preds = %10
  %15 = or i32 %8, 4194304
  store i32 %15, ptr %6, align 8, !tbaa !152
  br label %16

16:                                               ; preds = %14, %10, %4
  %17 = icmp eq ptr %1, null
  br i1 %17, label %48, label %18, !prof !171

18:                                               ; preds = %16
  %19 = load i8, ptr %1, align 1, !tbaa !139
  switch i8 %19, label %22 [
    i8 35, label %20
    i8 73, label %20
  ], !prof !348

20:                                               ; preds = %18, %18
  %21 = getelementptr inbounds i8, ptr %1, i64 1
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi ptr [ %21, %20 ], [ %1, %18 ]
  %24 = load i8, ptr %23, align 1, !tbaa !139
  switch i8 %24, label %27 [
    i8 114, label %29
    i8 97, label %25
    i8 119, label %26
  ], !prof !349

25:                                               ; preds = %22
  br label %29

26:                                               ; preds = %22
  br label %29

27:                                               ; preds = %22
  %28 = tail call ptr @__errno_location() #34
  store i32 22, ptr %28, align 4, !tbaa !135
  br label %57

29:                                               ; preds = %22, %26, %25
  %30 = phi i32 [ 4608, %26 ], [ 8704, %25 ], [ 1024, %22 ]
  %31 = load i32, ptr %6, align 8, !tbaa !152
  %32 = or i32 %31, %30
  br label %33

33:                                               ; preds = %44, %29
  %34 = phi i32 [ %32, %29 ], [ %45, %44 ]
  %35 = phi ptr [ %23, %29 ], [ %36, %44 ]
  store i32 %34, ptr %6, align 8, !tbaa !152
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !139
  switch i8 %37, label %46 [
    i8 0, label %57
    i8 43, label %38
    i8 98, label %40
    i8 116, label %42
  ], !prof !350

38:                                               ; preds = %33
  %39 = or i32 %34, 1536
  br label %44

40:                                               ; preds = %33
  %41 = and i32 %34, -16385
  br label %44

42:                                               ; preds = %33
  %43 = or i32 %34, 16384
  br label %44

44:                                               ; preds = %42, %40, %38
  %45 = phi i32 [ %43, %42 ], [ %41, %40 ], [ %39, %38 ]
  br label %33, !llvm.loop !351

46:                                               ; preds = %33
  %47 = tail call ptr @__errno_location() #34
  store i32 22, ptr %47, align 4, !tbaa !135
  br label %57

48:                                               ; preds = %16
  %49 = load ptr, ptr %5, align 8, !tbaa !147
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct._PerlIO, ptr %49, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !152
  %54 = and i32 %53, 13824
  %55 = load i32, ptr %6, align 8, !tbaa !152
  %56 = or i32 %55, %54
  store i32 %56, ptr %6, align 8, !tbaa !152
  br label %57

57:                                               ; preds = %33, %51, %48, %46, %27
  %58 = phi i64 [ -1, %27 ], [ -1, %46 ], [ 0, %48 ], [ 0, %51 ], [ 0, %33 ]
  ret i64 %58
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOBuf_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6 !prof !134 {
  br label %4

4:                                                ; preds = %85, %3
  %5 = phi i64 [ 0, %3 ], [ %90, %85 ]
  %6 = phi i64 [ %2, %3 ], [ %82, %85 ]
  %7 = getelementptr inbounds i8, ptr %1, i64 %6
  %8 = load ptr, ptr %0, align 8, !tbaa !140
  %9 = getelementptr inbounds %struct._PerlIO, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !152
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %4
  %14 = icmp eq ptr %8, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct._PerlIO, ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._PerlIO_funcs, ptr %17, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !209
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = tail call i64 %21(ptr noundef nonnull %0) #33
  br label %27

25:                                               ; preds = %13
  %26 = tail call ptr @__errno_location() #34
  store i32 9, ptr %26, align 4, !tbaa !135
  br label %27

27:                                               ; preds = %25, %23, %19, %15, %4
  %28 = getelementptr inbounds %struct.PerlIOBuf, ptr %8, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !352
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0)
  br label %33

33:                                               ; preds = %31, %27
  %34 = load ptr, ptr %28, align 8, !tbaa !352
  %35 = icmp eq ptr %34, null
  br i1 %35, label %81, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %0, align 8, !tbaa !140
  %38 = getelementptr inbounds %struct._PerlIO, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !152
  %40 = and i32 %39, 262144
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.PerlIOBuf, ptr %8, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !353
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %34 to i64
  %47 = sub i64 %45, %46
  br label %61

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.PerlIOBuf, ptr %8, i64 0, i32 5
  %50 = load i64, ptr %49, align 8, !tbaa !354
  %51 = getelementptr inbounds i8, ptr %34, i64 %50
  %52 = getelementptr inbounds %struct.PerlIOBuf, ptr %8, i64 0, i32 2
  store ptr %51, ptr %52, align 8, !tbaa !355
  %53 = getelementptr inbounds %struct.PerlIOBuf, ptr %8, i64 0, i32 3
  store ptr %51, ptr %53, align 8, !tbaa !353
  %54 = load ptr, ptr %0, align 8, !tbaa !140
  %55 = getelementptr inbounds %struct._PerlIO, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !152
  %57 = or i32 %56, 262144
  store i32 %57, ptr %55, align 8, !tbaa !152
  %58 = getelementptr inbounds %struct.PerlIOBuf, ptr %8, i64 0, i32 4
  %59 = load i64, ptr %58, align 8, !tbaa !309
  %60 = sub i64 %59, %50
  store i64 %60, ptr %58, align 8, !tbaa !309
  br label %61

61:                                               ; preds = %48, %42
  %62 = phi i64 [ %47, %42 ], [ %50, %48 ]
  %63 = tail call i64 @llvm.smin.i64(i64 %62, i64 %6)
  %64 = icmp slt i64 %6, 0
  %65 = select i1 %64, i64 %62, i64 %63
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.PerlIOBuf, ptr %8, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !353
  %70 = sub nsw i64 0, %65
  %71 = getelementptr inbounds i8, ptr %69, i64 %70
  store ptr %71, ptr %68, align 8, !tbaa !353
  %72 = icmp eq ptr %7, %69
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds i8, ptr %7, i64 %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %71, ptr nonnull align 1 %74, i64 %65, i1 false)
  br label %75

75:                                               ; preds = %73, %67
  %76 = sub i64 %6, %65
  %77 = load ptr, ptr %0, align 8, !tbaa !140
  %78 = getelementptr inbounds %struct._PerlIO, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !152
  %80 = and i32 %79, -257
  store i32 %80, ptr %78, align 8, !tbaa !152
  br label %81

81:                                               ; preds = %61, %75, %33
  %82 = phi i64 [ %76, %75 ], [ %6, %61 ], [ %6, %33 ]
  %83 = phi i64 [ %65, %75 ], [ 0, %61 ], [ 0, %33 ]
  %84 = icmp eq i64 %82, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = tail call i64 @Perl_PerlIO_tell(ptr noundef nonnull %0)
  %87 = tail call ptr @PerlIO_push(ptr noundef nonnull %0, ptr noundef nonnull @PerlIO_pending, ptr noundef nonnull @.str.38, ptr noundef null)
  %88 = load ptr, ptr %0, align 8, !tbaa !140
  %89 = getelementptr inbounds %struct.PerlIOBuf, ptr %88, i64 0, i32 4
  store i64 %86, ptr %89, align 8, !tbaa !309
  %90 = add nsw i64 %5, %83
  br label %4

91:                                               ; preds = %81
  %92 = add nsw i64 %5, %83
  ret i64 %92
}

; Function Attrs: cold mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Perl_PerlIO_save_errno(ptr noundef readonly %0) local_unnamed_addr #15 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #34
  %8 = load i32, ptr %7, align 4, !tbaa !135
  %9 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !288
  br label %10

10:                                               ; preds = %1, %3, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOBase_noop_ok(ptr nocapture readnone %0) #13 !prof !356 {
  ret i64 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOBase_noop_fail(ptr nocapture readnone %0) #0 !prof !134 {
  ret i64 -1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIO_sv_dup(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 !prof !134 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %0) #33
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @PerlIO_init() local_unnamed_addr #0 !prof !201 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PerlIOUnix_refcnt_inc(i32 noundef %0) local_unnamed_addr #4 !prof !357 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %29, !prof !358

3:                                                ; preds = %1
  %4 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !135
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %21, label %6, !prof !359

6:                                                ; preds = %3
  %7 = and i32 %0, 2147483632
  %8 = add nuw nsw i32 %7, 16
  %9 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !140
  %10 = zext nneg i32 %8 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = tail call ptr @realloc(ptr noundef %9, i64 noundef %11) #36
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !169

14:                                               ; preds = %6
  tail call void @Perl_croak_no_mem() #33
  br label %15

15:                                               ; preds = %14, %6
  store i32 %8, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !135
  store ptr %12, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !140
  %16 = sext i32 %4 to i64
  %17 = getelementptr inbounds i32, ptr %12, i64 %16
  %18 = sub nsw i32 %8, %4
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %17, i8 0, i64 %20, i1 false), !prof !360
  br label %21

21:                                               ; preds = %15, %3
  %22 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !140
  %23 = zext nneg i32 %0 to i64
  %24 = getelementptr inbounds i32, ptr %22, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !135
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !135
  %27 = icmp slt i32 %25, 0
  br i1 %27, label %28, label %30, !prof !361

28:                                               ; preds = %21
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.40, i32 noundef %0, i32 noundef %26) #33
  br label %30

29:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.42, i32 noundef %0) #33
  br label %30

30:                                               ; preds = %21, %28, %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PerlIOUnix_refcnt_dec(i32 noundef %0) local_unnamed_addr #4 !prof !362 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %19, !prof !358

3:                                                ; preds = %1
  %4 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !135
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %7, label %6, !prof !358

6:                                                ; preds = %3
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.43, i32 noundef %0, i32 noundef %4) #33
  br label %7

7:                                                ; preds = %6, %3
  %8 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !140
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !135
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14, !prof !361

13:                                               ; preds = %7
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.44, i32 noundef %0, i32 noundef %11) #33
  br label %14

14:                                               ; preds = %13, %7
  %15 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !140
  %16 = getelementptr inbounds i32, ptr %15, i64 %9
  %17 = load i32, ptr %16, align 4, !tbaa !135
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr %16, align 4, !tbaa !135
  br label %20

19:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46, i32 noundef %0) #33
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i32 [ %18, %14 ], [ 0, %19 ]
  ret i32 %21
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @PerlIOUnix_refcnt(i32 noundef %0) local_unnamed_addr #6 !prof !134 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  %4 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !135
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, i32 noundef %0, i32 noundef %4) #33
  br label %7

7:                                                ; preds = %6, %3
  %8 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !140
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !135
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48, i32 noundef %0, i32 noundef %11) #33
  br label %14

14:                                               ; preds = %13, %7
  %15 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !140
  %16 = getelementptr inbounds i32, ptr %15, i64 %9
  %17 = load i32, ptr %16, align 4, !tbaa !135
  br label %19

18:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.49, i32 noundef %0) #33
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32 [ %17, %14 ], [ 0, %18 ]
  ret i32 %20
}

; Function Attrs: cold nounwind uwtable
define dso_local void @PerlIO_cleanup() local_unnamed_addr #6 !prof !201 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %3, %1 ]
  tail call void @PerlIOUnix_refcnt_inc(i32 noundef %2)
  %3 = add nuw nsw i32 %2, 1
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %1, !prof !363, !llvm.loop !364

5:                                                ; preds = %1
  tail call void @PerlIO_cleantable(ptr noundef nonnull @PL_perlio)
  br label %6

6:                                                ; preds = %5, %6
  %7 = phi i32 [ 0, %5 ], [ %9, %6 ]
  %8 = tail call i32 @PerlIOUnix_refcnt_dec(i32 noundef %7)
  %9 = add nuw nsw i32 %7, 1
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %6, !prof !363, !llvm.loop !365

11:                                               ; preds = %6
  %12 = load ptr, ptr @PL_known_layers, align 8, !tbaa !140
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !169

14:                                               ; preds = %11
  tail call void @PerlIO_list_free(ptr noundef nonnull %12)
  store ptr null, ptr @PL_known_layers, align 8, !tbaa !140
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr @PL_def_layerlist, align 8, !tbaa !140
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !169

18:                                               ; preds = %15
  tail call void @PerlIO_list_free(ptr noundef nonnull %16)
  store ptr null, ptr @PL_def_layerlist, align 8, !tbaa !140
  br label %19

19:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @PerlIO_teardown() local_unnamed_addr #17 !prof !201 {
  %1 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !135
  %2 = icmp ne i32 %1, 0
  %3 = load ptr, ptr @PL_perlio_fd_refcnt, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false, !prof !250
  br i1 %5, label %6, label %7, !prof !250

6:                                                ; preds = %0
  tail call void @free(ptr noundef %3) #33
  store ptr null, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !140
  store i32 0, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !135
  br label %7

7:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @PerlIOUnix_oflags(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !134 {
  %2 = load i8, ptr %0, align 1, !tbaa !139
  switch i8 %2, label %5 [
    i8 73, label %3
    i8 35, label %3
  ], !prof !366

3:                                                ; preds = %1, %1
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ %0, %1 ]
  %7 = load i8, ptr %6, align 1, !tbaa !139
  switch i8 %7, label %29 [
    i8 114, label %8
    i8 119, label %15
    i8 97, label %22
  ], !prof !367

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !139
  %11 = icmp eq i8 %10, 43
  %12 = getelementptr inbounds i8, ptr %6, i64 2
  %13 = select i1 %11, ptr %12, ptr %9, !prof !182
  %14 = select i1 %11, i32 2, i32 0, !prof !182
  br label %29

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, ptr %6, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !139
  %18 = icmp eq i8 %17, 43
  %19 = getelementptr inbounds i8, ptr %6, i64 2
  %20 = select i1 %18, ptr %19, ptr %16
  %21 = select i1 %18, i32 578, i32 577
  br label %29

22:                                               ; preds = %5
  %23 = getelementptr inbounds i8, ptr %6, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !139
  %25 = icmp eq i8 %24, 43
  %26 = getelementptr inbounds i8, ptr %6, i64 2
  %27 = select i1 %25, ptr %26, ptr %23
  %28 = select i1 %25, i32 1090, i32 1089
  br label %29

29:                                               ; preds = %22, %15, %8, %5
  %30 = phi ptr [ %6, %5 ], [ %13, %8 ], [ %20, %15 ], [ %27, %22 ]
  %31 = phi i1 [ true, %5 ], [ false, %8 ], [ false, %15 ], [ false, %22 ]
  %32 = phi i32 [ -1, %5 ], [ %14, %8 ], [ %21, %15 ], [ %28, %22 ]
  %33 = load i8, ptr %30, align 1, !tbaa !139
  switch i8 %33, label %38 [
    i8 98, label %34
    i8 116, label %36
  ], !prof !366

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, ptr %30, i64 1
  br label %38

36:                                               ; preds = %29
  %37 = getelementptr inbounds i8, ptr %30, i64 1
  br label %38

38:                                               ; preds = %29, %36, %34
  %39 = phi ptr [ %30, %29 ], [ %37, %36 ], [ %35, %34 ]
  %40 = load i8, ptr %39, align 1, !tbaa !139
  %41 = icmp ne i8 %40, 0
  %42 = or i1 %31, %41
  br i1 %42, label %43, label %45, !prof !182

43:                                               ; preds = %38
  %44 = tail call ptr @__errno_location() #34
  store i32 22, ptr %44, align 4, !tbaa !135
  br label %45

45:                                               ; preds = %38, %43
  %46 = phi i32 [ -1, %43 ], [ %32, %38 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOUnix_fileno(ptr nocapture noundef readonly %0) #11 !prof !266 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOUnix, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !368
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @PerlIOUnix_pushed(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #4 !prof !166 {
  %5 = tail call i64 @PerlIOBase_pushed(ptr noundef %0, ptr noundef %1, ptr poison, ptr noundef %3), !range !370
  %6 = load ptr, ptr %0, align 8, !tbaa !140
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9, !prof !261

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !153
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._PerlIO_funcs, ptr %11, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !209
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i64 %15(ptr noundef nonnull %6) #33
  br label %19

19:                                               ; preds = %9, %13, %17
  %20 = load ptr, ptr %0, align 8, !tbaa !140
  %21 = tail call i32 @Perl_PerlIO_fileno(ptr noundef %20)
  %22 = icmp eq ptr %1, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @PerlIOUnix_oflags(ptr noundef nonnull %1), !range !371
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi i32 [ %24, %23 ], [ -1, %19 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !140
  %28 = getelementptr inbounds %struct.PerlIOUnix, ptr %27, i64 0, i32 1
  store i32 %21, ptr %28, align 8, !tbaa !368
  %29 = getelementptr inbounds %struct.PerlIOUnix, ptr %27, i64 0, i32 2
  store i32 %26, ptr %29, align 4, !tbaa !372
  tail call void @PerlIOUnix_refcnt_inc(i32 noundef %21)
  br label %30

30:                                               ; preds = %25, %4
  %31 = load ptr, ptr %0, align 8, !tbaa !140
  %32 = getelementptr inbounds %struct._PerlIO, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !152
  %34 = or i32 %33, 2097152
  store i32 %34, ptr %32, align 8, !tbaa !152
  ret i64 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOUnix_seek(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #6 !prof !315 {
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !152
  %7 = and i32 %6, 16777216
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !373

9:                                                ; preds = %3
  %10 = tail call ptr @__errno_location() #34
  store i32 29, ptr %10, align 4, !tbaa !135
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.PerlIOUnix, ptr %4, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !368
  %14 = tail call i64 @lseek64(i32 noundef %13, i64 noundef %1, i32 noundef %2) #33
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %21, label %16, !prof !316

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 8, !tbaa !140
  %18 = getelementptr inbounds %struct._PerlIO, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !152
  %20 = and i32 %19, -257
  store i32 %20, ptr %18, align 8, !tbaa !152
  br label %21

21:                                               ; preds = %11, %16, %9
  %22 = phi i64 [ -1, %9 ], [ 0, %16 ], [ -1, %11 ]
  ret i64 %22
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @PerlIOUnix_open(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9) #4 !prof !166 {
  %11 = alloca i64, align 8
  %12 = icmp eq ptr %7, null
  br i1 %12, label %29, label %13, !prof !261

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 8, !tbaa !140
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._PerlIO, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !153
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._PerlIO, ptr %14, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !152
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct._PerlIO_funcs, ptr %18, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !167
  %28 = tail call i64 %27(ptr noundef nonnull %7) #33
  br label %29

29:                                               ; preds = %16, %20, %25, %13, %10
  %30 = icmp sgt i32 %8, 0
  br i1 %30, label %31, label %113, !prof !279

31:                                               ; preds = %29
  %32 = load i8, ptr %3, align 1, !tbaa !139
  switch i8 %32, label %37 [
    i8 35, label %33
    i8 73, label %35
  ], !prof !374

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, ptr %3, i64 1
  br label %77

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %3, i64 1
  br label %37

37:                                               ; preds = %31, %35
  %38 = phi ptr [ %36, %35 ], [ %3, %31 ]
  %39 = load i8, ptr %38, align 1, !tbaa !139
  switch i8 %39, label %61 [
    i8 114, label %40
    i8 119, label %47
    i8 97, label %54
  ], !prof !367

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %38, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !139
  %43 = icmp eq i8 %42, 43
  %44 = getelementptr inbounds i8, ptr %38, i64 2
  %45 = select i1 %43, ptr %44, ptr %41, !prof !182
  %46 = select i1 %43, i32 2, i32 0, !prof !182
  br label %61

47:                                               ; preds = %37
  %48 = getelementptr inbounds i8, ptr %38, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !139
  %50 = icmp eq i8 %49, 43
  %51 = getelementptr inbounds i8, ptr %38, i64 2
  %52 = select i1 %50, ptr %51, ptr %48
  %53 = select i1 %50, i32 578, i32 577
  br label %61

54:                                               ; preds = %37
  %55 = getelementptr inbounds i8, ptr %38, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !139
  %57 = icmp eq i8 %56, 43
  %58 = getelementptr inbounds i8, ptr %38, i64 2
  %59 = select i1 %57, ptr %58, ptr %55
  %60 = select i1 %57, i32 1090, i32 1089
  br label %61

61:                                               ; preds = %54, %47, %40, %37
  %62 = phi ptr [ %38, %37 ], [ %45, %40 ], [ %52, %47 ], [ %59, %54 ]
  %63 = phi i1 [ true, %37 ], [ false, %40 ], [ false, %47 ], [ false, %54 ]
  %64 = phi i32 [ -1, %37 ], [ %46, %40 ], [ %53, %47 ], [ %60, %54 ]
  %65 = load i8, ptr %62, align 1, !tbaa !139
  switch i8 %65, label %70 [
    i8 98, label %66
    i8 116, label %68
  ], !prof !366

66:                                               ; preds = %61
  %67 = getelementptr inbounds i8, ptr %62, i64 1
  br label %70

68:                                               ; preds = %61
  %69 = getelementptr inbounds i8, ptr %62, i64 1
  br label %70

70:                                               ; preds = %68, %66, %61
  %71 = phi ptr [ %62, %61 ], [ %69, %68 ], [ %67, %66 ]
  %72 = load i8, ptr %71, align 1, !tbaa !139
  %73 = icmp ne i8 %72, 0
  %74 = or i1 %63, %73
  br i1 %74, label %75, label %77, !prof !182

75:                                               ; preds = %70
  %76 = tail call ptr @__errno_location() #34
  store i32 22, ptr %76, align 4, !tbaa !135
  br label %77

77:                                               ; preds = %75, %70, %33
  %78 = phi i32 [ %5, %33 ], [ -1, %75 ], [ %64, %70 ]
  %79 = phi i32 [ %6, %33 ], [ 438, %75 ], [ 438, %70 ]
  %80 = phi ptr [ %34, %33 ], [ %3, %75 ], [ %3, %70 ]
  %81 = icmp eq i32 %78, -1
  br i1 %81, label %113, label %82, !prof !182

82:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #33
  %83 = load ptr, ptr %9, align 8, !tbaa !140
  %84 = getelementptr inbounds %struct.sv, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !232
  %86 = and i32 %85, 2098176
  %87 = icmp eq i32 %86, 1024
  br i1 %87, label %88, label %94, !prof !194

88:                                               ; preds = %82
  %89 = load ptr, ptr %83, align 8, !tbaa !233
  %90 = getelementptr inbounds %struct.xpv, ptr %89, i64 0, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !234
  store i64 %91, ptr %11, align 8, !tbaa !236
  %92 = getelementptr inbounds %struct.sv, ptr %83, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !139
  br label %96

94:                                               ; preds = %82
  %95 = call ptr @Perl_sv_2pv_flags(ptr noundef %83, ptr noundef nonnull %11, i32 noundef 34) #33
  br label %96

96:                                               ; preds = %94, %88
  %97 = phi ptr [ %93, %88 ], [ %95, %94 ]
  %98 = load i64, ptr %11, align 8, !tbaa !236
  %99 = icmp ugt i64 %98, 1
  br i1 %99, label %100, label %107, !prof !194

100:                                              ; preds = %96
  %101 = add i64 %98, -1
  %102 = call ptr @memchr(ptr noundef %97, i32 noundef 0, i64 noundef %101) #35
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104, !prof !194

104:                                              ; preds = %100
  %105 = tail call ptr @__errno_location() #34
  store i32 2, ptr %105, align 4, !tbaa !135
  %106 = getelementptr inbounds i8, ptr %102, i64 1
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 59, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef %97, ptr noundef nonnull %106) #33
  br label %107

107:                                              ; preds = %96, %100, %104
  %108 = phi i1 [ false, %104 ], [ true, %100 ], [ true, %96 ]
  br i1 %108, label %109, label %111, !prof !194

109:                                              ; preds = %107
  %110 = call i32 (ptr, i32, ...) @open64(ptr noundef %97, i32 noundef %78, i32 noundef %79) #33
  br label %111

111:                                              ; preds = %107, %109
  %112 = phi i32 [ %110, %109 ], [ %4, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #33
  br i1 %108, label %113, label %179, !prof !194

113:                                              ; preds = %111, %77, %29
  %114 = phi i32 [ %78, %111 ], [ -1, %77 ], [ %5, %29 ]
  %115 = phi i32 [ %112, %111 ], [ %4, %77 ], [ %4, %29 ]
  %116 = phi ptr [ %80, %111 ], [ %80, %77 ], [ %3, %29 ]
  %117 = icmp sgt i32 %115, -1
  br i1 %117, label %118, label %179, !prof !261

118:                                              ; preds = %113
  %119 = load i8, ptr %116, align 1, !tbaa !139
  %120 = icmp eq i8 %119, 73
  %121 = zext i1 %120 to i64
  %122 = getelementptr inbounds i8, ptr %116, i64 %121
  br i1 %12, label %123, label %151, !prof !261

123:                                              ; preds = %118, %138
  %124 = phi ptr [ %125, %138 ], [ @PL_perlio, %118 ]
  %125 = load ptr, ptr %124, align 8, !tbaa !140
  %126 = icmp eq ptr %125, null
  br i1 %126, label %141, label %127, !prof !142

127:                                              ; preds = %123
  %128 = getelementptr i8, ptr %125, i64 2016
  br label %132

129:                                              ; preds = %132
  %130 = add nuw nsw i32 %133, 1
  %131 = icmp eq i32 %130, 64
  br i1 %131, label %138, label %132, !prof !143, !llvm.loop !144

132:                                              ; preds = %129, %127
  %133 = phi i32 [ %130, %129 ], [ 1, %127 ]
  %134 = phi ptr [ %135, %129 ], [ %125, %127 ]
  %135 = getelementptr inbounds %struct._PerlIO, ptr %134, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !147
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %129, !prof !149

138:                                              ; preds = %132, %129
  %139 = phi ptr [ %128, %129 ], [ %135, %132 ]
  %140 = phi i32 [ 0, %129 ], [ 7, %132 ]
  switch i32 %140, label %151 [
    i32 0, label %123
    i32 7, label %146
  ], !prof !150, !llvm.loop !151

141:                                              ; preds = %123
  %142 = call ptr @Perl_safesyscalloc(i64 noundef 64, i64 noundef 32) #33
  %143 = icmp eq ptr %142, null
  br i1 %143, label %151, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct._PerlIO, ptr %142, i64 1
  store ptr %142, ptr %124, align 8, !tbaa !140
  br label %146

146:                                              ; preds = %138, %144
  %147 = phi ptr [ %145, %144 ], [ %139, %138 ]
  %148 = getelementptr inbounds %struct._PerlIO, ptr %147, i64 0, i32 2
  store i32 0, ptr %148, align 8, !tbaa !152
  %149 = getelementptr inbounds %struct._PerlIO, ptr %147, i64 0, i32 1
  store ptr null, ptr %149, align 8, !tbaa !153
  %150 = getelementptr inbounds %struct._PerlIO, ptr %147, i64 0, i32 4
  store ptr %147, ptr %150, align 8, !tbaa !154
  br label %151

151:                                              ; preds = %138, %146, %141, %118
  %152 = phi ptr [ %7, %118 ], [ %147, %146 ], [ null, %141 ], [ undef, %138 ]
  %153 = icmp eq ptr %152, null
  br i1 %153, label %157, label %154, !prof !142

154:                                              ; preds = %151
  %155 = load ptr, ptr %152, align 8, !tbaa !140
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %166, !prof !261

157:                                              ; preds = %154, %151
  %158 = getelementptr inbounds %struct.PerlIO_list_s, ptr %1, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !181
  %160 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %159, i64 %2, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !185
  %162 = call ptr @PerlIO_push(ptr noundef %152, ptr noundef %0, ptr noundef nonnull %122, ptr noundef %161)
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %166, !prof !142

164:                                              ; preds = %157
  %165 = call i32 @close(i32 noundef %115) #33
  br label %179

166:                                              ; preds = %157, %154
  %167 = phi ptr [ %152, %154 ], [ %162, %157 ]
  %168 = load ptr, ptr %167, align 8, !tbaa !140
  %169 = getelementptr inbounds %struct.PerlIOUnix, ptr %168, i64 0, i32 1
  store i32 %115, ptr %169, align 8, !tbaa !368
  %170 = getelementptr inbounds %struct.PerlIOUnix, ptr %168, i64 0, i32 2
  store i32 %114, ptr %170, align 4, !tbaa !372
  call void @PerlIOUnix_refcnt_inc(i32 noundef %115)
  %171 = load ptr, ptr %167, align 8, !tbaa !140
  %172 = getelementptr inbounds %struct._PerlIO, ptr %171, i64 0, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !152
  %174 = or i32 %173, 2097152
  store i32 %174, ptr %172, align 8, !tbaa !152
  %175 = load i8, ptr %122, align 1, !tbaa !139
  %176 = icmp eq i8 %175, 97
  br i1 %176, label %177, label %179, !prof !142

177:                                              ; preds = %166
  %178 = call i64 @PerlIOUnix_seek(ptr noundef nonnull %167, i64 noundef 0, i32 noundef 2), !range !370
  br label %179

179:                                              ; preds = %111, %113, %166, %177, %164
  %180 = phi ptr [ null, %164 ], [ %167, %177 ], [ %167, %166 ], [ null, %113 ], [ null, %111 ]
  ret ptr %180
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @S_is_safe_syscall(ptr noundef %0, i64 noundef %1) unnamed_addr #4 !prof !134 !PGOFuncName !375 {
  %3 = icmp ugt i64 %1, 1
  br i1 %3, label %4, label %11, !prof !194

4:                                                ; preds = %2
  %5 = add i64 %1, -1
  %6 = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %5) #35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !194

8:                                                ; preds = %4
  %9 = tail call ptr @__errno_location() #34
  store i32 2, ptr %9, align 4, !tbaa !135
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 59, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef %0, ptr noundef nonnull %10) #33
  br label %11

11:                                               ; preds = %2, %4, %8
  %12 = phi i1 [ false, %8 ], [ true, %4 ], [ true, %2 ]
  ret i1 %12
}

; Function Attrs: nofree
declare noundef i32 @open64(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #20

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @PerlIOUnix_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #6 !prof !134 {
  %5 = load ptr, ptr %1, align 8, !tbaa !140
  %6 = getelementptr inbounds %struct.PerlIOUnix, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !368
  %8 = and i32 %3, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @dup(i32 noundef %7) #33
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ %7, %4 ]
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.PerlIOUnix, ptr %5, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !372
  %21 = load ptr, ptr %16, align 8, !tbaa !140
  %22 = getelementptr inbounds %struct.PerlIOUnix, ptr %21, i64 0, i32 1
  store i32 %13, ptr %22, align 8, !tbaa !368
  %23 = getelementptr inbounds %struct.PerlIOUnix, ptr %21, i64 0, i32 2
  store i32 %20, ptr %23, align 4, !tbaa !372
  tail call void @PerlIOUnix_refcnt_inc(i32 noundef %13)
  br label %26

24:                                               ; preds = %15
  %25 = tail call i32 @close(i32 noundef %13) #33
  br label %26

26:                                               ; preds = %12, %24, %18
  %27 = phi ptr [ %16, %18 ], [ null, %24 ], [ null, %12 ]
  ret ptr %27
}

; Function Attrs: nounwind
declare i32 @dup(i32 noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i64 @PerlIOUnix_read(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) #4 !prof !285 {
  %4 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %59, !prof !376

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !140
  %11 = getelementptr inbounds %struct.PerlIOUnix, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !368
  %13 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !152
  %15 = and i32 %14, 3328
  %16 = icmp eq i32 %15, 1024
  br i1 %16, label %17, label %59, !prof !376

17:                                               ; preds = %9, %56
  %18 = phi i64 [ %58, %56 ], [ undef, %9 ]
  %19 = tail call i64 @read(i32 noundef %12, ptr noundef %1, i64 noundef %2) #33
  %20 = icmp sgt i64 %19, -1
  br i1 %20, label %25, label %21, !prof !376

21:                                               ; preds = %17
  %22 = tail call ptr @__errno_location() #34
  %23 = load i32, ptr %22, align 4, !tbaa !135
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %50, label %25

25:                                               ; preds = %21, %17
  %26 = icmp slt i64 %19, 0
  br i1 %26, label %27, label %40, !prof !286

27:                                               ; preds = %25
  %28 = tail call ptr @__errno_location() #34
  %29 = load i32, ptr %28, align 4, !tbaa !135
  %30 = icmp eq i32 %29, 11
  br i1 %30, label %56, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !140
  %33 = getelementptr inbounds %struct._PerlIO, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !152
  %35 = or i32 %34, 2048
  store i32 %35, ptr %33, align 8, !tbaa !152
  %36 = icmp eq ptr %32, null
  br i1 %36, label %56, label %37

37:                                               ; preds = %31
  %38 = load i32, ptr %28, align 4, !tbaa !135
  %39 = getelementptr inbounds %struct._PerlIO, ptr %32, i64 0, i32 3
  store i32 %38, ptr %39, align 4, !tbaa !288
  br label %56

40:                                               ; preds = %25
  %41 = icmp ne i64 %2, 0
  %42 = icmp eq i64 %19, 0
  %43 = and i1 %41, %42
  br i1 %43, label %44, label %56, !prof !377

44:                                               ; preds = %40
  %45 = load ptr, ptr %0, align 8, !tbaa !140
  %46 = getelementptr inbounds %struct._PerlIO, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !152
  %48 = or i32 %47, 256
  store i32 %48, ptr %46, align 8, !tbaa !152
  %49 = tail call ptr @__errno_location() #34
  store i32 0, ptr %49, align 4, !tbaa !135
  br label %56

50:                                               ; preds = %21
  %51 = load i32, ptr @PL_sig_pending, align 4, !tbaa !135
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0)
  br i1 %54, label %56, label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %37, %31, %53, %27, %44, %40, %55
  %57 = phi i1 [ true, %55 ], [ false, %40 ], [ false, %44 ], [ false, %27 ], [ false, %53 ], [ false, %31 ], [ false, %37 ]
  %58 = phi i64 [ %18, %55 ], [ %19, %40 ], [ %19, %44 ], [ %19, %27 ], [ -1, %53 ], [ %19, %31 ], [ %19, %37 ]
  br i1 %57, label %17, label %59, !prof !286, !llvm.loop !378

59:                                               ; preds = %56, %9, %3
  %60 = phi i64 [ -1, %3 ], [ 0, %9 ], [ %58, %56 ]
  ret i64 %60
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i1 @S_perlio_async_run(ptr noundef %0) unnamed_addr #6 !prof !134 {
  tail call void @Perl_push_scope() #33
  tail call void @Perl_save_destructor_x(ptr noundef nonnull @S_lockcnt_dec, ptr noundef %0) #33
  %2 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !152
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !152
  %7 = load i32, ptr @PL_sig_pending, align 4, !tbaa !135
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @PL_signalhook, align 8, !tbaa !140
  tail call void %10() #33
  br label %11

11:                                               ; preds = %1, %9
  %12 = load ptr, ptr %0, align 8, !tbaa !140
  %13 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !152
  %15 = and i32 %14, 33554432
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load ptr, ptr %0, align 8, !tbaa !140
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %17, %26
  %21 = phi ptr [ %28, %26 ], [ %18, %17 ]
  %22 = getelementptr inbounds %struct._PerlIO, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !152
  %24 = and i32 %23, 33554432
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %21, align 8, !tbaa !147
  store ptr %27, ptr %0, align 8, !tbaa !140
  tail call void @Perl_safesysfree(ptr noundef nonnull %21) #33
  %28 = load ptr, ptr %0, align 8, !tbaa !140
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20, !llvm.loop !379

30:                                               ; preds = %26, %20, %17, %11
  tail call void @Perl_pop_scope() #33
  ret i1 %16
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PerlIOUnix_write(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #4 !prof !380 {
  %4 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %45, !prof !381

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !140
  %11 = getelementptr inbounds %struct.PerlIOUnix, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !368
  br label %13

13:                                               ; preds = %42, %9
  %14 = phi i64 [ undef, %9 ], [ %44, %42 ]
  %15 = tail call i64 @write(i32 noundef %12, ptr noundef %1, i64 noundef %2) #33
  %16 = icmp sgt i64 %15, -1
  br i1 %16, label %21, label %17, !prof !381

17:                                               ; preds = %13
  %18 = tail call ptr @__errno_location() #34
  %19 = load i32, ptr %18, align 4, !tbaa !135
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %36, label %21

21:                                               ; preds = %17, %13
  %22 = icmp slt i64 %15, 0
  br i1 %22, label %23, label %42, !prof !382

23:                                               ; preds = %21
  %24 = tail call ptr @__errno_location() #34
  %25 = load i32, ptr %24, align 4, !tbaa !135
  %26 = icmp eq i32 %25, 11
  br i1 %26, label %42, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8, !tbaa !140
  %29 = getelementptr inbounds %struct._PerlIO, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !152
  %31 = or i32 %30, 2048
  store i32 %31, ptr %29, align 8, !tbaa !152
  %32 = icmp eq ptr %28, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %24, align 4, !tbaa !135
  %35 = getelementptr inbounds %struct._PerlIO, ptr %28, i64 0, i32 3
  store i32 %34, ptr %35, align 4, !tbaa !288
  br label %42

36:                                               ; preds = %17
  %37 = load i32, ptr @PL_sig_pending, align 4, !tbaa !135
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0)
  br i1 %40, label %42, label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %21, %33, %27, %39, %23, %41
  %43 = phi i1 [ true, %41 ], [ false, %23 ], [ false, %39 ], [ false, %27 ], [ false, %33 ], [ false, %21 ]
  %44 = phi i64 [ %14, %41 ], [ %15, %23 ], [ -1, %39 ], [ %15, %27 ], [ %15, %33 ], [ %15, %21 ]
  br i1 %43, label %13, label %45, !prof !382, !llvm.loop !383

45:                                               ; preds = %42, %3
  %46 = phi i64 [ -1, %3 ], [ %44, %42 ]
  ret i64 %46
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i64 @PerlIOUnix_tell(ptr nocapture noundef readonly %0) #4 !prof !384 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOUnix, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !368
  %5 = tail call i64 @lseek64(i32 noundef %4, i64 noundef 0, i32 noundef 1) #33
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @PerlIOUnix_close(ptr noundef %0) #4 !prof !166 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOUnix, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !368
  %5 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !152
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9, !prof !142

9:                                                ; preds = %1
  %10 = icmp sgt i32 %4, -1
  br i1 %10, label %11, label %28, !prof !358

11:                                               ; preds = %9
  %12 = load i32, ptr @PL_perlio_fd_refcnt_size, align 4, !tbaa !135
  %13 = icmp sgt i32 %12, %4
  br i1 %13, label %15, label %14, !prof !358

14:                                               ; preds = %11
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.43, i32 noundef %4, i32 noundef %12) #33
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !140
  %17 = zext nneg i32 %4 to i64
  %18 = getelementptr inbounds i32, ptr %16, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !135
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22, !prof !361

21:                                               ; preds = %15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.44, i32 noundef %4, i32 noundef %19) #33
  br label %22

22:                                               ; preds = %21, %15
  %23 = load ptr, ptr @PL_perlio_fd_refcnt, align 8, !tbaa !140
  %24 = getelementptr inbounds i32, ptr %23, i64 %17
  %25 = load i32, ptr %24, align 4, !tbaa !135
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %24, align 4, !tbaa !135
  %27 = icmp sgt i32 %25, 1
  br i1 %27, label %36, label %29, !prof !269

28:                                               ; preds = %9
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46, i32 noundef %4) #33
  br label %29

29:                                               ; preds = %22, %28
  %30 = tail call i32 @close(i32 noundef %4) #33
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %54, label %32, !prof !250

32:                                               ; preds = %29
  %33 = tail call ptr @__errno_location() #34
  %34 = load i32, ptr %33, align 4, !tbaa !135
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %46, label %54

36:                                               ; preds = %22
  %37 = load ptr, ptr %0, align 8, !tbaa !140
  %38 = getelementptr inbounds %struct._PerlIO, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !152
  %40 = and i32 %39, -2097153
  store i32 %40, ptr %38, align 8, !tbaa !152
  br label %62

41:                                               ; preds = %1
  %42 = tail call ptr @__errno_location() #34
  store i32 9, ptr %42, align 4, !tbaa !135
  br label %62

43:                                               ; preds = %51
  %44 = load i32, ptr %33, align 4, !tbaa !135
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %54, !llvm.loop !385

46:                                               ; preds = %32, %43
  %47 = load i32, ptr @PL_sig_pending, align 4, !tbaa !135
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0)
  br i1 %50, label %62, label %51

51:                                               ; preds = %49, %46
  %52 = tail call i32 @close(i32 noundef %4) #33
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %43, !prof !250, !llvm.loop !385

54:                                               ; preds = %43, %51, %32, %29
  %55 = phi i1 [ %31, %29 ], [ %31, %32 ], [ %53, %51 ], [ %53, %43 ]
  %56 = phi i64 [ 0, %29 ], [ -1, %32 ], [ 0, %51 ], [ -1, %43 ]
  br i1 %55, label %57, label %62, !prof !194

57:                                               ; preds = %54
  %58 = load ptr, ptr %0, align 8, !tbaa !140
  %59 = getelementptr inbounds %struct._PerlIO, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !152
  %61 = and i32 %60, -2097153
  store i32 %61, ptr %59, align 8, !tbaa !152
  br label %62

62:                                               ; preds = %49, %54, %57, %41, %36
  %63 = phi i64 [ 0, %36 ], [ -1, %41 ], [ %56, %57 ], [ %56, %54 ], [ -1, %49 ]
  ret i64 %63
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local i64 @PerlIOStdio_fileno(ptr noundef readonly %0) #21 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.PerlIOStdio, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !386
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @fileno(ptr noundef nonnull %8) #33
  %12 = sext i32 %11 to i64
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi i64 [ %12, %10 ], [ undef, %6 ]
  br i1 %9, label %15, label %17

15:                                               ; preds = %13, %3, %1
  %16 = tail call ptr @__errno_location() #34
  store i32 9, ptr %16, align 4, !tbaa !135
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i64 [ %14, %13 ], [ -1, %15 ]
  ret i64 %18
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @PerlIOStdio_mode(ptr noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #23 !prof !134 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1, !tbaa !139
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4, %7
  %8 = phi i8 [ %13, %7 ], [ %5, %4 ]
  %9 = phi ptr [ %11, %7 ], [ %0, %4 ]
  %10 = phi ptr [ %12, %7 ], [ %1, %4 ]
  %11 = getelementptr inbounds i8, ptr %9, i64 1
  %12 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %8, ptr %10, align 1, !tbaa !139
  %13 = load i8, ptr %11, align 1, !tbaa !139
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %7, !llvm.loop !388

15:                                               ; preds = %7, %4, %2
  %16 = phi ptr [ %1, %2 ], [ %1, %4 ], [ %12, %7 ]
  store i8 0, ptr %16, align 1, !tbaa !139
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOStdio_pushed(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #6 !prof !134 {
  %5 = alloca [8 x i8], align 1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !140
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !140
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._PerlIO, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !153
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @PerlIO_pop(ptr noundef nonnull %0)
  br label %48

18:                                               ; preds = %13
  %19 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %8)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #33
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = icmp eq ptr %1, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %21
  %24 = load i8, ptr %1, align 1, !tbaa !139
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %23, %26
  %27 = phi i8 [ %32, %26 ], [ %24, %23 ]
  %28 = phi ptr [ %30, %26 ], [ %1, %23 ]
  %29 = phi ptr [ %31, %26 ], [ %5, %23 ]
  %30 = getelementptr inbounds i8, ptr %28, i64 1
  %31 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %27, ptr %29, align 1, !tbaa !139
  %32 = load i8, ptr %30, align 1, !tbaa !139
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %26, !llvm.loop !388

34:                                               ; preds = %26, %23, %21
  %35 = phi ptr [ %5, %21 ], [ %5, %23 ], [ %31, %26 ]
  store i8 0, ptr %35, align 1, !tbaa !139
  %36 = call noalias ptr @fdopen(i32 noundef %19, ptr noundef nonnull %5) #33
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %0, align 8, !tbaa !140
  %40 = getelementptr inbounds %struct.PerlIOStdio, ptr %39, i64 0, i32 1
  store ptr %36, ptr %40, align 8, !tbaa !386
  %41 = load ptr, ptr %0, align 8, !tbaa !140
  %42 = tail call i32 @Perl_PerlIO_flush(ptr noundef %41)
  %43 = call i64 @PerlIOBase_pushed(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr poison, ptr noundef %3), !range !370
  br label %44

44:                                               ; preds = %18, %34, %38
  %45 = phi i64 [ %43, %38 ], [ -1, %34 ], [ -1, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #33
  br label %48

46:                                               ; preds = %10, %7, %4
  %47 = tail call i64 @PerlIOBase_pushed(ptr noundef %0, ptr noundef %1, ptr poison, ptr noundef %3), !range !370
  br label %48

48:                                               ; preds = %17, %44, %46
  %49 = phi i64 [ %47, %46 ], [ 0, %17 ], [ %45, %44 ]
  ret i64 %49
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @PerlIO_importFILE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !134 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #33
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = load i8, ptr %1, align 1, !tbaa !139
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %9, %7
  %13 = tail call i32 @dup(i32 noundef %5) #33
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %12
  %16 = tail call noalias ptr @fdopen(i32 noundef %13, ptr noundef nonnull @.str.54) #33
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call noalias ptr @fdopen(i32 noundef %13, ptr noundef nonnull @.str.55) #33
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ @.str.54, %15 ], [ @.str.55, %18 ]
  %22 = phi ptr [ %16, %15 ], [ %19, %18 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call noalias ptr @fdopen(i32 noundef %13, ptr noundef nonnull @.str.38) #33
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %21, %20 ], [ @.str.38, %24 ]
  %28 = phi ptr [ %22, %20 ], [ %25, %24 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = tail call i32 @close(i32 noundef %13) #33
  br label %34

32:                                               ; preds = %26
  %33 = tail call i32 @fclose(ptr noundef nonnull %28)
  br label %34

34:                                               ; preds = %12, %32, %30
  %35 = phi ptr [ %27, %32 ], [ %27, %30 ], [ %1, %12 ]
  %36 = phi i1 [ true, %32 ], [ false, %30 ], [ false, %12 ]
  br i1 %36, label %37, label %46

37:                                               ; preds = %34, %9
  %38 = phi ptr [ %1, %9 ], [ %35, %34 ]
  %39 = tail call ptr @PerlIO_allocate()
  %40 = tail call ptr @PerlIO_push(ptr noundef %39, ptr noundef nonnull @PerlIO_stdio, ptr noundef %38, ptr noundef null)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %40, align 8, !tbaa !140
  %44 = getelementptr inbounds %struct.PerlIOStdio, ptr %43, i64 0, i32 1
  store ptr %0, ptr %44, align 8, !tbaa !386
  %45 = tail call i32 @fileno(ptr noundef nonnull %0) #33
  tail call void @PerlIOUnix_refcnt_inc(i32 noundef %45)
  br label %46

46:                                               ; preds = %34, %4, %42, %37, %2
  %47 = phi ptr [ null, %2 ], [ null, %34 ], [ null, %4 ], [ %40, %42 ], [ %40, %37 ]
  ret ptr %47
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIOStdio_open(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9) #6 !prof !134 {
  %11 = alloca [8 x i8], align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #33
  %14 = icmp eq ptr %7, null
  br i1 %14, label %64, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %7, align 8, !tbaa !140
  %17 = icmp eq ptr %16, null
  br i1 %17, label %64, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #33
  %19 = load ptr, ptr %9, align 8, !tbaa !140
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !232
  %22 = and i32 %21, 2098176
  %23 = icmp eq i32 %22, 1024
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load ptr, ptr %19, align 8, !tbaa !233
  %26 = getelementptr inbounds %struct.xpv, ptr %25, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !234
  store i64 %27, ptr %12, align 8, !tbaa !236
  %28 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !139
  br label %32

30:                                               ; preds = %18
  %31 = call ptr @Perl_sv_2pv_flags(ptr noundef %19, ptr noundef nonnull %12, i32 noundef 34) #33
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi ptr [ %29, %24 ], [ %31, %30 ]
  %34 = load ptr, ptr %7, align 8, !tbaa !140
  %35 = load i64, ptr %12, align 8, !tbaa !236
  %36 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %33, i64 noundef %35)
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.PerlIOStdio, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !386
  %40 = call i32 @fileno(ptr noundef %39) #33
  %41 = call i32 @PerlIOUnix_refcnt_dec(i32 noundef %40)
  %42 = icmp eq ptr %3, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %37
  %44 = load i8, ptr %3, align 1, !tbaa !139
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43, %46
  %47 = phi i8 [ %52, %46 ], [ %44, %43 ]
  %48 = phi ptr [ %50, %46 ], [ %3, %43 ]
  %49 = phi ptr [ %51, %46 ], [ %11, %43 ]
  %50 = getelementptr inbounds i8, ptr %48, i64 1
  %51 = getelementptr inbounds i8, ptr %49, i64 1
  store i8 %47, ptr %49, align 1, !tbaa !139
  %52 = load i8, ptr %50, align 1, !tbaa !139
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %46, !llvm.loop !388

54:                                               ; preds = %46, %43, %37
  %55 = phi ptr [ %11, %37 ], [ %11, %43 ], [ %51, %46 ]
  store i8 0, ptr %55, align 1, !tbaa !139
  %56 = load ptr, ptr %38, align 8, !tbaa !386
  %57 = call ptr @freopen64(ptr noundef %33, ptr noundef nonnull %11, ptr noundef %56) #33
  %58 = load ptr, ptr %38, align 8, !tbaa !386
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  store ptr %57, ptr %38, align 8, !tbaa !386
  %61 = call i32 @fileno(ptr noundef %57) #33
  call void @PerlIOUnix_refcnt_inc(i32 noundef %61)
  br label %62

62:                                               ; preds = %54, %32, %60
  %63 = phi ptr [ %7, %60 ], [ null, %32 ], [ null, %54 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #33
  br label %185

64:                                               ; preds = %15, %10
  %65 = icmp sgt i32 %8, 0
  br i1 %65, label %66, label %128

66:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #33
  %67 = load ptr, ptr %9, align 8, !tbaa !140
  %68 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !232
  %70 = and i32 %69, 2098176
  %71 = icmp eq i32 %70, 1024
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load ptr, ptr %67, align 8, !tbaa !233
  %74 = getelementptr inbounds %struct.xpv, ptr %73, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !234
  store i64 %75, ptr %13, align 8, !tbaa !236
  %76 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !139
  br label %80

78:                                               ; preds = %66
  %79 = call ptr @Perl_sv_2pv_flags(ptr noundef %67, ptr noundef nonnull %13, i32 noundef 34) #33
  br label %80

80:                                               ; preds = %78, %72
  %81 = phi ptr [ %77, %72 ], [ %79, %78 ]
  %82 = load i64, ptr %13, align 8, !tbaa !236
  %83 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %81, i64 noundef %82)
  br i1 %83, label %84, label %122

84:                                               ; preds = %80
  %85 = load i8, ptr %3, align 1, !tbaa !139
  %86 = icmp eq i8 %85, 35
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = getelementptr inbounds i8, ptr %3, i64 1
  %89 = call i32 (ptr, i32, ...) @open64(ptr noundef %81, i32 noundef %5, i32 noundef %6) #33
  br label %122

90:                                               ; preds = %84
  %91 = call noalias ptr @fopen64(ptr noundef %81, ptr noundef nonnull %3)
  %92 = icmp eq ptr %91, null
  br i1 %92, label %122, label %93

93:                                               ; preds = %90
  br i1 %14, label %94, label %96

94:                                               ; preds = %93
  %95 = call ptr @PerlIO_allocate()
  br label %96

96:                                               ; preds = %93, %94
  %97 = phi ptr [ %7, %93 ], [ %95, %94 ]
  %98 = load i8, ptr %3, align 1, !tbaa !139
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96, %100
  %101 = phi i8 [ %106, %100 ], [ %98, %96 ]
  %102 = phi ptr [ %104, %100 ], [ %3, %96 ]
  %103 = phi ptr [ %105, %100 ], [ %11, %96 ]
  %104 = getelementptr inbounds i8, ptr %102, i64 1
  %105 = getelementptr inbounds i8, ptr %103, i64 1
  store i8 %101, ptr %103, align 1, !tbaa !139
  %106 = load i8, ptr %104, align 1, !tbaa !139
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %100, !llvm.loop !388

108:                                              ; preds = %100, %96
  %109 = phi ptr [ %11, %96 ], [ %105, %100 ]
  store i8 0, ptr %109, align 1, !tbaa !139
  %110 = getelementptr inbounds %struct.PerlIO_list_s, ptr %1, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !181
  %112 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %111, i64 %2, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !185
  %114 = call ptr @PerlIO_push(ptr noundef %97, ptr noundef %0, ptr noundef nonnull %11, ptr noundef %113)
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %108
  %117 = load ptr, ptr %114, align 8, !tbaa !140
  %118 = getelementptr inbounds %struct.PerlIOStdio, ptr %117, i64 0, i32 1
  store ptr %91, ptr %118, align 8, !tbaa !386
  %119 = call i32 @fileno(ptr noundef nonnull %91) #33
  call void @PerlIOUnix_refcnt_inc(i32 noundef %119)
  br label %122

120:                                              ; preds = %108
  %121 = call i32 @fclose(ptr noundef nonnull %91)
  br label %122

122:                                              ; preds = %120, %116, %90, %80, %87
  %123 = phi ptr [ %7, %87 ], [ %7, %80 ], [ %114, %120 ], [ %114, %116 ], [ %7, %90 ]
  %124 = phi i1 [ true, %87 ], [ false, %80 ], [ false, %120 ], [ false, %116 ], [ false, %90 ]
  %125 = phi i32 [ %89, %87 ], [ %4, %80 ], [ %4, %120 ], [ %4, %116 ], [ %4, %90 ]
  %126 = phi ptr [ %88, %87 ], [ %3, %80 ], [ %11, %120 ], [ %11, %116 ], [ %3, %90 ]
  %127 = phi ptr [ undef, %87 ], [ null, %80 ], [ %114, %120 ], [ %114, %116 ], [ null, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #33
  br i1 %124, label %128, label %185

128:                                              ; preds = %122, %64
  %129 = phi ptr [ %123, %122 ], [ %7, %64 ]
  %130 = phi i32 [ %125, %122 ], [ %4, %64 ]
  %131 = phi ptr [ %126, %122 ], [ %3, %64 ]
  %132 = phi ptr [ %127, %122 ], [ undef, %64 ]
  %133 = icmp sgt i32 %130, -1
  br i1 %133, label %134, label %184

134:                                              ; preds = %128
  %135 = load i8, ptr %131, align 1, !tbaa !139
  %136 = icmp eq i8 %135, 73
  %137 = zext i1 %136 to i64
  %138 = getelementptr inbounds i8, ptr %131, i64 %137
  br i1 %136, label %142, label %139

139:                                              ; preds = %134
  %140 = load i8, ptr %138, align 1, !tbaa !139
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %157, label %149

142:                                              ; preds = %134
  switch i32 %130, label %160 [
    i32 0, label %143
    i32 1, label %145
    i32 2, label %147
  ]

143:                                              ; preds = %142
  %144 = load ptr, ptr @stdin, align 8, !tbaa !140
  br label %160

145:                                              ; preds = %142
  %146 = load ptr, ptr @stdout, align 8, !tbaa !140
  br label %160

147:                                              ; preds = %142
  %148 = load ptr, ptr @stderr, align 8, !tbaa !140
  br label %160

149:                                              ; preds = %139, %149
  %150 = phi i8 [ %155, %149 ], [ %140, %139 ]
  %151 = phi ptr [ %153, %149 ], [ %138, %139 ]
  %152 = phi ptr [ %154, %149 ], [ %11, %139 ]
  %153 = getelementptr inbounds i8, ptr %151, i64 1
  %154 = getelementptr inbounds i8, ptr %152, i64 1
  store i8 %150, ptr %152, align 1, !tbaa !139
  %155 = load i8, ptr %153, align 1, !tbaa !139
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %149, !llvm.loop !388

157:                                              ; preds = %149, %139
  %158 = phi ptr [ %11, %139 ], [ %154, %149 ]
  store i8 0, ptr %158, align 1, !tbaa !139
  %159 = call noalias ptr @fdopen(i32 noundef %130, ptr noundef nonnull %11) #33
  br label %160

160:                                              ; preds = %143, %145, %147, %142, %157
  %161 = phi ptr [ %138, %142 ], [ %138, %147 ], [ %138, %145 ], [ %138, %143 ], [ %11, %157 ]
  %162 = phi ptr [ null, %142 ], [ %148, %147 ], [ %146, %145 ], [ %144, %143 ], [ %159, %157 ]
  %163 = icmp eq ptr %162, null
  br i1 %163, label %180, label %164

164:                                              ; preds = %160
  %165 = icmp eq ptr %129, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %164
  %167 = call ptr @PerlIO_allocate()
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi ptr [ %129, %164 ], [ %167, %166 ]
  %170 = getelementptr inbounds %struct.PerlIO_list_s, ptr %1, i64 0, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !181
  %172 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %171, i64 %2, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !185
  %174 = call ptr @PerlIO_push(ptr noundef %169, ptr noundef %0, ptr noundef %161, ptr noundef %173)
  %175 = icmp eq ptr %174, null
  br i1 %175, label %182, label %176

176:                                              ; preds = %168
  %177 = load ptr, ptr %174, align 8, !tbaa !140
  %178 = getelementptr inbounds %struct.PerlIOStdio, ptr %177, i64 0, i32 1
  store ptr %162, ptr %178, align 8, !tbaa !386
  %179 = call i32 @fileno(ptr noundef nonnull %162) #33
  call void @PerlIOUnix_refcnt_inc(i32 noundef %179)
  br label %182

180:                                              ; preds = %160
  %181 = call i32 @close(i32 noundef %130) #33
  br label %182

182:                                              ; preds = %168, %176, %180
  %183 = phi ptr [ %132, %180 ], [ %174, %176 ], [ %174, %168 ]
  br i1 %163, label %184, label %185

184:                                              ; preds = %182, %128
  br label %185

185:                                              ; preds = %122, %182, %184, %62
  %186 = phi ptr [ %63, %62 ], [ null, %184 ], [ %183, %182 ], [ %127, %122 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #33
  ret ptr %186
}

declare ptr @freopen64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @PerlIOStdio_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #6 !prof !134 {
  %5 = alloca [8 x i8], align 1
  %6 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %93, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !140
  %10 = getelementptr inbounds %struct.PerlIOStdio, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !386
  %12 = tail call i32 @fileno(ptr noundef %11) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #33
  %13 = and i32 %3, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %53, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @fileno(ptr noundef %11) #33
  %17 = tail call i32 @dup(i32 noundef %16) #33
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %1, align 8, !tbaa !140
  %21 = icmp eq ptr %20, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._PerlIO, ptr %20, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !152
  %25 = zext i32 %24 to i64
  %26 = and i64 %25, 8192
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 97, ptr %5, align 1, !tbaa !139
  %30 = and i64 %25, 1024
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 43, ptr %29, align 1, !tbaa !139
  br label %48

34:                                               ; preds = %22
  %35 = and i64 %25, 1024
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 114, ptr %5, align 1, !tbaa !139
  %39 = and i64 %25, 512
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 43, ptr %38, align 1, !tbaa !139
  br label %48

43:                                               ; preds = %34
  %44 = and i64 %25, 512
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 119, ptr %5, align 1, !tbaa !139
  br label %48

48:                                               ; preds = %19, %28, %32, %37, %41, %43, %46
  %49 = phi ptr [ %5, %19 ], [ %33, %32 ], [ %29, %28 ], [ %42, %41 ], [ %38, %37 ], [ %47, %46 ], [ %5, %43 ]
  store i8 0, ptr %49, align 1, !tbaa !139
  %50 = call noalias ptr @fdopen(i32 noundef %17, ptr noundef nonnull %5) #33
  br label %51

51:                                               ; preds = %15, %48
  %52 = phi ptr [ %50, %48 ], [ %11, %15 ]
  br i1 %18, label %53, label %85

53:                                               ; preds = %8, %51
  %54 = load ptr, ptr %1, align 8, !tbaa !140
  %55 = icmp eq ptr %54, null
  br i1 %55, label %82, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct._PerlIO, ptr %54, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !152
  %59 = zext i32 %58 to i64
  %60 = and i64 %59, 8192
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 97, ptr %5, align 1, !tbaa !139
  %64 = and i64 %59, 1024
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 43, ptr %63, align 1, !tbaa !139
  br label %82

68:                                               ; preds = %56
  %69 = and i64 %59, 1024
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 114, ptr %5, align 1, !tbaa !139
  %73 = and i64 %59, 512
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 43, ptr %72, align 1, !tbaa !139
  br label %82

77:                                               ; preds = %68
  %78 = and i64 %59, 512
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 119, ptr %5, align 1, !tbaa !139
  br label %82

82:                                               ; preds = %53, %62, %66, %71, %75, %77, %80
  %83 = phi ptr [ %5, %53 ], [ %67, %66 ], [ %63, %62 ], [ %76, %75 ], [ %72, %71 ], [ %81, %80 ], [ %5, %77 ]
  store i8 0, ptr %83, align 1, !tbaa !139
  %84 = call noalias ptr @fdopen(i32 noundef %12, ptr noundef nonnull %5) #33
  br label %85

85:                                               ; preds = %51, %82
  %86 = phi ptr [ %52, %51 ], [ %84, %82 ]
  %87 = load ptr, ptr %6, align 8, !tbaa !140
  %88 = getelementptr inbounds %struct.PerlIOStdio, ptr %87, i64 0, i32 1
  store ptr %86, ptr %88, align 8, !tbaa !386
  %89 = icmp eq ptr %86, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = tail call i32 @fileno(ptr noundef nonnull %86) #33
  tail call void @PerlIOUnix_refcnt_inc(i32 noundef %91)
  br label %92

92:                                               ; preds = %90, %85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #33
  br label %93

93:                                               ; preds = %92, %4
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOStdio_close(ptr noundef %0) #6 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @__errno_location() #34
  store i32 9, ptr %7, align 4, !tbaa !135
  br label %63

8:                                                ; preds = %1
  %9 = tail call i32 @fileno(ptr noundef nonnull %4) #33
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %55, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @PerlIOUnix_refcnt_dec(i32 noundef %9)
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %55, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @stdin, align 8, !tbaa !140
  %16 = icmp eq ptr %4, %15
  br i1 %16, label %63, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @stdout, align 8, !tbaa !140
  %19 = icmp eq ptr %4, %18
  %20 = load ptr, ptr @stderr, align 8
  %21 = icmp eq ptr %4, %20
  %22 = select i1 %19, i1 true, i1 %21
  %23 = load ptr, ptr %0, align 8, !tbaa !140
  %24 = icmp eq ptr %23, null
  br i1 %22, label %25, label %40

25:                                               ; preds = %17
  br i1 %24, label %38, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct._PerlIO, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !153
  %29 = icmp eq ptr %28, null
  br i1 %29, label %63, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._PerlIO_funcs, ptr %28, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !209
  %33 = icmp eq ptr %32, null
  br i1 %33, label %63, label %34

34:                                               ; preds = %30
  %35 = tail call i64 %32(ptr noundef nonnull %0) #33
  %36 = shl i64 %35, 32
  %37 = ashr exact i64 %36, 32
  br label %63

38:                                               ; preds = %25
  %39 = tail call ptr @__errno_location() #34
  store i32 9, ptr %39, align 4, !tbaa !135
  br label %63

40:                                               ; preds = %17
  br i1 %24, label %51, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct._PerlIO, ptr %23, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !153
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._PerlIO_funcs, ptr %43, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !209
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = tail call i64 %47(ptr noundef nonnull %0) #33
  br label %53

51:                                               ; preds = %40
  %52 = tail call ptr @__errno_location() #34
  store i32 9, ptr %52, align 4, !tbaa !135
  br label %53

53:                                               ; preds = %41, %45, %49, %51
  %54 = tail call i32 @dup(i32 noundef %9) #33
  br label %55

55:                                               ; preds = %11, %8, %53
  %56 = phi i32 [ %54, %53 ], [ -1, %8 ], [ -1, %11 ]
  %57 = tail call i32 @fclose(ptr noundef nonnull %4)
  %58 = sext i32 %57 to i64
  %59 = icmp sgt i32 %56, -1
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = tail call i32 @dup2(i32 noundef %56, i32 noundef %9) #33
  %62 = tail call i32 @close(i32 noundef %56) #33
  br label %63

63:                                               ; preds = %38, %34, %30, %26, %14, %60, %55, %6
  %64 = phi i64 [ -1, %6 ], [ 0, %14 ], [ %58, %60 ], [ %58, %55 ], [ -1, %38 ], [ %37, %34 ], [ 0, %30 ], [ 0, %26 ]
  ret i64 %64
}

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOStdio_read(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) #6 !prof !134 {
  %4 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !140
  %11 = getelementptr inbounds %struct.PerlIOStdio, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !386
  %13 = icmp eq i64 %2, 1
  br label %14

14:                                               ; preds = %42, %9
  %15 = phi i64 [ 0, %9 ], [ %31, %42 ]
  br i1 %13, label %16, label %21

16:                                               ; preds = %14
  %17 = tail call i32 @fgetc(ptr noundef %12)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = trunc i32 %17 to i8
  store i8 %20, ptr %1, align 1, !tbaa !139
  br label %23

21:                                               ; preds = %14
  %22 = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %12)
  br label %23

23:                                               ; preds = %16, %19, %21
  %24 = phi i64 [ %22, %21 ], [ 1, %19 ], [ %15, %16 ]
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = tail call i32 @ferror(ptr noundef %12) #33
  %28 = icmp ne i32 %27, 0
  %29 = sext i1 %28 to i64
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i64 [ %24, %23 ], [ %29, %26 ]
  %32 = icmp sgt i64 %31, -1
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @__errno_location() #34
  %35 = load i32, ptr %34, align 4, !tbaa !135
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, ptr @PL_sig_pending, align 4, !tbaa !135
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0)
  br i1 %41, label %43, label %42

42:                                               ; preds = %40, %37
  store i32 0, ptr %34, align 4, !tbaa !135
  br label %14, !llvm.loop !389

43:                                               ; preds = %33, %30, %40, %3
  %44 = phi i64 [ -1, %3 ], [ -1, %40 ], [ %31, %30 ], [ %31, %33 ]
  ret i64 %44
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOStdio_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6 !prof !134 {
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.PerlIOStdio, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !386
  %7 = icmp eq ptr %4, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 25
  %14 = load ptr, ptr %13, align 8, !tbaa !296
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !291
  %19 = icmp ne ptr %18, null
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %16, %12, %8
  %22 = phi i32 [ 0, %12 ], [ %20, %16 ], [ undef, %8 ]
  br i1 %11, label %23, label %24

23:                                               ; preds = %21, %3
  br label %24

24:                                               ; preds = %21, %23
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %61, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._IO_FILE, ptr %6, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !390
  %30 = getelementptr inbounds i8, ptr %1, i64 %2
  br label %31

31:                                               ; preds = %56, %27
  %32 = phi i64 [ 0, %27 ], [ %57, %56 ]
  %33 = phi ptr [ %29, %27 ], [ %58, %56 ]
  %34 = phi ptr [ %30, %27 ], [ %38, %56 ]
  %35 = phi i64 [ %2, %27 ], [ %59, %56 ]
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, ptr %34, i64 -1
  %39 = load i8, ptr %38, align 1, !tbaa !139
  %40 = zext i8 %39 to i32
  %41 = tail call i32 @ungetc(i32 noundef %40, ptr noundef %6)
  %42 = icmp eq i32 %41, %40
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load ptr, ptr %28, align 8, !tbaa !390
  %45 = getelementptr inbounds i8, ptr %33, i64 -1
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i8, ptr %45, align 1, !tbaa !139
  %49 = icmp eq i8 %48, %39
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %43
  %51 = tail call i32 @fgetc(ptr noundef %6)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %47
  %54 = add i64 %35, -1
  %55 = add nsw i64 %32, 1
  br label %56

56:                                               ; preds = %50, %37, %53
  %57 = phi i64 [ %55, %53 ], [ %32, %37 ], [ %32, %50 ]
  %58 = phi ptr [ %45, %53 ], [ %33, %37 ], [ %45, %50 ]
  %59 = phi i64 [ %54, %53 ], [ %35, %37 ], [ %35, %50 ]
  %60 = phi i1 [ true, %53 ], [ false, %37 ], [ false, %50 ]
  br i1 %60, label %31, label %61

61:                                               ; preds = %56, %31, %24
  %62 = phi i64 [ 0, %24 ], [ %32, %31 ], [ %57, %56 ]
  %63 = phi i64 [ %2, %24 ], [ 0, %31 ], [ %59, %56 ]
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = tail call i64 @Perl_PerlIO_tell(ptr noundef nonnull %0)
  %67 = tail call ptr @PerlIO_push(ptr noundef nonnull %0, ptr noundef nonnull @PerlIO_pending, ptr noundef nonnull @.str.38, ptr noundef null)
  %68 = load ptr, ptr %0, align 8, !tbaa !140
  %69 = getelementptr inbounds %struct.PerlIOBuf, ptr %68, i64 0, i32 4
  store i64 %66, ptr %69, align 8, !tbaa !309
  %70 = tail call i64 @PerlIOBuf_unread(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %63)
  %71 = add nsw i64 %70, %62
  br label %72

72:                                               ; preds = %65, %61
  %73 = phi i64 [ %71, %65 ], [ %62, %61 ]
  ret i64 %73
}

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOStdio_write(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) #6 !prof !134 {
  %4 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !140
  %11 = getelementptr inbounds %struct.PerlIOStdio, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !386
  %13 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %12)
  %14 = icmp sgt i64 %13, -1
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @__errno_location() #34
  %17 = load i32, ptr %16, align 4, !tbaa !135
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %22, label %33

19:                                               ; preds = %27
  %20 = load i32, ptr %16, align 4, !tbaa !135
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %33, !llvm.loop !393

22:                                               ; preds = %15, %19
  %23 = load i32, ptr @PL_sig_pending, align 4, !tbaa !135
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0)
  br i1 %26, label %33, label %27

27:                                               ; preds = %25, %22
  store i32 0, ptr %16, align 4, !tbaa !135
  %28 = load ptr, ptr %0, align 8, !tbaa !140
  %29 = getelementptr inbounds %struct.PerlIOStdio, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !386
  %31 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %30)
  %32 = icmp sgt i64 %31, -1
  br i1 %32, label %33, label %19, !llvm.loop !393

33:                                               ; preds = %27, %19, %25, %15, %9, %3
  %34 = phi i64 [ -1, %3 ], [ %13, %9 ], [ %13, %15 ], [ -1, %25 ], [ %31, %19 ], [ %31, %27 ]
  ret i64 %34
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef i64 @PerlIOStdio_seek(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #21 !prof !134 {
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.PerlIOStdio, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !386
  %7 = tail call i32 @fseek(ptr noundef %6, i64 noundef %1, i32 noundef %2)
  %8 = sext i32 %7 to i64
  ret i64 %8
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef i64 @PerlIOStdio_tell(ptr nocapture noundef readonly %0) #21 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  %5 = tail call i64 @ftell(ptr noundef %4)
  ret i64 %5
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef i64 @PerlIOStdio_flush(ptr nocapture noundef readonly %0) #21 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !152
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !386
  %10 = tail call i32 @fflush(ptr noundef %9)
  %11 = sext i32 %10 to i64
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi i64 [ %11, %7 ], [ 0, %1 ]
  ret i64 %13
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef i64 @PerlIOStdio_eof(ptr nocapture noundef readonly %0) #21 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  %5 = tail call i32 @feof(ptr noundef %4) #33
  %6 = sext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: cold nofree nounwind memory(read) uwtable
define dso_local noundef i64 @PerlIOStdio_error(ptr nocapture noundef readonly %0) #25 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  %5 = tail call i32 @ferror(ptr noundef %4) #33
  %6 = sext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @PerlIOStdio_clearerr(ptr nocapture noundef readonly %0) #21 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  tail call void @clearerr(ptr noundef %4) #33
  ret void
}

; Function Attrs: nofree nounwind
declare void @clearerr(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @PerlIOStdio_setlinebuf(ptr nocapture noundef readonly %0) #21 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  %5 = tail call i32 @setvbuf(ptr noundef %4, ptr noundef null, i32 noundef 1, i64 noundef 0) #33
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @setvbuf(ptr nocapture noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @PerlIOStdio_get_base(ptr nocapture noundef readonly %0) #9 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !394
  ret ptr %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOStdio_get_bufsiz(ptr nocapture noundef readonly %0) #9 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !395
  %7 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !394
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  ret i64 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @PerlIOStdio_get_ptr(ptr nocapture noundef readonly %0) #9 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  ret ptr %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOStdio_get_cnt(ptr nocapture noundef readonly %0) #9 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOStdio, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !395
  %7 = getelementptr inbounds %struct._IO_FILE, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !390
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  ret i64 %11
}

; Function Attrs: cold noreturn nounwind uwtable
define dso_local void @PerlIOStdio_set_ptrcnt(ptr nocapture noundef readnone %0, ptr noundef readnone %1, i64 noundef %2) local_unnamed_addr #26 !prof !134 {
  tail call void @abort() #37
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #27

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOStdio_fill(ptr noundef %0) #6 !prof !134 {
  %2 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !140
  %9 = getelementptr inbounds %struct.PerlIOStdio, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !386
  %11 = getelementptr inbounds %struct._PerlIO, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !152
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = tail call i32 @fflush(ptr noundef %10)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %15, %7
  %19 = tail call i32 @fgetc(ptr noundef %10)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %36

21:                                               ; preds = %18, %33
  %22 = tail call i32 @ferror(ptr noundef %10) #33
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @__errno_location() #34
  %26 = load i32, ptr %25, align 4, !tbaa !135
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i32, ptr @PL_sig_pending, align 4, !tbaa !135
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call fastcc zeroext i1 @S_perlio_async_run(ptr noundef nonnull %0)
  br i1 %32, label %41, label %33

33:                                               ; preds = %31, %28
  store i32 0, ptr %25, align 4, !tbaa !135
  %34 = tail call i32 @fgetc(ptr noundef %10)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %21, label %36, !llvm.loop !396

36:                                               ; preds = %33, %18
  %37 = phi i32 [ %19, %18 ], [ %34, %33 ]
  %38 = tail call i32 @ungetc(i32 noundef %37, ptr noundef %10)
  %39 = icmp ne i32 %38, %37
  %40 = sext i1 %39 to i64
  br label %41

41:                                               ; preds = %31, %21, %24, %36, %15, %1
  %42 = phi i64 [ -1, %1 ], [ -1, %15 ], [ %40, %36 ], [ -1, %24 ], [ -1, %21 ], [ -1, %31 ]
  ret i64 %42
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @PerlIO_exportFILE(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #6 !prof !134 {
  %3 = alloca [8 x i8], align 1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %80, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %80, label %8

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #33
  %9 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %0)
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %78

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !140
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._PerlIO_funcs, ptr %16, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !209
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = tail call i64 %20(ptr noundef nonnull %0) #33
  br label %26

24:                                               ; preds = %11
  %25 = tail call ptr @__errno_location() #34
  store i32 9, ptr %25, align 4, !tbaa !135
  br label %26

26:                                               ; preds = %14, %18, %22, %24
  %27 = icmp eq ptr %1, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = load i8, ptr %1, align 1, !tbaa !139
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %26, %28
  %32 = load ptr, ptr %0, align 8, !tbaa !140
  %33 = icmp eq ptr %32, null
  br i1 %33, label %60, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct._PerlIO, ptr %32, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !152
  %37 = zext i32 %36 to i64
  %38 = and i64 %37, 8192
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 97, ptr %3, align 1, !tbaa !139
  %42 = and i64 %37, 1024
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 43, ptr %41, align 1, !tbaa !139
  br label %60

46:                                               ; preds = %34
  %47 = and i64 %37, 1024
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 114, ptr %3, align 1, !tbaa !139
  %51 = and i64 %37, 512
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 43, ptr %50, align 1, !tbaa !139
  br label %60

55:                                               ; preds = %46
  %56 = and i64 %37, 512
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 119, ptr %3, align 1, !tbaa !139
  br label %60

60:                                               ; preds = %31, %40, %44, %49, %53, %55, %58
  %61 = phi ptr [ %3, %31 ], [ %45, %44 ], [ %41, %40 ], [ %54, %53 ], [ %50, %49 ], [ %59, %58 ], [ %3, %55 ]
  store i8 0, ptr %61, align 1, !tbaa !139
  br label %62

62:                                               ; preds = %60, %28
  %63 = phi ptr [ %1, %28 ], [ %3, %60 ]
  %64 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %0)
  %65 = call noalias ptr @fdopen(i32 noundef %64, ptr noundef nonnull %63) #33
  %66 = icmp eq ptr %65, null
  br i1 %66, label %78, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %0, align 8, !tbaa !140
  store ptr null, ptr %0, align 8, !tbaa !140
  %69 = call ptr @PerlIO_push(ptr noundef nonnull %0, ptr noundef nonnull @PerlIO_stdio, ptr noundef nonnull %3, ptr noundef null)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %69, align 8, !tbaa !140
  %73 = getelementptr inbounds %struct.PerlIOStdio, ptr %72, i64 0, i32 1
  store ptr %65, ptr %73, align 8, !tbaa !386
  %74 = call i32 @fileno(ptr noundef nonnull %65) #33
  call void @PerlIOUnix_refcnt_inc(i32 noundef %74)
  %75 = load ptr, ptr %69, align 8, !tbaa !140
  br label %76

76:                                               ; preds = %67, %71
  %77 = phi ptr [ %75, %71 ], [ %0, %67 ]
  store ptr %68, ptr %77, align 8, !tbaa !140
  br label %78

78:                                               ; preds = %76, %62, %8
  %79 = phi ptr [ null, %8 ], [ %65, %62 ], [ %65, %76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #33
  br label %80

80:                                               ; preds = %78, %2, %5
  %81 = phi ptr [ null, %5 ], [ null, %2 ], [ %79, %78 ]
  ret ptr %81
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIO_findFILE(ptr noundef %0) local_unnamed_addr #6 !prof !134 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, @PerlIO_stdio
  br i1 %9, label %10, label %2, !llvm.loop !397

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.PerlIOStdio, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !386
  br label %21

13:                                               ; preds = %2
  %14 = tail call ptr @PerlIO_exportFILE(ptr noundef %0, ptr noundef null)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @fileno(ptr noundef nonnull %14) #33
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 @PerlIOUnix_refcnt_dec(i32 noundef %17)
  br label %21

21:                                               ; preds = %13, %19, %16, %10
  %22 = phi ptr [ %12, %10 ], [ %14, %16 ], [ %14, %19 ], [ %14, %13 ]
  ret ptr %22
}

; Function Attrs: cold nounwind uwtable
define dso_local void @PerlIO_releaseFILE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !134 {
  %3 = load ptr, ptr %0, align 8, !tbaa !140
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2, %21
  %6 = phi ptr [ %22, %21 ], [ %3, %2 ]
  %7 = phi ptr [ %6, %21 ], [ %0, %2 ]
  %8 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !153
  %10 = icmp eq ptr %9, @PerlIO_stdio
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.PerlIOStdio, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !386
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = tail call i32 @fileno(ptr noundef %1) #33
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 @PerlIOUnix_refcnt_dec(i32 noundef %16)
  br label %20

20:                                               ; preds = %18, %15
  tail call void @PerlIO_pop(ptr noundef nonnull %7)
  br label %24

21:                                               ; preds = %11, %5
  %22 = load ptr, ptr %6, align 8, !tbaa !140
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !398

24:                                               ; preds = %21, %2, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @PerlIOBuf_pushed(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #4 !prof !166 {
  %5 = load ptr, ptr %0, align 8, !tbaa !140
  %6 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %0)
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %16, !prof !261

8:                                                ; preds = %4
  %9 = tail call i32 @isatty(i32 noundef %6) #33
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !261

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !140
  %13 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !152
  %15 = or i32 %14, 8912896
  store i32 %15, ptr %13, align 8, !tbaa !152
  br label %16

16:                                               ; preds = %11, %8, %4
  %17 = load ptr, ptr %0, align 8, !tbaa !140
  %18 = load ptr, ptr %17, align 8, !tbaa !140
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20, !prof !142

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._PerlIO, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !153
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24, !prof !320

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._PerlIO_funcs, ptr %22, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !321
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !320

28:                                               ; preds = %24
  %29 = tail call i64 %26(ptr noundef nonnull %17) #33, !prof !399
  br label %32

30:                                               ; preds = %24, %20
  %31 = tail call ptr @__errno_location() #34
  store i32 22, ptr %31, align 4, !tbaa !135
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ undef, %30 ]
  %34 = phi i1 [ false, %28 ], [ true, %30 ]
  br i1 %34, label %35, label %36, !prof !320

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %32, %35
  %37 = phi i64 [ %33, %32 ], [ -1, %35 ]
  %38 = icmp eq i64 %37, -1
  br i1 %38, label %41, label %39, !prof !142

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.PerlIOBuf, ptr %5, i64 0, i32 4
  store i64 %37, ptr %40, align 8, !tbaa !309
  br label %41

41:                                               ; preds = %36, %39, %16
  %42 = tail call i64 @PerlIOBase_pushed(ptr noundef nonnull %0, ptr noundef %1, ptr poison, ptr noundef %3), !range !370
  ret i64 %42
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @PerlIOBuf_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #4 !prof !166 {
  %11 = icmp eq ptr %7, null
  br i1 %11, label %56, label %12, !prof !261

12:                                               ; preds = %10
  %13 = load ptr, ptr %7, align 8, !tbaa !140
  %14 = icmp eq ptr %13, null
  br i1 %14, label %56, label %15

15:                                               ; preds = %12
  %16 = add nsw i64 %2, -1
  %17 = load ptr, ptr %13, align 8, !tbaa !140
  %18 = getelementptr inbounds %struct._PerlIO, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !153
  %20 = icmp sgt i64 %2, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.PerlIO_list_s, ptr %1, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !183
  %24 = icmp slt i64 %23, %2
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.PerlIO_list_s, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !181
  %28 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %27, i64 %16
  %29 = load ptr, ptr %28, align 8, !tbaa !195
  br label %33

30:                                               ; preds = %21, %15
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18) #33
  br label %33

33:                                               ; preds = %25, %30, %32
  %34 = phi ptr [ %29, %25 ], [ %19, %32 ], [ %19, %30 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct._PerlIO_funcs, ptr %34, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !247
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = tail call ptr %38(ptr noundef nonnull %34, ptr noundef %1, i64 noundef %16, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %13, i32 noundef %8, ptr noundef %9) #33
  %42 = icmp eq ptr %41, null
  br i1 %42, label %115, label %43

43:                                               ; preds = %36, %33, %40
  %44 = load ptr, ptr %7, align 8, !tbaa !140
  %45 = getelementptr inbounds %struct._PerlIO, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !153
  %47 = getelementptr inbounds %struct._PerlIO_funcs, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !253
  %49 = getelementptr inbounds %struct.PerlIO_list_s, ptr %1, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !181
  %51 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %50, i64 %2, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !185
  %53 = tail call i64 %48(ptr noundef nonnull %7, ptr noundef %3, ptr noundef %52, ptr noundef %0) #33
  %54 = icmp eq i64 %53, 0
  %55 = select i1 %54, ptr %7, ptr null
  br label %115

56:                                               ; preds = %12, %10
  %57 = add nsw i64 %2, -1
  %58 = tail call ptr @PerlIO_default_layers()
  %59 = getelementptr inbounds %struct.PerlIO_list_s, ptr %58, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !183
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %66, !prof !261

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.PerlIO_list_s, ptr %58, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !181
  %65 = load ptr, ptr %64, align 8, !tbaa !195
  br label %66

66:                                               ; preds = %56, %62
  %67 = phi ptr [ %65, %62 ], [ @PerlIO_stdio, %56 ]
  %68 = icmp sgt i64 %2, 0
  br i1 %68, label %69, label %78, !prof !261

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.PerlIO_list_s, ptr %1, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !183
  %72 = icmp slt i64 %71, %2
  br i1 %72, label %78, label %73, !prof !142

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.PerlIO_list_s, ptr %1, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !181
  %76 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %75, i64 %57
  %77 = load ptr, ptr %76, align 8, !tbaa !195
  br label %81

78:                                               ; preds = %69, %66
  %79 = icmp eq ptr %67, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18) #33
  br label %81

81:                                               ; preds = %73, %78, %80
  %82 = phi ptr [ %77, %73 ], [ %67, %80 ], [ %67, %78 ]
  %83 = load i8, ptr %3, align 1, !tbaa !139
  %84 = icmp eq i8 %83, 73
  %85 = icmp eq ptr %82, null
  br i1 %85, label %92, label %86, !prof !142

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct._PerlIO_funcs, ptr %82, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !247
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90, !prof !142

90:                                               ; preds = %86
  %91 = tail call ptr %88(ptr noundef nonnull %82, ptr noundef %1, i64 noundef %57, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #33, !prof !400
  br label %94

92:                                               ; preds = %86, %81
  %93 = tail call ptr @__errno_location() #34
  store i32 22, ptr %93, align 4, !tbaa !135
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi ptr [ %91, %90 ], [ %7, %92 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %115, label %97, !prof !142

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.PerlIO_list_s, ptr %1, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !181
  %100 = getelementptr inbounds %struct.PerlIO_pair_t, ptr %99, i64 %2, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !185
  %102 = tail call ptr @PerlIO_push(ptr noundef nonnull %95, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %101)
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106, !prof !142

104:                                              ; preds = %97
  %105 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %95)
  br label %115

106:                                              ; preds = %97
  %107 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %95)
  %108 = icmp eq i32 %107, 2
  %109 = select i1 %84, i1 %108, i1 false, !prof !269
  br i1 %109, label %110, label %115, !prof !268

110:                                              ; preds = %106
  %111 = load ptr, ptr %95, align 8, !tbaa !140
  %112 = getelementptr inbounds %struct._PerlIO, ptr %111, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !152
  %114 = or i32 %113, 65536
  store i32 %114, ptr %112, align 8, !tbaa !152
  br label %115

115:                                              ; preds = %43, %40, %94, %106, %110, %104
  %116 = phi ptr [ null, %104 ], [ %95, %94 ], [ %95, %106 ], [ %95, %110 ], [ null, %40 ], [ %55, %43 ]
  ret ptr %116
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PerlIOBuf_flush(ptr noundef %0) #4 !prof !356 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !152
  %5 = and i32 %4, 131072
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %75, label %7, !prof !401

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !352
  %10 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  br label %11

11:                                               ; preds = %62, %7
  %12 = phi ptr [ %9, %7 ], [ %63, %62 ]
  %13 = phi i32 [ 0, %7 ], [ %64, %62 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !353
  %15 = icmp ult ptr %12, %14
  br i1 %15, label %16, label %66, !prof !402

16:                                               ; preds = %11
  %17 = icmp eq ptr %2, null
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %12 to i64
  %20 = sub i64 %18, %19
  br i1 %17, label %39, label %21, !prof !312

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 8, !tbaa !140
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24, !prof !312

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._PerlIO, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !153
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28, !prof !312

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._PerlIO_funcs, ptr %26, i64 0, i32 13
  %30 = load ptr, ptr %29, align 8, !tbaa !313
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32, !prof !312

32:                                               ; preds = %28
  %33 = tail call i64 %30(ptr noundef nonnull %2, ptr noundef %12, i64 noundef %20) #33, !prof !403
  br label %36

34:                                               ; preds = %28, %24
  %35 = tail call ptr @__errno_location() #34
  store i32 22, ptr %35, align 4, !tbaa !135
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ undef, %34 ]
  %38 = phi i1 [ false, %32 ], [ true, %34 ]
  br i1 %38, label %41, label %42, !prof !312

39:                                               ; preds = %21, %16
  %40 = tail call ptr @__errno_location() #34
  store i32 9, ptr %40, align 4, !tbaa !135
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %36, %41
  %43 = phi i64 [ %37, %36 ], [ -1, %41 ]
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %47, !prof !381

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, ptr %12, i64 %43
  br label %62

47:                                               ; preds = %42
  %48 = icmp slt i64 %43, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %47
  %50 = tail call i32 @Perl_PerlIO_error(ptr noundef %2)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %49, %47
  %53 = load ptr, ptr %0, align 8, !tbaa !140
  %54 = getelementptr inbounds %struct._PerlIO, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !152
  %56 = or i32 %55, 2048
  store i32 %56, ptr %54, align 8, !tbaa !152
  %57 = icmp eq ptr %53, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = tail call ptr @__errno_location() #34
  %60 = load i32, ptr %59, align 4, !tbaa !135
  %61 = getelementptr inbounds %struct._PerlIO, ptr %53, i64 0, i32 3
  store i32 %60, ptr %61, align 4, !tbaa !288
  br label %62

62:                                               ; preds = %49, %58, %52, %45
  %63 = phi ptr [ %46, %45 ], [ %12, %52 ], [ %12, %58 ], [ %12, %49 ]
  %64 = phi i32 [ %13, %45 ], [ -1, %52 ], [ -1, %58 ], [ %13, %49 ]
  %65 = phi i1 [ true, %45 ], [ false, %52 ], [ false, %58 ], [ true, %49 ]
  br i1 %65, label %11, label %66, !prof !381

66:                                               ; preds = %62, %11
  %67 = phi ptr [ %12, %11 ], [ %63, %62 ]
  %68 = phi i32 [ %13, %11 ], [ %64, %62 ]
  %69 = ptrtoint ptr %67 to i64
  %70 = ptrtoint ptr %9 to i64
  %71 = sub i64 %69, %70
  %72 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 4
  %73 = load i64, ptr %72, align 8, !tbaa !309
  %74 = add nsw i64 %71, %73
  store i64 %74, ptr %72, align 8, !tbaa !309
  br label %135

75:                                               ; preds = %1
  %76 = and i32 %4, 262144
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %135, label %78, !prof !404

78:                                               ; preds = %75
  %79 = icmp eq ptr %2, null
  br i1 %79, label %95, label %80, !prof !340

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !153
  %83 = icmp eq ptr %82, null
  br i1 %83, label %90, label %84, !prof !340

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct._PerlIO_funcs, ptr %82, i64 0, i32 23
  %86 = load ptr, ptr %85, align 8, !tbaa !337
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88, !prof !340

88:                                               ; preds = %84
  %89 = tail call ptr %86(ptr noundef nonnull %0) #33, !prof !405
  br label %92

90:                                               ; preds = %84, %80
  %91 = tail call ptr @__errno_location() #34
  store i32 22, ptr %91, align 4, !tbaa !135
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi ptr [ %89, %88 ], [ undef, %90 ]
  %94 = phi i1 [ false, %88 ], [ true, %90 ]
  br i1 %94, label %97, label %98, !prof !340

95:                                               ; preds = %78
  %96 = tail call ptr @__errno_location() #34
  store i32 9, ptr %96, align 4, !tbaa !135
  br label %97

97:                                               ; preds = %95, %92
  br label %98

98:                                               ; preds = %92, %97
  %99 = phi ptr [ %93, %92 ], [ null, %97 ]
  %100 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !353
  %102 = ptrtoint ptr %101 to i64
  %103 = ptrtoint ptr %99 to i64
  %104 = sub i64 %102, %103
  %105 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 4
  %106 = load i64, ptr %105, align 8, !tbaa !309
  %107 = add nsw i64 %104, %106
  store i64 %107, ptr %105, align 8, !tbaa !309
  %108 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !355
  %110 = icmp ult ptr %101, %109
  br i1 %110, label %111, label %132, !prof !406

111:                                              ; preds = %98
  %112 = icmp eq ptr %2, null
  br i1 %112, label %122, label %113, !prof !316

113:                                              ; preds = %111
  %114 = load ptr, ptr %2, align 8, !tbaa !140
  %115 = icmp eq ptr %114, null
  br i1 %115, label %122, label %116, !prof !316

116:                                              ; preds = %113
  %117 = tail call i32 @Perl_PerlIO_seek(ptr noundef nonnull %2, i64 noundef %107, i32 noundef 0)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122, !prof !373

119:                                              ; preds = %116
  %120 = load ptr, ptr %0, align 8, !tbaa !140
  %121 = tail call i64 @Perl_PerlIO_tell(ptr noundef %120)
  br label %128

122:                                              ; preds = %116, %113, %111
  %123 = load ptr, ptr %100, align 8, !tbaa !353
  %124 = ptrtoint ptr %123 to i64
  %125 = sub i64 %103, %124
  %126 = load i64, ptr %105, align 8, !tbaa !309
  %127 = add i64 %125, %126
  br label %128

128:                                              ; preds = %122, %119
  %129 = phi i64 [ %121, %119 ], [ %127, %122 ]
  %130 = phi ptr [ %120, %119 ], [ %2, %122 ]
  %131 = phi i1 [ true, %119 ], [ false, %122 ]
  store i64 %129, ptr %105, align 8, !tbaa !309
  br label %132

132:                                              ; preds = %128, %98
  %133 = phi ptr [ %2, %98 ], [ %130, %128 ]
  %134 = phi i1 [ true, %98 ], [ %131, %128 ]
  br i1 %134, label %135, label %166, !prof !407

135:                                              ; preds = %75, %132, %66
  %136 = phi ptr [ %2, %66 ], [ %133, %132 ], [ %2, %75 ]
  %137 = phi i32 [ %68, %66 ], [ 0, %132 ], [ 0, %75 ]
  %138 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !352
  %140 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  store ptr %139, ptr %140, align 8, !tbaa !355
  %141 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  store ptr %139, ptr %141, align 8, !tbaa !353
  %142 = load ptr, ptr %0, align 8, !tbaa !140
  %143 = getelementptr inbounds %struct._PerlIO, ptr %142, i64 0, i32 2
  %144 = load i32, ptr %143, align 8, !tbaa !152
  %145 = and i32 %144, -393217
  store i32 %145, ptr %143, align 8, !tbaa !152
  %146 = icmp eq ptr %136, null
  br i1 %146, label %163, label %147, !prof !408

147:                                              ; preds = %135
  %148 = load ptr, ptr %136, align 8, !tbaa !140
  %149 = icmp eq ptr %148, null
  br i1 %149, label %163, label %150, !prof !408

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct._PerlIO, ptr %148, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !153
  %153 = icmp eq ptr %152, null
  br i1 %153, label %163, label %154, !prof !408

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct._PerlIO_funcs, ptr %152, i64 0, i32 17
  %156 = load ptr, ptr %155, align 8, !tbaa !209
  %157 = icmp eq ptr %156, null
  br i1 %157, label %163, label %158, !prof !408

158:                                              ; preds = %154
  %159 = tail call i64 %156(ptr noundef nonnull %136) #33, !prof !409
  %160 = and i64 %159, 4294967295
  %161 = icmp eq i64 %160, 0
  %162 = select i1 %161, i32 %137, i32 -1, !prof !410
  br label %163

163:                                              ; preds = %158, %154, %150, %147, %135
  %164 = phi i32 [ %137, %147 ], [ %137, %135 ], [ %162, %158 ], [ %137, %154 ], [ %137, %150 ]
  %165 = sext i32 %164 to i64
  br label %166

166:                                              ; preds = %132, %163
  %167 = phi i64 [ %165, %163 ], [ 0, %132 ]
  ret i64 %167
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @PerlIOBuf_fill(ptr noundef %0) #4 !prof !285 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4, !prof !286

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8, !prof !286

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._PerlIO_funcs, ptr %6, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !209
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12, !prof !286

12:                                               ; preds = %8
  %13 = tail call i64 %10(ptr noundef nonnull %0) #33, !prof !411
  %14 = and i64 %13, 4294967295
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %18, label %128, !prof !376

16:                                               ; preds = %1
  %17 = tail call ptr @__errno_location() #34
  store i32 9, ptr %17, align 4, !tbaa !135
  br label %128

18:                                               ; preds = %8, %4, %12
  %19 = load ptr, ptr %0, align 8, !tbaa !140
  %20 = getelementptr inbounds %struct._PerlIO, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !152
  %22 = and i32 %21, 8388608
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24, !prof !376

24:                                               ; preds = %18
  tail call void @PerlIOBase_flush_linebuf()
  br label %25

25:                                               ; preds = %24, %18
  %26 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !352
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31, !prof !286

29:                                               ; preds = %25
  %30 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0)
  br label %31

31:                                               ; preds = %29, %25
  %32 = load ptr, ptr %26, align 8, !tbaa !352
  %33 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !355
  %34 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  store ptr %32, ptr %34, align 8, !tbaa !353
  br i1 %3, label %38, label %35, !prof !286

35:                                               ; preds = %31
  %36 = load ptr, ptr %2, align 8, !tbaa !140
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %43, !prof !286

38:                                               ; preds = %35, %31
  %39 = load ptr, ptr %0, align 8, !tbaa !140
  %40 = getelementptr inbounds %struct._PerlIO, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !152
  %42 = or i32 %41, 256
  store i32 %42, ptr %40, align 8, !tbaa !152
  br label %128

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct._PerlIO, ptr %36, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !152
  %46 = and i32 %45, 4194304
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48, !prof !376

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct._PerlIO, ptr %36, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !153
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct._PerlIO_funcs, ptr %50, i64 0, i32 27
  %54 = load ptr, ptr %53, align 8, !tbaa !299
  %55 = icmp ne ptr %54, null
  %56 = zext i1 %55 to i32
  br label %57

57:                                               ; preds = %52, %48
  %58 = phi i32 [ %56, %52 ], [ undef, %48 ]
  br i1 %51, label %59, label %60

59:                                               ; preds = %57, %43
  br label %60

60:                                               ; preds = %57, %59
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %90, label %63, !prof !376

63:                                               ; preds = %60
  %64 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef nonnull %2)
  %65 = icmp slt i64 %64, 1
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = tail call i32 @Perl_PerlIO_fill(ptr noundef nonnull %2)
  %68 = sext i32 %67 to i64
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef nonnull %2)
  br label %79

72:                                               ; preds = %66
  %73 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %2)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = tail call i32 @Perl_PerlIO_eof(ptr noundef nonnull %2)
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i64 %68, i64 0
  br label %79

79:                                               ; preds = %75, %70, %72, %63
  %80 = phi i64 [ %71, %70 ], [ %68, %72 ], [ %64, %63 ], [ %78, %75 ]
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %79
  %83 = tail call ptr @Perl_PerlIO_get_ptr(ptr noundef nonnull %2)
  %84 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 5
  %85 = load i64, ptr %84, align 8, !tbaa !354
  %86 = tail call i64 @llvm.smin.i64(i64 %80, i64 %85)
  %87 = load ptr, ptr %26, align 8, !tbaa !352
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %87, ptr align 1 %83, i64 %86, i1 false)
  %88 = getelementptr inbounds i8, ptr %83, i64 %86
  %89 = sub nsw i64 %80, %86
  tail call void @Perl_PerlIO_set_ptrcnt(ptr noundef nonnull %2, ptr noundef %88, i64 noundef %89)
  br label %104

90:                                               ; preds = %60
  %91 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 5
  %92 = load i64, ptr %91, align 8, !tbaa !354
  %93 = getelementptr inbounds %struct._PerlIO, ptr %36, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !153
  %95 = icmp eq ptr %94, null
  br i1 %95, label %102, label %96, !prof !282

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct._PerlIO_funcs, ptr %94, i64 0, i32 11
  %98 = load ptr, ptr %97, align 8, !tbaa !283
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100, !prof !282

100:                                              ; preds = %96
  %101 = tail call i64 %98(ptr noundef nonnull %2, ptr noundef %32, i64 noundef %92) #33, !prof !412
  br label %104

102:                                              ; preds = %96, %90
  %103 = tail call i64 @PerlIOBase_read(ptr noundef nonnull %2, ptr noundef %32, i64 noundef %92)
  br label %104

104:                                              ; preds = %102, %100, %79, %82
  %105 = phi i64 [ %86, %82 ], [ %80, %79 ], [ %101, %100 ], [ %103, %102 ]
  %106 = icmp slt i64 %105, 1
  br i1 %106, label %107, label %121, !prof !377

107:                                              ; preds = %104
  %108 = icmp eq i64 %105, 0
  %109 = load ptr, ptr %0, align 8, !tbaa !140
  %110 = getelementptr inbounds %struct._PerlIO, ptr %109, i64 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !152
  br i1 %108, label %112, label %114, !prof !413

112:                                              ; preds = %107
  %113 = or i32 %111, 256
  store i32 %113, ptr %110, align 8, !tbaa !152
  br label %128

114:                                              ; preds = %107
  %115 = or i32 %111, 2048
  store i32 %115, ptr %110, align 8, !tbaa !152
  %116 = icmp eq ptr %109, null
  br i1 %116, label %128, label %117

117:                                              ; preds = %114
  %118 = tail call ptr @__errno_location() #34
  %119 = load i32, ptr %118, align 4, !tbaa !135
  %120 = getelementptr inbounds %struct._PerlIO, ptr %109, i64 0, i32 3
  store i32 %119, ptr %120, align 4, !tbaa !288
  br label %128

121:                                              ; preds = %104
  %122 = load ptr, ptr %26, align 8, !tbaa !352
  %123 = getelementptr inbounds i8, ptr %122, i64 %105
  store ptr %123, ptr %33, align 8, !tbaa !355
  %124 = load ptr, ptr %0, align 8, !tbaa !140
  %125 = getelementptr inbounds %struct._PerlIO, ptr %124, i64 0, i32 2
  %126 = load i32, ptr %125, align 8, !tbaa !152
  %127 = or i32 %126, 262144
  store i32 %127, ptr %125, align 8, !tbaa !152
  br label %128

128:                                              ; preds = %16, %117, %114, %112, %12, %121, %38
  %129 = phi i64 [ 0, %121 ], [ -1, %38 ], [ -1, %12 ], [ -1, %112 ], [ -1, %114 ], [ -1, %117 ], [ -1, %16 ]
  ret i64 %129
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PerlIOBuf_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 !prof !285 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %16, label %5, !prof !286

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !286

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.PerlIOBuf, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !353
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14, !prof !286

12:                                               ; preds = %8
  %13 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0)
  br label %14

14:                                               ; preds = %12, %8
  %15 = tail call i64 @PerlIOBase_read(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  br label %16

16:                                               ; preds = %3, %5, %14
  %17 = phi i64 [ %15, %14 ], [ 0, %5 ], [ 0, %3 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PerlIOBuf_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 !prof !311 {
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !352
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !414

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0)
  br label %10

10:                                               ; preds = %8, %3
  %11 = load ptr, ptr %0, align 8, !tbaa !140
  %12 = getelementptr inbounds %struct._PerlIO, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !152
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %156, label %16, !prof !415

16:                                               ; preds = %10
  %17 = and i32 %13, 262144
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19, !prof !416

19:                                               ; preds = %16
  %20 = icmp eq ptr %11, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct._PerlIO, ptr %11, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !153
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._PerlIO_funcs, ptr %23, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !209
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = tail call i64 %27(ptr noundef nonnull %0) #33
  %31 = and i64 %30, 4294967295
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %156

33:                                               ; preds = %19
  %34 = tail call ptr @__errno_location() #34
  store i32 9, ptr %34, align 4, !tbaa !135
  br label %156

35:                                               ; preds = %25, %21, %29, %16
  %36 = load ptr, ptr %0, align 8, !tbaa !140
  %37 = getelementptr inbounds %struct._PerlIO, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !152
  %39 = and i32 %38, 524288
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41, !prof !416

41:                                               ; preds = %35
  %42 = getelementptr inbounds i8, ptr %1, i64 %2
  br label %43

43:                                               ; preds = %46, %41
  %44 = phi ptr [ %42, %41 ], [ %47, %46 ]
  %45 = icmp ugt ptr %44, %1
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, ptr %44, i64 -1
  %48 = load i8, ptr %47, align 1, !tbaa !139
  %49 = icmp eq i8 %48, 10
  br i1 %49, label %50, label %43, !llvm.loop !417

50:                                               ; preds = %46, %43, %35
  %51 = phi ptr [ %1, %35 ], [ %44, %43 ], [ %44, %46 ]
  %52 = icmp eq i64 %2, 0
  br i1 %52, label %135, label %53, !prof !414

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 5
  %55 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 3
  %56 = ptrtoint ptr %51 to i64
  br label %57

57:                                               ; preds = %53, %133
  %58 = phi i64 [ 0, %53 ], [ %108, %133 ]
  %59 = phi ptr [ %1, %53 ], [ %107, %133 ]
  %60 = phi i64 [ %2, %53 ], [ %106, %133 ]
  %61 = load i64, ptr %54, align 8, !tbaa !354
  %62 = load ptr, ptr %55, align 8, !tbaa !353
  %63 = load ptr, ptr %5, align 8, !tbaa !352
  %64 = ptrtoint ptr %62 to i64
  %65 = ptrtoint ptr %63 to i64
  %66 = sub i64 %65, %64
  %67 = add i64 %66, %61
  %68 = tail call i64 @llvm.smin.i64(i64 %60, i64 %67)
  %69 = icmp slt i64 %60, 0
  %70 = select i1 %69, i64 %67, i64 %68, !prof !418
  %71 = icmp ule ptr %51, %59
  %72 = getelementptr inbounds i8, ptr %59, i64 %70
  %73 = icmp ugt ptr %51, %72
  %74 = select i1 %71, i1 true, i1 %73, !prof !419
  %75 = ptrtoint ptr %59 to i64
  %76 = sub i64 %56, %75
  %77 = select i1 %74, i64 %70, i64 %76, !prof !419
  %78 = load ptr, ptr %0, align 8, !tbaa !140
  %79 = getelementptr inbounds %struct._PerlIO, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !152
  %81 = or i32 %80, 131072
  store i32 %81, ptr %79, align 8, !tbaa !152
  %82 = icmp eq i64 %77, 0
  br i1 %82, label %105, label %83, !prof !418

83:                                               ; preds = %57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %59, i64 %77, i1 false), !prof !420
  %84 = sub i64 %60, %77
  %85 = getelementptr inbounds i8, ptr %59, i64 %77
  %86 = add i64 %77, %58
  %87 = load ptr, ptr %55, align 8, !tbaa !353
  %88 = getelementptr inbounds i8, ptr %87, i64 %77
  store ptr %88, ptr %55, align 8, !tbaa !353
  %89 = icmp eq ptr %85, %51
  br i1 %89, label %90, label %105, !prof !418

90:                                               ; preds = %83
  %91 = load ptr, ptr %0, align 8, !tbaa !140
  %92 = icmp eq ptr %91, null
  br i1 %92, label %103, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct._PerlIO, ptr %91, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !153
  %96 = icmp eq ptr %95, null
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct._PerlIO_funcs, ptr %95, i64 0, i32 17
  %99 = load ptr, ptr %98, align 8, !tbaa !209
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = tail call i64 %99(ptr noundef nonnull %0) #33
  br label %105

103:                                              ; preds = %90
  %104 = tail call ptr @__errno_location() #34
  store i32 9, ptr %104, align 4, !tbaa !135
  br label %105

105:                                              ; preds = %103, %101, %97, %93, %83, %57
  %106 = phi i64 [ %84, %83 ], [ %60, %57 ], [ %84, %93 ], [ %84, %97 ], [ %84, %101 ], [ %84, %103 ]
  %107 = phi ptr [ %85, %83 ], [ %59, %57 ], [ %85, %93 ], [ %85, %97 ], [ %85, %101 ], [ %85, %103 ]
  %108 = phi i64 [ %86, %83 ], [ %58, %57 ], [ %86, %93 ], [ %86, %97 ], [ %86, %101 ], [ %86, %103 ]
  %109 = load ptr, ptr %55, align 8, !tbaa !353
  %110 = load ptr, ptr %5, align 8, !tbaa !352
  %111 = load i64, ptr %54, align 8, !tbaa !354
  %112 = getelementptr inbounds i8, ptr %110, i64 %111
  %113 = icmp ult ptr %109, %112
  br i1 %113, label %133, label %114, !prof !421

114:                                              ; preds = %105
  %115 = load ptr, ptr %0, align 8, !tbaa !140
  %116 = icmp eq ptr %115, null
  br i1 %116, label %128, label %117, !prof !422

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct._PerlIO, ptr %115, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !153
  %120 = icmp eq ptr %119, null
  br i1 %120, label %130, label %121, !prof !422

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct._PerlIO_funcs, ptr %119, i64 0, i32 17
  %123 = load ptr, ptr %122, align 8, !tbaa !209
  %124 = icmp eq ptr %123, null
  br i1 %124, label %130, label %125, !prof !422

125:                                              ; preds = %121
  %126 = tail call i64 %123(ptr noundef nonnull %0) #33, !prof !423
  %127 = trunc i64 %126 to i32
  br label %130

128:                                              ; preds = %114
  %129 = tail call ptr @__errno_location() #34
  store i32 9, ptr %129, align 4, !tbaa !135
  br label %130

130:                                              ; preds = %117, %121, %125, %128
  %131 = phi i32 [ -1, %128 ], [ %127, %125 ], [ 0, %121 ], [ 0, %117 ]
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %156, label %133, !prof !422, !llvm.loop !424

133:                                              ; preds = %130, %105
  %134 = icmp eq i64 %106, 0
  br i1 %134, label %135, label %57, !prof !425

135:                                              ; preds = %133, %50
  %136 = phi i64 [ 0, %50 ], [ %108, %133 ]
  %137 = load ptr, ptr %0, align 8, !tbaa !140
  %138 = getelementptr inbounds %struct._PerlIO, ptr %137, i64 0, i32 2
  %139 = load i32, ptr %138, align 8, !tbaa !152
  %140 = and i32 %139, 65536
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %156, label %142, !prof !416

142:                                              ; preds = %135
  %143 = icmp eq ptr %137, null
  br i1 %143, label %154, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct._PerlIO, ptr %137, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !153
  %147 = icmp eq ptr %146, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct._PerlIO_funcs, ptr %146, i64 0, i32 17
  %150 = load ptr, ptr %149, align 8, !tbaa !209
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = tail call i64 %150(ptr noundef nonnull %0) #33
  br label %156

154:                                              ; preds = %142
  %155 = tail call ptr @__errno_location() #34
  store i32 9, ptr %155, align 4, !tbaa !135
  br label %156

156:                                              ; preds = %130, %33, %154, %152, %148, %144, %135, %29, %10
  %157 = phi i64 [ 0, %10 ], [ 0, %29 ], [ %136, %135 ], [ %136, %144 ], [ %136, %148 ], [ %136, %152 ], [ %136, %154 ], [ 0, %33 ], [ -1, %130 ]
  ret i64 %157
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOBuf_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #6 !prof !134 {
  %4 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0)
  %5 = sext i32 %4 to i64
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !140
  %9 = getelementptr inbounds %struct._PerlIO, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !152
  %11 = and i32 %10, -257
  store i32 %11, ptr %9, align 8, !tbaa !152
  %12 = tail call i32 @Perl_PerlIO_seek(ptr noundef %8, i64 noundef %1, i32 noundef %2)
  %13 = sext i32 %12 to i64
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = load ptr, ptr %0, align 8, !tbaa !140
  %17 = tail call i64 @Perl_PerlIO_tell(ptr noundef %16)
  %18 = getelementptr inbounds %struct.PerlIOBuf, ptr %16, i64 0, i32 4
  store i64 %17, ptr %18, align 8, !tbaa !309
  br label %19

19:                                               ; preds = %7, %15, %3
  %20 = phi i64 [ 0, %15 ], [ %13, %7 ], [ %5, %3 ]
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PerlIOBuf_tell(ptr noundef %0) #4 !prof !426 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !309
  %5 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !152
  %7 = and i32 %6, 139264
  %8 = icmp eq i32 %7, 139264
  br i1 %8, label %9, label %26, !prof !427

9:                                                ; preds = %1
  %10 = icmp eq ptr %2, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !153
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._PerlIO_funcs, ptr %13, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !209
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = tail call i64 %17(ptr noundef nonnull %0) #33
  br label %23

21:                                               ; preds = %9
  %22 = tail call ptr @__errno_location() #34
  store i32 9, ptr %22, align 4, !tbaa !135
  br label %23

23:                                               ; preds = %11, %15, %19, %21
  %24 = load ptr, ptr %0, align 8, !tbaa !140
  %25 = tail call i64 @Perl_PerlIO_tell(ptr noundef %24)
  store i64 %25, ptr %3, align 8, !tbaa !309
  br label %26

26:                                               ; preds = %23, %1
  %27 = phi i64 [ %25, %23 ], [ %4, %1 ]
  %28 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !352
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31, !prof !427

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !353
  %34 = ptrtoint ptr %33 to i64
  %35 = ptrtoint ptr %29 to i64
  %36 = sub i64 %27, %35
  %37 = add i64 %36, %34
  br label %38

38:                                               ; preds = %31, %26
  %39 = phi i64 [ %37, %31 ], [ %27, %26 ]
  ret i64 %39
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @PerlIOBuf_popped(ptr nocapture noundef readonly %0) #4 !prof !166 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !352
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 6
  %7 = icmp eq ptr %4, %6
  %8 = select i1 %5, i1 true, i1 %7, !prof !261
  br i1 %8, label %10, label %9, !prof !261

9:                                                ; preds = %1
  tail call void @Perl_safesysfree(ptr noundef nonnull %4) #33
  br label %10

10:                                               ; preds = %9, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %11 = load ptr, ptr %0, align 8, !tbaa !140
  %12 = getelementptr inbounds %struct._PerlIO, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !152
  %14 = and i32 %13, -393217
  store i32 %14, ptr %12, align 8, !tbaa !152
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PerlIOBuf_close(ptr noundef %0) #4 !prof !166 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3, !prof !142

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6, !prof !142

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10, !prof !142

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._PerlIO_funcs, ptr %8, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !209
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14, !prof !142

14:                                               ; preds = %10
  %15 = tail call i64 %12(ptr noundef nonnull %0) #33, !prof !428
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  br label %18

18:                                               ; preds = %14, %10, %6
  %19 = phi i64 [ %17, %14 ], [ 0, %10 ], [ 0, %6 ]
  %20 = load ptr, ptr %0, align 8, !tbaa !140
  %21 = getelementptr inbounds %struct._PerlIO, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !152
  %23 = and i32 %22, -2098689
  store i32 %23, ptr %21, align 8, !tbaa !152
  br label %24

24:                                               ; preds = %45, %18
  %25 = phi ptr [ %4, %18 ], [ %46, %45 ]
  %26 = phi i64 [ %19, %18 ], [ %47, %45 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !140
  %28 = icmp eq ptr %27, null
  br i1 %28, label %51, label %29, !prof !142

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct._PerlIO, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !153
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33, !prof !142

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct._PerlIO_funcs, ptr %31, i64 0, i32 16
  %35 = load ptr, ptr %34, align 8, !tbaa !167
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37, !prof !142

37:                                               ; preds = %33
  %38 = tail call i64 %35(ptr noundef nonnull %25) #33, !prof !429
  %39 = icmp eq i64 %38, 0
  %40 = select i1 %39, i64 %26, i64 -1, !prof !261
  br label %45

41:                                               ; preds = %33, %29
  %42 = getelementptr inbounds %struct._PerlIO, ptr %27, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !152
  %44 = and i32 %43, -2098689
  store i32 %44, ptr %42, align 8, !tbaa !152
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi ptr [ %25, %37 ], [ %27, %41 ]
  %47 = phi i64 [ %40, %37 ], [ %26, %41 ]
  %48 = phi i1 [ false, %37 ], [ true, %41 ]
  br i1 %48, label %24, label %51, !prof !142

49:                                               ; preds = %3, %1
  %50 = tail call ptr @__errno_location() #34
  store i32 9, ptr %50, align 4, !tbaa !135
  br label %51

51:                                               ; preds = %24, %45, %49
  %52 = phi i64 [ -1, %49 ], [ %26, %24 ], [ %47, %45 ]
  %53 = load ptr, ptr %0, align 8, !tbaa !140
  %54 = getelementptr inbounds %struct.PerlIOBuf, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !352
  %56 = icmp eq ptr %55, null
  %57 = getelementptr inbounds %struct.PerlIOBuf, ptr %53, i64 0, i32 6
  %58 = icmp eq ptr %55, %57
  %59 = select i1 %56, i1 true, i1 %58, !prof !430
  br i1 %59, label %61, label %60, !prof !430

60:                                               ; preds = %51
  tail call void @Perl_safesysfree(ptr noundef nonnull %55) #33
  br label %61

61:                                               ; preds = %60, %51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  %62 = load ptr, ptr %0, align 8, !tbaa !140
  %63 = getelementptr inbounds %struct._PerlIO, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !152
  %65 = and i32 %64, -393217
  store i32 %65, ptr %63, align 8, !tbaa !152
  ret i64 %52
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PerlIOBuf_get_ptr(ptr noundef %0) #4 !prof !431 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !352
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !295

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0)
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !353
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PerlIOBuf_get_cnt(ptr noundef %0) #4 !prof !432 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !352
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %22, !prof !433

6:                                                ; preds = %1
  %7 = icmp eq ptr %2, null
  br i1 %7, label %20, label %8, !prof !340

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12, !prof !340

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._PerlIO_funcs, ptr %10, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !337
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !340

16:                                               ; preds = %12
  %17 = tail call ptr %14(ptr noundef nonnull %0) #33, !prof !434
  br label %22

18:                                               ; preds = %12, %8
  %19 = tail call ptr @__errno_location() #34
  store i32 22, ptr %19, align 4, !tbaa !135
  br label %22

20:                                               ; preds = %6
  %21 = tail call ptr @__errno_location() #34
  store i32 9, ptr %21, align 4, !tbaa !135
  br label %22

22:                                               ; preds = %16, %18, %20, %1
  %23 = load ptr, ptr %0, align 8, !tbaa !140
  %24 = getelementptr inbounds %struct._PerlIO, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !152
  %26 = and i32 %25, 262144
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28, !prof !435

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !355
  %31 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !353
  %33 = ptrtoint ptr %30 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  br label %36

36:                                               ; preds = %22, %28
  %37 = phi i64 [ %35, %28 ], [ 0, %22 ]
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PerlIOBuf_get_base(ptr nocapture noundef readonly %0) #4 !prof !436 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !352
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %21, !prof !437

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !354
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11, !prof !438

10:                                               ; preds = %6
  store i64 8192, ptr %7, align 8, !tbaa !354
  br label %11

11:                                               ; preds = %10, %6
  %12 = load i64, ptr %7, align 8, !tbaa !354
  %13 = tail call ptr @Perl_safesyscalloc(i64 noundef %12, i64 noundef 1) #33
  store ptr %13, ptr %3, align 8, !tbaa !352
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17, !prof !439

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 6
  store ptr %16, ptr %3, align 8, !tbaa !352
  store i64 8, ptr %7, align 8, !tbaa !354
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr %3, align 8, !tbaa !352
  %19 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !353
  %20 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  store ptr %18, ptr %20, align 8, !tbaa !355
  br label %21

21:                                               ; preds = %17, %1
  %22 = load ptr, ptr %3, align 8, !tbaa !352
  ret ptr %22
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOBuf_bufsiz(ptr noundef %0) #6 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !352
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0)
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !355
  %11 = load ptr, ptr %3, align 8, !tbaa !352
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @PerlIOBuf_set_ptrcnt(ptr noundef %0, ptr noundef %1, i64 %2) #4 !prof !431 {
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !352
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !295

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0)
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 3
  store ptr %1, ptr %11, align 8, !tbaa !353
  %12 = load ptr, ptr %0, align 8, !tbaa !140
  %13 = getelementptr inbounds %struct._PerlIO, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !152
  %15 = or i32 %14, 262144
  store i32 %15, ptr %13, align 8, !tbaa !152
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @PerlIOBuf_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #6 !prof !134 {
  %5 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOPending_fill(ptr noundef %0) #6 !prof !134 {
  %2 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0)
  ret i64 0
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOPending_close(ptr noundef %0) #6 !prof !134 {
  %2 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0)
  %3 = tail call i32 @Perl_PerlIO_close(ptr noundef %0)
  %4 = sext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOPending_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #6 !prof !134 {
  %4 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0)
  %5 = tail call i32 @Perl_PerlIO_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  %6 = sext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOPending_flush(ptr noundef %0) #6 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !352
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 6
  %7 = icmp eq ptr %4, %6
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @Perl_safesysfree(ptr noundef nonnull %4) #33
  store ptr null, ptr %3, align 8, !tbaa !352
  br label %10

10:                                               ; preds = %9, %1
  tail call void @PerlIO_pop(ptr noundef nonnull %0)
  ret i64 0
}

; Function Attrs: cold nounwind uwtable
define dso_local void @PerlIOPending_set_ptrcnt(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6 !prof !134 {
  %4 = icmp slt i64 %2, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @Perl_PerlIO_flush(ptr noundef %0)
  br label %20

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !140
  %9 = getelementptr inbounds %struct.PerlIOBuf, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !352
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0)
  br label %14

14:                                               ; preds = %7, %12
  %15 = getelementptr inbounds %struct.PerlIOBuf, ptr %8, i64 0, i32 3
  store ptr %1, ptr %15, align 8, !tbaa !353
  %16 = load ptr, ptr %0, align 8, !tbaa !140
  %17 = getelementptr inbounds %struct._PerlIO, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !152
  %19 = or i32 %18, 262144
  store i32 %19, ptr %17, align 8, !tbaa !152
  br label %20

20:                                               ; preds = %14, %5
  ret void
}

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @PerlIOPending_pushed(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #28 !prof !134 {
  %5 = tail call i64 @PerlIOBase_pushed(ptr noundef %0, ptr noundef %1, ptr poison, ptr noundef %3), !range !370
  %6 = load ptr, ptr %0, align 8, !tbaa !140
  %7 = getelementptr inbounds %struct._PerlIO, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !152
  %9 = and i32 %8, -4227073
  %10 = load ptr, ptr %6, align 8, !tbaa !147
  %11 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !152
  %13 = and i32 %12, 4227072
  %14 = or disjoint i32 %13, %9
  store i32 %14, ptr %7, align 8, !tbaa !152
  ret i64 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOPending_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6 !prof !134 {
  %4 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef %0)
  %5 = tail call i64 @llvm.smin.i64(i64 %4, i64 %2)
  %6 = icmp slt i64 %2, 0
  %7 = select i1 %6, i64 %4, i64 %5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i64 @PerlIOBuf_read(ptr noundef %0, ptr noundef %1, i64 noundef %7)
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
  %19 = tail call i64 @Perl_PerlIO_read(ptr noundef %0, ptr noundef %17, i64 noundef %18)
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

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOCrlf_pushed(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #6 !prof !134 {
  %5 = load ptr, ptr %0, align 8, !tbaa !140
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !152
  %8 = or i32 %7, 16384
  store i32 %8, ptr %6, align 8, !tbaa !152
  %9 = tail call i64 @PerlIOBuf_pushed(ptr noundef nonnull %0, ptr noundef %1, ptr poison, ptr noundef %3), !range !370
  %10 = load ptr, ptr %0, align 8, !tbaa !140
  %11 = icmp eq ptr %10, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %10, align 8, !tbaa !140
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._PerlIO, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = icmp eq ptr %17, @PerlIO_crlf
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._PerlIO, ptr %13, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !152
  %22 = and i32 %21, 16384
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = or disjoint i32 %21, 16384
  store i32 %25, ptr %20, align 8, !tbaa !152
  br label %26

26:                                               ; preds = %19, %24
  %27 = load ptr, ptr %13, align 8, !tbaa !140
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._PerlIO, ptr %27, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !152
  %32 = and i32 %31, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %20, align 8, !tbaa !152
  %36 = or i32 %35, 32768
  store i32 %36, ptr %20, align 8, !tbaa !152
  br label %37

37:                                               ; preds = %26, %29, %34
  tail call void @PerlIO_pop(ptr noundef nonnull %0)
  br label %51

38:                                               ; preds = %15, %12
  br i1 %11, label %51, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %10, align 8, !tbaa !140
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct._PerlIO, ptr %40, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !152
  %45 = and i32 %44, 32768
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !152
  %50 = or i32 %49, 32768
  store i32 %50, ptr %48, align 8, !tbaa !152
  br label %51

51:                                               ; preds = %4, %47, %42, %39, %38, %37
  ret i64 %9
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOCrlf_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6 !prof !134 {
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.PerlIOCrlf, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !440
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  store i8 13, ptr %6, align 1, !tbaa !139
  store ptr null, ptr %5, align 8, !tbaa !440
  br label %9

9:                                                ; preds = %8, %3
  %10 = load ptr, ptr %0, align 8, !tbaa !140
  %11 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !152
  %13 = and i32 %12, 16384
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call i64 @PerlIOBuf_unread(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  br label %102

17:                                               ; preds = %9
  %18 = getelementptr inbounds i8, ptr %1, i64 %2
  %19 = and i32 %12, 131072
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = icmp eq ptr %10, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct._PerlIO, ptr %10, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !153
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._PerlIO_funcs, ptr %25, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !209
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = tail call i64 %29(ptr noundef nonnull %0) #33
  br label %35

33:                                               ; preds = %21
  %34 = tail call ptr @__errno_location() #34
  store i32 9, ptr %34, align 4, !tbaa !135
  br label %35

35:                                               ; preds = %33, %31, %27, %23, %17
  %36 = getelementptr inbounds %struct.PerlIOBuf, ptr %10, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !352
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0)
  br label %41

41:                                               ; preds = %39, %35
  %42 = load ptr, ptr %36, align 8, !tbaa !352
  %43 = icmp eq ptr %42, null
  br i1 %43, label %90, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %0, align 8, !tbaa !140
  %46 = getelementptr inbounds %struct._PerlIO, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !152
  %48 = and i32 %47, 262144
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.PerlIOBuf, ptr %10, i64 0, i32 5
  %52 = load i64, ptr %51, align 8, !tbaa !354
  %53 = getelementptr inbounds i8, ptr %42, i64 %52
  %54 = getelementptr inbounds %struct.PerlIOBuf, ptr %10, i64 0, i32 3
  store ptr %53, ptr %54, align 8, !tbaa !353
  %55 = getelementptr inbounds %struct.PerlIOBuf, ptr %10, i64 0, i32 2
  store ptr %53, ptr %55, align 8, !tbaa !355
  %56 = load ptr, ptr %0, align 8, !tbaa !140
  %57 = getelementptr inbounds %struct._PerlIO, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !152
  %59 = or i32 %58, 262144
  store i32 %59, ptr %57, align 8, !tbaa !152
  %60 = getelementptr inbounds %struct.PerlIOBuf, ptr %10, i64 0, i32 4
  %61 = load i64, ptr %60, align 8, !tbaa !309
  %62 = sub i64 %61, %52
  store i64 %62, ptr %60, align 8, !tbaa !309
  br label %63

63:                                               ; preds = %50, %44
  %64 = getelementptr inbounds %struct.PerlIOBuf, ptr %10, i64 0, i32 3
  %65 = icmp eq i64 %2, 0
  br i1 %65, label %90, label %66

66:                                               ; preds = %63, %86
  %67 = phi i64 [ %87, %86 ], [ 0, %63 ]
  %68 = phi i64 [ %88, %86 ], [ %2, %63 ]
  %69 = phi ptr [ %74, %86 ], [ %18, %63 ]
  %70 = load ptr, ptr %64, align 8, !tbaa !353
  %71 = load ptr, ptr %36, align 8, !tbaa !352
  %72 = icmp ugt ptr %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %66
  %74 = getelementptr inbounds i8, ptr %69, i64 -1
  %75 = load i8, ptr %74, align 1, !tbaa !139
  %76 = icmp eq i8 %75, 10
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = getelementptr inbounds i8, ptr %70, i64 -2
  %79 = icmp ult ptr %78, %71
  %80 = getelementptr inbounds i8, ptr %70, i64 -1
  store ptr %80, ptr %64, align 8, !tbaa !353
  store i8 10, ptr %80, align 1, !tbaa !139
  br i1 %79, label %86, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %64, align 8, !tbaa !353
  %83 = getelementptr inbounds i8, ptr %82, i64 -1
  store ptr %83, ptr %64, align 8, !tbaa !353
  store i8 13, ptr %83, align 1, !tbaa !139
  br label %86

84:                                               ; preds = %73
  %85 = getelementptr inbounds i8, ptr %70, i64 -1
  store ptr %85, ptr %64, align 8, !tbaa !353
  store i8 %75, ptr %85, align 1, !tbaa !139
  br label %86

86:                                               ; preds = %77, %81, %84
  %87 = add nuw nsw i64 %67, 1
  %88 = add i64 %68, -1
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %66, !llvm.loop !442

90:                                               ; preds = %86, %66, %63, %41
  %91 = phi i64 [ %2, %41 ], [ 0, %63 ], [ %68, %66 ], [ 0, %86 ]
  %92 = phi i64 [ 0, %41 ], [ 0, %63 ], [ %67, %66 ], [ %2, %86 ]
  %93 = icmp eq i64 %91, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %1, i64 %92
  %96 = tail call i64 @Perl_PerlIO_tell(ptr noundef nonnull %0)
  %97 = tail call ptr @PerlIO_push(ptr noundef nonnull %0, ptr noundef nonnull @PerlIO_pending, ptr noundef nonnull @.str.38, ptr noundef null)
  %98 = load ptr, ptr %0, align 8, !tbaa !140
  %99 = getelementptr inbounds %struct.PerlIOBuf, ptr %98, i64 0, i32 4
  store i64 %96, ptr %99, align 8, !tbaa !309
  %100 = tail call i64 @PerlIOBuf_unread(ptr noundef nonnull %0, ptr noundef %95, i64 noundef %91)
  %101 = add nsw i64 %100, %92
  br label %102

102:                                              ; preds = %90, %94, %15
  %103 = phi i64 [ %16, %15 ], [ %101, %94 ], [ %92, %90 ]
  ret i64 %103
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOCrlf_get_cnt(ptr noundef %0) #6 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !352
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0)
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr %0, align 8, !tbaa !140
  %10 = getelementptr inbounds %struct._PerlIO, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !152
  %12 = and i32 %11, 262144
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %108, label %14

14:                                               ; preds = %8
  %15 = and i32 %11, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %92, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.PerlIOCrlf, ptr %9, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !440
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i8, ptr %19, align 1, !tbaa !139
  %23 = icmp eq i8 %22, 13
  br i1 %23, label %24, label %92

24:                                               ; preds = %21
  br i1 %20, label %25, label %28

25:                                               ; preds = %17, %24
  %26 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !353
  br label %28

28:                                               ; preds = %24, %25
  %29 = phi ptr [ %27, %25 ], [ %19, %24 ]
  %30 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  br label %31

31:                                               ; preds = %66, %28
  %32 = phi ptr [ %29, %28 ], [ %63, %66 ]
  %33 = load ptr, ptr %30, align 8, !tbaa !355
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %35, label %89

35:                                               ; preds = %31
  %36 = ptrtoint ptr %33 to i64
  %37 = ptrtoint ptr %32 to i64
  %38 = sub i64 %36, %37
  %39 = getelementptr i8, ptr %32, i64 %38
  %40 = load i8, ptr %32, align 1, !tbaa !139
  %41 = icmp eq i8 %40, 13
  br i1 %41, label %51, label %45

42:                                               ; preds = %45
  %43 = load i8, ptr %47, align 1, !tbaa !139
  %44 = icmp eq i8 %43, 13
  br i1 %44, label %49, label %45, !llvm.loop !443

45:                                               ; preds = %35, %42
  %46 = phi ptr [ %47, %42 ], [ %32, %35 ]
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  %48 = icmp eq ptr %47, %39
  br i1 %48, label %89, label %42, !llvm.loop !443

49:                                               ; preds = %42
  %50 = icmp ult ptr %47, %33
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi i1 [ %50, %49 ], [ %34, %35 ]
  %53 = phi ptr [ %47, %49 ], [ %32, %35 ]
  br i1 %52, label %54, label %89

54:                                               ; preds = %51
  %55 = load i8, ptr %53, align 1, !tbaa !139
  %56 = icmp eq i8 %55, 13
  br i1 %56, label %57, label %89

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %59 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %60 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 5
  br label %61

61:                                               ; preds = %57, %77
  %62 = phi ptr [ %87, %77 ], [ %53, %57 ]
  %63 = getelementptr inbounds i8, ptr %62, i64 1
  %64 = load ptr, ptr %58, align 8, !tbaa !355
  %65 = icmp ult ptr %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i8, ptr %63, align 1, !tbaa !139
  %68 = icmp eq i8 %67, 10
  br i1 %68, label %69, label %31

69:                                               ; preds = %66
  store i8 10, ptr %62, align 1, !tbaa !139
  store ptr %62, ptr %18, align 8, !tbaa !440
  br label %89

70:                                               ; preds = %61
  %71 = load ptr, ptr %59, align 8, !tbaa !353
  %72 = icmp ult ptr %71, %62
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  store ptr %62, ptr %18, align 8, !tbaa !440
  %74 = ptrtoint ptr %62 to i64
  %75 = ptrtoint ptr %71 to i64
  %76 = sub i64 %74, %75
  br label %89

77:                                               ; preds = %70
  %78 = getelementptr inbounds i8, ptr %71, i64 1
  store ptr %78, ptr %59, align 8, !tbaa !353
  %79 = load ptr, ptr %3, align 8, !tbaa !352
  %80 = getelementptr inbounds i8, ptr %79, i64 1
  store ptr %80, ptr %3, align 8, !tbaa !352
  %81 = load i64, ptr %60, align 8, !tbaa !354
  %82 = add i64 %81, -1
  store i64 %82, ptr %60, align 8, !tbaa !354
  %83 = tail call i32 @Perl_PerlIO_fill(ptr noundef nonnull %0)
  %84 = load i64, ptr %60, align 8, !tbaa !354
  %85 = add i64 %84, 1
  store i64 %85, ptr %60, align 8, !tbaa !354
  %86 = load ptr, ptr %3, align 8, !tbaa !352
  %87 = getelementptr inbounds i8, ptr %86, i64 -1
  store ptr %87, ptr %3, align 8, !tbaa !352
  store ptr %87, ptr %59, align 8, !tbaa !353
  store i8 13, ptr %87, align 1, !tbaa !139
  %88 = icmp eq i32 %83, 0
  br i1 %88, label %61, label %89

89:                                               ; preds = %54, %51, %31, %45, %77, %69, %73
  %90 = phi i1 [ false, %73 ], [ true, %69 ], [ true, %77 ], [ true, %45 ], [ true, %31 ], [ true, %51 ], [ true, %54 ]
  %91 = phi i64 [ %76, %73 ], [ undef, %69 ], [ undef, %77 ], [ undef, %45 ], [ undef, %31 ], [ undef, %51 ], [ undef, %54 ]
  br i1 %90, label %92, label %108

92:                                               ; preds = %89, %21, %14
  %93 = getelementptr inbounds %struct.PerlIOCrlf, ptr %9, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !440
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, ptr %94, i64 1
  br label %101

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !355
  br label %101

101:                                              ; preds = %98, %96
  %102 = phi ptr [ %97, %96 ], [ %100, %98 ]
  %103 = getelementptr inbounds %struct.PerlIOBuf, ptr %2, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !353
  %105 = ptrtoint ptr %102 to i64
  %106 = ptrtoint ptr %104 to i64
  %107 = sub i64 %105, %106
  br label %108

108:                                              ; preds = %8, %101, %89
  %109 = phi i64 [ %107, %101 ], [ %91, %89 ], [ 0, %8 ]
  ret i64 %109
}

; Function Attrs: cold nounwind uwtable
define dso_local void @PerlIOCrlf_set_ptrcnt(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6 !prof !134 {
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !352
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0)
  br label %10

10:                                               ; preds = %8, %3
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.PerlIOCrlf, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !440
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  %18 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !355
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i8, ptr %14, align 1, !tbaa !139
  %23 = icmp eq i8 %22, 13
  %24 = select i1 %23, ptr %14, ptr %17
  br label %28

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !355
  br label %28

28:                                               ; preds = %21, %16, %25
  %29 = phi ptr [ %17, %16 ], [ %27, %25 ], [ %24, %21 ]
  %30 = sub i64 0, %2
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  br label %32

32:                                               ; preds = %10, %28
  %33 = phi ptr [ %1, %10 ], [ %31, %28 ]
  %34 = getelementptr inbounds %struct.PerlIOCrlf, ptr %4, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !440
  %36 = icmp ne ptr %35, null
  %37 = icmp ugt ptr %33, %35
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  store i8 13, ptr %35, align 1, !tbaa !139
  store ptr null, ptr %34, align 8, !tbaa !440
  %40 = getelementptr inbounds i8, ptr %33, i64 1
  br label %41

41:                                               ; preds = %39, %32
  %42 = phi ptr [ %40, %39 ], [ %33, %32 ]
  %43 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 3
  store ptr %42, ptr %43, align 8, !tbaa !353
  %44 = load ptr, ptr %0, align 8, !tbaa !140
  %45 = getelementptr inbounds %struct._PerlIO, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !152
  %47 = or i32 %46, 262144
  store i32 %47, ptr %45, align 8, !tbaa !152
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOCrlf_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6 !prof !134 {
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !152
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i64 @PerlIOBuf_write(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  br label %139

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %1, i64 %2
  %13 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !352
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call ptr @Perl_PerlIO_get_base(ptr noundef nonnull %0)
  br label %18

18:                                               ; preds = %16, %11
  %19 = load ptr, ptr %0, align 8, !tbaa !140
  %20 = getelementptr inbounds %struct._PerlIO, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !152
  %22 = and i32 %21, 512
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %139, label %24

24:                                               ; preds = %18
  %25 = icmp sgt i64 %2, 0
  br i1 %25, label %26, label %114

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 5
  %28 = getelementptr inbounds %struct.PerlIOBuf, ptr %4, i64 0, i32 3
  br label %29

29:                                               ; preds = %26, %111
  %30 = phi ptr [ %1, %26 ], [ %112, %111 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !352
  %32 = load i64, ptr %27, align 8, !tbaa !354
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load ptr, ptr %0, align 8, !tbaa !140
  %35 = getelementptr inbounds %struct._PerlIO, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !152
  %37 = or i32 %36, 131072
  store i32 %37, ptr %35, align 8, !tbaa !152
  br label %38

38:                                               ; preds = %92, %29
  %39 = phi ptr [ %30, %29 ], [ %93, %92 ]
  %40 = icmp ult ptr %39, %12
  br i1 %40, label %41, label %111

41:                                               ; preds = %38
  %42 = load ptr, ptr %28, align 8, !tbaa !353
  %43 = icmp ult ptr %42, %33
  br i1 %43, label %44, label %111

44:                                               ; preds = %41
  %45 = load i8, ptr %39, align 1, !tbaa !139
  %46 = icmp eq i8 %45, 10
  br i1 %46, label %47, label %89

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %42, i64 2
  %49 = icmp ugt ptr %48, %33
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load ptr, ptr %0, align 8, !tbaa !140
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct._PerlIO, ptr %51, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !153
  %56 = icmp eq ptr %55, null
  br i1 %56, label %111, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct._PerlIO_funcs, ptr %55, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !209
  %60 = icmp eq ptr %59, null
  br i1 %60, label %111, label %61

61:                                               ; preds = %57
  %62 = tail call i64 %59(ptr noundef nonnull %0) #33
  br label %111

63:                                               ; preds = %50
  %64 = tail call ptr @__errno_location() #34
  store i32 9, ptr %64, align 4, !tbaa !135
  br label %111

65:                                               ; preds = %47
  %66 = getelementptr inbounds i8, ptr %42, i64 1
  store ptr %66, ptr %28, align 8, !tbaa !353
  store i8 13, ptr %42, align 1, !tbaa !139
  %67 = load ptr, ptr %28, align 8, !tbaa !353
  %68 = getelementptr inbounds i8, ptr %67, i64 1
  store ptr %68, ptr %28, align 8, !tbaa !353
  store i8 10, ptr %67, align 1, !tbaa !139
  %69 = getelementptr inbounds i8, ptr %39, i64 1
  %70 = load ptr, ptr %0, align 8, !tbaa !140
  %71 = getelementptr inbounds %struct._PerlIO, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !152
  %73 = and i32 %72, 524288
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %65
  %76 = icmp eq ptr %70, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct._PerlIO, ptr %70, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !153
  %80 = icmp eq ptr %79, null
  br i1 %80, label %111, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct._PerlIO_funcs, ptr %79, i64 0, i32 17
  %83 = load ptr, ptr %82, align 8, !tbaa !209
  %84 = icmp eq ptr %83, null
  br i1 %84, label %111, label %85

85:                                               ; preds = %81
  %86 = tail call i64 %83(ptr noundef nonnull %0) #33
  br label %111

87:                                               ; preds = %75
  %88 = tail call ptr @__errno_location() #34
  store i32 9, ptr %88, align 4, !tbaa !135
  br label %111

89:                                               ; preds = %44
  %90 = getelementptr inbounds i8, ptr %39, i64 1
  %91 = getelementptr inbounds i8, ptr %42, i64 1
  store ptr %91, ptr %28, align 8, !tbaa !353
  store i8 %45, ptr %42, align 1, !tbaa !139
  br label %92

92:                                               ; preds = %65, %89
  %93 = phi ptr [ %69, %65 ], [ %90, %89 ]
  %94 = load ptr, ptr %28, align 8, !tbaa !353
  %95 = icmp ult ptr %94, %33
  br i1 %95, label %38, label %96, !llvm.loop !444

96:                                               ; preds = %92
  %97 = load ptr, ptr %0, align 8, !tbaa !140
  %98 = icmp eq ptr %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct._PerlIO, ptr %97, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !153
  %102 = icmp eq ptr %101, null
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct._PerlIO_funcs, ptr %101, i64 0, i32 17
  %105 = load ptr, ptr %104, align 8, !tbaa !209
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = tail call i64 %105(ptr noundef nonnull %0) #33
  br label %111

109:                                              ; preds = %96
  %110 = tail call ptr @__errno_location() #34
  store i32 9, ptr %110, align 4, !tbaa !135
  br label %111

111:                                              ; preds = %38, %41, %109, %107, %103, %99, %87, %85, %81, %77, %63, %61, %57, %53
  %112 = phi ptr [ %39, %53 ], [ %39, %57 ], [ %39, %61 ], [ %39, %63 ], [ %69, %77 ], [ %69, %81 ], [ %69, %85 ], [ %69, %87 ], [ %93, %99 ], [ %93, %103 ], [ %93, %107 ], [ %93, %109 ], [ %39, %41 ], [ %39, %38 ]
  %113 = icmp ult ptr %112, %12
  br i1 %113, label %29, label %114, !llvm.loop !445

114:                                              ; preds = %111, %24
  %115 = phi ptr [ %1, %24 ], [ %112, %111 ]
  %116 = load ptr, ptr %0, align 8, !tbaa !140
  %117 = getelementptr inbounds %struct._PerlIO, ptr %116, i64 0, i32 2
  %118 = load i32, ptr %117, align 8, !tbaa !152
  %119 = and i32 %118, 65536
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %135, label %121

121:                                              ; preds = %114
  %122 = icmp eq ptr %116, null
  br i1 %122, label %133, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct._PerlIO, ptr %116, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !153
  %126 = icmp eq ptr %125, null
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct._PerlIO_funcs, ptr %125, i64 0, i32 17
  %129 = load ptr, ptr %128, align 8, !tbaa !209
  %130 = icmp eq ptr %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = tail call i64 %129(ptr noundef nonnull %0) #33
  br label %135

133:                                              ; preds = %121
  %134 = tail call ptr @__errno_location() #34
  store i32 9, ptr %134, align 4, !tbaa !135
  br label %135

135:                                              ; preds = %133, %131, %127, %123, %114
  %136 = ptrtoint ptr %115 to i64
  %137 = ptrtoint ptr %1 to i64
  %138 = sub i64 %136, %137
  br label %139

139:                                              ; preds = %135, %18, %9
  %140 = phi i64 [ %10, %9 ], [ %138, %135 ], [ 0, %18 ]
  ret i64 %140
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOCrlf_flush(ptr noundef %0) #6 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.PerlIOCrlf, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !440
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8 13, ptr %4, align 1, !tbaa !139
  store ptr null, ptr %3, align 8, !tbaa !440
  br label %7

7:                                                ; preds = %6, %1
  %8 = tail call i64 @PerlIOBuf_flush(ptr noundef nonnull %0), !range !370
  ret i64 %8
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOCrlf_binmode(ptr noundef %0) #6 !prof !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !152
  %5 = and i32 %4, 16384
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = and i32 %4, -16385
  store i32 %8, ptr %3, align 8, !tbaa !152
  tail call void @PerlIO_pop(ptr noundef nonnull %0)
  br label %9

9:                                                ; preds = %7, %1
  ret i64 0
}

; Function Attrs: cold nounwind uwtable
define dso_local nonnull ptr @Perl_PerlIO_stdin() local_unnamed_addr #6 !prof !446 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !140
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !447

3:                                                ; preds = %0
  tail call void @PerlIO_stdstreams()
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @PL_perlio, align 8, !tbaa !140
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 1
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local nonnull ptr @Perl_PerlIO_stdout() local_unnamed_addr #6 !prof !362 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !140
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !218

3:                                                ; preds = %0
  tail call void @PerlIO_stdstreams()
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @PL_perlio, align 8, !tbaa !140
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 2
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local nonnull ptr @Perl_PerlIO_stderr() local_unnamed_addr #6 !prof !161 {
  %1 = load ptr, ptr @PL_perlio, align 8, !tbaa !140
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !333

3:                                                ; preds = %0
  tail call void @PerlIO_stdstreams()
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @PL_perlio, align 8, !tbaa !140
  %6 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 3
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @PerlIO_getname(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 !prof !134 {
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.60) #33
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIO_open(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !201 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #33
  %4 = tail call ptr @Perl_newSVpv(ptr noundef %0, i64 noundef 0) #33
  %5 = tail call ptr @Perl_sv_2mortal(ptr noundef %4) #33
  store ptr %5, ptr %3, align 8, !tbaa !140
  %6 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef %1, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #33
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIO_reopen(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 !prof !134 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #33
  %5 = tail call ptr @Perl_newSVpv(ptr noundef %0, i64 noundef 0) #33
  %6 = tail call ptr @Perl_sv_2mortal(ptr noundef %5) #33
  store ptr %6, ptr %4, align 8, !tbaa !140
  %7 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef %1, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #33
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PerlIO_getc(ptr noundef %0) local_unnamed_addr #4 !prof !285 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #33
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4, !prof !282

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !140
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7, !prof !282

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._PerlIO, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !153
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !282

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._PerlIO_funcs, ptr %9, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !283
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !282

15:                                               ; preds = %11
  %16 = call i64 %13(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef 1) #33, !prof !412
  br label %21

17:                                               ; preds = %11, %7
  %18 = call i64 @PerlIOBase_read(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef 1)
  br label %21

19:                                               ; preds = %4, %1
  %20 = tail call ptr @__errno_location() #34
  store i32 9, ptr %20, align 4, !tbaa !135
  br label %21

21:                                               ; preds = %15, %17, %19
  %22 = phi i64 [ -1, %19 ], [ %16, %15 ], [ %18, %17 ]
  %23 = icmp eq i64 %22, 1
  %24 = load i8, ptr %2, align 1
  %25 = zext i8 %24 to i32
  %26 = select i1 %23, i32 %25, i32 -1, !prof !305
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #33
  ret i32 %26
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @PerlIO_ungetc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 !prof !134 {
  %3 = alloca i8, align 1
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #33
  %6 = trunc i32 %1 to i8
  store i8 %6, ptr %3, align 1, !tbaa !139
  %7 = call i64 @Perl_PerlIO_unread(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 1)
  %8 = icmp eq i64 %7, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #33
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %2
  br label %10

10:                                               ; preds = %5, %9
  %11 = phi i32 [ %1, %5 ], [ -1, %9 ]
  ret i32 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @PerlIO_putc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 !prof !134 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #33
  %4 = trunc i32 %1 to i8
  store i8 %4, ptr %3, align 1, !tbaa !139
  %5 = call i64 @Perl_PerlIO_write(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 1)
  %6 = trunc i64 %5 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #33
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @PerlIO_puts(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !134 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %4 = tail call i64 @Perl_PerlIO_write(ptr noundef %0, ptr noundef %1, i64 noundef %3)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local void @PerlIO_rewind(ptr noundef %0) local_unnamed_addr #6 !prof !134 {
  %2 = tail call i32 @Perl_PerlIO_seek(ptr noundef %0, i64 noundef 0, i32 noundef 0)
  tail call void @Perl_PerlIO_clearerr(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @PerlIO_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 !prof !134 {
  %4 = alloca i64, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #33
  call void @llvm.va_copy(ptr nonnull %5, ptr %2)
  %6 = call ptr @Perl_vnewSVpvf(ptr noundef %1, ptr noundef nonnull %5) #33
  call void @llvm.va_end(ptr %5)
  %7 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !232
  %9 = and i32 %8, 2098176
  %10 = icmp eq i32 %9, 1024
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !tbaa !233
  %13 = getelementptr inbounds %struct.xpv, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !234
  store i64 %14, ptr %4, align 8, !tbaa !236
  %15 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !139
  br label %19

17:                                               ; preds = %3
  %18 = call ptr @Perl_sv_2pv_flags(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 34) #33
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi ptr [ %16, %11 ], [ %18, %17 ]
  %21 = load i64, ptr %4, align 8, !tbaa !236
  %22 = call i64 @Perl_PerlIO_write(ptr noundef %0, ptr noundef %20, i64 noundef %21)
  %23 = icmp eq ptr %6, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !159
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = add i32 %26, -1
  store i32 %29, ptr %25, align 8, !tbaa !159
  br label %31

30:                                               ; preds = %24
  call void @Perl_sv_free2(ptr noundef nonnull %6, i32 noundef %26) #33
  br label %31

31:                                               ; preds = %19, %28, %30
  %32 = trunc i64 %22 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #33
  ret i32 %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #3

declare ptr @Perl_vnewSVpvf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local i32 @PerlIO_printf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #6 !prof !134 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #33
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @PerlIO_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #33
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @PerlIO_stdoutf(ptr noundef %0, ...) local_unnamed_addr #6 !prof !134 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #33
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @PL_perlio, align 8, !tbaa !140
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @PerlIO_stdstreams()
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @PL_perlio, align 8, !tbaa !140
  %8 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 2
  %9 = call i32 @PerlIO_vprintf(ptr noundef nonnull %8, ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #33
  ret i32 %9
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @tmpfile64() local_unnamed_addr #22

; Function Attrs: cold mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Perl_PerlIO_restore_errno(ptr noundef readonly %0) local_unnamed_addr #15 !prof !134 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !288
  %9 = tail call ptr @__errno_location() #34
  store i32 %8, ptr %9, align 4, !tbaa !135
  br label %10

10:                                               ; preds = %1, %3, %6
  ret void
}

declare ptr @Perl_refcounted_he_fetch_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local i32 @PerlIO_setpos(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !134 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !232
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #33
  %19 = and i32 %5, 2098176
  %20 = icmp eq i32 %19, 1024
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load ptr, ptr %1, align 8, !tbaa !233
  %23 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !234
  store i64 %24, ptr %3, align 8, !tbaa !236
  %25 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !139
  br label %29

27:                                               ; preds = %18
  %28 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #33
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %26, %21 ], [ %28, %27 ]
  %31 = load i64, ptr %3, align 8, !tbaa !236
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, ptr %30, align 8, !tbaa !236
  %35 = call i32 @Perl_PerlIO_seek(ptr noundef %0, i64 noundef %34, i32 noundef 0)
  br label %36

36:                                               ; preds = %29, %33
  %37 = phi i32 [ %35, %33 ], [ undef, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #33
  br i1 %32, label %40, label %38

38:                                               ; preds = %16, %36, %11
  %39 = tail call ptr @__errno_location() #34
  store i32 22, ptr %39, align 4, !tbaa !135
  br label %40

40:                                               ; preds = %36, %38
  %41 = phi i32 [ %37, %36 ], [ -1, %38 ]
  ret i32 %41
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @PerlIO_getpos(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !134 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #33
  %4 = tail call i64 @Perl_PerlIO_tell(ptr noundef %0)
  store i64 %4, ptr %3, align 8, !tbaa !236
  call void @Perl_sv_setpvn(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 8) #33
  %5 = load i64, ptr %3, align 8, !tbaa !236
  %6 = icmp eq i64 %5, -1
  %7 = sext i1 %6 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #33
  ret i32 %7
}

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold noreturn nounwind uwtable
define dso_local void @Perl_noperl_die(ptr nocapture noundef readonly %0, ...) local_unnamed_addr #26 !prof !134 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #33
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !140
  %4 = call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %2) #38
  call void @llvm.va_end(ptr %2)
  call void @exit(i32 noundef 1) #37
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #22

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #27

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #29

declare void @Perl_croak_no_mem() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #30

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare void @Perl_save_destructor_x(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @S_lockcnt_dec(ptr nocapture noundef readonly %0) #12 !prof !134 {
  %2 = getelementptr inbounds %struct._PerlIO, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !152
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 8, !tbaa !152
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #32

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #31 = { nofree nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nounwind }
attributes #34 = { nounwind willreturn memory(none) }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { nounwind allocsize(1) }
attributes #37 = { noreturn nounwind }
attributes #38 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!133}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!35 = !{ptr @PerlIO_cleantable, ptr @PerlIO_cleantable, i64 1}
!36 = !{ptr @PerlIO_cleantable, ptr @Perl_PerlIO_close, i64 3}
!37 = !{ptr @PerlIO_cleantable, ptr @Perl_safesysfree, i64 1}
!38 = !{ptr @Perl_PerlIO_close, ptr @PerlIOBuf_close, i64 68}
!39 = !{ptr @Perl_PerlIO_close, ptr @PerlIOBuf_popped, i64 68}
!40 = !{ptr @Perl_PerlIO_close, ptr @PerlIOBase_popped, i64 68}
!41 = !{ptr @Perl_PerlIO_close, ptr @Perl_safesysfree, i64 136}
!42 = !{ptr @PerlIO_list_free, ptr @Perl_safesysfree, i64 4}
!43 = !{ptr @PerlIO_list_push, ptr @Perl_safesysmalloc, i64 5}
!44 = !{ptr @PerlIO_clone_list, ptr @Perl_safesyscalloc, i64 63}
!45 = !{ptr @PerlIO_clone_list, ptr @Perl_safesysmalloc, i64 60}
!46 = !{ptr @Perl_PerlIO_flush, ptr @PerlIOBuf_flush, i64 17911}
!47 = !{ptr @PerlIO_define_layer, ptr @Perl_safesyscalloc, i64 1}
!48 = !{ptr @PerlIO_define_layer, ptr @PerlIO_list_push, i64 8}
!49 = !{ptr @PerlIO_default_layers, ptr @Perl_safesyscalloc, i64 1}
!50 = !{ptr @PerlIO_default_layers, ptr @PerlIO_define_layer, i64 8}
!51 = !{ptr @PerlIO_default_layers, ptr @PerlIO_list_push, i64 2}
!52 = !{ptr @Perl_boot_core_PerlIO, ptr @Perl_newXS, i64 2}
!53 = !{ptr @PerlIO_stdstreams, ptr @Perl_safesyscalloc, i64 1}
!54 = !{ptr @PerlIO_stdstreams, ptr @PerlIO_openn, i64 3}
!55 = !{ptr @PerlIO_push, ptr @Perl_safesyscalloc, i64 136}
!56 = !{ptr @PerlIO_push, ptr @PerlIOUnix_pushed, i64 68}
!57 = !{ptr @PerlIO_push, ptr @PerlIOBuf_pushed, i64 68}
!58 = !{ptr @Perl_PerlIO_fileno, ptr @PerlIOBase_fileno, i64 138}
!59 = !{ptr @Perl_PerlIO_fileno, ptr @PerlIOUnix_fileno, i64 138}
!60 = !{ptr @PerlIOBase_fileno, ptr @Perl_PerlIO_fileno, i64 138}
!61 = !{ptr @PerlIO_resolve_layers, ptr @PerlIO_default_layers, i64 68}
!62 = !{ptr @PerlIO_resolve_layers, ptr @PerlIO_stdstreams, i64 1}
!63 = !{ptr @PerlIO_resolve_layers, ptr @Perl_PerlIO_context_layers, i64 5}
!64 = !{ptr @PerlIO_resolve_layers, ptr @PerlIO_clone_list, i64 63}
!65 = !{ptr @PerlIO_resolve_layers, ptr @PerlIO_parse_layers, i64 63}
!66 = !{ptr @PerlIO_openn, ptr @PerlIO_resolve_layers, i64 68}
!67 = !{ptr @PerlIO_openn, ptr @PerlIOBuf_open, i64 68}
!68 = !{ptr @PerlIO_openn, ptr @Perl_safesysfree, i64 126}
!69 = !{ptr @PerlIOBase_read, ptr @PerlIOBuf_get_cnt, i64 1602}
!70 = !{ptr @PerlIOBase_read, ptr @PerlIOBuf_get_ptr, i64 782}
!71 = !{ptr @PerlIOBase_read, ptr @PerlIOBuf_set_ptrcnt, i64 782}
!72 = !{ptr @PerlIOBase_read, ptr @PerlIOBuf_fill, i64 820}
!73 = !{ptr @Perl_PerlIO_write, ptr @PerlIOBuf_write, i64 29247}
!74 = !{ptr @Perl_PerlIO_write, ptr @PerlIOUnix_write, i64 12793}
!75 = !{ptr @Perl_PerlIO_seek, ptr @PerlIOUnix_seek, i64 27}
!76 = !{ptr @Perl_PerlIO_tell, ptr @PerlIOBuf_tell, i64 3725}
!77 = !{ptr @Perl_PerlIO_tell, ptr @PerlIOUnix_tell, i64 93}
!78 = !{ptr @Perl_PerlIO_error, ptr @PerlIOBase_error, i64 42075}
!79 = !{ptr @Perl_PerlIO_clearerr, ptr @PerlIOBase_clearerr, i64 2}
!80 = !{ptr @PerlIOBase_clearerr, ptr @Perl_PerlIO_clearerr, i64 1}
!81 = !{ptr @Perl_PerlIO_get_base, ptr @PerlIOBuf_get_base, i64 1}
!82 = !{ptr @Perl_PerlIO_get_ptr, ptr @PerlIOBuf_get_ptr, i64 88353}
!83 = !{ptr @Perl_PerlIO_get_cnt, ptr @PerlIOBuf_get_cnt, i64 88353}
!84 = !{ptr @Perl_PerlIO_set_ptrcnt, ptr @PerlIOBuf_set_ptrcnt, i64 88353}
!85 = !{ptr @PerlIOUnix_refcnt_inc, ptr @realloc, i64 1}
!86 = !{ptr @PerlIO_cleanup, ptr @PerlIOUnix_refcnt_inc, i64 3}
!87 = !{ptr @PerlIO_cleanup, ptr @PerlIO_cleantable, i64 1}
!88 = !{ptr @PerlIO_cleanup, ptr @PerlIOUnix_refcnt_dec, i64 3}
!89 = !{ptr @PerlIO_cleanup, ptr @PerlIO_list_free, i64 2}
!90 = !{ptr @PerlIO_teardown, ptr @free, i64 1}
!91 = !{ptr @PerlIOUnix_pushed, ptr @PerlIOBase_pushed, i64 68}
!92 = !{ptr @PerlIOUnix_seek, ptr @lseek64, i64 27}
!93 = !{ptr @PerlIOUnix_open, ptr @memchr, i64 65}
!94 = !{ptr @PerlIOUnix_open, ptr @open64, i64 65}
!95 = !{ptr @PerlIOUnix_open, ptr @PerlIO_push, i64 68}
!96 = !{ptr @PerlIOUnix_open, ptr @PerlIOUnix_refcnt_inc, i64 68}
!97 = !{ptr @PerlIOUnix_read, ptr @read, i64 820}
!98 = !{ptr @PerlIOUnix_read, ptr @__errno_location, i64 38}
!99 = !{ptr @PerlIOUnix_write, ptr @write, i64 18390}
!100 = !{ptr @PerlIOUnix_tell, ptr @lseek64, i64 95}
!101 = !{ptr @PerlIOUnix_close, ptr @close, i64 65}
!102 = !{ptr @PerlIOBuf_pushed, ptr @Perl_PerlIO_fileno, i64 68}
!103 = !{ptr @PerlIOBuf_pushed, ptr @isatty, i64 68}
!104 = !{ptr @PerlIOBuf_pushed, ptr @PerlIOBuf_tell, i64 66}
!105 = !{ptr @PerlIOBuf_pushed, ptr @PerlIOUnix_tell, i64 1}
!106 = !{ptr @PerlIOBuf_pushed, ptr @PerlIOBase_pushed, i64 68}
!107 = !{ptr @PerlIOBuf_open, ptr @PerlIO_default_layers, i64 68}
!108 = !{ptr @PerlIOBuf_open, ptr @PerlIOUnix_open, i64 68}
!109 = !{ptr @PerlIOBuf_open, ptr @PerlIO_push, i64 68}
!110 = !{ptr @PerlIOBuf_open, ptr @Perl_PerlIO_fileno, i64 68}
!111 = !{ptr @PerlIOBuf_flush, ptr @PerlIOBuf_write, i64 12793}
!112 = !{ptr @PerlIOBuf_flush, ptr @PerlIOUnix_write, i64 5596}
!113 = !{ptr @PerlIOBuf_flush, ptr @PerlIOBuf_get_base, i64 885}
!114 = !{ptr @PerlIOBuf_flush, ptr @Perl_PerlIO_seek, i64 27}
!115 = !{ptr @PerlIOBuf_flush, ptr @Perl_PerlIO_tell, i64 27}
!116 = !{ptr @PerlIOBuf_flush, ptr @PerlIOBase_noop_ok, i64 19282}
!117 = !{ptr @PerlIOBuf_fill, ptr @PerlIOBuf_flush, i64 820}
!118 = !{ptr @PerlIOBuf_fill, ptr @PerlIOBuf_read, i64 410}
!119 = !{ptr @PerlIOBuf_fill, ptr @PerlIOUnix_read, i64 410}
!120 = !{ptr @PerlIOBuf_read, ptr @PerlIOBase_read, i64 820}
!121 = !{ptr @PerlIOBuf_write, ptr @Perl_PerlIO_get_base, i64 1}
!122 = !{ptr @PerlIOBuf_write, ptr @PerlIOBuf_flush, i64 483}
!123 = !{ptr @PerlIOBuf_close, ptr @PerlIOBuf_flush, i64 68}
!124 = !{ptr @PerlIOBuf_close, ptr @PerlIOUnix_close, i64 68}
!125 = !{ptr @PerlIOBuf_close, ptr @Perl_safesysfree, i64 66}
!126 = !{ptr @PerlIOBuf_get_cnt, ptr @PerlIOBuf_get_base, i64 65}
!127 = !{ptr @PerlIOBuf_get_base, ptr @Perl_safesyscalloc, i64 66}
!128 = !{ptr @PerlIO_open, ptr @Perl_newSVpv, i64 1}
!129 = !{ptr @PerlIO_open, ptr @Perl_sv_2mortal, i64 1}
!130 = !{ptr @PerlIO_open, ptr @PerlIO_openn, i64 1}
!131 = !{ptr @PerlIO_getc, ptr @PerlIOBuf_read, i64 410}
!132 = !{ptr @PerlIO_getc, ptr @PerlIOUnix_read, i64 410}
!133 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!134 = !{!"function_entry_count", i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"int", !137, i64 0}
!137 = !{!"omnipotent char", !138, i64 0}
!138 = !{!"Simple C/C++ TBAA"}
!139 = !{!137, !137, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"any pointer", !137, i64 0}
!142 = !{!"branch_weights", i32 0, i32 68}
!143 = !{!"branch_weights", i32 0, i32 372}
!144 = distinct !{!144, !145, !146}
!145 = !{!"llvm.loop.mustprogress"}
!146 = !{!"llvm.loop.unroll.disable"}
!147 = !{!148, !141, i64 0}
!148 = !{!"_PerlIO", !141, i64 0, !141, i64 8, !136, i64 16, !136, i64 20, !141, i64 24}
!149 = !{!"branch_weights", i32 68, i32 304}
!150 = !{!"branch_weights", i32 0, i32 0, i32 68}
!151 = distinct !{!151, !145, !146}
!152 = !{!148, !136, i64 16}
!153 = !{!148, !141, i64 8}
!154 = !{!148, !141, i64 24}
!155 = !{!156, !141, i64 80}
!156 = !{!"_PerlIO_funcs", !157, i64 0, !141, i64 8, !157, i64 16, !136, i64 24, !141, i64 32, !141, i64 40, !141, i64 48, !141, i64 56, !141, i64 64, !141, i64 72, !141, i64 80, !141, i64 88, !141, i64 96, !141, i64 104, !141, i64 112, !141, i64 120, !141, i64 128, !141, i64 136, !141, i64 144, !141, i64 152, !141, i64 160, !141, i64 168, !141, i64 176, !141, i64 184, !141, i64 192, !141, i64 200, !141, i64 208, !141, i64 216}
!157 = !{!"long", !137, i64 0}
!158 = !{!156, !141, i64 64}
!159 = !{!160, !136, i64 8}
!160 = !{!"sv", !141, i64 0, !136, i64 8, !136, i64 12, !137, i64 16}
!161 = !{!"function_entry_count", i64 2}
!162 = !{!"branch_weights", i32 1, i32 1}
!163 = !{!"branch_weights", i32 60, i32 3}
!164 = !{!"branch_weights", i32 62, i32 1}
!165 = distinct !{!165, !145, !146}
!166 = !{!"function_entry_count", i64 68}
!167 = !{!156, !141, i64 128}
!168 = !{!"VP", i32 0, i64 68, i64 4599694350029293462, i64 68}
!169 = !{!"branch_weights", i32 0, i32 1}
!170 = !{!"branch_weights", i32 68, i32 136}
!171 = !{!"branch_weights", i32 0, i32 136}
!172 = !{!156, !141, i64 40}
!173 = !{!"VP", i32 0, i64 136, i64 -2695442832149409622, i64 68, i64 3772568368677418879, i64 68}
!174 = !{!"branch_weights", i32 136, i32 0}
!175 = !{!"branch_weights", i32 0, i32 204}
!176 = distinct !{!176, !145, !146}
!177 = !{!178, !157, i64 0}
!178 = !{!"PerlIO_list_s", !157, i64 0, !157, i64 8, !157, i64 16, !141, i64 24}
!179 = !{!"branch_weights", i32 0, i32 70}
!180 = !{!"branch_weights", i32 65, i32 5}
!181 = !{!178, !141, i64 24}
!182 = !{!"branch_weights", i32 0, i32 65}
!183 = !{!178, !157, i64 8}
!184 = !{!"branch_weights", i32 129, i32 1}
!185 = !{!186, !141, i64 8}
!186 = !{!"", !141, i64 0, !141, i64 8}
!187 = !{!"branch_weights", i32 8, i32 128}
!188 = !{!"branch_weights", i32 128, i32 0}
!189 = !{!"branch_weights", i32 143, i32 129}
!190 = distinct !{!190, !145, !146}
!191 = !{!"function_entry_count", i64 10}
!192 = !{!178, !157, i64 16}
!193 = !{!"branch_weights", i32 71, i32 65}
!194 = !{!"branch_weights", i32 65, i32 0}
!195 = !{!186, !141, i64 0}
!196 = !{!"function_entry_count", i64 63}
!197 = !{!"branch_weights", i32 0, i32 63}
!198 = !{!"branch_weights", i32 251, i32 1}
!199 = !{!"branch_weights", i32 253, i32 251}
!200 = distinct !{!200, !145, !146}
!201 = !{!"function_entry_count", i64 1}
!202 = !{!"branch_weights", i32 1, i32 127}
!203 = !{!"branch_weights", i32 127, i32 1}
!204 = distinct !{!204, !145, !146}
!205 = !{!"branch_weights", i32 57, i32 6}
!206 = !{!"branch_weights", i32 0, i32 6}
!207 = !{!156, !136, i64 24}
!208 = !{!"branch_weights", i32 6, i32 0}
!209 = !{!156, !141, i64 136}
!210 = distinct !{!210, !145, !146}
!211 = !{!"branch_weights", i32 1, i32 62}
!212 = distinct !{!212, !145, !146}
!213 = !{!"function_entry_count", i64 17909}
!214 = !{!"branch_weights", i32 1, i32 17908}
!215 = !{!"branch_weights", i32 0, i32 17908}
!216 = !{!"VP", i32 0, i64 17908, i64 -2608025346020868226, i64 17908}
!217 = distinct !{!217, !145, !146}
!218 = !{!"branch_weights", i32 0, i32 3}
!219 = !{!"VP", i32 0, i64 3, i64 -2608025346020868226, i64 3}
!220 = !{!"branch_weights", i32 3, i32 0}
!221 = distinct !{!221, !145, !146}
!222 = !{!"VP", i32 0, i64 0, i64 -2695442832149409622, i64 0, i64 3772568368677418879, i64 0}
!223 = !{!156, !141, i64 8}
!224 = distinct !{!224, !145, !146}
!225 = distinct !{!225, !145, !146}
!226 = !{!227, !227, i64 0}
!227 = !{!"_Bool", !137, i64 0}
!228 = !{i8 0, i8 2}
!229 = !{}
!230 = !{!231, !136, i64 8}
!231 = !{!"cv", !141, i64 0, !136, i64 8, !136, i64 12, !137, i64 16}
!232 = !{!160, !136, i64 12}
!233 = !{!160, !141, i64 0}
!234 = !{!235, !157, i64 16}
!235 = !{!"xpv", !141, i64 0, !137, i64 8, !157, i64 16, !137, i64 24}
!236 = !{!157, !157, i64 0}
!237 = !{!"function_entry_count", i64 8}
!238 = !{!"branch_weights", i32 1, i32 7}
!239 = !{!"branch_weights", i32 1, i32 251}
!240 = !{!"branch_weights", i32 0, i32 126}
!241 = !{!"branch_weights", i32 0, i32 63, i32 63}
!242 = distinct !{!242, !145, !146}
!243 = distinct !{!243, !145, !146}
!244 = distinct !{!244, !145, !146}
!245 = distinct !{!245, !145, !146}
!246 = !{!"branch_weights", i32 63, i32 0}
!247 = !{!156, !141, i64 48}
!248 = !{!"function_entry_count", i64 136}
!249 = !{!"branch_weights", i32 1, i32 135}
!250 = !{!"branch_weights", i32 1, i32 0}
!251 = !{!156, !157, i64 0}
!252 = !{!156, !157, i64 16}
!253 = !{!156, !141, i64 32}
!254 = !{!"VP", i32 0, i64 136, i64 3331289457810005640, i64 68, i64 747251105708489106, i64 68}
!255 = !{!156, !141, i64 56}
!256 = distinct !{!256, !145, !146}
!257 = !{i32 -1, i32 1}
!258 = !{!"VP", i32 0, i64 0, i64 4599694350029293462, i64 0}
!259 = !{!"VP", i32 0, i64 0, i64 -2608025346020868226, i64 0}
!260 = !{!"VP", i32 0, i64 0, i64 -2407660586101264524, i64 0}
!261 = !{!"branch_weights", i32 68, i32 0}
!262 = !{!"function_entry_count", i64 276}
!263 = !{!"branch_weights", i32 0, i32 276}
!264 = !{!156, !141, i64 72}
!265 = !{!"VP", i32 0, i64 276, i64 -2378859751008327465, i64 138, i64 -326430769696720796, i64 138}
!266 = !{!"function_entry_count", i64 138}
!267 = !{!"branch_weights", i32 0, i32 138}
!268 = !{!"branch_weights", i32 1, i32 67}
!269 = !{!"branch_weights", i32 3, i32 65}
!270 = !{!"branch_weights", i32 5, i32 63}
!271 = !{!"branch_weights", i32 0, i32 5}
!272 = !{!"function_entry_count", i64 5}
!273 = !{!"branch_weights", i32 2, i32 3}
!274 = !{!275, !136, i64 56}
!275 = !{!"cop", !141, i64 0, !141, i64 8, !141, i64 16, !157, i64 24, !136, i64 32, !136, i64 33, !136, i64 33, !136, i64 33, !136, i64 33, !136, i64 33, !136, i64 33, !136, i64 33, !137, i64 34, !137, i64 35, !136, i64 36, !141, i64 40, !141, i64 48, !136, i64 56, !136, i64 60, !141, i64 64, !141, i64 72}
!276 = !{!"branch_weights", i32 2, i32 0}
!277 = !{!"branch_weights", i32 5, i32 0}
!278 = !{!275, !141, i64 72}
!279 = !{!"branch_weights", i32 65, i32 3}
!280 = distinct !{!280, !145, !146}
!281 = !{!"VP", i32 0, i64 68, i64 5846200429670686753, i64 68}
!282 = !{!"branch_weights", i32 0, i32 1640}
!283 = !{!156, !141, i64 88}
!284 = !{!"VP", i32 0, i64 0, i64 -8016915265832795612, i64 0, i64 5580078941703170557, i64 0}
!285 = !{!"function_entry_count", i64 820}
!286 = !{!"branch_weights", i32 0, i32 820}
!287 = !{!"branch_weights", i32 1, i32 781}
!288 = !{!148, !136, i64 20}
!289 = !{!"branch_weights", i32 781, i32 821}
!290 = !{!"branch_weights", i32 0, i32 89955}
!291 = !{!156, !141, i64 208}
!292 = !{!"VP", i32 0, i64 1602, i64 1732878329799096532, i64 1602}
!293 = !{!"branch_weights", i32 0, i32 1602}
!294 = !{!"branch_weights", i32 782, i32 820}
!295 = !{!"branch_weights", i32 0, i32 89135}
!296 = !{!156, !141, i64 200}
!297 = !{!"VP", i32 0, i64 782, i64 -6245989371545348048, i64 782}
!298 = !{!"VP", i32 1, i64 782, i64 1, i64 782}
!299 = !{!156, !141, i64 216}
!300 = !{!"VP", i32 0, i64 782, i64 -2017714682397427415, i64 782}
!301 = !{!"branch_weights", i32 0, i32 782}
!302 = !{!"branch_weights", i32 820, i32 782}
!303 = !{!156, !141, i64 144}
!304 = !{!"VP", i32 0, i64 820, i64 928159343624448475, i64 820}
!305 = !{!"branch_weights", i32 782, i32 38}
!306 = !{!"branch_weights", i32 0, i32 1564, i32 0, i32 38}
!307 = distinct !{!307, !145, !146}
!308 = !{!156, !141, i64 96}
!309 = !{!310, !157, i64 56}
!310 = !{!"", !148, i64 0, !141, i64 32, !141, i64 40, !141, i64 48, !157, i64 56, !157, i64 64, !157, i64 72}
!311 = !{!"function_entry_count", i64 42041}
!312 = !{!"branch_weights", i32 0, i32 60431}
!313 = !{!156, !141, i64 104}
!314 = !{!"VP", i32 0, i64 42041, i64 470164391355905450, i64 29247, i64 5992121848976613568, i64 12793}
!315 = !{!"function_entry_count", i64 27}
!316 = !{!"branch_weights", i32 0, i32 27}
!317 = !{!156, !141, i64 112}
!318 = !{!"VP", i32 0, i64 27, i64 3154095050432739249, i64 27}
!319 = !{!"function_entry_count", i64 3819}
!320 = !{!"branch_weights", i32 0, i32 3887}
!321 = !{!156, !141, i64 120}
!322 = !{!"VP", i32 0, i64 3819, i64 -8436646010637768312, i64 3725, i64 9093235339061422249, i64 93}
!323 = distinct !{!323, !145, !146}
!324 = distinct !{!324, !145, !146}
!325 = !{!"VP", i32 0, i64 0, i64 928159343624448475, i64 0}
!326 = !{!"function_entry_count", i64 130424}
!327 = !{!"branch_weights", i32 0, i32 130424}
!328 = !{!156, !141, i64 152}
!329 = !{!"function_entry_count", i64 42075}
!330 = !{!"branch_weights", i32 0, i32 42075}
!331 = !{!156, !141, i64 160}
!332 = !{!"VP", i32 0, i64 42075, i64 -6108733705865303905, i64 42075}
!333 = !{!"branch_weights", i32 0, i32 2}
!334 = !{!156, !141, i64 168}
!335 = !{!"VP", i32 0, i64 2, i64 2283181966149240574, i64 2}
!336 = !{!156, !141, i64 176}
!337 = !{!156, !141, i64 184}
!338 = !{!"function_entry_count", i64 87533}
!339 = !{!"branch_weights", i32 0, i32 87533}
!340 = !{!"branch_weights", i32 0, i32 951}
!341 = !{!"VP", i32 0, i64 1, i64 -343093905220957850, i64 1}
!342 = !{!156, !141, i64 192}
!343 = !{!"function_entry_count", i64 88353}
!344 = !{!"VP", i32 0, i64 88353, i64 -6245989371545348048, i64 88353}
!345 = !{!"VP", i32 0, i64 88353, i64 1732878329799096532, i64 88353}
!346 = !{!"VP", i32 0, i64 88353, i64 -2017714682397427415, i64 88353}
!347 = !{!"branch_weights", i32 68, i32 68}
!348 = !{!"branch_weights", i32 133, i32 0, i32 3}
!349 = !{!"branch_weights", i32 0, i32 132, i32 0, i32 4}
!350 = !{!"branch_weights", i32 0, i32 136, i32 0, i32 0, i32 0}
!351 = distinct !{!351, !145, !146}
!352 = !{!310, !141, i64 32}
!353 = !{!310, !141, i64 48}
!354 = !{!310, !157, i64 64}
!355 = !{!310, !141, i64 40}
!356 = !{!"function_entry_count", i64 19282}
!357 = !{!"function_entry_count", i64 71}
!358 = !{!"branch_weights", i32 71, i32 0}
!359 = !{!"branch_weights", i32 70, i32 1}
!360 = !{!"VP", i32 1, i64 1, i64 64, i64 1}
!361 = !{!"branch_weights", i32 0, i32 71}
!362 = !{!"function_entry_count", i64 3}
!363 = !{!"branch_weights", i32 1, i32 2}
!364 = distinct !{!364, !145, !146}
!365 = distinct !{!365, !145, !146}
!366 = !{!"branch_weights", i32 65, i32 0, i32 0}
!367 = !{!"branch_weights", i32 0, i32 65, i32 0, i32 0}
!368 = !{!369, !136, i64 32}
!369 = !{!"", !148, i64 0, !136, i64 32, !136, i64 36}
!370 = !{i64 -1, i64 1}
!371 = !{i32 -1, i32 1091}
!372 = !{!369, !136, i64 36}
!373 = !{!"branch_weights", i32 27, i32 0}
!374 = !{!"branch_weights", i32 4225, i32 0, i32 0}
!375 = !{!"perlio.c;S_is_safe_syscall"}
!376 = !{!"branch_weights", i32 820, i32 0}
!377 = !{!"branch_weights", i32 38, i32 782}
!378 = distinct !{!378, !146}
!379 = distinct !{!379, !145, !146}
!380 = !{!"function_entry_count", i64 18390}
!381 = !{!"branch_weights", i32 18390, i32 0}
!382 = !{!"branch_weights", i32 0, i32 18390}
!383 = distinct !{!383, !146}
!384 = !{!"function_entry_count", i64 95}
!385 = distinct !{!385, !145, !146}
!386 = !{!387, !141, i64 32}
!387 = !{!"", !148, i64 0, !141, i64 32}
!388 = distinct !{!388, !145, !146}
!389 = distinct !{!389, !146}
!390 = !{!391, !141, i64 8}
!391 = !{!"_IO_FILE", !136, i64 0, !141, i64 8, !141, i64 16, !141, i64 24, !141, i64 32, !141, i64 40, !141, i64 48, !141, i64 56, !141, i64 64, !141, i64 72, !141, i64 80, !141, i64 88, !141, i64 96, !141, i64 104, !136, i64 112, !136, i64 116, !157, i64 120, !392, i64 128, !137, i64 130, !137, i64 131, !141, i64 136, !157, i64 144, !141, i64 152, !141, i64 160, !141, i64 168, !141, i64 176, !157, i64 184, !136, i64 192, !137, i64 196}
!392 = !{!"short", !137, i64 0}
!393 = distinct !{!393, !146}
!394 = !{!391, !141, i64 24}
!395 = !{!391, !141, i64 16}
!396 = distinct !{!396, !146}
!397 = distinct !{!397, !145, !146}
!398 = distinct !{!398, !145, !146}
!399 = !{!"VP", i32 0, i64 68, i64 -8436646010637768312, i64 66, i64 9093235339061422249, i64 1}
!400 = !{!"VP", i32 0, i64 68, i64 -8217473455302631536, i64 68}
!401 = !{!"branch_weights", i32 892, i32 18390}
!402 = !{!"branch_weights", i32 18390, i32 18390}
!403 = !{!"VP", i32 0, i64 18390, i64 470164391355905450, i64 12793, i64 5992121848976613568, i64 5596}
!404 = !{!"branch_weights", i32 7, i32 885}
!405 = !{!"VP", i32 0, i64 885, i64 -343093905220957850, i64 885}
!406 = !{!"branch_weights", i32 27, i32 858}
!407 = !{!"branch_weights", i32 885, i32 0}
!408 = !{!"branch_weights", i32 0, i32 19282}
!409 = !{!"VP", i32 0, i64 19282, i64 5054943088184749855, i64 19282}
!410 = !{!"branch_weights", i32 19282, i32 0}
!411 = !{!"VP", i32 0, i64 820, i64 -2608025346020868226, i64 820}
!412 = !{!"VP", i32 0, i64 820, i64 -8016915265832795612, i64 410, i64 5580078941703170557, i64 410}
!413 = !{!"branch_weights", i32 38, i32 0}
!414 = !{!"branch_weights", i32 1, i32 42040}
!415 = !{!"branch_weights", i32 0, i32 42041}
!416 = !{!"branch_weights", i32 42041, i32 0}
!417 = distinct !{!417, !145, !146}
!418 = !{!"branch_weights", i32 0, i32 42521}
!419 = !{!"branch_weights", i32 42521, i32 0}
!420 = !{!"VP", i32 1, i64 42521, i64 1, i64 17737, i64 65, i64 12011, i64 33, i64 6484, i64 17, i64 5750}
!421 = !{!"branch_weights", i32 42038, i32 483}
!422 = !{!"branch_weights", i32 0, i32 483}
!423 = !{!"VP", i32 0, i64 483, i64 -2608025346020868226, i64 483}
!424 = distinct !{!424, !145, !146}
!425 = !{!"branch_weights", i32 42040, i32 481}
!426 = !{!"function_entry_count", i64 3792}
!427 = !{!"branch_weights", i32 0, i32 3792}
!428 = !{!"VP", i32 0, i64 68, i64 -2608025346020868226, i64 68}
!429 = !{!"VP", i32 0, i64 68, i64 -2407660586101264524, i64 68}
!430 = !{!"branch_weights", i32 2, i32 66}
!431 = !{!"function_entry_count", i64 89135}
!432 = !{!"function_entry_count", i64 89955}
!433 = !{!"branch_weights", i32 65, i32 89890}
!434 = !{!"VP", i32 0, i64 65, i64 -343093905220957850, i64 65}
!435 = !{!"branch_weights", i32 103, i32 89852}
!436 = !{!"function_entry_count", i64 951}
!437 = !{!"branch_weights", i32 66, i32 885}
!438 = !{!"branch_weights", i32 66, i32 0}
!439 = !{!"branch_weights", i32 0, i32 66}
!440 = !{!441, !141, i64 80}
!441 = !{!"", !310, i64 0, !141, i64 80}
!442 = distinct !{!442, !145, !146}
!443 = distinct !{!443, !145, !146}
!444 = distinct !{!444, !145, !146}
!445 = distinct !{!445, !145, !146}
!446 = !{!"function_entry_count", i64 4}
!447 = !{!"branch_weights", i32 0, i32 4}
