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

; Function Attrs: cold nounwind uwtable
define dso_local void @hrt_usleep(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  store i64 %0, ptr %3, align 8, !tbaa !40
  %4 = call i32 @select(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_Time__HiRes(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Time__HiRes_constant, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #7
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Time__HiRes_usleep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #7
  %5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_Time__HiRes_nanosleep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #7
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Time__HiRes_sleep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #7
  %7 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Time__HiRes_ualarm, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 0) #7
  %8 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Time__HiRes_alarm, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 0) #7
  %9 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_Time__HiRes_gettimeofday, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #7
  %10 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_Time__HiRes_time, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #7
  %11 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Time__HiRes_clock_gettime, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 0) #7
  %12 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.16, ptr noundef nonnull @XS_Time__HiRes_clock_getres, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 0) #7
  %13 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.17, ptr noundef nonnull @XS_Time__HiRes_clock_nanosleep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef 0) #7
  %14 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.19, ptr noundef nonnull @XS_Time__HiRes_clock, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #7
  %15 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.20, ptr noundef nonnull @XS_Time__HiRes_stat, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 0) #7
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct.xpvcv, ptr %16, i64 0, i32 5
  store i32 1, ptr %17, align 8, !tbaa !45
  %18 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.21, ptr noundef nonnull @XS_Time__HiRes_stat, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 0) #7
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct.xpvcv, ptr %19, i64 0, i32 5
  store i32 0, ptr %20, align 8, !tbaa !45
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #7
  ret void
}

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_Time__HiRes_constant(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %6 = load i32, ptr %4, align 4, !tbaa !47
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.22) #7
  br label %16

16:                                               ; preds = %15, %1
  %17 = shl i64 %12, 29
  %18 = ashr i64 %17, 32
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds ptr, ptr %3, i64 %19
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !48
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr @PL_curpad, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !50
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  br label %34

32:                                               ; preds = %16
  %33 = tail call ptr @Perl_sv_newmortal() #7
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %37 = getelementptr ptr, ptr %36, i64 %8
  %38 = getelementptr ptr, ptr %37, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !51
  %42 = and i32 %41, 2098176
  %43 = icmp eq i32 %42, 1024
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load ptr, ptr %39, align 8, !tbaa !53
  %46 = getelementptr inbounds %struct.xpv, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !54
  store i64 %47, ptr %2, align 8, !tbaa !56
  %48 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  br label %52

50:                                               ; preds = %34
  %51 = call ptr @Perl_sv_2pv_flags(ptr noundef %39, ptr noundef nonnull %2, i32 noundef 2) #7
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi ptr [ %49, %44 ], [ %51, %50 ]
  %54 = load i64, ptr %2, align 8, !tbaa !56
  switch i64 %54, label %148 [
    i64 7, label %55
    i64 8, label %58
    i64 11, label %67
    i64 12, label %89
    i64 13, label %92
    i64 14, label %101
    i64 15, label %123
    i64 17, label %139
    i64 23, label %142
    i64 24, label %145
  ]

55:                                               ; preds = %52
  %56 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %53, ptr noundef nonnull dereferenceable(7) @.str.26, i64 7)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %149, label %148

58:                                               ; preds = %52
  %59 = getelementptr inbounds i8, ptr %53, i64 7
  %60 = load i8, ptr %59, align 1, !tbaa !45
  switch i8 %60, label %148 [
    i8 109, label %61
    i8 112, label %64
  ]

61:                                               ; preds = %58
  %62 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %53, ptr noundef nonnull dereferenceable(7) @.str.27, i64 7)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %149, label %148

64:                                               ; preds = %58
  %65 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %53, ptr noundef nonnull dereferenceable(7) @.str.28, i64 7)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %149, label %148

67:                                               ; preds = %52
  %68 = getelementptr inbounds i8, ptr %53, i64 7
  %69 = load i8, ptr %68, align 1, !tbaa !45
  switch i8 %69, label %149 [
    i8 80, label %70
    i8 82, label %74
    i8 105, label %78
    i8 108, label %85
  ]

70:                                               ; preds = %67
  %71 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %53, ptr noundef nonnull dereferenceable(11) @.str.35, i64 11)
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 3, i32 1
  br label %149

74:                                               ; preds = %67
  %75 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %53, ptr noundef nonnull dereferenceable(11) @.str.36, i64 11)
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i32 3, i32 1
  br label %149

78:                                               ; preds = %67
  %79 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %53, ptr noundef nonnull dereferenceable(11) @.str.37, i64 11)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %149, label %81

81:                                               ; preds = %78
  %82 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %53, ptr noundef nonnull dereferenceable(11) @.str.38, i64 11)
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 3, i32 1
  br label %149

85:                                               ; preds = %67
  %86 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %53, ptr noundef nonnull dereferenceable(11) @.str.39, i64 11)
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 3, i32 1
  br label %149

89:                                               ; preds = %52
  %90 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %53, ptr noundef nonnull dereferenceable(12) @.str.29, i64 12)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %149, label %148

92:                                               ; preds = %52
  %93 = getelementptr inbounds i8, ptr %53, i64 2
  %94 = load i8, ptr %93, align 1, !tbaa !45
  switch i8 %94, label %148 [
    i8 77, label %95
    i8 79, label %98
  ]

95:                                               ; preds = %92
  %96 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %53, ptr noundef nonnull dereferenceable(13) @.str.30, i64 13)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %149, label %148

98:                                               ; preds = %92
  %99 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %53, ptr noundef nonnull dereferenceable(13) @.str.31, i64 13)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %149, label %148

101:                                              ; preds = %52
  %102 = getelementptr inbounds i8, ptr %53, i64 8
  %103 = load i8, ptr %102, align 1, !tbaa !45
  switch i8 %103, label %122 [
    i8 65, label %104
    i8 69, label %107
    i8 70, label %110
    i8 73, label %113
    i8 101, label %116
    i8 103, label %119
  ]

104:                                              ; preds = %101
  %105 = call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %53, ptr noundef nonnull dereferenceable(14) @.str.40, i64 14)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %149, label %122

107:                                              ; preds = %101
  %108 = call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %53, ptr noundef nonnull dereferenceable(14) @.str.41, i64 14)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %149, label %122

110:                                              ; preds = %101
  %111 = call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %53, ptr noundef nonnull dereferenceable(14) @.str.42, i64 14)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %149, label %122

113:                                              ; preds = %101
  %114 = call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %53, ptr noundef nonnull dereferenceable(14) @.str.43, i64 14)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %149, label %122

116:                                              ; preds = %101
  %117 = call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %53, ptr noundef nonnull dereferenceable(14) @.str.44, i64 14)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %149, label %122

119:                                              ; preds = %101
  %120 = call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %53, ptr noundef nonnull dereferenceable(14) @.str.45, i64 14)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %149, label %122

122:                                              ; preds = %119, %116, %113, %110, %107, %104, %101
  br label %149

123:                                              ; preds = %52
  %124 = getelementptr inbounds i8, ptr %53, i64 7
  %125 = load i8, ptr %124, align 1, !tbaa !45
  switch i8 %125, label %138 [
    i8 73, label %126
    i8 79, label %129
    i8 82, label %132
    i8 95, label %135
  ]

126:                                              ; preds = %123
  %127 = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %53, ptr noundef nonnull dereferenceable(15) @.str.46, i64 15)
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %149, label %138

129:                                              ; preds = %123
  %130 = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %53, ptr noundef nonnull dereferenceable(15) @.str.47, i64 15)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %149, label %138

132:                                              ; preds = %123
  %133 = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %53, ptr noundef nonnull dereferenceable(15) @.str.48, i64 15)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %149, label %138

135:                                              ; preds = %123
  %136 = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %53, ptr noundef nonnull dereferenceable(15) @.str.49, i64 15)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %135, %132, %129, %126, %123
  br label %149

139:                                              ; preds = %52
  %140 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %53, ptr noundef nonnull dereferenceable(17) @.str.32, i64 17)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %149, label %148

142:                                              ; preds = %52
  %143 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %53, ptr noundef nonnull dereferenceable(23) @.str.33, i64 23)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %149, label %148

145:                                              ; preds = %52
  %146 = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %53, ptr noundef nonnull dereferenceable(24) @.str.34, i64 24)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145, %142, %139, %98, %95, %92, %89, %64, %61, %58, %55, %52
  br label %149

149:                                              ; preds = %145, %142, %139, %132, %129, %126, %119, %116, %110, %107, %104, %98, %95, %64, %61, %55, %85, %81, %74, %70, %135, %113, %89, %78, %67, %122, %138, %148
  %150 = phi i64 [ undef, %148 ], [ undef, %138 ], [ undef, %122 ], [ undef, %67 ], [ 2, %70 ], [ 0, %74 ], [ 0, %78 ], [ 0, %81 ], [ 0, %85 ], [ 0, %89 ], [ 1, %113 ], [ 0, %135 ], [ 0, %55 ], [ 0, %61 ], [ 1, %64 ], [ 1, %95 ], [ undef, %98 ], [ 0, %104 ], [ 1000000, %107 ], [ undef, %110 ], [ 1, %116 ], [ 0, %119 ], [ undef, %126 ], [ 1, %129 ], [ undef, %132 ], [ 0, %139 ], [ 3, %142 ], [ 2, %145 ]
  %151 = phi i32 [ 1, %148 ], [ 1, %138 ], [ 1, %122 ], [ 1, %67 ], [ %73, %70 ], [ %77, %74 ], [ 3, %78 ], [ %84, %81 ], [ %88, %85 ], [ 3, %89 ], [ 3, %113 ], [ 3, %135 ], [ 3, %55 ], [ 3, %61 ], [ 3, %64 ], [ 3, %95 ], [ 2, %98 ], [ 3, %104 ], [ 3, %107 ], [ 2, %110 ], [ 3, %116 ], [ 3, %119 ], [ 2, %126 ], [ 3, %129 ], [ 2, %132 ], [ 3, %139 ], [ 3, %142 ], [ 3, %145 ]
  switch i32 %151, label %179 [
    i32 1, label %152
    i32 2, label %156
    i32 3, label %160
  ]

152:                                              ; preds = %149
  %153 = call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.23, ptr noundef %53) #7
  %154 = call ptr @Perl_sv_2mortal(ptr noundef %153) #7
  %155 = getelementptr inbounds ptr, ptr %20, i64 1
  store ptr %154, ptr %155, align 8, !tbaa !46
  br label %180

156:                                              ; preds = %149
  %157 = call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.24, ptr noundef %53) #7
  %158 = call ptr @Perl_sv_2mortal(ptr noundef %157) #7
  %159 = getelementptr inbounds ptr, ptr %20, i64 1
  store ptr %158, ptr %159, align 8, !tbaa !46
  br label %180

160:                                              ; preds = %149
  %161 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %162 = ptrtoint ptr %161 to i64
  %163 = ptrtoint ptr %20 to i64
  %164 = sub i64 %162, %163
  %165 = icmp slt i64 %164, 8
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = call ptr @Perl_stack_grow(ptr noundef %20, ptr noundef %20, i64 noundef 1) #7
  br label %168

168:                                              ; preds = %160, %166
  %169 = phi ptr [ %167, %166 ], [ %20, %160 ]
  %170 = getelementptr inbounds ptr, ptr %169, i64 1
  store ptr @PL_sv_undef, ptr %170, align 8, !tbaa !46
  call void @Perl_sv_setiv(ptr noundef %35, i64 noundef %150) #7
  %171 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %172 = load i32, ptr %171, align 4, !tbaa !51
  %173 = and i32 %172, 4194304
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %168
  %176 = call i32 @Perl_mg_set(ptr noundef %35) #7
  br label %177

177:                                              ; preds = %168, %175
  %178 = getelementptr inbounds ptr, ptr %169, i64 2
  store ptr %35, ptr %178, align 8, !tbaa !46
  br label %180

179:                                              ; preds = %149
  unreachable

180:                                              ; preds = %177, %156, %152
  %181 = phi ptr [ %178, %177 ], [ %159, %156 ], [ %155, %152 ]
  store ptr %181, ptr @PL_stack_sp, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Time__HiRes_usleep(ptr noundef %0) #0 !prof !34 {
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %6 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %7 = getelementptr inbounds i32, ptr %6, i64 -1
  store ptr %7, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %8 = load i32, ptr %6, align 4, !tbaa !47
  %9 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %10 = add nsw i32 %8, 1
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = ptrtoint ptr %5 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 3
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.50) #7
  br label %20

20:                                               ; preds = %19, %1
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %22 = sext i32 %10 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !51
  %27 = and i32 %26, 2097664
  %28 = icmp eq i32 %27, 512
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load ptr, ptr %24, align 8, !tbaa !53
  %31 = getelementptr inbounds %struct.xpvnv, ptr %30, i64 0, i32 5
  %32 = load double, ptr %31, align 8, !tbaa !45
  br label %35

33:                                               ; preds = %20
  %34 = tail call double @Perl_sv_2nv_flags(ptr noundef %24, i32 noundef 2) #7
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi double [ %32, %29 ], [ %34, %33 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %37 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.op, ptr %37, i64 0, i32 6
  %39 = load i8, ptr %38, align 1, !tbaa !48
  %40 = and i8 %39, 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr @PL_curpad, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.op, ptr %37, i64 0, i32 3
  %45 = load i64, ptr %44, align 8, !tbaa !50
  %46 = getelementptr inbounds ptr, ptr %43, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  br label %50

48:                                               ; preds = %35
  %49 = tail call ptr @Perl_sv_newmortal() #7
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi ptr [ %47, %42 ], [ %49, %48 ]
  %52 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #7
  %53 = icmp sgt i32 %17, 0
  br i1 %53, label %54, label %74

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
  %62 = tail call i32 @sleep(i32 noundef %61) #7
  %63 = sitofp i64 %58 to double
  %64 = tail call double @llvm.fmuladd.f64(double %63, double -1.000000e+06, double %36)
  br label %68

65:                                               ; preds = %54
  %66 = fcmp olt double %36, 0.000000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.51, double noundef %36) #7
  br label %68

68:                                               ; preds = %56, %60, %65, %67
  %69 = phi double [ %36, %67 ], [ %36, %65 ], [ %64, %60 ], [ %36, %56 ]
  %70 = fptoui double %69 to i32
  %71 = zext i32 %70 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8, !tbaa !35
  %72 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  store i64 %71, ptr %72, align 8, !tbaa !40
  %73 = call i32 @select(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  br label %76

74:                                               ; preds = %50
  %75 = tail call i32 @sleep(i32 noundef -1) #7
  br label %76

76:                                               ; preds = %74, %68
  %77 = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #7
  %78 = load i64, ptr %4, align 8, !tbaa !35
  %79 = load i64, ptr %3, align 8, !tbaa !35
  %80 = sub nsw i64 %78, %79
  %81 = sitofp i64 %80 to double
  %82 = getelementptr inbounds %struct.timeval, ptr %4, i64 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !40
  %84 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !40
  %86 = sub nsw i64 %83, %85
  %87 = sitofp i64 %86 to double
  %88 = call double @llvm.fmuladd.f64(double %81, double 1.000000e+06, double %87)
  %89 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  call void @Perl_sv_setnv(ptr noundef %51, double noundef %88) #7
  %90 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !51
  %92 = and i32 %91, 4194304
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %76
  %95 = call i32 @Perl_mg_set(ptr noundef %51) #7
  br label %96

96:                                               ; preds = %76, %94
  %97 = getelementptr inbounds ptr, ptr %89, i64 %22
  store ptr %51, ptr %97, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  %98 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %99 = getelementptr inbounds ptr, ptr %98, i64 %22
  store ptr %99, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Time__HiRes_nanosleep(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = load i32, ptr %3, align 4, !tbaa !47
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.52) #7
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !51
  %23 = and i32 %22, 2097664
  %24 = icmp eq i32 %23, 512
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = tail call double @Perl_sv_2nv_flags(ptr noundef %20, i32 noundef 2) #7
  br label %27

27:                                               ; preds = %16, %25
  %28 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.op, ptr %28, i64 0, i32 6
  %30 = load i8, ptr %29, align 1, !tbaa !48
  %31 = and i8 %30, 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr @PL_curpad, align 8, !tbaa !46
  %35 = getelementptr inbounds %struct.op, ptr %28, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !50
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  br label %41

39:                                               ; preds = %27
  %40 = tail call ptr @Perl_sv_newmortal() #7
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi ptr [ %38, %33 ], [ %40, %39 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.53) #7
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  tail call void @Perl_sv_setnv(ptr noundef %42, double noundef 0.000000e+00) #7
  %44 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !51
  %46 = and i32 %45, 4194304
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = tail call i32 @Perl_mg_set(ptr noundef %42) #7
  br label %50

50:                                               ; preds = %41, %48
  %51 = getelementptr inbounds ptr, ptr %43, i64 %18
  store ptr %42, ptr %51, align 8, !tbaa !46
  %52 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %53 = getelementptr inbounds ptr, ptr %52, i64 %18
  store ptr %53, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Time__HiRes_sleep(ptr nocapture readnone %0) #0 !prof !34 {
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %6 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %7 = getelementptr inbounds i32, ptr %6, i64 -1
  store ptr %7, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %8 = load i32, ptr %6, align 4, !tbaa !47
  %9 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %10 = add nsw i32 %8, 1
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = ptrtoint ptr %5 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 3
  %17 = trunc i64 %16 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !48
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load ptr, ptr @PL_curpad, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !50
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  br label %31

29:                                               ; preds = %1
  %30 = tail call ptr @Perl_sv_newmortal() #7
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %33 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #7
  %34 = icmp sgt i32 %17, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %31
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %37 = sext i32 %10 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !51
  %42 = and i32 %41, 2097664
  %43 = icmp eq i32 %42, 512
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load ptr, ptr %39, align 8, !tbaa !53
  %46 = getelementptr inbounds %struct.xpvnv, ptr %45, i64 0, i32 5
  %47 = load double, ptr %46, align 8, !tbaa !45
  br label %50

48:                                               ; preds = %35
  %49 = tail call double @Perl_sv_2nv_flags(ptr noundef %39, i32 noundef 2) #7
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi double [ %47, %44 ], [ %49, %48 ]
  %52 = fcmp ult double %51, 0.000000e+00
  br i1 %52, label %69, label %53

53:                                               ; preds = %50
  %54 = fptoui double %51 to i64
  %55 = uitofp i64 %54 to double
  %56 = fsub double %51, %55
  %57 = fmul double %56, 1.000000e+06
  %58 = fptoui double %57 to i64
  %59 = fcmp ult double %51, 1.000000e+00
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = fptoui double %51 to i32
  %62 = tail call i32 @sleep(i32 noundef %61) #7
  br label %63

63:                                               ; preds = %60, %53
  %64 = icmp slt i64 %58, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.54, double noundef %51, i64 noundef %58, i64 noundef %58) #7
  br label %66

66:                                               ; preds = %65, %63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8, !tbaa !35
  %67 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  store i64 %58, ptr %67, align 8, !tbaa !40
  %68 = call i32 @select(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  br label %72

69:                                               ; preds = %50
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55, double noundef %51) #7
  br label %72

70:                                               ; preds = %31
  %71 = tail call i32 @sleep(i32 noundef -1) #7
  br label %72

72:                                               ; preds = %66, %69, %70
  %73 = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #7
  %74 = load i64, ptr %4, align 8, !tbaa !35
  %75 = load i64, ptr %3, align 8, !tbaa !35
  %76 = sub nsw i64 %74, %75
  %77 = sitofp i64 %76 to double
  %78 = getelementptr inbounds %struct.timeval, ptr %4, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !40
  %80 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !40
  %82 = sub nsw i64 %79, %81
  %83 = sitofp i64 %82 to double
  %84 = call double @llvm.fmuladd.f64(double %83, double 0x3EB0C6F7A0B5ED8D, double %77)
  %85 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  call void @Perl_sv_setnv(ptr noundef %32, double noundef %84) #7
  %86 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !51
  %88 = and i32 %87, 4194304
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %72
  %91 = call i32 @Perl_mg_set(ptr noundef %32) #7
  br label %92

92:                                               ; preds = %72, %90
  %93 = sext i32 %10 to i64
  %94 = getelementptr inbounds ptr, ptr %85, i64 %93
  store ptr %32, ptr %94, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  %95 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %96 = getelementptr inbounds ptr, ptr %95, i64 %93
  store ptr %96, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Time__HiRes_ualarm(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = load i32, ptr %3, align 4, !tbaa !47
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #7
  br label %18

18:                                               ; preds = %1, %17
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !51
  %25 = and i32 %24, 2097408
  %26 = icmp eq i32 %25, 256
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %22, i32 noundef 2) #7
  br label %29

29:                                               ; preds = %18, %27
  %30 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.op, ptr %30, i64 0, i32 6
  %32 = load i8, ptr %31, align 1, !tbaa !48
  %33 = and i8 %32, 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr @PL_curpad, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.op, ptr %30, i64 0, i32 3
  %38 = load i64, ptr %37, align 8, !tbaa !50
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  br label %43

41:                                               ; preds = %29
  %42 = tail call ptr @Perl_sv_newmortal() #7
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi ptr [ %40, %35 ], [ %42, %41 ]
  %45 = icmp slt i32 %14, 2
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %48 = getelementptr ptr, ptr %47, i64 %8
  %49 = getelementptr ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !51
  %53 = and i32 %52, 2097408
  %54 = icmp eq i32 %53, 256
  br i1 %54, label %57, label %55

55:                                               ; preds = %46
  %56 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %50, i32 noundef 2) #7
  br label %57

57:                                               ; preds = %55, %46, %43
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.57) #7
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  tail call void @Perl_sv_setiv(ptr noundef %44, i64 noundef -1) #7
  %59 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !51
  %61 = and i32 %60, 4194304
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = tail call i32 @Perl_mg_set(ptr noundef %44) #7
  br label %65

65:                                               ; preds = %57, %63
  %66 = getelementptr inbounds ptr, ptr %58, i64 %20
  store ptr %44, ptr %66, align 8, !tbaa !46
  %67 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %68 = getelementptr inbounds ptr, ptr %67, i64 %20
  store ptr %68, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Time__HiRes_alarm(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = load i32, ptr %3, align 4, !tbaa !47
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.58) #7
  br label %18

18:                                               ; preds = %1, %17
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !51
  %25 = and i32 %24, 2097664
  %26 = icmp eq i32 %25, 512
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = tail call double @Perl_sv_2nv_flags(ptr noundef %22, i32 noundef 2) #7
  br label %29

29:                                               ; preds = %18, %27
  %30 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.op, ptr %30, i64 0, i32 6
  %32 = load i8, ptr %31, align 1, !tbaa !48
  %33 = and i8 %32, 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr @PL_curpad, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.op, ptr %30, i64 0, i32 3
  %38 = load i64, ptr %37, align 8, !tbaa !50
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  br label %43

41:                                               ; preds = %29
  %42 = tail call ptr @Perl_sv_newmortal() #7
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi ptr [ %40, %35 ], [ %42, %41 ]
  %45 = icmp slt i32 %14, 2
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %48 = getelementptr ptr, ptr %47, i64 %8
  %49 = getelementptr ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !51
  %53 = and i32 %52, 2097664
  %54 = icmp eq i32 %53, 512
  br i1 %54, label %57, label %55

55:                                               ; preds = %46
  %56 = tail call double @Perl_sv_2nv_flags(ptr noundef %50, i32 noundef 2) #7
  br label %57

57:                                               ; preds = %55, %46, %43
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.59) #7
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  tail call void @Perl_sv_setnv(ptr noundef %44, double noundef 0.000000e+00) #7
  %59 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !51
  %61 = and i32 %60, 4194304
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = tail call i32 @Perl_mg_set(ptr noundef %44) #7
  br label %65

65:                                               ; preds = %57, %63
  %66 = getelementptr inbounds ptr, ptr %58, i64 %20
  store ptr %44, ptr %66, align 8, !tbaa !46
  %67 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %68 = getelementptr inbounds ptr, ptr %67, i64 %20
  store ptr %68, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Time__HiRes_gettimeofday(ptr noundef %0) #0 !prof !34 {
  %2 = alloca %struct.timeval, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %6 = load i32, ptr %4, align 4, !tbaa !47
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.12) #7
  br label %16

16:                                               ; preds = %15, %1
  %17 = shl i64 %12, 29
  %18 = ashr i64 %17, 32
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds ptr, ptr %3, i64 %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %21 = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %71

23:                                               ; preds = %16
  %24 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 5
  %26 = load i8, ptr %25, align 2, !tbaa !57
  %27 = and i8 %26, 3
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = icmp eq i8 %27, 3
  br label %34

31:                                               ; preds = %23
  %32 = tail call i32 @Perl_dowantarray() #7
  %33 = icmp eq i32 %32, 3
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i1 [ %30, %29 ], [ %33, %31 ]
  %36 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %20 to i64
  %39 = sub i64 %37, %38
  br i1 %35, label %40, label %55

40:                                               ; preds = %34
  %41 = icmp slt i64 %39, 16
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = tail call ptr @Perl_stack_grow(ptr noundef %20, ptr noundef %20, i64 noundef 2) #7
  br label %44

44:                                               ; preds = %40, %42
  %45 = phi ptr [ %43, %42 ], [ %20, %40 ]
  %46 = load i64, ptr %2, align 8, !tbaa !35
  %47 = tail call ptr @Perl_newSViv(i64 noundef %46) #7
  %48 = tail call ptr @Perl_sv_2mortal(ptr noundef %47) #7
  %49 = getelementptr inbounds ptr, ptr %45, i64 1
  store ptr %48, ptr %49, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !40
  %52 = tail call ptr @Perl_newSViv(i64 noundef %51) #7
  %53 = tail call ptr @Perl_sv_2mortal(ptr noundef %52) #7
  %54 = getelementptr inbounds ptr, ptr %45, i64 2
  store ptr %53, ptr %54, align 8, !tbaa !46
  br label %71

55:                                               ; preds = %34
  %56 = icmp slt i64 %39, 8
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = tail call ptr @Perl_stack_grow(ptr noundef %20, ptr noundef %20, i64 noundef 1) #7
  br label %59

59:                                               ; preds = %55, %57
  %60 = phi ptr [ %58, %57 ], [ %20, %55 ]
  %61 = load i64, ptr %2, align 8, !tbaa !35
  %62 = sitofp i64 %61 to double
  %63 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !40
  %65 = sitofp i64 %64 to double
  %66 = fdiv double %65, 1.000000e+06
  %67 = fadd double %66, %62
  %68 = tail call ptr @Perl_newSVnv(double noundef %67) #7
  %69 = tail call ptr @Perl_sv_2mortal(ptr noundef %68) #7
  %70 = getelementptr inbounds ptr, ptr %60, i64 1
  store ptr %69, ptr %70, align 8, !tbaa !46
  br label %71

71:                                               ; preds = %44, %59, %16
  %72 = phi ptr [ %54, %44 ], [ %70, %59 ], [ %20, %16 ]
  store ptr %72, ptr @PL_stack_sp, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Time__HiRes_time(ptr noundef %0) #0 !prof !34 {
  %2 = alloca %struct.timeval, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %6 = load i32, ptr %4, align 4, !tbaa !47
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.12) #7
  br label %16

16:                                               ; preds = %15, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %17 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 6
  %19 = load i8, ptr %18, align 1, !tbaa !48
  %20 = and i8 %19, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr @PL_curpad, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !50
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  br label %30

28:                                               ; preds = %16
  %29 = tail call ptr @Perl_sv_newmortal() #7
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %32 = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i64, ptr %2, align 8, !tbaa !35
  %36 = sitofp i64 %35 to double
  %37 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !40
  %39 = sitofp i64 %38 to double
  %40 = fdiv double %39, 1.000000e+06
  %41 = fadd double %40, %36
  br label %42

42:                                               ; preds = %30, %34
  %43 = phi double [ %41, %34 ], [ -1.000000e+00, %30 ]
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  tail call void @Perl_sv_setnv(ptr noundef %31, double noundef %43) #7
  %45 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !51
  %47 = and i32 %46, 4194304
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = tail call i32 @Perl_mg_set(ptr noundef %31) #7
  br label %51

51:                                               ; preds = %42, %49
  %52 = add nsw i32 %6, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %44, i64 %53
  store ptr %31, ptr %54, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %56 = getelementptr inbounds ptr, ptr %55, i64 %53
  store ptr %56, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Time__HiRes_clock_gettime(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = load i32, ptr %3, align 4, !tbaa !47
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.60) #7
  br label %17

17:                                               ; preds = %1, %16
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !48
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @PL_curpad, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !50
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  br label %31

29:                                               ; preds = %17
  %30 = tail call ptr @Perl_sv_newmortal() #7
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %33 = icmp slt i32 %14, 1
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %36 = sext i32 %7 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !51
  %41 = and i32 %40, 2097408
  %42 = icmp eq i32 %41, 256
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %38, i32 noundef 2) #7
  br label %45

45:                                               ; preds = %43, %34, %31
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.61) #7
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  tail call void @Perl_sv_setnv(ptr noundef %32, double noundef 0.000000e+00) #7
  %47 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !51
  %49 = and i32 %48, 4194304
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = tail call i32 @Perl_mg_set(ptr noundef %32) #7
  br label %53

53:                                               ; preds = %45, %51
  %54 = sext i32 %7 to i64
  %55 = getelementptr inbounds ptr, ptr %46, i64 %54
  store ptr %32, ptr %55, align 8, !tbaa !46
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %57 = getelementptr inbounds ptr, ptr %56, i64 %54
  store ptr %57, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Time__HiRes_clock_getres(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = load i32, ptr %3, align 4, !tbaa !47
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.60) #7
  br label %17

17:                                               ; preds = %1, %16
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !48
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @PL_curpad, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !50
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  br label %31

29:                                               ; preds = %17
  %30 = tail call ptr @Perl_sv_newmortal() #7
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %33 = icmp slt i32 %14, 1
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %36 = sext i32 %7 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !51
  %41 = and i32 %40, 2097408
  %42 = icmp eq i32 %41, 256
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %38, i32 noundef 2) #7
  br label %45

45:                                               ; preds = %43, %34, %31
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.62) #7
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  tail call void @Perl_sv_setnv(ptr noundef %32, double noundef 0.000000e+00) #7
  %47 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !51
  %49 = and i32 %48, 4194304
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = tail call i32 @Perl_mg_set(ptr noundef %32) #7
  br label %53

53:                                               ; preds = %45, %51
  %54 = sext i32 %7 to i64
  %55 = getelementptr inbounds ptr, ptr %46, i64 %54
  store ptr %32, ptr %55, align 8, !tbaa !46
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %57 = getelementptr inbounds ptr, ptr %56, i64 %54
  store ptr %57, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Time__HiRes_clock_nanosleep(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = load i32, ptr %3, align 4, !tbaa !47
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.63) #7
  br label %17

17:                                               ; preds = %1, %16
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !48
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @PL_curpad, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !50
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  br label %31

29:                                               ; preds = %17
  %30 = tail call ptr @Perl_sv_newmortal() #7
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %28, %23 ], [ %30, %29 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.64) #7
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  tail call void @Perl_sv_setnv(ptr noundef %32, double noundef 0.000000e+00) #7
  %34 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !51
  %36 = and i32 %35, 4194304
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = tail call i32 @Perl_mg_set(ptr noundef %32) #7
  br label %40

40:                                               ; preds = %31, %38
  %41 = add nsw i32 %5, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %33, i64 %42
  store ptr %32, ptr %43, align 8, !tbaa !46
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %45 = getelementptr inbounds ptr, ptr %44, i64 %42
  store ptr %45, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Time__HiRes_clock(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = load i32, ptr %3, align 4, !tbaa !47
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.12) #7
  br label %15

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 6
  %18 = load i8, ptr %17, align 1, !tbaa !48
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @PL_curpad, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !50
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  br label %29

27:                                               ; preds = %15
  %28 = tail call ptr @Perl_sv_newmortal() #7
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %26, %21 ], [ %28, %27 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.65) #7
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  tail call void @Perl_sv_setnv(ptr noundef %30, double noundef 0.000000e+00) #7
  %32 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !51
  %34 = and i32 %33, 4194304
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = tail call i32 @Perl_mg_set(ptr noundef %30) #7
  br label %38

38:                                               ; preds = %29, %36
  %39 = add nsw i32 %5, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %31, i64 %40
  store ptr %30, ptr %41, align 8, !tbaa !46
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %43 = getelementptr inbounds ptr, ptr %42, i64 %40
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Time__HiRes_stat(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = alloca %struct.op, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %6 = load i32, ptr %4, align 4, !tbaa !47
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = load ptr, ptr %0, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !45
  %17 = shl i64 %13, 29
  %18 = ashr i64 %17, 32
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds ptr, ptr %3, i64 %19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  %21 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %22 = ptrtoint ptr %21 to i64
  %23 = ptrtoint ptr %20 to i64
  %24 = sub i64 %22, %23
  %25 = icmp slt i64 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = tail call ptr @Perl_stack_grow(ptr noundef %20, ptr noundef %20, i64 noundef 1) #7
  br label %28

28:                                               ; preds = %1, %26
  %29 = phi ptr [ %27, %26 ], [ %20, %1 ]
  %30 = and i64 %13, 34359738360
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %34 = sext i32 %8 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  br label %46

36:                                               ; preds = %28
  %37 = load ptr, ptr @PL_defgv, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.gv, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !45
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = tail call ptr @Perl_gv_add_by_type(ptr noundef %37, i32 noundef 0) #7
  %44 = getelementptr inbounds %struct.gv, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  br label %46

46:                                               ; preds = %42, %36, %32
  %47 = phi ptr [ %35, %32 ], [ %45, %42 ], [ %39, %36 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = tail call ptr @Perl_newSVsv(ptr noundef %48) #7
  %50 = tail call ptr @Perl_sv_2mortal(ptr noundef %49) #7
  %51 = getelementptr inbounds ptr, ptr %29, i64 1
  store ptr %50, ptr %51, align 8, !tbaa !46
  store ptr %51, ptr @PL_stack_sp, align 8, !tbaa !46
  tail call void @Perl_push_scope() #7
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !47
  %52 = load ptr, ptr @PL_op, align 8, !tbaa !46
  tail call void @Perl_save_pushptr(ptr noundef %52, i32 noundef 18) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %53 = icmp eq i32 %16, 0
  %54 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %55 = select i1 %53, i16 265, i16 264
  %56 = load i16, ptr %54, align 8
  %57 = and i16 %56, -512
  %58 = or disjoint i16 %57, %55
  store i16 %58, ptr %54, align 8
  %59 = zext nneg i16 %55 to i64
  %60 = getelementptr inbounds [0 x ptr], ptr @PL_ppaddr, i64 0, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !60
  %63 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.op, ptr %63, i64 0, i32 5
  %65 = load i8, ptr %64, align 2, !tbaa !57
  %66 = and i8 %65, 3
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %46
  %69 = zext nneg i8 %66 to i32
  br label %72

70:                                               ; preds = %46
  %71 = tail call i32 @Perl_block_gimme() #7
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %89, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %77 = getelementptr inbounds %struct.op, ptr %76, i64 0, i32 5
  %78 = load i8, ptr %77, align 2, !tbaa !57
  %79 = and i8 %78, 3
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = zext nneg i8 %79 to i32
  br label %85

83:                                               ; preds = %75
  %84 = tail call i32 @Perl_block_gimme() #7
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = icmp eq i32 %86, 2
  %88 = select i1 %87, i8 2, i8 1
  br label %89

89:                                               ; preds = %72, %85
  %90 = phi i8 [ %88, %85 ], [ 3, %72 ]
  %91 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  store i8 %90, ptr %91, align 2, !tbaa !57
  store ptr %2, ptr @PL_op, align 8, !tbaa !46
  %92 = load ptr, ptr %62, align 8, !tbaa !60
  %93 = call ptr %92() #7
  %94 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  call void @Perl_pop_scope() #7
  %95 = getelementptr inbounds ptr, ptr %94, i64 1
  %96 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %97 = sext i32 %8 to i64
  %98 = getelementptr inbounds ptr, ptr %96, i64 %97
  %99 = ptrtoint ptr %95 to i64
  %100 = ptrtoint ptr %98 to i64
  %101 = sub i64 %99, %100
  %102 = and i64 %101, 34359738360
  %103 = icmp eq i64 %102, 104
  br i1 %103, label %104, label %136

104:                                              ; preds = %89
  %105 = getelementptr ptr, ptr %96, i64 %9
  %106 = getelementptr ptr, ptr %105, i64 9
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 2
  %109 = load i32, ptr %108, align 4, !tbaa !51
  %110 = and i32 %109, -2145386240
  %111 = icmp eq i32 %110, -2147483392
  br i1 %111, label %114, label %112

112:                                              ; preds = %104
  %113 = call i64 @Perl_sv_2uv_flags(ptr noundef %107, i32 noundef 2) #7
  br label %114

114:                                              ; preds = %104, %112
  %115 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %116 = getelementptr ptr, ptr %115, i64 %9
  %117 = getelementptr ptr, ptr %116, i64 10
  %118 = load ptr, ptr %117, align 8, !tbaa !46
  %119 = getelementptr inbounds %struct.sv, ptr %118, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !51
  %121 = and i32 %120, -2145386240
  %122 = icmp eq i32 %121, -2147483392
  br i1 %122, label %125, label %123

123:                                              ; preds = %114
  %124 = call i64 @Perl_sv_2uv_flags(ptr noundef %118, i32 noundef 2) #7
  br label %125

125:                                              ; preds = %114, %123
  %126 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %127 = getelementptr ptr, ptr %126, i64 %9
  %128 = getelementptr ptr, ptr %127, i64 11
  %129 = load ptr, ptr %128, align 8, !tbaa !46
  %130 = getelementptr inbounds %struct.sv, ptr %129, i64 0, i32 2
  %131 = load i32, ptr %130, align 4, !tbaa !51
  %132 = and i32 %131, -2145386240
  %133 = icmp eq i32 %132, -2147483392
  br i1 %133, label %136, label %134

134:                                              ; preds = %125
  %135 = call i64 @Perl_sv_2uv_flags(ptr noundef %129, i32 noundef 2) #7
  br label %136

136:                                              ; preds = %125, %134, %89
  %137 = shl i64 %101, 29
  %138 = ashr i64 %137, 32
  %139 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %140 = getelementptr inbounds ptr, ptr %139, i64 %97
  %141 = getelementptr ptr, ptr %140, i64 %138
  %142 = getelementptr ptr, ptr %141, i64 -1
  store ptr %142, ptr @PL_stack_sp, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  ret void
}

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare i32 @sleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_sv_setnv(ptr noundef, double noundef) local_unnamed_addr #2

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_dowantarray() local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVnv(double noundef) local_unnamed_addr #2

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @Perl_block_gimme() local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"timeval", !37, i64 0, !37, i64 8}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!36, !37, i64 8}
!41 = !{!42, !43, i64 0}
!42 = !{!"cv", !43, i64 0, !44, i64 8, !44, i64 12, !38, i64 16}
!43 = !{!"any pointer", !38, i64 0}
!44 = !{!"int", !38, i64 0}
!45 = !{!38, !38, i64 0}
!46 = !{!43, !43, i64 0}
!47 = !{!44, !44, i64 0}
!48 = !{!49, !38, i64 35}
!49 = !{!"op", !43, i64 0, !43, i64 8, !43, i64 16, !37, i64 24, !44, i64 32, !44, i64 33, !44, i64 33, !44, i64 33, !44, i64 33, !44, i64 33, !44, i64 33, !44, i64 33, !38, i64 34, !38, i64 35}
!50 = !{!49, !37, i64 24}
!51 = !{!52, !44, i64 12}
!52 = !{!"sv", !43, i64 0, !44, i64 8, !44, i64 12, !38, i64 16}
!53 = !{!52, !43, i64 0}
!54 = !{!55, !37, i64 16}
!55 = !{!"xpv", !43, i64 0, !38, i64 8, !37, i64 16, !38, i64 24}
!56 = !{!37, !37, i64 0}
!57 = !{!49, !38, i64 34}
!58 = !{!59, !43, i64 0}
!59 = !{!"gp", !43, i64 0, !43, i64 8, !43, i64 16, !44, i64 24, !44, i64 28, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !44, i64 64, !44, i64 67, !43, i64 72}
!60 = !{!49, !43, i64 16}
