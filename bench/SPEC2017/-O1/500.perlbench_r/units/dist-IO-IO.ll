; ModuleID = 'dist/IO/IO.c'
source_filename = "dist/IO/IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.io = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu, %union._xnvu }
%union._xmgu = type { ptr }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu }
%union.anon.3 = type { i64 }
%struct.pollfd = type { i32, i16, i16 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.4, %union._xivu, %union._xnvu }
%union.anon.4 = type { i64 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu }
%union.anon.5 = type { i64 }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.6, %union._xivu, ptr, %union.anon.7, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { ptr }
%struct.binop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"dist/IO/IO.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"IO::Seekable::getpos\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"IO::Seekable::setpos\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"IO::File::new_tmpfile\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"IO::Poll::_poll\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"IO::Handle::blocking\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"IO::Handle::ungetc\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"IO::Handle::error\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"IO::Handle::clearerr\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"IO::Handle::untaint\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"IO::Handle::flush\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"IO::Handle::setbuf\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"IO::Handle::setvbuf\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"IO::Handle::sync\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"IO::Handle::_create_getline_subs\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"IO::Socket::sockatmark\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"IO::Poll\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"POLLIN\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"POLLPRI\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"POLLOUT\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"POLLRDNORM\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"POLLWRNORM\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"POLLRDBAND\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"POLLWRBAND\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"POLLNORM\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"POLLERR\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"POLLHUP\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"POLLNVAL\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"IO::Handle\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"_IOFBF\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"_IOLBF\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"_IONBF\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"SEEK_SET\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"SEEK_CUR\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"SEEK_END\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [7 x i8] c"handle\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.39 = private unnamed_addr constant [12 x i8] c"handle, pos\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"0 but true\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"packname = \22IO::File\22\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"IO::File\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"+>&\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"timeout, ...\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"handle, blk=-1\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"handle, c\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.47 = private unnamed_addr constant [38 x i8] c"Negative character number in ungetc()\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"Wide character number in ungetc()\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"handle, ...\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"%s not implemented on this architecture\00", align 1
@.str.51 = private unnamed_addr constant [52 x i8] c"Usage: IO::Handle::setvbuf(handle, buf, type, size)\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@PL_check = external local_unnamed_addr global [0 x ptr], align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_ppaddr = external local_unnamed_addr global [0 x ptr], align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"sock\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"IO::Socket::atmark\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_IO(ptr noundef %0) local_unnamed_addr #0 !prof !45 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_IO__Seekable_getpos) #6
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_IO__Seekable_setpos) #6
  %5 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_IO__File_new_tmpfile) #6
  %6 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_IO__Poll__poll) #6
  %7 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_IO__Handle_blocking, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %8 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_IO__Handle_ungetc) #6
  %9 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_IO__Handle_error) #6
  %10 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_IO__Handle_clearerr) #6
  %11 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_IO__Handle_untaint) #6
  %12 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_IO__Handle_flush) #6
  %13 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_IO__Handle_setbuf) #6
  %14 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_IO__Handle_setvbuf) #6
  %15 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_IO__Handle_sync) #6
  %16 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.16, ptr noundef nonnull @XS_IO__Handle__create_getline_subs) #6
  %17 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.17, ptr noundef nonnull @XS_IO__Socket_sockatmark, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef 0) #6
  %18 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str.19, i32 noundef 8, i32 noundef 1) #6
  %19 = tail call ptr @Perl_newSViv(i64 noundef 1) #6
  %20 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.20, ptr noundef %19) #6
  %21 = tail call ptr @Perl_newSViv(i64 noundef 2) #6
  %22 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.21, ptr noundef %21) #6
  %23 = tail call ptr @Perl_newSViv(i64 noundef 4) #6
  %24 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.22, ptr noundef %23) #6
  %25 = tail call ptr @Perl_newSViv(i64 noundef 64) #6
  %26 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.23, ptr noundef %25) #6
  %27 = tail call ptr @Perl_newSViv(i64 noundef 4) #6
  %28 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.24, ptr noundef %27) #6
  %29 = tail call ptr @Perl_newSViv(i64 noundef 128) #6
  %30 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.25, ptr noundef %29) #6
  %31 = tail call ptr @Perl_newSViv(i64 noundef 256) #6
  %32 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.26, ptr noundef %31) #6
  %33 = tail call ptr @Perl_newSViv(i64 noundef 64) #6
  %34 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.27, ptr noundef %33) #6
  %35 = tail call ptr @Perl_newSViv(i64 noundef 8) #6
  %36 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.28, ptr noundef %35) #6
  %37 = tail call ptr @Perl_newSViv(i64 noundef 16) #6
  %38 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.29, ptr noundef %37) #6
  %39 = tail call ptr @Perl_newSViv(i64 noundef 32) #6
  %40 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.30, ptr noundef %39) #6
  %41 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str.31, i32 noundef 10, i32 noundef 1) #6
  %42 = tail call ptr @Perl_newSViv(i64 noundef 0) #6
  %43 = tail call ptr @Perl_newCONSTSUB(ptr noundef %41, ptr noundef nonnull @.str.32, ptr noundef %42) #6
  %44 = tail call ptr @Perl_newSViv(i64 noundef 1) #6
  %45 = tail call ptr @Perl_newCONSTSUB(ptr noundef %41, ptr noundef nonnull @.str.33, ptr noundef %44) #6
  %46 = tail call ptr @Perl_newSViv(i64 noundef 2) #6
  %47 = tail call ptr @Perl_newCONSTSUB(ptr noundef %41, ptr noundef nonnull @.str.34, ptr noundef %46) #6
  %48 = tail call ptr @Perl_newSViv(i64 noundef 0) #6
  %49 = tail call ptr @Perl_newCONSTSUB(ptr noundef %41, ptr noundef nonnull @.str.35, ptr noundef %48) #6
  %50 = tail call ptr @Perl_newSViv(i64 noundef 1) #6
  %51 = tail call ptr @Perl_newCONSTSUB(ptr noundef %41, ptr noundef nonnull @.str.36, ptr noundef %50) #6
  %52 = tail call ptr @Perl_newSViv(i64 noundef 2) #6
  %53 = tail call ptr @Perl_newCONSTSUB(ptr noundef %41, ptr noundef nonnull @.str.37, ptr noundef %52) #6
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Seekable_getpos(ptr noundef %0) #0 !prof !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = tail call ptr @Perl_sv_2io(ptr noundef %20) #6
  %22 = getelementptr inbounds %struct.io, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %16
  %26 = tail call ptr @Perl_sv_newmortal() #6
  %27 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %28 = getelementptr inbounds ptr, ptr %27, i64 %18
  store ptr %26, ptr %28, align 8, !tbaa !47
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %30 = getelementptr inbounds ptr, ptr %29, i64 %18
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = tail call i32 @PerlIO_getpos(ptr noundef nonnull %23, ptr noundef %31) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %36

34:                                               ; preds = %16
  %35 = tail call ptr @__errno_location() #7
  store i32 22, ptr %35, align 4, !tbaa !51
  br label %36

36:                                               ; preds = %25, %34
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %38 = getelementptr inbounds ptr, ptr %37, i64 %18
  store ptr @PL_sv_undef, ptr %38, align 8, !tbaa !47
  br label %39

39:                                               ; preds = %36, %25
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %41 = getelementptr inbounds ptr, ptr %40, i64 %18
  store ptr %41, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Seekable_setpos(ptr noundef %0) #0 !prof !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.39) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = tail call ptr @Perl_sv_2io(ptr noundef %20) #6
  %22 = getelementptr inbounds %struct.io, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %27 = getelementptr ptr, ptr %26, i64 %8
  %28 = getelementptr ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = tail call i32 @PerlIO_setpos(ptr noundef nonnull %23, ptr noundef %29) #6
  br label %33

31:                                               ; preds = %16
  %32 = tail call ptr @__errno_location() #7
  store i32 22, ptr %32, align 4, !tbaa !51
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi i32 [ %30, %25 ], [ -1, %31 ]
  %35 = tail call ptr @Perl_sv_newmortal() #6
  switch i32 %34, label %37 [
    i32 -1, label %39
    i32 0, label %36
  ]

36:                                               ; preds = %33
  tail call void @Perl_sv_setpvn(ptr noundef %35, ptr noundef nonnull @.str.40, i64 noundef 10) #6
  br label %39

37:                                               ; preds = %33
  %38 = sext i32 %34 to i64
  tail call void @Perl_sv_setiv(ptr noundef %35, i64 noundef %38) #6
  br label %39

39:                                               ; preds = %33, %36, %37
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %41 = getelementptr inbounds ptr, ptr %40, i64 %18
  store ptr %35, ptr %41, align 8, !tbaa !47
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %43 = getelementptr inbounds ptr, ptr %42, i64 %18
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__File_new_tmpfile(ptr noundef %0) #0 !prof !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.41) #6
  br label %17

17:                                               ; preds = %1, %16
  %18 = icmp slt i32 %14, 1
  br i1 %18, label %33, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !54
  %26 = and i32 %25, 2098176
  %27 = icmp eq i32 %26, 1024
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  br label %33

31:                                               ; preds = %19
  %32 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %23, ptr noundef null, i32 noundef 2) #6
  br label %33

33:                                               ; preds = %28, %31, %17
  %34 = phi ptr [ @.str.42, %17 ], [ %30, %28 ], [ %32, %31 ]
  %35 = tail call ptr @PerlIO_tmpfile() #6
  %36 = tail call ptr @Perl_newGVgen_flags(ptr noundef %34, i32 noundef 0) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %77, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !56
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !56
  %42 = load ptr, ptr %36, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.xpvgv, ptr %42, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !53
  %45 = getelementptr inbounds %struct.xpvgv, ptr %42, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = getelementptr inbounds %struct.hek, ptr %46, i64 0, i32 2
  %48 = getelementptr inbounds %struct.hek, ptr %46, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !59
  %50 = tail call ptr @Perl_hv_common_key_len(ptr noundef %44, ptr noundef nonnull %47, i32 noundef %49, i32 noundef 68, ptr noundef null, i32 noundef 0) #6
  %51 = tail call zeroext i1 @Perl_do_openn(ptr noundef nonnull %36, ptr noundef nonnull @.str.43, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %35, ptr noundef null, i32 noundef 0) #6
  br i1 %51, label %52, label %68

52:                                               ; preds = %38
  %53 = tail call ptr @Perl_newRV(ptr noundef nonnull %36) #6
  %54 = tail call ptr @Perl_sv_2mortal(ptr noundef %53) #6
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %56 = sext i32 %7 to i64
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  store ptr %54, ptr %57, align 8, !tbaa !47
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %59 = getelementptr inbounds ptr, ptr %58, i64 %56
  %60 = load ptr, ptr %59, align 8, !tbaa !47
  %61 = tail call ptr @Perl_gv_stashpv(ptr noundef %34, i32 noundef 1) #6
  %62 = tail call ptr @Perl_sv_bless(ptr noundef %60, ptr noundef %61) #6
  %63 = load i32, ptr %39, align 8, !tbaa !56
  %64 = icmp ugt i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = add i32 %63, -1
  store i32 %66, ptr %39, align 8, !tbaa !56
  br label %81

67:                                               ; preds = %52
  tail call void @Perl_sv_free2(ptr noundef nonnull %36, i32 noundef %63) #6
  br label %81

68:                                               ; preds = %38
  %69 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %70 = sext i32 %7 to i64
  %71 = getelementptr inbounds ptr, ptr %69, i64 %70
  store ptr @PL_sv_undef, ptr %71, align 8, !tbaa !47
  %72 = load i32, ptr %39, align 8, !tbaa !56
  %73 = icmp ugt i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = add i32 %72, -1
  store i32 %75, ptr %39, align 8, !tbaa !56
  br label %81

76:                                               ; preds = %68
  tail call void @Perl_sv_free2(ptr noundef nonnull %36, i32 noundef %72) #6
  br label %81

77:                                               ; preds = %33
  %78 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %79 = sext i32 %7 to i64
  %80 = getelementptr inbounds ptr, ptr %78, i64 %79
  store ptr @PL_sv_undef, ptr %80, align 8, !tbaa !47
  br label %81

81:                                               ; preds = %76, %74, %77, %67, %65
  %82 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %83 = sext i32 %7 to i64
  %84 = getelementptr inbounds ptr, ptr %82, i64 %83
  store ptr %84, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Poll__poll(ptr noundef %0) #0 !prof !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.44) #6
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !54
  %24 = and i32 %23, 2097408
  %25 = icmp eq i32 %24, 256
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load ptr, ptr %21, align 8, !tbaa !61
  %28 = getelementptr inbounds %struct.xpviv, ptr %27, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !53
  br label %32

30:                                               ; preds = %17
  %31 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %21, i32 noundef 2) #6
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i64 [ %29, %26 ], [ %31, %30 ]
  %34 = trunc i64 %33 to i32
  %35 = add nsw i32 %14, -1
  %36 = sdiv i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 3
  %39 = tail call ptr @Perl_newSV(i64 noundef %38) #6
  %40 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  %42 = icmp sgt i32 %14, 2
  br i1 %42, label %43, label %93

43:                                               ; preds = %32
  %44 = add i32 %5, 2
  %45 = sext i32 %7 to i64
  %46 = tail call i32 @llvm.smax.i32(i32 %36, i32 1)
  %47 = zext nneg i32 %46 to i64
  br label %48

48:                                               ; preds = %43, %85
  %49 = phi i64 [ 1, %43 ], [ %89, %85 ]
  %50 = phi i64 [ 0, %43 ], [ %91, %85 ]
  %51 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %52 = getelementptr ptr, ptr %51, i64 %49
  %53 = getelementptr ptr, ptr %52, i64 %45
  %54 = load ptr, ptr %53, align 8, !tbaa !47
  %55 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !54
  %57 = and i32 %56, 2097408
  %58 = icmp eq i32 %57, 256
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load ptr, ptr %54, align 8, !tbaa !61
  %61 = getelementptr inbounds %struct.xpviv, ptr %60, i64 0, i32 4
  %62 = load i64, ptr %61, align 8, !tbaa !53
  br label %65

63:                                               ; preds = %48
  %64 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %54, i32 noundef 2) #6
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i64 [ %62, %59 ], [ %64, %63 ]
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds %struct.pollfd, ptr %41, i64 %50
  store i32 %67, ptr %68, align 4, !tbaa !62
  %69 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %70 = trunc i64 %49 to i32
  %71 = add i32 %44, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %69, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !47
  %75 = getelementptr inbounds %struct.sv, ptr %74, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !54
  %77 = and i32 %76, 2097408
  %78 = icmp eq i32 %77, 256
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load ptr, ptr %74, align 8, !tbaa !61
  %81 = getelementptr inbounds %struct.xpviv, ptr %80, i64 0, i32 4
  %82 = load i64, ptr %81, align 8, !tbaa !53
  br label %85

83:                                               ; preds = %65
  %84 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %74, i32 noundef 2) #6
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi i64 [ %82, %79 ], [ %84, %83 ]
  %87 = trunc i64 %86 to i16
  %88 = getelementptr inbounds %struct.pollfd, ptr %41, i64 %50, i32 1
  store i16 %87, ptr %88, align 4, !tbaa !65
  %89 = add nuw nsw i64 %49, 2
  %90 = getelementptr inbounds %struct.pollfd, ptr %41, i64 %50, i32 2
  store i16 0, ptr %90, align 2, !tbaa !66
  %91 = add nuw nsw i64 %50, 1
  %92 = icmp eq i64 %91, %47
  br i1 %92, label %93, label %48, !llvm.loop !67

93:                                               ; preds = %85, %32
  %94 = tail call i32 @Perl_my_poll(ptr noundef %41, i64 noundef %37, i32 noundef %34) #6
  %95 = icmp sgt i32 %94, -1
  %96 = icmp sgt i32 %14, 2
  %97 = and i1 %95, %96
  br i1 %97, label %98, label %125

98:                                               ; preds = %93
  %99 = add i32 %5, 2
  %100 = sext i32 %7 to i64
  %101 = tail call i32 @llvm.smax.i32(i32 %36, i32 1)
  %102 = zext nneg i32 %101 to i64
  br label %103

103:                                              ; preds = %98, %103
  %104 = phi i64 [ 1, %98 ], [ %122, %103 ]
  %105 = phi i64 [ 0, %98 ], [ %123, %103 ]
  %106 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %107 = getelementptr ptr, ptr %106, i64 %104
  %108 = getelementptr ptr, ptr %107, i64 %100
  %109 = load ptr, ptr %108, align 8, !tbaa !47
  %110 = getelementptr inbounds %struct.pollfd, ptr %41, i64 %105
  %111 = load i32, ptr %110, align 4, !tbaa !62
  %112 = sext i32 %111 to i64
  tail call void @Perl_sv_setiv(ptr noundef %109, i64 noundef %112) #6
  %113 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %114 = trunc i64 %104 to i32
  %115 = add i32 %99, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %113, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !47
  %119 = getelementptr inbounds %struct.pollfd, ptr %41, i64 %105, i32 2
  %120 = load i16, ptr %119, align 2, !tbaa !66
  %121 = sext i16 %120 to i64
  tail call void @Perl_sv_setiv(ptr noundef %118, i64 noundef %121) #6
  %122 = add nuw nsw i64 %104, 2
  %123 = add nuw nsw i64 %105, 1
  %124 = icmp eq i64 %123, %102
  br i1 %124, label %125, label %103, !llvm.loop !70

125:                                              ; preds = %103, %93
  %126 = icmp eq ptr %39, null
  br i1 %126, label %134, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 1
  %129 = load i32, ptr %128, align 8, !tbaa !56
  %130 = icmp ugt i32 %129, 1
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = add i32 %129, -1
  store i32 %132, ptr %128, align 8, !tbaa !56
  br label %134

133:                                              ; preds = %127
  tail call void @Perl_sv_free2(ptr noundef nonnull %39, i32 noundef %129) #6
  br label %134

134:                                              ; preds = %125, %131, %133
  %135 = sext i32 %94 to i64
  %136 = tail call ptr @Perl_newSViv(i64 noundef %135) #6
  %137 = tail call ptr @Perl_sv_2mortal(ptr noundef %136) #6
  %138 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %139 = getelementptr inbounds ptr, ptr %138, i64 %19
  store ptr %137, ptr %139, align 8, !tbaa !47
  %140 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %141 = getelementptr inbounds ptr, ptr %140, i64 %19
  store ptr %141, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Handle_blocking(ptr noundef %0) #0 !prof !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, -3
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.45) #6
  br label %18

18:                                               ; preds = %1, %17
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = tail call ptr @Perl_sv_2io(ptr noundef %22) #6
  %24 = getelementptr inbounds %struct.io, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = icmp slt i32 %14, 2
  br i1 %26, label %47, label %27

27:                                               ; preds = %18
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %29 = getelementptr ptr, ptr %28, i64 %8
  %30 = getelementptr ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !54
  %34 = and i32 %33, 2097408
  %35 = icmp eq i32 %34, 256
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load ptr, ptr %31, align 8, !tbaa !61
  %38 = getelementptr inbounds %struct.xpviv, ptr %37, i64 0, i32 4
  %39 = load i64, ptr %38, align 8, !tbaa !53
  br label %42

40:                                               ; preds = %27
  %41 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %31, i32 noundef 2) #6
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i64 [ %39, %36 ], [ %41, %40 ]
  %44 = and i64 %43, 4294967295
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %18, %42
  %48 = phi i32 [ %46, %42 ], [ 1, %18 ]
  %49 = icmp eq i32 %14, 1
  %50 = select i1 %49, i32 -1, i32 %48
  %51 = icmp eq ptr %25, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = tail call ptr @__errno_location() #7
  store i32 9, ptr %53, align 4, !tbaa !51
  br label %77

54:                                               ; preds = %47
  %55 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %25) #6
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = tail call ptr @__errno_location() #7
  store i32 9, ptr %58, align 4, !tbaa !51
  br label %77

59:                                               ; preds = %54
  %60 = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %55, i32 noundef 3, i32 noundef 0) #6
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = lshr i32 %60, 11
  %64 = and i32 %63, 1
  %65 = xor i32 %64, 1
  %66 = icmp eq i32 %50, 0
  %67 = or i32 %60, 2048
  %68 = icmp sgt i32 %50, 0
  %69 = and i32 %60, 2147481599
  %70 = select i1 %68, i32 %69, i32 %60
  %71 = select i1 %66, i32 %67, i32 %70
  %72 = icmp eq i32 %71, %60
  br i1 %72, label %77, label %73

73:                                               ; preds = %62
  %74 = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %55, i32 noundef 4, i32 noundef %71) #6
  %75 = icmp slt i32 %74, 0
  %76 = select i1 %75, i32 %74, i32 %65
  br label %77

77:                                               ; preds = %52, %57, %59, %62, %73
  %78 = phi i32 [ -1, %57 ], [ -1, %52 ], [ %60, %59 ], [ %76, %73 ], [ %65, %62 ]
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = zext nneg i32 %78 to i64
  %82 = tail call ptr @Perl_newSViv(i64 noundef %81) #6
  %83 = tail call ptr @Perl_sv_2mortal(ptr noundef %82) #6
  br label %84

84:                                               ; preds = %77, %80
  %85 = phi ptr [ %83, %80 ], [ @PL_sv_undef, %77 ]
  %86 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %87 = getelementptr inbounds ptr, ptr %86, i64 %20
  store ptr %85, ptr %87, align 8, !tbaa !47
  %88 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %89 = getelementptr inbounds ptr, ptr %88, i64 %20
  store ptr %89, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Handle_ungetc(ptr noundef %0) #0 !prof !46 {
  %2 = alloca [14 x i8], align 1
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %6 = load i32, ptr %4, align 4, !tbaa !51
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.46) #6
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = tail call ptr @Perl_sv_2io(ptr noundef %21) #6
  %23 = getelementptr inbounds %struct.io, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %26 = getelementptr ptr, ptr %25, i64 %9
  %27 = getelementptr ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = load ptr, ptr @PL_op, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 6
  %31 = load i8, ptr %30, align 1, !tbaa !71
  %32 = and i8 %31, 4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %17
  %35 = load ptr, ptr @PL_curpad, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !74
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  br label %42

40:                                               ; preds = %17
  %41 = tail call ptr @Perl_sv_newmortal() #6
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi ptr [ %39, %34 ], [ %41, %40 ]
  %44 = icmp eq ptr %24, null
  br i1 %44, label %122, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !54
  %48 = and i32 %47, -2147483392
  %49 = icmp eq i32 %48, 256
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = and i32 %47, 2097408
  %52 = icmp eq i32 %51, 256
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load ptr, ptr %28, align 8, !tbaa !61
  %55 = getelementptr inbounds %struct.xpviv, ptr %54, i64 0, i32 4
  %56 = load i64, ptr %55, align 8, !tbaa !53
  br label %59

57:                                               ; preds = %50
  %58 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %28, i32 noundef 2) #6
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i64 [ %56, %53 ], [ %58, %57 ]
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %59, %45
  %63 = load i32, ptr %46, align 4, !tbaa !54
  %64 = and i32 %63, 512
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %62
  %67 = and i32 %63, 2097664
  %68 = icmp eq i32 %67, 512
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load ptr, ptr %28, align 8, !tbaa !61
  %71 = getelementptr inbounds %struct.xpvnv, ptr %70, i64 0, i32 5
  %72 = load double, ptr %71, align 8, !tbaa !53
  br label %75

73:                                               ; preds = %66
  %74 = tail call double @Perl_sv_2nv_flags(ptr noundef %28, i32 noundef 2) #6
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi double [ %72, %69 ], [ %74, %73 ]
  %77 = fcmp olt double %76, 0.000000e+00
  br i1 %77, label %78, label %79

78:                                               ; preds = %59, %75
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47) #6
  br label %79

79:                                               ; preds = %78, %75, %62
  %80 = load i32, ptr %46, align 4, !tbaa !54
  %81 = and i32 %80, -2145386240
  %82 = icmp eq i32 %81, -2147483392
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load ptr, ptr %28, align 8, !tbaa !61
  %85 = getelementptr inbounds %struct.xpvuv, ptr %84, i64 0, i32 4
  %86 = load i64, ptr %85, align 8, !tbaa !53
  br label %89

87:                                               ; preds = %79
  %88 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %28, i32 noundef 2) #6
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi i64 [ %86, %83 ], [ %88, %87 ]
  %91 = icmp ult i64 %90, 128
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = icmp ult i64 %90, 256
  br i1 %93, label %94, label %100

94:                                               ; preds = %92
  %95 = tail call i32 @PerlIO_isutf8(ptr noundef nonnull %24) #6
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94, %89
  %98 = trunc i64 %90 to i32
  %99 = tail call i32 @PerlIO_ungetc(ptr noundef nonnull %24, i32 noundef %98) #6
  br label %119

100:                                              ; preds = %94, %92
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #6
  %101 = tail call i32 @PerlIO_isutf8(ptr noundef nonnull %24) #6
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #6
  br label %104

104:                                              ; preds = %103, %100
  %105 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %2, i64 noundef %90, i64 noundef 0) #6
  %106 = ptrtoint ptr %105 to i64
  %107 = ptrtoint ptr %2 to i64
  %108 = sub i64 %106, %107
  %109 = call i64 @Perl_PerlIO_unread(ptr noundef nonnull %24, ptr noundef nonnull %2, i64 noundef %108) #6
  %110 = icmp eq i64 %109, %108
  br i1 %110, label %111, label %118

111:                                              ; preds = %104
  %112 = call ptr @Perl_newSVuv(i64 noundef %90) #6
  %113 = call ptr @Perl_sv_2mortal(ptr noundef %112) #6
  %114 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %115 = getelementptr inbounds ptr, ptr %114, i64 %19
  store ptr %113, ptr %115, align 8, !tbaa !47
  %116 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %117 = getelementptr inbounds ptr, ptr %116, i64 %19
  store ptr %117, ptr @PL_stack_sp, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #6
  br label %119

118:                                              ; preds = %104
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #6
  br label %119

119:                                              ; preds = %111, %97, %118
  %120 = phi i32 [ -1, %111 ], [ %99, %97 ], [ -1, %118 ]
  %121 = phi i1 [ false, %111 ], [ true, %97 ], [ true, %118 ]
  br i1 %121, label %124, label %138

122:                                              ; preds = %42
  %123 = tail call ptr @__errno_location() #7
  store i32 22, ptr %123, align 4, !tbaa !51
  br label %124

124:                                              ; preds = %119, %122
  %125 = phi i32 [ %120, %119 ], [ -1, %122 ]
  %126 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %127 = getelementptr inbounds ptr, ptr %126, i64 %19
  %128 = sext i32 %125 to i64
  call void @Perl_sv_setiv(ptr noundef %43, i64 noundef %128) #6
  %129 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !54
  %131 = and i32 %130, 4194304
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %124
  %134 = call i32 @Perl_mg_set(ptr noundef %43) #6
  br label %135

135:                                              ; preds = %124, %133
  store ptr %43, ptr %127, align 8, !tbaa !47
  %136 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %137 = getelementptr inbounds ptr, ptr %136, i64 %19
  store ptr %137, ptr @PL_stack_sp, align 8, !tbaa !47
  br label %138

138:                                              ; preds = %119, %135
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Handle_error(ptr noundef %0) #0 !prof !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = tail call ptr @Perl_sv_2io(ptr noundef %20) #6
  %22 = getelementptr inbounds %struct.io, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = load ptr, ptr @PL_op, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 6
  %26 = load i8, ptr %25, align 1, !tbaa !71
  %27 = and i8 %26, 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %16
  %30 = load ptr, ptr @PL_curpad, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !74
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  br label %37

35:                                               ; preds = %16
  %36 = tail call ptr @Perl_sv_newmortal() #6
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %34, %29 ], [ %36, %35 ]
  %39 = icmp eq ptr %23, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %23) #6
  %42 = sext i32 %41 to i64
  br label %45

43:                                               ; preds = %37
  %44 = tail call ptr @__errno_location() #7
  store i32 22, ptr %44, align 4, !tbaa !51
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i64 [ %42, %40 ], [ -1, %43 ]
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  tail call void @Perl_sv_setiv(ptr noundef %38, i64 noundef %46) #6
  %48 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !54
  %50 = and i32 %49, 4194304
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = tail call i32 @Perl_mg_set(ptr noundef %38) #6
  br label %54

54:                                               ; preds = %45, %52
  %55 = getelementptr inbounds ptr, ptr %47, i64 %18
  store ptr %38, ptr %55, align 8, !tbaa !47
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %57 = getelementptr inbounds ptr, ptr %56, i64 %18
  store ptr %57, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Handle_clearerr(ptr noundef %0) #0 !prof !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = tail call ptr @Perl_sv_2io(ptr noundef %20) #6
  %22 = getelementptr inbounds %struct.io, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = load ptr, ptr @PL_op, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 6
  %26 = load i8, ptr %25, align 1, !tbaa !71
  %27 = and i8 %26, 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %16
  %30 = load ptr, ptr @PL_curpad, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !74
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  br label %37

35:                                               ; preds = %16
  %36 = tail call ptr @Perl_sv_newmortal() #6
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %34, %29 ], [ %36, %35 ]
  %39 = icmp eq ptr %23, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @Perl_PerlIO_clearerr(ptr noundef nonnull %23) #6
  br label %43

41:                                               ; preds = %37
  %42 = tail call ptr @__errno_location() #7
  store i32 22, ptr %42, align 4, !tbaa !51
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i64 [ 0, %40 ], [ -1, %41 ]
  %45 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  tail call void @Perl_sv_setiv(ptr noundef %38, i64 noundef %44) #6
  %46 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !54
  %48 = and i32 %47, 4194304
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = tail call i32 @Perl_mg_set(ptr noundef %38) #6
  br label %52

52:                                               ; preds = %43, %50
  %53 = getelementptr inbounds ptr, ptr %45, i64 %18
  store ptr %38, ptr %53, align 8, !tbaa !47
  %54 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %55 = getelementptr inbounds ptr, ptr %54, i64 %18
  store ptr %55, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Handle_untaint(ptr noundef %0) #0 !prof !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !71
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr @PL_curpad, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !74
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  br label %34

32:                                               ; preds = %16
  %33 = tail call ptr @Perl_sv_newmortal() #6
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %36 = tail call ptr @Perl_sv_2io(ptr noundef %20) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %36, align 8, !tbaa !75
  %40 = getelementptr inbounds %struct.xpvio, ptr %39, i64 0, i32 17
  %41 = load i8, ptr %40, align 1, !tbaa !77
  %42 = or i8 %41, 16
  store i8 %42, ptr %40, align 1, !tbaa !77
  br label %45

43:                                               ; preds = %34
  %44 = tail call ptr @__errno_location() #7
  store i32 22, ptr %44, align 4, !tbaa !51
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi i64 [ 0, %38 ], [ -1, %43 ]
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  tail call void @Perl_sv_setiv(ptr noundef %35, i64 noundef %46) #6
  %48 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !54
  %50 = and i32 %49, 4194304
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = tail call i32 @Perl_mg_set(ptr noundef %35) #6
  br label %54

54:                                               ; preds = %45, %52
  %55 = getelementptr inbounds ptr, ptr %47, i64 %18
  store ptr %35, ptr %55, align 8, !tbaa !47
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %57 = getelementptr inbounds ptr, ptr %56, i64 %18
  store ptr %57, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Handle_flush(ptr noundef %0) #0 !prof !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = tail call ptr @Perl_sv_2io(ptr noundef %20) #6
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = getelementptr inbounds %struct.xpvio, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %16
  %27 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %24) #6
  br label %30

28:                                               ; preds = %16
  %29 = tail call ptr @__errno_location() #7
  store i32 22, ptr %29, align 4, !tbaa !51
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ -1, %28 ]
  %32 = tail call ptr @Perl_sv_newmortal() #6
  switch i32 %31, label %34 [
    i32 -1, label %36
    i32 0, label %33
  ]

33:                                               ; preds = %30
  tail call void @Perl_sv_setpvn(ptr noundef %32, ptr noundef nonnull @.str.40, i64 noundef 10) #6
  br label %36

34:                                               ; preds = %30
  %35 = sext i32 %31 to i64
  tail call void @Perl_sv_setiv(ptr noundef %32, i64 noundef %35) #6
  br label %36

36:                                               ; preds = %30, %33, %34
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %38 = getelementptr inbounds ptr, ptr %37, i64 %18
  store ptr %32, ptr %38, align 8, !tbaa !47
  %39 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %40 = getelementptr inbounds ptr, ptr %39, i64 %18
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Handle_setbuf(ptr noundef %0) #0 !prof !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.49) #6
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = tail call ptr @Perl_sv_2io(ptr noundef %21) #6
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.xpvio, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.13) #6
  br label %28

28:                                               ; preds = %27, %17
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %30 = getelementptr inbounds ptr, ptr %29, i64 %19
  %31 = getelementptr inbounds ptr, ptr %30, i64 -1
  store ptr %31, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Handle_setvbuf(ptr nocapture readnone %0) #0 !prof !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 32
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.51) #6
  br label %15

15:                                               ; preds = %14, %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14) #6
  %16 = tail call ptr @Perl_sv_newmortal() #6
  tail call void @Perl_sv_setpvn(ptr noundef %16, ptr noundef nonnull @.str.40, i64 noundef 10) #6
  %17 = add nsw i32 %5, 1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  store ptr %16, ptr %20, align 8, !tbaa !47
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %22 = getelementptr inbounds ptr, ptr %21, i64 %19
  store ptr %22, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Handle_sync(ptr noundef %0) #0 !prof !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.52) #6
  br label %15

15:                                               ; preds = %14, %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.15) #6
  %16 = tail call ptr @Perl_sv_newmortal() #6
  tail call void @Perl_sv_setpvn(ptr noundef %16, ptr noundef nonnull @.str.40, i64 noundef 10) #6
  %17 = add nsw i32 %5, 1
  %18 = sext i32 %17 to i64
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  store ptr %16, ptr %20, align 8, !tbaa !47
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %22 = getelementptr inbounds ptr, ptr %21, i64 %18
  store ptr %22, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Handle__create_getline_subs(ptr noundef %0) #0 !prof !45 !PGOFuncName !80 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15, !prof !81

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.53) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !54
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %28, !prof !81

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  br label %30

28:                                               ; preds = %16
  %29 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %20, ptr noundef null, i32 noundef 2) #6
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %27, %25 ], [ %29, %28 ]
  %32 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_check, i64 0, i64 192), align 8, !tbaa !47
  store ptr @io_ck_lineseq, ptr getelementptr inbounds ([0 x ptr], ptr @PL_check, i64 0, i64 192), align 8, !tbaa !47
  %33 = tail call ptr @Perl_eval_pv(ptr noundef %31, i32 noundef 0) #6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !82

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !56
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 8, !tbaa !56
  br label %39

39:                                               ; preds = %30, %35
  store ptr %32, ptr getelementptr inbounds ([0 x ptr], ptr @PL_check, i64 0, i64 192), align 8, !tbaa !47
  %40 = tail call ptr @Perl_sv_2mortal(ptr noundef %33) #6
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %42 = getelementptr inbounds ptr, ptr %41, i64 %18
  store ptr %40, ptr %42, align 8, !tbaa !47
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %44 = getelementptr inbounds ptr, ptr %43, i64 %18
  store ptr %44, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_IO__Socket_sockatmark(ptr noundef %0) #0 !prof !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !51
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.54) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = tail call ptr @Perl_sv_2io(ptr noundef %20) #6
  %22 = getelementptr inbounds %struct.io, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = tail call i32 @Perl_PerlIO_fileno(ptr noundef %23) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = tail call ptr @__errno_location() #7
  store i32 9, ptr %27, align 4, !tbaa !51
  br label %29

28:                                               ; preds = %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.55) #6
  br label %29

29:                                               ; preds = %28, %26
  %30 = tail call ptr @Perl_sv_newmortal() #6
  br i1 %25, label %32, label %31

31:                                               ; preds = %29
  tail call void @Perl_sv_setpvn(ptr noundef %30, ptr noundef nonnull @.str.40, i64 noundef 10) #6
  br label %32

32:                                               ; preds = %31, %29
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %34 = getelementptr inbounds ptr, ptr %33, i64 %18
  store ptr %30, ptr %34, align 8, !tbaa !47
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %36 = getelementptr inbounds ptr, ptr %35, i64 %18
  store ptr %36, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2io(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare i32 @PerlIO_getpos(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare i32 @PerlIO_setpos(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @PerlIO_tmpfile() local_unnamed_addr #2

declare ptr @Perl_newGVgen_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_do_openn(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_stashpv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare i32 @Perl_my_poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_PerlIO_fileno(ptr noundef) local_unnamed_addr #2

declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PerlIO_isutf8(ptr noundef) local_unnamed_addr #2

declare i32 @PerlIO_ungetc(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @Perl_PerlIO_unread(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_PerlIO_error(ptr noundef) local_unnamed_addr #2

declare void @Perl_PerlIO_clearerr(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_PerlIO_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @io_ck_lineseq(ptr noundef readonly returned %0) #4 !prof !83 !PGOFuncName !84 {
  %2 = getelementptr inbounds %struct.binop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5, !prof !85

5:                                                ; preds = %1, %14
  %6 = phi ptr [ %16, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 511
  %10 = add nsw i16 %9, -193
  %11 = icmp ult i16 %10, 2
  br i1 %11, label %12, label %14, !prof !86

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 2
  store ptr @io_pp_nextstate, ptr %13, align 8, !tbaa !87
  br label %14

14:                                               ; preds = %5, %12
  %15 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !prof !88, !llvm.loop !89

18:                                               ; preds = %14, %1
  ret ptr %0
}

declare ptr @Perl_eval_pv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal ptr @io_pp_nextstate() #0 !prof !45 !PGOFuncName !90 {
  %1 = load ptr, ptr @PL_curcop, align 8, !tbaa !47
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 511
  %6 = zext nneg i16 %5 to i64
  %7 = getelementptr inbounds [0 x ptr], ptr @PL_ppaddr, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr %8() #6, !prof !91
  store ptr %1, ptr @PL_curcop, align 8, !tbaa !47
  ret ptr %9
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @boot_IO, ptr @Perl_xs_handshake, i64 1}
!36 = !{ptr @boot_IO, ptr @Perl_newXS_deffile, i64 13}
!37 = !{ptr @boot_IO, ptr @Perl_newXS_flags, i64 2}
!38 = !{ptr @boot_IO, ptr @Perl_gv_stashpvn, i64 2}
!39 = !{ptr @boot_IO, ptr @Perl_newSViv, i64 17}
!40 = !{ptr @boot_IO, ptr @Perl_newCONSTSUB, i64 17}
!41 = !{ptr @boot_IO, ptr @Perl_xs_boot_epilog, i64 1}
!42 = !{ptr @XS_IO__Handle__create_getline_subs, ptr @Perl_eval_pv, i64 1}
!43 = !{ptr @XS_IO__Handle__create_getline_subs, ptr @Perl_sv_2mortal, i64 1}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 1}
!46 = !{!"function_entry_count", i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !52, i64 0}
!52 = !{!"int", !49, i64 0}
!53 = !{!49, !49, i64 0}
!54 = !{!55, !52, i64 12}
!55 = !{!"sv", !48, i64 0, !52, i64 8, !52, i64 12, !49, i64 16}
!56 = !{!55, !52, i64 8}
!57 = !{!58, !48, i64 0}
!58 = !{!"gv", !48, i64 0, !52, i64 8, !52, i64 12, !49, i64 16}
!59 = !{!60, !52, i64 4}
!60 = !{!"hek", !52, i64 0, !52, i64 4, !49, i64 8}
!61 = !{!55, !48, i64 0}
!62 = !{!63, !52, i64 0}
!63 = !{!"pollfd", !52, i64 0, !64, i64 4, !64, i64 6}
!64 = !{!"short", !49, i64 0}
!65 = !{!63, !64, i64 4}
!66 = !{!63, !64, i64 6}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = distinct !{!70, !68, !69}
!71 = !{!72, !49, i64 35}
!72 = !{!"op", !48, i64 0, !48, i64 8, !48, i64 16, !73, i64 24, !52, i64 32, !52, i64 33, !52, i64 33, !52, i64 33, !52, i64 33, !52, i64 33, !52, i64 33, !52, i64 33, !49, i64 34, !49, i64 35}
!73 = !{!"long", !49, i64 0}
!74 = !{!72, !73, i64 24}
!75 = !{!76, !48, i64 0}
!76 = !{!"io", !48, i64 0, !52, i64 8, !52, i64 12, !49, i64 16}
!77 = !{!78, !49, i64 129}
!78 = !{!"xpvio", !48, i64 0, !49, i64 8, !73, i64 16, !49, i64 24, !49, i64 32, !48, i64 40, !49, i64 48, !73, i64 56, !73, i64 64, !73, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !49, i64 128, !49, i64 129}
!79 = !{!78, !48, i64 40}
!80 = !{!"dist/IO/IO.c;XS_IO__Handle__create_getline_subs"}
!81 = !{!"branch_weights", i32 1, i32 0}
!82 = !{!"branch_weights", i32 0, i32 1}
!83 = !{!"function_entry_count", i64 24}
!84 = !{!"dist/IO/IO.c;io_ck_lineseq"}
!85 = !{!"branch_weights", i32 1, i32 191}
!86 = !{!"branch_weights", i32 24, i32 24}
!87 = !{!72, !48, i64 16}
!88 = !{!"branch_weights", i32 191, i32 193}
!89 = distinct !{!89, !68, !69}
!90 = !{!"dist/IO/IO.c;io_pp_nextstate"}
!91 = !{!"VP", i32 0, i64 1, i64 6451252338101337386, i64 1}
