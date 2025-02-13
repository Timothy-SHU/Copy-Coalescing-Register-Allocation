; ModuleID = 'ext/Tie-Hash-NamedCapture/NamedCapture.c'
source_filename = "ext/Tie-Hash-NamedCapture/NamedCapture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon, ptr, %union.anon.0, %union.anon.1, %union.anon.2, ptr, %union.anon.3, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu, %union._xnvu }
%union.anon.5 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.8 }
%union.anon.8 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.9, %union._xivu }
%union.anon.9 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu, %union._xnvu }
%union.anon.10 = type { i64 }
%struct.pmop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, i32, %union.anon.11, %union.anon.12, ptr }
%union.anon.11 = type { ptr }
%union.anon.12 = type { ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.13, %union._xivu }
%union.anon.13 = type { i64 }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.14, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.14 = type { i64 }
%struct.regexp_engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.p5rx = type { ptr, i32, i32, %union.anon.15 }
%union.anon.15 = type { ptr }

@.str = private unnamed_addr constant [41 x i8] c"ext/Tie-Hash-NamedCapture/NamedCapture.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Tie::Hash::NamedCapture::TIEHASH\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Tie::Hash::NamedCapture::CLEAR\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Tie::Hash::NamedCapture::DELETE\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Tie::Hash::NamedCapture::EXISTS\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Tie::Hash::NamedCapture::FETCH\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Tie::Hash::NamedCapture::SCALAR\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Tie::Hash::NamedCapture::STORE\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Tie::Hash::NamedCapture::FIRSTKEY\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Tie::Hash::NamedCapture::NEXTKEY\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Tie::Hash::NamedCapture::flags\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"package, ...\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@PL_curpm = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"$key\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"$key, $value\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"$lastkey\00", align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_Tie__Hash__NamedCapture(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_TIEHASH) #5
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FETCH) #5
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.xpvcv, ptr %5, i64 0, i32 5
  store i32 17563656, ptr %6, align 8, !tbaa !42
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FETCH) #5
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = getelementptr inbounds %struct.xpvcv, ptr %8, i64 0, i32 5
  store i32 34078724, ptr %9, align 8, !tbaa !42
  %10 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FETCH) #5
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.xpvcv, ptr %11, i64 0, i32 5
  store i32 33554448, ptr %12, align 8, !tbaa !42
  %13 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FETCH) #5
  %14 = load ptr, ptr %13, align 8, !tbaa !36
  %15 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 5
  store i32 33554433, ptr %15, align 8, !tbaa !42
  %16 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FETCH) #5
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  %18 = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 5
  store i32 16777248, ptr %18, align 8, !tbaa !42
  %19 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FETCH) #5
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  %21 = getelementptr inbounds %struct.xpvcv, ptr %20, i64 0, i32 5
  store i32 51118082, ptr %21, align 8, !tbaa !42
  %22 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FIRSTKEY) #5
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 5
  store i32 0, ptr %24, align 8, !tbaa !42
  %25 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FIRSTKEY) #5
  %26 = load ptr, ptr %25, align 8, !tbaa !36
  %27 = getelementptr inbounds %struct.xpvcv, ptr %26, i64 0, i32 5
  store i32 1, ptr %27, align 8, !tbaa !42
  %28 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_flags) #5
  %29 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %25) #6
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.xpvgv, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  tail call fastcc void @tie_it(i8 noundef signext 45, i64 noundef 512, ptr noundef %32) #6
  tail call fastcc void @tie_it(i8 noundef signext 43, i64 noundef 256, ptr noundef %32) #6
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Tie__Hash__NamedCapture_TIEHASH(ptr noundef %0) #0 !prof !35 !PGOFuncName !45 {
  %2 = alloca i64, align 8
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
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.12) #5
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi ptr [ %18, %17 ], [ %7, %1 ]
  %21 = sext i32 %8 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !48
  %26 = and i32 %25, 2098176
  %27 = icmp eq i32 %26, 1024
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  br label %33

31:                                               ; preds = %19
  %32 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %23, ptr noundef null, i32 noundef 2) #5
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi ptr [ %30, %28 ], [ %32, %31 ]
  %35 = getelementptr inbounds ptr, ptr %10, i64 2
  %36 = icmp ult ptr %35, %3
  br i1 %36, label %37, label %129

37:                                               ; preds = %33, %125
  %38 = phi ptr [ %127, %125 ], [ %35, %33 ]
  %39 = phi ptr [ %38, %125 ], [ %10, %33 ]
  %40 = phi i64 [ %126, %125 ], [ 256, %33 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %41 = load ptr, ptr %38, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !48
  %44 = and i32 %43, 2098176
  %45 = icmp eq i32 %44, 1024
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load ptr, ptr %41, align 8, !tbaa !50
  %48 = getelementptr inbounds %struct.xpv, ptr %47, i64 0, i32 2
  %49 = load i64, ptr %48, align 8, !tbaa !51
  store i64 %49, ptr %2, align 8, !tbaa !54
  %50 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !42
  br label %55

52:                                               ; preds = %37
  %53 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %41, ptr noundef nonnull %2, i32 noundef 34) #5
  %54 = load i64, ptr %2, align 8, !tbaa !54
  br label %55

55:                                               ; preds = %52, %46
  %56 = phi i64 [ %54, %52 ], [ %49, %46 ]
  %57 = phi ptr [ %53, %52 ], [ %51, %46 ]
  %58 = icmp eq i64 %56, 3
  br i1 %58, label %59, label %125

59:                                               ; preds = %55
  %60 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %57, ptr noundef nonnull dereferenceable(3) @.str.13, i64 3)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %125

62:                                               ; preds = %59
  %63 = getelementptr inbounds ptr, ptr %39, i64 3
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = icmp eq ptr %64, null
  br i1 %65, label %125, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !48
  %69 = and i32 %68, 2097152
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %64, i32 noundef 2) #5
  %73 = freeze i1 %72
  br i1 %73, label %124, label %125

74:                                               ; preds = %66
  %75 = and i32 %68, 65280
  %76 = icmp ne i32 %75, 0
  %77 = and i32 %68, 255
  %78 = icmp eq i32 %77, 8
  %79 = or i1 %76, %78
  %80 = and i32 %68, 16777471
  %81 = icmp eq i32 %80, 16777226
  %82 = or i1 %81, %79
  br i1 %82, label %83, label %125

83:                                               ; preds = %74
  %84 = and i32 %68, 1024
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %64, align 8, !tbaa !50
  %88 = icmp eq ptr %87, null
  br i1 %88, label %125, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.xpv, ptr %87, i64 0, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !51
  %92 = icmp ugt i64 %91, 1
  br i1 %92, label %124, label %93

93:                                               ; preds = %89
  %94 = icmp eq i64 %91, 0
  br i1 %94, label %125, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !42
  %98 = load i8, ptr %97, align 1, !tbaa !42
  %99 = freeze i8 %98
  %100 = icmp eq i8 %99, 48
  br i1 %100, label %125, label %124

101:                                              ; preds = %83
  %102 = and i32 %68, 768
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %121, label %104

104:                                              ; preds = %101
  %105 = and i32 %68, 256
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %64, align 8, !tbaa !50
  %109 = getelementptr inbounds %struct.xpviv, ptr %108, i64 0, i32 4
  %110 = load i64, ptr %109, align 8, !tbaa !42
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107, %104
  %113 = and i32 %68, 512
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %64, align 8, !tbaa !50
  %117 = getelementptr inbounds %struct.xpvnv, ptr %116, i64 0, i32 5
  %118 = load double, ptr %117, align 8, !tbaa !42
  %119 = freeze double %118
  %120 = fcmp une double %119, 0.000000e+00
  br i1 %120, label %124, label %125

121:                                              ; preds = %101
  %122 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %64, i32 noundef 0) #5
  %123 = freeze i1 %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %115, %107, %89, %95, %121, %71
  br label %125

125:                                              ; preds = %115, %112, %93, %86, %74, %62, %124, %71, %121, %95, %59, %55
  %126 = phi i64 [ %40, %59 ], [ %40, %55 ], [ 512, %124 ], [ 256, %71 ], [ 256, %121 ], [ 256, %95 ], [ 256, %62 ], [ 256, %74 ], [ 256, %86 ], [ 256, %93 ], [ 256, %112 ], [ 256, %115 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  %127 = getelementptr inbounds ptr, ptr %38, i64 2
  %128 = icmp ult ptr %127, %3
  br i1 %128, label %37, label %129, !llvm.loop !55

129:                                              ; preds = %125, %33
  %130 = phi i64 [ 256, %33 ], [ %126, %125 ]
  %131 = call ptr @Perl_newSV_type(i32 noundef 1) #5
  %132 = call ptr @Perl_newSVrv(ptr noundef %131, ptr noundef %34) #5
  call void @Perl_sv_setuv(ptr noundef %132, i64 noundef %130) #5
  %133 = call ptr @Perl_sv_2mortal(ptr noundef %131) #5
  %134 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %135 = getelementptr inbounds ptr, ptr %134, i64 %21
  store ptr %133, ptr %135, align 8, !tbaa !46
  %136 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %137 = getelementptr inbounds ptr, ptr %136, i64 %21
  store ptr %137, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Tie__Hash__NamedCapture_FETCH(ptr noundef %0) #0 !prof !35 !PGOFuncName !57 {
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
  %15 = load ptr, ptr %0, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !42
  %18 = shl i64 %12, 29
  %19 = ashr i64 %18, 32
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20
  %22 = load ptr, ptr @PL_curpm, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.pmop, ptr %22, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  br label %27

27:                                               ; preds = %1, %24
  %28 = phi ptr [ %26, %24 ], [ null, %1 ]
  %29 = and i32 %17, 255
  %30 = ashr i32 %17, 24
  %31 = icmp eq i32 %30, %14
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = icmp eq i32 %30, 2
  %34 = icmp eq i32 %30, 3
  %35 = select i1 %34, ptr @.str.15, ptr @.str.16
  %36 = select i1 %33, ptr @.str.14, ptr %35
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull %36) #5
  br label %37

37:                                               ; preds = %32, %27
  %38 = icmp eq ptr %28, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %41 = sext i32 %7 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !48
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %39, %37
  %49 = and i32 %17, 524288
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  tail call void @Perl_croak_no_modify() #5
  %52 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %53 = sext i32 %7 to i64
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  br label %62

56:                                               ; preds = %48
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %58 = sext i32 %7 to i64
  %59 = getelementptr inbounds ptr, ptr %57, i64 %58
  store ptr @PL_sv_undef, ptr %59, align 8, !tbaa !46
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %61 = getelementptr inbounds ptr, ptr %60, i64 %58
  br label %110

62:                                               ; preds = %51, %39
  %63 = phi ptr [ %55, %51 ], [ %43, %39 ]
  %64 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !42
  %66 = getelementptr inbounds %struct.sv, ptr %65, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !48
  %68 = and i32 %67, -2145386240
  %69 = icmp eq i32 %68, -2147483392
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load ptr, ptr %65, align 8, !tbaa !50
  %72 = getelementptr inbounds %struct.xpvuv, ptr %71, i64 0, i32 4
  %73 = load i64, ptr %72, align 8, !tbaa !42
  br label %76

74:                                               ; preds = %62
  %75 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %65, i32 noundef 2) #5
  br label %76

76:                                               ; preds = %74, %70
  %77 = phi i64 [ %73, %70 ], [ %75, %74 ]
  %78 = trunc i64 %77 to i32
  store ptr %21, ptr @PL_stack_sp, align 8, !tbaa !46
  %79 = tail call fastcc ptr @S_ReANY(ptr noundef %28) #6
  %80 = getelementptr inbounds %struct.regexp, ptr %79, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !60
  %82 = getelementptr inbounds %struct.regexp_engine, ptr %81, i64 0, i32 8
  %83 = load ptr, ptr %82, align 8, !tbaa !62
  %84 = icmp sgt i32 %30, 1
  br i1 %84, label %85, label %94

85:                                               ; preds = %76
  %86 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %87 = getelementptr ptr, ptr %86, i64 %8
  %88 = getelementptr ptr, ptr %87, i64 2
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = icmp eq i32 %30, 2
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = getelementptr ptr, ptr %87, i64 3
  %93 = load ptr, ptr %92, align 8, !tbaa !46
  br label %94

94:                                               ; preds = %76, %85, %91
  %95 = phi ptr [ %89, %91 ], [ %89, %85 ], [ null, %76 ]
  %96 = phi ptr [ %93, %91 ], [ null, %85 ], [ null, %76 ]
  %97 = or i32 %29, %78
  %98 = tail call ptr %83(ptr noundef %28, ptr noundef %95, ptr noundef %96, i32 noundef %97) #5
  %99 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %100 = and i32 %17, 262144
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %94
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %98) #6
  br label %110

103:                                              ; preds = %94
  %104 = icmp eq ptr %98, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %103
  %106 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %98) #5
  br label %107

107:                                              ; preds = %103, %105
  %108 = phi ptr [ %106, %105 ], [ @PL_sv_undef, %103 ]
  %109 = getelementptr inbounds ptr, ptr %99, i64 1
  store ptr %108, ptr %109, align 8, !tbaa !46
  br label %110

110:                                              ; preds = %102, %107, %56
  %111 = phi ptr [ %61, %56 ], [ %99, %102 ], [ %109, %107 ]
  store ptr %111, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Tie__Hash__NamedCapture_FIRSTKEY(ptr noundef %0) #0 !prof !35 !PGOFuncName !64 {
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
  %15 = load ptr, ptr %0, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !42
  %18 = shl i64 %12, 29
  %19 = ashr i64 %18, 32
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20
  %22 = load ptr, ptr @PL_curpm, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.pmop, ptr %22, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  br label %27

27:                                               ; preds = %1, %24
  %28 = phi ptr [ %26, %24 ], [ null, %1 ]
  %29 = icmp eq i32 %17, 0
  %30 = select i1 %29, i32 1, i32 2
  %31 = select i1 %29, i32 64, i32 128
  %32 = icmp eq i32 %30, %14
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = select i1 %29, ptr @.str.16, ptr @.str.17
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull %34) #5
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  br label %36

36:                                               ; preds = %33, %27
  %37 = phi ptr [ %35, %33 ], [ %6, %27 ]
  %38 = icmp eq ptr %28, null
  %39 = sext i32 %7 to i64
  br i1 %38, label %47, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds ptr, ptr %37, i64 %39
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !48
  %45 = and i32 %44, 2048
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %36, %40
  %48 = getelementptr inbounds ptr, ptr %37, i64 %39
  store ptr @PL_sv_undef, ptr %48, align 8, !tbaa !46
  %49 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %50 = getelementptr inbounds ptr, ptr %49, i64 %39
  br label %88

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !48
  %56 = and i32 %55, -2145386240
  %57 = icmp eq i32 %56, -2147483392
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load ptr, ptr %53, align 8, !tbaa !50
  %60 = getelementptr inbounds %struct.xpvuv, ptr %59, i64 0, i32 4
  %61 = load i64, ptr %60, align 8, !tbaa !42
  br label %64

62:                                               ; preds = %51
  %63 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %53, i32 noundef 2) #5
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i64 [ %61, %58 ], [ %63, %62 ]
  %66 = trunc i64 %65 to i32
  store ptr %21, ptr @PL_stack_sp, align 8, !tbaa !46
  %67 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %28) #6
  %68 = getelementptr inbounds %struct.regexp, ptr %67, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !60
  %70 = getelementptr inbounds %struct.regexp_engine, ptr %69, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !65
  br i1 %29, label %77, label %72

72:                                               ; preds = %64
  %73 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %74 = getelementptr ptr, ptr %73, i64 %8
  %75 = getelementptr ptr, ptr %74, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  br label %77

77:                                               ; preds = %64, %72
  %78 = phi ptr [ %76, %72 ], [ null, %64 ]
  %79 = or i32 %31, %66
  %80 = tail call ptr %71(ptr noundef nonnull %28, ptr noundef %78, i32 noundef %79) #5
  %81 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %82 = icmp eq ptr %80, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %77
  %84 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %80) #5
  br label %85

85:                                               ; preds = %77, %83
  %86 = phi ptr [ %84, %83 ], [ @PL_sv_undef, %77 ]
  %87 = getelementptr inbounds ptr, ptr %81, i64 1
  store ptr %86, ptr %87, align 8, !tbaa !46
  br label %88

88:                                               ; preds = %85, %47
  %89 = phi ptr [ %50, %47 ], [ %87, %85 ]
  store ptr %89, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Tie__Hash__NamedCapture_flags(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !66 {
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
  %12 = shl i64 %11, 29
  %13 = ashr i64 %12, 32
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %15 to i64
  %19 = sub i64 %17, %18
  %20 = icmp slt i64 %19, 16
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 2) #5
  br label %23

23:                                               ; preds = %1, %21
  %24 = phi ptr [ %22, %21 ], [ %15, %1 ]
  %25 = tail call ptr @Perl_sv_newmortal() #5
  %26 = getelementptr inbounds ptr, ptr %24, i64 1
  store ptr %25, ptr %26, align 8, !tbaa !46
  tail call void @Perl_sv_setuv(ptr noundef %25, i64 noundef 256) #5
  %27 = tail call ptr @Perl_sv_newmortal() #5
  %28 = getelementptr inbounds ptr, ptr %24, i64 2
  store ptr %27, ptr %28, align 8, !tbaa !46
  tail call void @Perl_sv_setuv(ptr noundef %27, i64 noundef 512) #5
  store ptr %28, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !67 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !68
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #5
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tie_it(i8 noundef signext %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !70 {
  %4 = alloca i8, align 1
  store i8 %0, ptr %4, align 1, !tbaa !42
  %5 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull %4, i64 noundef 1, i32 noundef 130, i32 noundef 12) #5
  %6 = getelementptr inbounds %struct.gv, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = call ptr @Perl_newSV_type(i32 noundef 1) #5
  %11 = call ptr @Perl_newSVuv(i64 noundef %1) #5
  %12 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  store ptr %11, ptr %12, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !48
  %15 = or i32 %14, 2048
  store i32 %15, ptr %13, align 4, !tbaa !48
  %16 = call ptr @Perl_sv_bless(ptr noundef %10, ptr noundef %2) #5
  %17 = call i32 @Perl_sv_unmagic(ptr noundef %9, i32 noundef 80) #5
  call void @Perl_sv_magic(ptr noundef %9, ptr noundef %10, i32 noundef 80, ptr noundef null, i32 noundef 0) #5
  call fastcc void @S_SvREFCNT_dec(ptr noundef %10) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVrv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_no_modify() local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @S_ReANY(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !35 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct.p5rx, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !74 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !75
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !75
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #5
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491972207}
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
!23 = !{i32 950000, i64 21523500, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 64, i32 4611}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !38, i64 0}
!37 = !{!"cv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!39, !39, i64 0}
!43 = !{!44, !38, i64 0}
!44 = !{!"gv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!45 = !{!"NamedCapture.c:XS_Tie__Hash__NamedCapture_TIEHASH"}
!46 = !{!38, !38, i64 0}
!47 = !{!41, !41, i64 0}
!48 = !{!49, !41, i64 12}
!49 = !{!"sv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!50 = !{!49, !38, i64 0}
!51 = !{!52, !53, i64 16}
!52 = !{!"xpv", !38, i64 0, !39, i64 8, !53, i64 16, !39, i64 24}
!53 = !{!"long", !39, i64 0}
!54 = !{!53, !53, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"NamedCapture.c:XS_Tie__Hash__NamedCapture_FETCH"}
!58 = !{!59, !38, i64 56}
!59 = !{!"pmop", !38, i64 0, !38, i64 8, !38, i64 16, !53, i64 24, !41, i64 32, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !39, i64 34, !39, i64 35, !38, i64 40, !38, i64 48, !38, i64 56, !41, i64 64, !39, i64 72, !39, i64 80, !38, i64 88}
!60 = !{!61, !38, i64 32}
!61 = !{!"regexp", !38, i64 0, !39, i64 8, !53, i64 16, !39, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !41, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !38, i64 88, !41, i64 96, !41, i64 100, !38, i64 104, !41, i64 112, !41, i64 116, !38, i64 120, !38, i64 128, !38, i64 136, !53, i64 144, !53, i64 152, !53, i64 160, !53, i64 168, !41, i64 176, !41, i64 176, !38, i64 184}
!62 = !{!63, !38, i64 64}
!63 = !{!"regexp_engine", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88}
!64 = !{!"NamedCapture.c:XS_Tie__Hash__NamedCapture_FIRSTKEY"}
!65 = !{!63, !38, i64 72}
!66 = !{!"NamedCapture.c:XS_Tie__Hash__NamedCapture_flags"}
!67 = !{!"NamedCapture.c:S_CvGV"}
!68 = !{!69, !41, i64 92}
!69 = !{!"xpvcv", !38, i64 0, !39, i64 8, !53, i64 16, !39, i64 24, !38, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !38, i64 64, !39, i64 72, !38, i64 80, !41, i64 88, !41, i64 92, !41, i64 96}
!70 = !{!"NamedCapture.c:tie_it"}
!71 = !{!72, !38, i64 32}
!72 = !{!"gp", !38, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !41, i64 28, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !41, i64 64, !41, i64 67, !38, i64 72}
!73 = !{!"NamedCapture.c:S_ReANY"}
!74 = !{!"NamedCapture.c:S_SvREFCNT_dec"}
!75 = !{!49, !41, i64 8}
