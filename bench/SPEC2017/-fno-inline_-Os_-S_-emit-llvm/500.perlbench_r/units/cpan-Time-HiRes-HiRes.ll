; ModuleID = 'cpan/Time-HiRes/HiRes.c'
source_filename = "cpan/Time-HiRes/HiRes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.timeval = type { i64, i64 }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon, ptr, %union.anon.0, %union.anon.1, %union.anon.2, ptr, %union.anon.3, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu, %union._xnvu }
%union.anon.7 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.gv = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu }
%union.anon.10 = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"cpan/Time-HiRes/HiRes.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Time::HiRes::constant\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Time::HiRes::usleep\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Time::HiRes::nanosleep\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Time::HiRes::sleep\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c";@\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Time::HiRes::ualarm\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Time::HiRes::alarm\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Time::HiRes::gettimeofday\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Time::HiRes::time\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Time::HiRes::clock_gettime\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c";$\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Time::HiRes::clock_getres\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Time::HiRes::clock_nanosleep\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"$$;$\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Time::HiRes::clock\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Time::HiRes::lstat\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Time::HiRes::stat\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [36 x i8] c"%s is not a valid Time::HiRes macro\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"Your vendor has not defined Time::HiRes macro %s, used\00", align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@.str.26 = private unnamed_addr constant [8 x i8] c"d_clock\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"d_ualar\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"d_uslee\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"d_hires_stat\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"TIMER_ABSTIME\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"CLOCK_HIGHRES\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"d_clock_nanosleep\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"CLOCK_THREAD_CPUTIME_ID\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"CLOCK_PROCESS_CPUTIME_ID\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"ITIMER_PROF\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"ITIMER_REAL\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"d_getitimer\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"d_setitimer\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"d_nanosleep\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"CLOCK_REALTIME\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"CLOCKS_PER_SEC\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"CLOCK_SOFTTIME\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"ITIMER_VIRTUAL\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"d_gettimeofday\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"d_clock_getres\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"CLOCK_TIMEOFDAY\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"CLOCK_MONOTONIC\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"ITIMER_REALPROF\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"d_clock_gettime\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"useconds\00", align 1
@.str.51 = private unnamed_addr constant [56 x i8] c"Time::HiRes::usleep(%g): negative time not invented yet\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"nsec\00", align 1
@.str.53 = private unnamed_addr constant [57 x i8] c"Time::HiRes::nanosleep(): unimplemented in this platform\00", align 1
@.str.54 = private unnamed_addr constant [79 x i8] c"Time::HiRes::sleep(%g): internal error: useconds < 0 (unsigned %lu signed %ld)\00", align 1
@.str.55 = private unnamed_addr constant [55 x i8] c"Time::HiRes::sleep(%g): negative time not invented yet\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"useconds, interval=0\00", align 1
@.str.57 = private unnamed_addr constant [54 x i8] c"Time::HiRes::ualarm(): unimplemented in this platform\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"seconds, interval=0\00", align 1
@.str.59 = private unnamed_addr constant [53 x i8] c"Time::HiRes::alarm(): unimplemented in this platform\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"clock_id = 0\00", align 1
@.str.61 = private unnamed_addr constant [61 x i8] c"Time::HiRes::clock_gettime(): unimplemented in this platform\00", align 1
@.str.62 = private unnamed_addr constant [60 x i8] c"Time::HiRes::clock_getres(): unimplemented in this platform\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"clock_id, nsec, flags = 0\00", align 1
@.str.64 = private unnamed_addr constant [63 x i8] c"Time::HiRes::clock_nanosleep(): unimplemented in this platform\00", align 1
@.str.65 = private unnamed_addr constant [53 x i8] c"Time::HiRes::clock(): unimplemented in this platform\00", align 1
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_laststatval = external local_unnamed_addr global i32, align 4
@PL_ppaddr = external local_unnamed_addr global [0 x ptr], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @hrt_usleep(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  store i64 %0, ptr %3, align 8, !tbaa !10
  %4 = call i32 @select(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_Time__HiRes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Time__HiRes_constant, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #10
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Time__HiRes_usleep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #10
  %5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_Time__HiRes_nanosleep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #10
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Time__HiRes_sleep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #10
  %7 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Time__HiRes_ualarm, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 0) #10
  %8 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Time__HiRes_alarm, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 0) #10
  %9 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_Time__HiRes_gettimeofday, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #10
  %10 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_Time__HiRes_time, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #10
  %11 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Time__HiRes_clock_gettime, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 0) #10
  %12 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.16, ptr noundef nonnull @XS_Time__HiRes_clock_getres, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 0) #10
  %13 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.17, ptr noundef nonnull @XS_Time__HiRes_clock_nanosleep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef 0) #10
  %14 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.19, ptr noundef nonnull @XS_Time__HiRes_clock, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #10
  %15 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.20, ptr noundef nonnull @XS_Time__HiRes_stat, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 0) #10
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.xpvcv, ptr %16, i64 0, i32 5
  store i32 1, ptr %17, align 8, !tbaa !15
  %18 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.21, ptr noundef nonnull @XS_Time__HiRes_stat, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 0) #10
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.xpvcv, ptr %19, i64 0, i32 5
  store i32 0, ptr %20, align 8, !tbaa !15
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #10
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Time__HiRes_constant(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = ptrtoint ptr %4 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.22) #10
  br label %17

17:                                               ; preds = %16, %1
  %18 = shl i64 %13, 29
  %19 = ashr i64 %18, 32
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds ptr, ptr %4, i64 %20
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !18
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr @PL_curpad, align 8, !tbaa !16
  %29 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !20
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  br label %35

33:                                               ; preds = %17
  %34 = tail call ptr @Perl_sv_newmortal() #10
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %38 = getelementptr ptr, ptr %37, i64 %9
  %39 = getelementptr ptr, ptr %38, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !16
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !21
  %43 = and i32 %42, 2098176
  %44 = icmp eq i32 %43, 1024
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load ptr, ptr %40, align 8, !tbaa !23
  %47 = getelementptr inbounds %struct.xpv, ptr %46, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !24
  store i64 %48, ptr %2, align 8, !tbaa !26
  %49 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !15
  br label %54

51:                                               ; preds = %35
  %52 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %40, ptr noundef nonnull %2, i32 noundef 2) #10
  %53 = load i64, ptr %2, align 8, !tbaa !26
  br label %54

54:                                               ; preds = %51, %45
  %55 = phi i64 [ %48, %45 ], [ %53, %51 ]
  %56 = phi ptr [ %50, %45 ], [ %52, %51 ]
  %57 = call fastcc i32 @constant(ptr noundef %56, i64 noundef %55, ptr noundef nonnull %3) #11, !range !27
  switch i32 %57, label %86 [
    i32 1, label %58
    i32 2, label %62
    i32 3, label %66
  ]

58:                                               ; preds = %54
  %59 = call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.23, ptr noundef %56) #10
  %60 = call ptr @Perl_sv_2mortal(ptr noundef %59) #10
  %61 = getelementptr inbounds ptr, ptr %21, i64 1
  store ptr %60, ptr %61, align 8, !tbaa !16
  br label %87

62:                                               ; preds = %54
  %63 = call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.24, ptr noundef %56) #10
  %64 = call ptr @Perl_sv_2mortal(ptr noundef %63) #10
  %65 = getelementptr inbounds ptr, ptr %21, i64 1
  store ptr %64, ptr %65, align 8, !tbaa !16
  br label %87

66:                                               ; preds = %54
  %67 = load ptr, ptr @PL_stack_max, align 8, !tbaa !16
  %68 = ptrtoint ptr %67 to i64
  %69 = ptrtoint ptr %21 to i64
  %70 = sub i64 %68, %69
  %71 = icmp slt i64 %70, 8
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call ptr @Perl_stack_grow(ptr noundef %21, ptr noundef %21, i64 noundef 1) #10
  br label %74

74:                                               ; preds = %66, %72
  %75 = phi ptr [ %73, %72 ], [ %21, %66 ]
  %76 = getelementptr inbounds ptr, ptr %75, i64 1
  store ptr @PL_sv_undef, ptr %76, align 8, !tbaa !16
  %77 = load i64, ptr %3, align 8, !tbaa !26
  call void @Perl_sv_setiv(ptr noundef %36, i64 noundef %77) #10
  %78 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !21
  %80 = and i32 %79, 4194304
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %74
  %83 = call i32 @Perl_mg_set(ptr noundef nonnull %36) #10
  br label %84

84:                                               ; preds = %74, %82
  %85 = getelementptr inbounds ptr, ptr %75, i64 2
  store ptr %36, ptr %85, align 8, !tbaa !16
  br label %87

86:                                               ; preds = %54
  unreachable

87:                                               ; preds = %84, %62, %58
  %88 = phi ptr [ %85, %84 ], [ %65, %62 ], [ %61, %58 ]
  store ptr %88, ptr @PL_stack_sp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Time__HiRes_usleep(ptr noundef %0) #0 {
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.50) #10
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %8, %1 ]
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !21
  %27 = and i32 %26, 2097664
  %28 = icmp eq i32 %27, 512
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load ptr, ptr %24, align 8, !tbaa !23
  %31 = getelementptr inbounds %struct.xpvnv, ptr %30, i64 0, i32 5
  %32 = load double, ptr %31, align 8, !tbaa !15
  br label %35

33:                                               ; preds = %20
  %34 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %24, i32 noundef 2) #10
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi double [ %32, %29 ], [ %34, %33 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %37 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %38 = getelementptr inbounds %struct.op, ptr %37, i64 0, i32 6
  %39 = load i8, ptr %38, align 1, !tbaa !18
  %40 = and i8 %39, 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr @PL_curpad, align 8, !tbaa !16
  %44 = getelementptr inbounds %struct.op, ptr %37, i64 0, i32 3
  %45 = load i64, ptr %44, align 8, !tbaa !20
  %46 = getelementptr inbounds ptr, ptr %43, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !16
  br label %50

48:                                               ; preds = %35
  %49 = tail call ptr @Perl_sv_newmortal() #10
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi ptr [ %47, %42 ], [ %49, %48 ]
  %52 = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #10
  %53 = icmp sgt i32 %16, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = fcmp ult double %36, 1.000000e+06
  br i1 %55, label %65, label %56

56:                                               ; preds = %54
  %57 = fdiv double %36, 1.000000e+06
  %58 = fptosi double %57 to i64
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = trunc i64 %58 to i32
  %62 = tail call i32 @sleep(i32 noundef %61) #10
  %63 = sitofp i64 %58 to double
  %64 = tail call double @llvm.fmuladd.f64(double %63, double -1.000000e+06, double %36)
  br label %68

65:                                               ; preds = %54
  %66 = fcmp olt double %36, 0.000000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.51, double noundef %36) #10
  br label %68

68:                                               ; preds = %56, %60, %65, %67
  %69 = phi double [ %36, %67 ], [ %36, %65 ], [ %64, %60 ], [ %36, %56 ]
  %70 = fptoui double %69 to i32
  %71 = zext i32 %70 to i64
  tail call void @hrt_usleep(i64 noundef %71) #11
  br label %74

72:                                               ; preds = %50
  %73 = tail call i32 @sleep(i32 noundef -1) #10
  br label %74

74:                                               ; preds = %72, %68
  %75 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #10
  %76 = load i64, ptr %3, align 8, !tbaa !5
  %77 = load i64, ptr %2, align 8, !tbaa !5
  %78 = sub nsw i64 %76, %77
  %79 = sitofp i64 %78 to double
  %80 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !10
  %82 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !10
  %84 = sub nsw i64 %81, %83
  %85 = sitofp i64 %84 to double
  %86 = tail call double @llvm.fmuladd.f64(double %79, double 1.000000e+06, double %85)
  %87 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  tail call void @Perl_sv_setnv(ptr noundef %51, double noundef %86) #10
  %88 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !21
  %90 = and i32 %89, 4194304
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %74
  %93 = tail call i32 @Perl_mg_set(ptr noundef nonnull %51) #10
  br label %94

94:                                               ; preds = %74, %92
  %95 = getelementptr inbounds ptr, ptr %87, i64 %22
  store ptr %51, ptr %95, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  %96 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %97 = getelementptr inbounds ptr, ptr %96, i64 %22
  store ptr %97, ptr @PL_stack_sp, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Time__HiRes_nanosleep(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %5 = load i32, ptr %3, align 4, !tbaa !17
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.52) #10
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !16
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !21
  %24 = and i32 %23, 2097664
  %25 = icmp eq i32 %24, 512
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %21, i32 noundef 2) #10
  br label %28

28:                                               ; preds = %17, %26
  %29 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 6
  %31 = load i8, ptr %30, align 1, !tbaa !18
  %32 = and i8 %31, 4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr @PL_curpad, align 8, !tbaa !16
  %36 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !20
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !16
  br label %42

40:                                               ; preds = %28
  %41 = tail call ptr @Perl_sv_newmortal() #10
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi ptr [ %39, %34 ], [ %41, %40 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.53) #10
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  tail call void @Perl_sv_setnv(ptr noundef %43, double noundef 0.000000e+00) #10
  %45 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !21
  %47 = and i32 %46, 4194304
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = tail call i32 @Perl_mg_set(ptr noundef nonnull %43) #10
  br label %51

51:                                               ; preds = %42, %49
  %52 = getelementptr inbounds ptr, ptr %44, i64 %19
  store ptr %43, ptr %52, align 8, !tbaa !16
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %54 = getelementptr inbounds ptr, ptr %53, i64 %19
  store ptr %54, ptr @PL_stack_sp, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Time__HiRes_sleep(ptr nocapture readnone %0) #0 {
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %17 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %18 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 6
  %19 = load i8, ptr %18, align 1, !tbaa !18
  %20 = and i8 %19, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load ptr, ptr @PL_curpad, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !20
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  br label %30

28:                                               ; preds = %1
  %29 = tail call ptr @Perl_sv_newmortal() #10
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %32 = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #10
  %33 = icmp sgt i32 %16, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %36 = sext i32 %9 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !21
  %41 = and i32 %40, 2097664
  %42 = icmp eq i32 %41, 512
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load ptr, ptr %38, align 8, !tbaa !23
  %45 = getelementptr inbounds %struct.xpvnv, ptr %44, i64 0, i32 5
  %46 = load double, ptr %45, align 8, !tbaa !15
  br label %49

47:                                               ; preds = %34
  %48 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %38, i32 noundef 2) #10
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi double [ %46, %43 ], [ %48, %47 ]
  %51 = fcmp ult double %50, 0.000000e+00
  br i1 %51, label %66, label %52

52:                                               ; preds = %49
  %53 = fptoui double %50 to i64
  %54 = uitofp i64 %53 to double
  %55 = fsub double %50, %54
  %56 = fmul double %55, 1.000000e+06
  %57 = fptoui double %56 to i64
  %58 = fcmp ult double %50, 1.000000e+00
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = fptoui double %50 to i32
  %61 = tail call i32 @sleep(i32 noundef %60) #10
  br label %62

62:                                               ; preds = %59, %52
  %63 = icmp slt i64 %57, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.54, double noundef %50, i64 noundef %57, i64 noundef %57) #10
  br label %65

65:                                               ; preds = %64, %62
  tail call void @hrt_usleep(i64 noundef %57) #11
  br label %69

66:                                               ; preds = %49
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55, double noundef %50) #10
  br label %69

67:                                               ; preds = %30
  %68 = tail call i32 @sleep(i32 noundef -1) #10
  br label %69

69:                                               ; preds = %65, %66, %67
  %70 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #10
  %71 = load i64, ptr %3, align 8, !tbaa !5
  %72 = load i64, ptr %2, align 8, !tbaa !5
  %73 = sub nsw i64 %71, %72
  %74 = sitofp i64 %73 to double
  %75 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !10
  %77 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !10
  %79 = sub nsw i64 %76, %78
  %80 = sitofp i64 %79 to double
  %81 = tail call double @llvm.fmuladd.f64(double %80, double 0x3EB0C6F7A0B5ED8D, double %74)
  %82 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  tail call void @Perl_sv_setnv(ptr noundef %31, double noundef %81) #10
  %83 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !21
  %85 = and i32 %84, 4194304
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %69
  %88 = tail call i32 @Perl_mg_set(ptr noundef nonnull %31) #10
  br label %89

89:                                               ; preds = %69, %87
  %90 = sext i32 %9 to i64
  %91 = getelementptr inbounds ptr, ptr %82, i64 %90
  store ptr %31, ptr %91, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  %92 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %93 = getelementptr inbounds ptr, ptr %92, i64 %90
  store ptr %93, ptr @PL_stack_sp, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Time__HiRes_ualarm(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %5 = load i32, ptr %3, align 4, !tbaa !17
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
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
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #10
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  br label %19

19:                                               ; preds = %1, %17
  %20 = phi ptr [ %6, %1 ], [ %18, %17 ]
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !21
  %26 = and i32 %25, 2097408
  %27 = icmp eq i32 %26, 256
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %23, i32 noundef 2) #10
  br label %30

30:                                               ; preds = %19, %28
  %31 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.op, ptr %31, i64 0, i32 6
  %33 = load i8, ptr %32, align 1, !tbaa !18
  %34 = and i8 %33, 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr @PL_curpad, align 8, !tbaa !16
  %38 = getelementptr inbounds %struct.op, ptr %31, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !20
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !16
  br label %44

42:                                               ; preds = %30
  %43 = tail call ptr @Perl_sv_newmortal() #10
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi ptr [ %41, %36 ], [ %43, %42 ]
  %46 = icmp slt i32 %14, 2
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %49 = getelementptr ptr, ptr %48, i64 %8
  %50 = getelementptr ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !16
  %52 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !21
  %54 = and i32 %53, 2097408
  %55 = icmp eq i32 %54, 256
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %51, i32 noundef 2) #10
  br label %58

58:                                               ; preds = %56, %47, %44
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.57) #10
  %59 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  tail call void @Perl_sv_setiv(ptr noundef %45, i64 noundef -1) #10
  %60 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !21
  %62 = and i32 %61, 4194304
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = tail call i32 @Perl_mg_set(ptr noundef nonnull %45) #10
  br label %66

66:                                               ; preds = %58, %64
  %67 = getelementptr inbounds ptr, ptr %59, i64 %21
  store ptr %45, ptr %67, align 8, !tbaa !16
  %68 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %69 = getelementptr inbounds ptr, ptr %68, i64 %21
  store ptr %69, ptr @PL_stack_sp, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Time__HiRes_alarm(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %5 = load i32, ptr %3, align 4, !tbaa !17
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
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
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.58) #10
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  br label %19

19:                                               ; preds = %1, %17
  %20 = phi ptr [ %6, %1 ], [ %18, %17 ]
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !21
  %26 = and i32 %25, 2097664
  %27 = icmp eq i32 %26, 512
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %23, i32 noundef 2) #10
  br label %30

30:                                               ; preds = %19, %28
  %31 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.op, ptr %31, i64 0, i32 6
  %33 = load i8, ptr %32, align 1, !tbaa !18
  %34 = and i8 %33, 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr @PL_curpad, align 8, !tbaa !16
  %38 = getelementptr inbounds %struct.op, ptr %31, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !20
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !16
  br label %44

42:                                               ; preds = %30
  %43 = tail call ptr @Perl_sv_newmortal() #10
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi ptr [ %41, %36 ], [ %43, %42 ]
  %46 = icmp slt i32 %14, 2
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %49 = getelementptr ptr, ptr %48, i64 %8
  %50 = getelementptr ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !16
  %52 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !21
  %54 = and i32 %53, 2097664
  %55 = icmp eq i32 %54, 512
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %51, i32 noundef 2) #10
  br label %58

58:                                               ; preds = %56, %47, %44
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.59) #10
  %59 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  tail call void @Perl_sv_setnv(ptr noundef %45, double noundef 0.000000e+00) #10
  %60 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !21
  %62 = and i32 %61, 4194304
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = tail call i32 @Perl_mg_set(ptr noundef nonnull %45) #10
  br label %66

66:                                               ; preds = %58, %64
  %67 = getelementptr inbounds ptr, ptr %59, i64 %21
  store ptr %45, ptr %67, align 8, !tbaa !16
  %68 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %69 = getelementptr inbounds ptr, ptr %68, i64 %21
  store ptr %69, ptr @PL_stack_sp, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Time__HiRes_gettimeofday(ptr noundef %0) #0 {
  %2 = alloca %struct.timeval, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %6 = load i32, ptr %4, align 4, !tbaa !17
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.12) #10
  br label %16

16:                                               ; preds = %15, %1
  %17 = shl i64 %12, 29
  %18 = ashr i64 %17, 32
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds ptr, ptr %3, i64 %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  %21 = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %16
  %24 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %25 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 5
  %26 = load i8, ptr %25, align 2, !tbaa !28
  %27 = and i8 %26, 3
  switch i8 %27, label %50 [
    i8 0, label %28
    i8 3, label %31
  ]

28:                                               ; preds = %23
  %29 = tail call i32 @Perl_dowantarray() #10
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %50

31:                                               ; preds = %23, %28
  %32 = load ptr, ptr @PL_stack_max, align 8, !tbaa !16
  %33 = ptrtoint ptr %32 to i64
  %34 = ptrtoint ptr %20 to i64
  %35 = sub i64 %33, %34
  %36 = icmp slt i64 %35, 16
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = tail call ptr @Perl_stack_grow(ptr noundef %20, ptr noundef %20, i64 noundef 2) #10
  br label %39

39:                                               ; preds = %31, %37
  %40 = phi ptr [ %38, %37 ], [ %20, %31 ]
  %41 = load i64, ptr %2, align 8, !tbaa !5
  %42 = tail call ptr @Perl_newSViv(i64 noundef %41) #10
  %43 = tail call ptr @Perl_sv_2mortal(ptr noundef %42) #10
  %44 = getelementptr inbounds ptr, ptr %40, i64 1
  store ptr %43, ptr %44, align 8, !tbaa !16
  %45 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !10
  %47 = tail call ptr @Perl_newSViv(i64 noundef %46) #10
  %48 = tail call ptr @Perl_sv_2mortal(ptr noundef %47) #10
  %49 = getelementptr inbounds ptr, ptr %40, i64 2
  store ptr %48, ptr %49, align 8, !tbaa !16
  br label %70

50:                                               ; preds = %23, %28
  %51 = load ptr, ptr @PL_stack_max, align 8, !tbaa !16
  %52 = ptrtoint ptr %51 to i64
  %53 = ptrtoint ptr %20 to i64
  %54 = sub i64 %52, %53
  %55 = icmp slt i64 %54, 8
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = tail call ptr @Perl_stack_grow(ptr noundef %20, ptr noundef %20, i64 noundef 1) #10
  br label %58

58:                                               ; preds = %50, %56
  %59 = phi ptr [ %57, %56 ], [ %20, %50 ]
  %60 = load i64, ptr %2, align 8, !tbaa !5
  %61 = sitofp i64 %60 to double
  %62 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !10
  %64 = sitofp i64 %63 to double
  %65 = fdiv double %64, 1.000000e+06
  %66 = fadd double %65, %61
  %67 = tail call ptr @Perl_newSVnv(double noundef %66) #10
  %68 = tail call ptr @Perl_sv_2mortal(ptr noundef %67) #10
  %69 = getelementptr inbounds ptr, ptr %59, i64 1
  store ptr %68, ptr %69, align 8, !tbaa !16
  br label %70

70:                                               ; preds = %39, %58, %16
  %71 = phi ptr [ %49, %39 ], [ %69, %58 ], [ %20, %16 ]
  store ptr %71, ptr @PL_stack_sp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Time__HiRes_time(ptr noundef %0) #0 {
  %2 = alloca %struct.timeval, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %6 = load i32, ptr %4, align 4, !tbaa !17
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.12) #10
  br label %16

16:                                               ; preds = %15, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  %17 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %18 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 6
  %19 = load i8, ptr %18, align 1, !tbaa !18
  %20 = and i8 %19, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr @PL_curpad, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !20
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  br label %30

28:                                               ; preds = %16
  %29 = tail call ptr @Perl_sv_newmortal() #10
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %32 = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i64, ptr %2, align 8, !tbaa !5
  %36 = sitofp i64 %35 to double
  %37 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !10
  %39 = sitofp i64 %38 to double
  %40 = fdiv double %39, 1.000000e+06
  %41 = fadd double %40, %36
  br label %42

42:                                               ; preds = %30, %34
  %43 = phi double [ %41, %34 ], [ -1.000000e+00, %30 ]
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  tail call void @Perl_sv_setnv(ptr noundef %31, double noundef %43) #10
  %45 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !21
  %47 = and i32 %46, 4194304
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = tail call i32 @Perl_mg_set(ptr noundef nonnull %31) #10
  br label %51

51:                                               ; preds = %42, %49
  %52 = add nsw i32 %6, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %44, i64 %53
  store ptr %31, ptr %54, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %56 = getelementptr inbounds ptr, ptr %55, i64 %53
  store ptr %56, ptr @PL_stack_sp, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Time__HiRes_clock_gettime(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %5 = load i32, ptr %3, align 4, !tbaa !17
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.60) #10
  br label %17

17:                                               ; preds = %1, %16
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !18
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @PL_curpad, align 8, !tbaa !16
  %25 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !20
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  br label %31

29:                                               ; preds = %17
  %30 = tail call ptr @Perl_sv_newmortal() #10
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %33 = icmp slt i32 %14, 1
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %36 = sext i32 %7 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !21
  %41 = and i32 %40, 2097408
  %42 = icmp eq i32 %41, 256
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %38, i32 noundef 2) #10
  br label %45

45:                                               ; preds = %43, %34, %31
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.61) #10
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  tail call void @Perl_sv_setnv(ptr noundef %32, double noundef 0.000000e+00) #10
  %47 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !21
  %49 = and i32 %48, 4194304
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = tail call i32 @Perl_mg_set(ptr noundef nonnull %32) #10
  br label %53

53:                                               ; preds = %45, %51
  %54 = sext i32 %7 to i64
  %55 = getelementptr inbounds ptr, ptr %46, i64 %54
  store ptr %32, ptr %55, align 8, !tbaa !16
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %57 = getelementptr inbounds ptr, ptr %56, i64 %54
  store ptr %57, ptr @PL_stack_sp, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Time__HiRes_clock_getres(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %5 = load i32, ptr %3, align 4, !tbaa !17
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.60) #10
  br label %17

17:                                               ; preds = %1, %16
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !18
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @PL_curpad, align 8, !tbaa !16
  %25 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !20
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  br label %31

29:                                               ; preds = %17
  %30 = tail call ptr @Perl_sv_newmortal() #10
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %33 = icmp slt i32 %14, 1
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %36 = sext i32 %7 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !21
  %41 = and i32 %40, 2097408
  %42 = icmp eq i32 %41, 256
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %38, i32 noundef 2) #10
  br label %45

45:                                               ; preds = %43, %34, %31
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.62) #10
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  tail call void @Perl_sv_setnv(ptr noundef %32, double noundef 0.000000e+00) #10
  %47 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !21
  %49 = and i32 %48, 4194304
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = tail call i32 @Perl_mg_set(ptr noundef nonnull %32) #10
  br label %53

53:                                               ; preds = %45, %51
  %54 = sext i32 %7 to i64
  %55 = getelementptr inbounds ptr, ptr %46, i64 %54
  store ptr %32, ptr %55, align 8, !tbaa !16
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %57 = getelementptr inbounds ptr, ptr %56, i64 %54
  store ptr %57, ptr @PL_stack_sp, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Time__HiRes_clock_nanosleep(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %5 = load i32, ptr %3, align 4, !tbaa !17
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, -4
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.63) #10
  br label %17

17:                                               ; preds = %1, %16
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !18
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @PL_curpad, align 8, !tbaa !16
  %25 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !20
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  br label %31

29:                                               ; preds = %17
  %30 = tail call ptr @Perl_sv_newmortal() #10
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %28, %23 ], [ %30, %29 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.64) #10
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  tail call void @Perl_sv_setnv(ptr noundef %32, double noundef 0.000000e+00) #10
  %34 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !21
  %36 = and i32 %35, 4194304
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = tail call i32 @Perl_mg_set(ptr noundef nonnull %32) #10
  br label %40

40:                                               ; preds = %31, %38
  %41 = add nsw i32 %5, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %33, i64 %42
  store ptr %32, ptr %43, align 8, !tbaa !16
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %45 = getelementptr inbounds ptr, ptr %44, i64 %42
  store ptr %45, ptr @PL_stack_sp, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Time__HiRes_clock(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %5 = load i32, ptr %3, align 4, !tbaa !17
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.12) #10
  br label %15

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 6
  %18 = load i8, ptr %17, align 1, !tbaa !18
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @PL_curpad, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !20
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  br label %29

27:                                               ; preds = %15
  %28 = tail call ptr @Perl_sv_newmortal() #10
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %26, %21 ], [ %28, %27 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.65) #10
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  tail call void @Perl_sv_setnv(ptr noundef %30, double noundef 0.000000e+00) #10
  %32 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !21
  %34 = and i32 %33, 4194304
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = tail call i32 @Perl_mg_set(ptr noundef nonnull %30) #10
  br label %38

38:                                               ; preds = %29, %36
  %39 = add nsw i32 %5, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %31, i64 %40
  store ptr %30, ptr %41, align 8, !tbaa !16
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %43 = getelementptr inbounds ptr, ptr %42, i64 %40
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Time__HiRes_stat(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.op, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  %7 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %8 = getelementptr inbounds i32, ptr %7, i64 -1
  store ptr %8, ptr @PL_markstack_ptr, align 8, !tbaa !16
  %9 = load i32, ptr %7, align 4, !tbaa !17
  %10 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %11 = add nsw i32 %9, 1
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = ptrtoint ptr %6 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = load ptr, ptr %0, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !15
  %20 = shl i64 %16, 29
  %21 = ashr i64 %20, 32
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds ptr, ptr %6, i64 %22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #9
  %24 = load ptr, ptr @PL_stack_max, align 8, !tbaa !16
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %23 to i64
  %27 = sub i64 %25, %26
  %28 = icmp slt i64 %27, 8
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = tail call ptr @Perl_stack_grow(ptr noundef %23, ptr noundef %23, i64 noundef 1) #10
  br label %31

31:                                               ; preds = %1, %29
  %32 = phi ptr [ %30, %29 ], [ %23, %1 ]
  %33 = and i64 %16, 34359738360
  %34 = icmp eq i64 %33, 8
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %37 = sext i32 %11 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  br label %49

39:                                               ; preds = %31
  %40 = load ptr, ptr @PL_defgv, align 8, !tbaa !16
  %41 = getelementptr inbounds %struct.gv, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !15
  %43 = load ptr, ptr %42, align 8, !tbaa !29
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %40, i32 noundef 0) #10
  %47 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !15
  br label %49

49:                                               ; preds = %45, %39, %35
  %50 = phi ptr [ %38, %35 ], [ %48, %45 ], [ %42, %39 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !16
  %52 = tail call ptr @Perl_newSVsv(ptr noundef %51) #10
  %53 = tail call ptr @Perl_sv_2mortal(ptr noundef %52) #10
  %54 = getelementptr inbounds ptr, ptr %32, i64 1
  store ptr %53, ptr %54, align 8, !tbaa !16
  store ptr %54, ptr @PL_stack_sp, align 8, !tbaa !16
  tail call void @Perl_push_scope() #10
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !17
  %55 = load ptr, ptr @PL_op, align 8, !tbaa !16
  tail call void @Perl_save_pushptr(ptr noundef %55, i32 noundef 18) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %56 = icmp eq i32 %19, 0
  %57 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %58 = select i1 %56, i16 265, i16 264
  store i16 %58, ptr %57, align 8
  %59 = zext nneg i16 %58 to i64
  %60 = getelementptr inbounds [0 x ptr], ptr @PL_ppaddr, i64 0, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !16
  %62 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !31
  %63 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %64 = getelementptr inbounds %struct.op, ptr %63, i64 0, i32 5
  %65 = load i8, ptr %64, align 2, !tbaa !28
  %66 = and i8 %65, 3
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %49
  %69 = zext nneg i8 %66 to i32
  br label %72

70:                                               ; preds = %49
  %71 = tail call i32 @Perl_block_gimme() #10
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %89, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr @PL_op, align 8, !tbaa !16
  %77 = getelementptr inbounds %struct.op, ptr %76, i64 0, i32 5
  %78 = load i8, ptr %77, align 2, !tbaa !28
  %79 = and i8 %78, 3
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = zext nneg i8 %79 to i32
  br label %85

83:                                               ; preds = %75
  %84 = tail call i32 @Perl_block_gimme() #10
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = icmp eq i32 %86, 2
  %88 = select i1 %87, i8 2, i8 1
  br label %89

89:                                               ; preds = %72, %85
  %90 = phi i8 [ %88, %85 ], [ 3, %72 ]
  %91 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  store i8 %90, ptr %91, align 2, !tbaa !28
  store ptr %2, ptr @PL_op, align 8, !tbaa !16
  %92 = call ptr %61() #10
  %93 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !16
  call void @Perl_pop_scope() #10
  %94 = getelementptr inbounds ptr, ptr %93, i64 1
  %95 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %96 = sext i32 %11 to i64
  %97 = getelementptr inbounds ptr, ptr %95, i64 %96
  %98 = ptrtoint ptr %94 to i64
  %99 = ptrtoint ptr %97 to i64
  %100 = sub i64 %98, %99
  %101 = and i64 %100, 34359738360
  %102 = icmp eq i64 %101, 104
  br i1 %102, label %103, label %190

103:                                              ; preds = %89
  %104 = add nsw i32 %9, 9
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %95, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !16
  %108 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 2
  %109 = load i32, ptr %108, align 4, !tbaa !21
  %110 = and i32 %109, -2145386240
  %111 = icmp eq i32 %110, -2147483392
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load ptr, ptr %107, align 8, !tbaa !23
  %114 = getelementptr inbounds %struct.xpvuv, ptr %113, i64 0, i32 4
  %115 = load i64, ptr %114, align 8, !tbaa !15
  br label %119

116:                                              ; preds = %103
  %117 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %107, i32 noundef 2) #10
  %118 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  br label %119

119:                                              ; preds = %116, %112
  %120 = phi ptr [ %95, %112 ], [ %118, %116 ]
  %121 = phi i64 [ %115, %112 ], [ %117, %116 ]
  %122 = add nsw i32 %9, 10
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %120, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !16
  %126 = getelementptr inbounds %struct.sv, ptr %125, i64 0, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !21
  %128 = and i32 %127, -2145386240
  %129 = icmp eq i32 %128, -2147483392
  br i1 %129, label %130, label %134

130:                                              ; preds = %119
  %131 = load ptr, ptr %125, align 8, !tbaa !23
  %132 = getelementptr inbounds %struct.xpvuv, ptr %131, i64 0, i32 4
  %133 = load i64, ptr %132, align 8, !tbaa !15
  br label %137

134:                                              ; preds = %119
  %135 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %125, i32 noundef 2) #10
  %136 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  br label %137

137:                                              ; preds = %134, %130
  %138 = phi ptr [ %120, %130 ], [ %136, %134 ]
  %139 = phi i64 [ %133, %130 ], [ %135, %134 ]
  %140 = add nsw i32 %9, 11
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds ptr, ptr %138, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !16
  %144 = getelementptr inbounds %struct.sv, ptr %143, i64 0, i32 2
  %145 = load i32, ptr %144, align 4, !tbaa !21
  %146 = and i32 %145, -2145386240
  %147 = icmp eq i32 %146, -2147483392
  br i1 %147, label %148, label %152

148:                                              ; preds = %137
  %149 = load ptr, ptr %143, align 8, !tbaa !23
  %150 = getelementptr inbounds %struct.xpvuv, ptr %149, i64 0, i32 4
  %151 = load i64, ptr %150, align 8, !tbaa !15
  br label %154

152:                                              ; preds = %137
  %153 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %143, i32 noundef 2) #10
  br label %154

154:                                              ; preds = %152, %148
  %155 = phi i64 [ %151, %148 ], [ %153, %152 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call fastcc void @hrstatns(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %156 = load i64, ptr %3, align 8, !tbaa !26
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %154
  %159 = uitofp i64 %121 to double
  %160 = uitofp i64 %156 to double
  %161 = call double @llvm.fmuladd.f64(double %160, double 1.000000e-09, double %159)
  %162 = call ptr @Perl_newSVnv(double noundef %161) #10
  %163 = call ptr @Perl_sv_2mortal(ptr noundef %162) #10
  %164 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %165 = getelementptr inbounds ptr, ptr %164, i64 %105
  store ptr %163, ptr %165, align 8, !tbaa !16
  br label %166

166:                                              ; preds = %158, %154
  %167 = load i64, ptr %4, align 8, !tbaa !26
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %177, label %169

169:                                              ; preds = %166
  %170 = uitofp i64 %139 to double
  %171 = uitofp i64 %167 to double
  %172 = call double @llvm.fmuladd.f64(double %171, double 1.000000e-09, double %170)
  %173 = call ptr @Perl_newSVnv(double noundef %172) #10
  %174 = call ptr @Perl_sv_2mortal(ptr noundef %173) #10
  %175 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %176 = getelementptr inbounds ptr, ptr %175, i64 %123
  store ptr %174, ptr %176, align 8, !tbaa !16
  br label %177

177:                                              ; preds = %169, %166
  %178 = load i64, ptr %5, align 8, !tbaa !26
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %177
  %181 = uitofp i64 %155 to double
  %182 = uitofp i64 %178 to double
  %183 = call double @llvm.fmuladd.f64(double %182, double 1.000000e-09, double %181)
  %184 = call ptr @Perl_newSVnv(double noundef %183) #10
  %185 = call ptr @Perl_sv_2mortal(ptr noundef %184) #10
  %186 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  %187 = getelementptr inbounds ptr, ptr %186, i64 %141
  store ptr %185, ptr %187, align 8, !tbaa !16
  br label %188

188:                                              ; preds = %180, %177
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %189 = load ptr, ptr @PL_stack_base, align 8, !tbaa !16
  br label %190

190:                                              ; preds = %89, %188
  %191 = phi ptr [ %95, %89 ], [ %189, %188 ]
  %192 = shl i64 %100, 29
  %193 = ashr i64 %192, 32
  %194 = getelementptr inbounds ptr, ptr %191, i64 %96
  %195 = getelementptr ptr, ptr %194, i64 %193
  %196 = getelementptr ptr, ptr %195, i64 -1
  store ptr %196, ptr @PL_stack_sp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  ret void
}

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @constant(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  switch i64 %1, label %51 [
    i64 7, label %4
    i64 8, label %8
    i64 11, label %19
    i64 12, label %21
    i64 13, label %25
    i64 14, label %35
    i64 15, label %37
    i64 17, label %39
    i64 23, label %43
    i64 24, label %47
  ]

4:                                                ; preds = %3
  %5 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %0, ptr noundef nonnull dereferenceable(7) @.str.26, i64 7)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %4
  store i64 0, ptr %2, align 8, !tbaa !26
  br label %52

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %0, i64 7
  %10 = load i8, ptr %9, align 1, !tbaa !15
  switch i8 %10, label %51 [
    i8 109, label %11
    i8 112, label %15
  ]

11:                                               ; preds = %8
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %0, ptr noundef nonnull dereferenceable(7) @.str.27, i64 7)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  store i64 0, ptr %2, align 8, !tbaa !26
  br label %52

15:                                               ; preds = %8
  %16 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %0, ptr noundef nonnull dereferenceable(7) @.str.28, i64 7)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %15
  store i64 1, ptr %2, align 8, !tbaa !26
  br label %52

19:                                               ; preds = %3
  %20 = tail call fastcc i32 @constant_11(ptr noundef %0, ptr noundef %2) #11, !range !27
  br label %52

21:                                               ; preds = %3
  %22 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %0, ptr noundef nonnull dereferenceable(12) @.str.29, i64 12)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  store i64 0, ptr %2, align 8, !tbaa !26
  br label %52

25:                                               ; preds = %3
  %26 = getelementptr inbounds i8, ptr %0, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !15
  switch i8 %27, label %51 [
    i8 77, label %28
    i8 79, label %32
  ]

28:                                               ; preds = %25
  %29 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %0, ptr noundef nonnull dereferenceable(13) @.str.30, i64 13)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  store i64 1, ptr %2, align 8, !tbaa !26
  br label %52

32:                                               ; preds = %25
  %33 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %0, ptr noundef nonnull dereferenceable(13) @.str.31, i64 13)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %52, label %51

35:                                               ; preds = %3
  %36 = tail call fastcc i32 @constant_14(ptr noundef %0, ptr noundef %2) #11, !range !27
  br label %52

37:                                               ; preds = %3
  %38 = tail call fastcc i32 @constant_15(ptr noundef %0, ptr noundef %2) #11, !range !27
  br label %52

39:                                               ; preds = %3
  %40 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %0, ptr noundef nonnull dereferenceable(17) @.str.32, i64 17)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  store i64 0, ptr %2, align 8, !tbaa !26
  br label %52

43:                                               ; preds = %3
  %44 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %0, ptr noundef nonnull dereferenceable(23) @.str.33, i64 23)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  store i64 3, ptr %2, align 8, !tbaa !26
  br label %52

47:                                               ; preds = %3
  %48 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %0, ptr noundef nonnull dereferenceable(24) @.str.34, i64 24)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i64 2, ptr %2, align 8, !tbaa !26
  br label %52

51:                                               ; preds = %47, %43, %39, %25, %28, %32, %21, %8, %11, %15, %4, %3
  br label %52

52:                                               ; preds = %32, %51, %50, %46, %42, %37, %35, %31, %24, %19, %18, %14, %7
  %53 = phi i32 [ 1, %51 ], [ 3, %50 ], [ 3, %46 ], [ 3, %42 ], [ %38, %37 ], [ %36, %35 ], [ 3, %31 ], [ 3, %24 ], [ %20, %19 ], [ 3, %18 ], [ 3, %14 ], [ 3, %7 ], [ 2, %32 ]
  ret i32 %53
}

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @constant_11(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds i8, ptr %0, i64 7
  %4 = load i8, ptr %3, align 1, !tbaa !15
  switch i8 %4, label %22 [
    i8 80, label %5
    i8 82, label %8
    i8 105, label %11
    i8 108, label %17
  ]

5:                                                ; preds = %2
  %6 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %0, ptr noundef nonnull dereferenceable(11) @.str.35, i64 11)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %22

8:                                                ; preds = %2
  %9 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %0, ptr noundef nonnull dereferenceable(11) @.str.36, i64 11)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %22

11:                                               ; preds = %2
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %0, ptr noundef nonnull dereferenceable(11) @.str.37, i64 11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %0, ptr noundef nonnull dereferenceable(11) @.str.38, i64 11)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %22

17:                                               ; preds = %2
  %18 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %0, ptr noundef nonnull dereferenceable(11) @.str.39, i64 11)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14, %11, %8, %5
  %21 = phi i64 [ 2, %5 ], [ 0, %8 ], [ 0, %11 ], [ 0, %14 ], [ 0, %17 ]
  store i64 %21, ptr %1, align 8, !tbaa !26
  br label %22

22:                                               ; preds = %20, %2, %5, %8, %14, %17
  %23 = phi i32 [ 1, %17 ], [ 1, %14 ], [ 1, %8 ], [ 1, %5 ], [ 1, %2 ], [ 3, %20 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @constant_14(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load i8, ptr %3, align 1, !tbaa !15
  switch i8 %4, label %28 [
    i8 65, label %5
    i8 69, label %9
    i8 70, label %13
    i8 73, label %16
    i8 101, label %20
    i8 103, label %24
  ]

5:                                                ; preds = %2
  %6 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %0, ptr noundef nonnull dereferenceable(14) @.str.40, i64 14)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  store i64 0, ptr %1, align 8, !tbaa !26
  br label %29

9:                                                ; preds = %2
  %10 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %0, ptr noundef nonnull dereferenceable(14) @.str.41, i64 14)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  store i64 1000000, ptr %1, align 8, !tbaa !26
  br label %29

13:                                               ; preds = %2
  %14 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %0, ptr noundef nonnull dereferenceable(14) @.str.42, i64 14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %28

16:                                               ; preds = %2
  %17 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %0, ptr noundef nonnull dereferenceable(14) @.str.43, i64 14)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  store i64 1, ptr %1, align 8, !tbaa !26
  br label %29

20:                                               ; preds = %2
  %21 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %0, ptr noundef nonnull dereferenceable(14) @.str.44, i64 14)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  store i64 1, ptr %1, align 8, !tbaa !26
  br label %29

24:                                               ; preds = %2
  %25 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %0, ptr noundef nonnull dereferenceable(14) @.str.45, i64 14)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i64 0, ptr %1, align 8, !tbaa !26
  br label %29

28:                                               ; preds = %24, %20, %16, %13, %9, %5, %2
  br label %29

29:                                               ; preds = %13, %28, %27, %23, %19, %12, %8
  %30 = phi i32 [ 1, %28 ], [ 3, %27 ], [ 3, %23 ], [ 3, %19 ], [ 3, %12 ], [ 3, %8 ], [ 2, %13 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @constant_15(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds i8, ptr %0, i64 7
  %4 = load i8, ptr %3, align 1, !tbaa !15
  switch i8 %4, label %19 [
    i8 73, label %5
    i8 79, label %8
    i8 82, label %12
    i8 95, label %15
  ]

5:                                                ; preds = %2
  %6 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %0, ptr noundef nonnull dereferenceable(15) @.str.46, i64 15)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %19

8:                                                ; preds = %2
  %9 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %0, ptr noundef nonnull dereferenceable(15) @.str.47, i64 15)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  store i64 1, ptr %1, align 8, !tbaa !26
  br label %20

12:                                               ; preds = %2
  %13 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %0, ptr noundef nonnull dereferenceable(15) @.str.48, i64 15)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %19

15:                                               ; preds = %2
  %16 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %0, ptr noundef nonnull dereferenceable(15) @.str.49, i64 15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i64 0, ptr %1, align 8, !tbaa !26
  br label %20

19:                                               ; preds = %15, %12, %8, %5, %2
  br label %20

20:                                               ; preds = %12, %5, %19, %18, %11
  %21 = phi i32 [ 1, %19 ], [ 3, %18 ], [ 3, %11 ], [ 2, %5 ], [ 2, %12 ]
  ret i32 %21
}

; Function Attrs: optsize
declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @sleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setnv(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_dowantarray() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVnv(double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @hrstatns(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  store i64 0, ptr %0, align 8, !tbaa !26
  store i64 0, ptr %1, align 8, !tbaa !26
  store i64 0, ptr %2, align 8, !tbaa !26
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"timeval", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!12, !13, i64 0}
!12 = !{!"cv", !13, i64 0, !14, i64 8, !14, i64 12, !8, i64 16}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"int", !8, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!13, !13, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{!19, !8, i64 35}
!19 = !{!"op", !13, i64 0, !13, i64 8, !13, i64 16, !7, i64 24, !14, i64 32, !14, i64 33, !14, i64 33, !14, i64 33, !14, i64 33, !14, i64 33, !14, i64 33, !14, i64 33, !8, i64 34, !8, i64 35}
!20 = !{!19, !7, i64 24}
!21 = !{!22, !14, i64 12}
!22 = !{!"sv", !13, i64 0, !14, i64 8, !14, i64 12, !8, i64 16}
!23 = !{!22, !13, i64 0}
!24 = !{!25, !7, i64 16}
!25 = !{!"xpv", !13, i64 0, !8, i64 8, !7, i64 16, !8, i64 24}
!26 = !{!7, !7, i64 0}
!27 = !{i32 1, i32 4}
!28 = !{!19, !8, i64 34}
!29 = !{!30, !13, i64 0}
!30 = !{!"gp", !13, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !14, i64 28, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !14, i64 64, !14, i64 67, !13, i64 72}
!31 = !{!19, !13, i64 16}
