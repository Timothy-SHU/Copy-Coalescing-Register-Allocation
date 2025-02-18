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
%struct.p5rx = type { ptr, i32, i32, %union.anon.15 }
%union.anon.15 = type { ptr }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.14, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.14 = type { i64 }
%struct.regexp_engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }

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

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_Tie__Hash__NamedCapture(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_TIEHASH) #4
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FETCH) #4
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.xpvcv, ptr %5, i64 0, i32 5
  store i32 17563656, ptr %6, align 8, !tbaa !41
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FETCH) #4
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.xpvcv, ptr %8, i64 0, i32 5
  store i32 34078724, ptr %9, align 8, !tbaa !41
  %10 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FETCH) #4
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.xpvcv, ptr %11, i64 0, i32 5
  store i32 33554448, ptr %12, align 8, !tbaa !41
  %13 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FETCH) #4
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 5
  store i32 33554433, ptr %15, align 8, !tbaa !41
  %16 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FETCH) #4
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 5
  store i32 16777248, ptr %18, align 8, !tbaa !41
  %19 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FETCH) #4
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.xpvcv, ptr %20, i64 0, i32 5
  store i32 51118082, ptr %21, align 8, !tbaa !41
  %22 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FIRSTKEY) #4
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 5
  store i32 0, ptr %24, align 8, !tbaa !41
  %25 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_FIRSTKEY) #4
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.xpvcv, ptr %26, i64 0, i32 5
  store i32 1, ptr %27, align 8, !tbaa !41
  %28 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_Tie__Hash__NamedCapture_flags) #4
  %29 = load ptr, ptr %25, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.xpvcv, ptr %29, i64 0, i32 12
  %31 = load i32, ptr %30, align 4, !tbaa !42
  %32 = and i32 %31, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %1
  %35 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %25) #4
  br label %39

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.xpvcv, ptr %29, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  br label %39

39:                                               ; preds = %34, %36
  %40 = phi ptr [ %35, %34 ], [ %38, %36 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = getelementptr inbounds %struct.xpvgv, ptr %41, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !41
  tail call fastcc void @tie_it(i8 noundef signext 45, i64 noundef 512, ptr noundef %43)
  tail call fastcc void @tie_it(i8 noundef signext 43, i64 noundef 256, ptr noundef %43)
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_Tie__Hash__NamedCapture_TIEHASH(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %6 = load i32, ptr %4, align 4, !tbaa !48
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.12) #4
  br label %18

18:                                               ; preds = %17, %1
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !49
  %25 = and i32 %24, 2098176
  %26 = icmp eq i32 %25, 1024
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  br label %32

30:                                               ; preds = %18
  %31 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %22, ptr noundef null, i32 noundef 2) #4
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi ptr [ %29, %27 ], [ %31, %30 ]
  %34 = getelementptr inbounds ptr, ptr %10, i64 2
  %35 = icmp ult ptr %34, %3
  br i1 %35, label %36, label %127

36:                                               ; preds = %32, %123
  %37 = phi ptr [ %125, %123 ], [ %34, %32 ]
  %38 = phi ptr [ %37, %123 ], [ %10, %32 ]
  %39 = phi i64 [ %124, %123 ], [ 256, %32 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %40 = load ptr, ptr %37, align 8, !tbaa !47
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !49
  %43 = and i32 %42, 2098176
  %44 = icmp eq i32 %43, 1024
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load ptr, ptr %40, align 8, !tbaa !51
  %47 = getelementptr inbounds %struct.xpv, ptr %46, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !52
  store i64 %48, ptr %2, align 8, !tbaa !54
  %49 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !41
  br label %53

51:                                               ; preds = %36
  %52 = call ptr @Perl_sv_2pv_flags(ptr noundef %40, ptr noundef nonnull %2, i32 noundef 34) #4
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi ptr [ %50, %45 ], [ %52, %51 ]
  %55 = load i64, ptr %2, align 8, !tbaa !54
  %56 = icmp eq i64 %55, 3
  br i1 %56, label %57, label %123

57:                                               ; preds = %53
  %58 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %54, ptr noundef nonnull dereferenceable(3) @.str.13, i64 3)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %123

60:                                               ; preds = %57
  %61 = getelementptr inbounds ptr, ptr %38, i64 3
  %62 = load ptr, ptr %61, align 8, !tbaa !47
  %63 = icmp eq ptr %62, null
  br i1 %63, label %120, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !49
  %67 = and i32 %66, 2097152
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %62, i32 noundef 2) #4
  br label %120

71:                                               ; preds = %64
  %72 = and i32 %66, 65280
  %73 = icmp ne i32 %72, 0
  %74 = and i32 %66, 255
  %75 = icmp eq i32 %74, 8
  %76 = or i1 %73, %75
  %77 = and i32 %66, 16777471
  %78 = icmp eq i32 %77, 16777226
  %79 = or i1 %78, %76
  br i1 %79, label %80, label %120

80:                                               ; preds = %71
  %81 = and i32 %66, 1024
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %62, align 8, !tbaa !51
  %85 = icmp eq ptr %84, null
  br i1 %85, label %120, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.xpv, ptr %84, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !52
  %89 = icmp ugt i64 %88, 1
  br i1 %89, label %120, label %90

90:                                               ; preds = %86
  %91 = icmp eq i64 %88, 0
  br i1 %91, label %120, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !41
  %95 = load i8, ptr %94, align 1, !tbaa !41
  %96 = icmp ne i8 %95, 48
  br label %120

97:                                               ; preds = %80
  %98 = and i32 %66, 768
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %97
  %101 = and i32 %66, 256
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %62, align 8, !tbaa !51
  %105 = getelementptr inbounds %struct.xpviv, ptr %104, i64 0, i32 4
  %106 = load i64, ptr %105, align 8, !tbaa !41
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %103, %100
  %109 = and i32 %66, 512
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %62, align 8, !tbaa !51
  %113 = getelementptr inbounds %struct.xpvnv, ptr %112, i64 0, i32 5
  %114 = load double, ptr %113, align 8, !tbaa !41
  %115 = fcmp uno double %114, 0.000000e+00
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = fcmp une double %114, 0.000000e+00
  br label %120

118:                                              ; preds = %97
  %119 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %62, i32 noundef 0) #4
  br label %120

120:                                              ; preds = %111, %69, %118, %71, %86, %92, %90, %83, %108, %116, %103, %60
  %121 = phi i1 [ false, %60 ], [ %70, %69 ], [ %119, %118 ], [ false, %71 ], [ false, %83 ], [ true, %86 ], [ false, %90 ], [ %96, %92 ], [ true, %103 ], [ false, %108 ], [ %117, %116 ], [ true, %111 ]
  %122 = select i1 %121, i64 512, i64 256
  br label %123

123:                                              ; preds = %120, %57, %53
  %124 = phi i64 [ %39, %57 ], [ %122, %120 ], [ %39, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  %125 = getelementptr inbounds ptr, ptr %37, i64 2
  %126 = icmp ult ptr %125, %3
  br i1 %126, label %36, label %127, !llvm.loop !55

127:                                              ; preds = %123, %32
  %128 = phi i64 [ 256, %32 ], [ %124, %123 ]
  %129 = call ptr @Perl_newSV_type(i32 noundef 1) #4
  %130 = call ptr @Perl_newSVrv(ptr noundef %129, ptr noundef %33) #4
  call void @Perl_sv_setuv(ptr noundef %130, i64 noundef %128) #4
  %131 = call ptr @Perl_sv_2mortal(ptr noundef %129) #4
  %132 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %133 = getelementptr inbounds ptr, ptr %132, i64 %20
  store ptr %131, ptr %133, align 8, !tbaa !47
  %134 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %135 = getelementptr inbounds ptr, ptr %134, i64 %20
  store ptr %135, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Tie__Hash__NamedCapture_FETCH(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !48
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !41
  %18 = shl i64 %12, 29
  %19 = ashr i64 %18, 32
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20
  %22 = load ptr, ptr @PL_curpm, align 8, !tbaa !47
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
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull %36) #4
  br label %37

37:                                               ; preds = %32, %27
  %38 = icmp eq ptr %28, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %41 = sext i32 %7 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !49
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39, %37
  %49 = and i32 %17, 524288
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void @Perl_croak_no_modify() #4
  br label %58

52:                                               ; preds = %48
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %54 = sext i32 %7 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  store ptr @PL_sv_undef, ptr %55, align 8, !tbaa !47
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %57 = getelementptr inbounds ptr, ptr %56, i64 %54
  br label %120

58:                                               ; preds = %51, %39
  %59 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %60 = sext i32 %7 to i64
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !47
  %63 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !41
  %65 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !49
  %67 = and i32 %66, -2145386240
  %68 = icmp eq i32 %67, -2147483392
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load ptr, ptr %64, align 8, !tbaa !51
  %71 = getelementptr inbounds %struct.xpvuv, ptr %70, i64 0, i32 4
  %72 = load i64, ptr %71, align 8, !tbaa !41
  br label %75

73:                                               ; preds = %58
  %74 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %64, i32 noundef 2) #4
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi i64 [ %72, %69 ], [ %74, %73 ]
  %77 = trunc i64 %76 to i32
  store ptr %21, ptr @PL_stack_sp, align 8, !tbaa !47
  %78 = getelementptr inbounds %struct.p5rx, ptr %28, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !41
  %80 = getelementptr inbounds %struct.regexp, ptr %79, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !60
  %82 = getelementptr inbounds %struct.regexp_engine, ptr %81, i64 0, i32 8
  %83 = load ptr, ptr %82, align 8, !tbaa !62
  %84 = icmp sgt i32 %30, 1
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %87 = getelementptr ptr, ptr %86, i64 %8
  %88 = getelementptr ptr, ptr %87, i64 2
  %89 = load ptr, ptr %88, align 8, !tbaa !47
  br label %90

90:                                               ; preds = %75, %85
  %91 = phi ptr [ %89, %85 ], [ null, %75 ]
  %92 = icmp sgt i32 %30, 2
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %95 = getelementptr ptr, ptr %94, i64 %8
  %96 = getelementptr ptr, ptr %95, i64 3
  %97 = load ptr, ptr %96, align 8, !tbaa !47
  br label %98

98:                                               ; preds = %90, %93
  %99 = phi ptr [ %97, %93 ], [ null, %90 ]
  %100 = or i32 %29, %77
  %101 = tail call ptr %83(ptr noundef %28, ptr noundef %91, ptr noundef %99, i32 noundef %100) #4
  %102 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %103 = and i32 %17, 262144
  %104 = icmp eq i32 %103, 0
  %105 = icmp eq ptr %101, null
  br i1 %104, label %114, label %106

106:                                              ; preds = %98
  br i1 %105, label %120, label %107

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.sv, ptr %101, i64 0, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !64
  %110 = icmp ugt i32 %109, 1
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = add i32 %109, -1
  store i32 %112, ptr %108, align 8, !tbaa !64
  br label %120

113:                                              ; preds = %107
  tail call void @Perl_sv_free2(ptr noundef nonnull %101, i32 noundef %109) #4
  br label %120

114:                                              ; preds = %98
  br i1 %105, label %117, label %115

115:                                              ; preds = %114
  %116 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %101) #4
  br label %117

117:                                              ; preds = %114, %115
  %118 = phi ptr [ %116, %115 ], [ @PL_sv_undef, %114 ]
  %119 = getelementptr inbounds ptr, ptr %102, i64 1
  store ptr %118, ptr %119, align 8, !tbaa !47
  br label %120

120:                                              ; preds = %113, %111, %106, %117, %52
  %121 = phi ptr [ %57, %52 ], [ %119, %117 ], [ %102, %106 ], [ %102, %111 ], [ %102, %113 ]
  store ptr %121, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Tie__Hash__NamedCapture_FIRSTKEY(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !48
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !41
  %18 = shl i64 %12, 29
  %19 = ashr i64 %18, 32
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20
  %22 = load ptr, ptr @PL_curpm, align 8, !tbaa !47
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
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = select i1 %29, ptr @.str.16, ptr @.str.17
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull %34) #4
  br label %35

35:                                               ; preds = %33, %27
  %36 = icmp eq ptr %28, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %39 = sext i32 %7 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !49
  %44 = and i32 %43, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %35, %37
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %48 = sext i32 %7 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  store ptr @PL_sv_undef, ptr %49, align 8, !tbaa !47
  %50 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  br label %90

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !41
  %55 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !49
  %57 = and i32 %56, -2145386240
  %58 = icmp eq i32 %57, -2147483392
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load ptr, ptr %54, align 8, !tbaa !51
  %61 = getelementptr inbounds %struct.xpvuv, ptr %60, i64 0, i32 4
  %62 = load i64, ptr %61, align 8, !tbaa !41
  br label %65

63:                                               ; preds = %52
  %64 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %54, i32 noundef 2) #4
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i64 [ %62, %59 ], [ %64, %63 ]
  %67 = trunc i64 %66 to i32
  store ptr %21, ptr @PL_stack_sp, align 8, !tbaa !47
  %68 = getelementptr inbounds %struct.p5rx, ptr %28, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !41
  %70 = getelementptr inbounds %struct.regexp, ptr %69, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !60
  %72 = getelementptr inbounds %struct.regexp_engine, ptr %71, i64 0, i32 9
  %73 = load ptr, ptr %72, align 8, !tbaa !65
  br i1 %29, label %79, label %74

74:                                               ; preds = %65
  %75 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %76 = getelementptr ptr, ptr %75, i64 %8
  %77 = getelementptr ptr, ptr %76, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !47
  br label %79

79:                                               ; preds = %65, %74
  %80 = phi ptr [ %78, %74 ], [ null, %65 ]
  %81 = or i32 %31, %67
  %82 = tail call ptr %73(ptr noundef nonnull %28, ptr noundef %80, i32 noundef %81) #4
  %83 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %84 = icmp eq ptr %82, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %82) #4
  br label %87

87:                                               ; preds = %79, %85
  %88 = phi ptr [ %86, %85 ], [ @PL_sv_undef, %79 ]
  %89 = getelementptr inbounds ptr, ptr %83, i64 1
  store ptr %88, ptr %89, align 8, !tbaa !47
  br label %90

90:                                               ; preds = %87, %46
  %91 = phi ptr [ %51, %46 ], [ %89, %87 ]
  store ptr %91, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Tie__Hash__NamedCapture_flags(ptr nocapture readnone %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !47
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !47
  %5 = load i32, ptr %3, align 4, !tbaa !48
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !47
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = shl i64 %11, 29
  %13 = ashr i64 %12, 32
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = load ptr, ptr @PL_stack_max, align 8, !tbaa !47
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %15 to i64
  %19 = sub i64 %17, %18
  %20 = icmp slt i64 %19, 16
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 2) #4
  br label %23

23:                                               ; preds = %1, %21
  %24 = phi ptr [ %22, %21 ], [ %15, %1 ]
  %25 = tail call ptr @Perl_sv_newmortal() #4
  %26 = getelementptr inbounds ptr, ptr %24, i64 1
  store ptr %25, ptr %26, align 8, !tbaa !47
  tail call void @Perl_sv_setuv(ptr noundef %25, i64 noundef 256) #4
  %27 = tail call ptr @Perl_sv_newmortal() #4
  %28 = getelementptr inbounds ptr, ptr %24, i64 2
  store ptr %27, ptr %28, align 8, !tbaa !47
  tail call void @Perl_sv_setuv(ptr noundef %27, i64 noundef 512) #4
  store ptr %28, ptr @PL_stack_sp, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @tie_it(i8 noundef signext %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 {
  %4 = alloca i8, align 1
  store i8 %0, ptr %4, align 1, !tbaa !41
  %5 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull %4, i64 noundef 1, i32 noundef 130, i32 noundef 12) #4
  %6 = getelementptr inbounds %struct.gv, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = call ptr @Perl_newSV_type(i32 noundef 1) #4
  %11 = call ptr @Perl_newSVuv(i64 noundef %1) #4
  %12 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  store ptr %11, ptr %12, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !49
  %15 = or i32 %14, 2048
  store i32 %15, ptr %13, align 4, !tbaa !49
  %16 = call ptr @Perl_sv_bless(ptr noundef %10, ptr noundef %2) #4
  %17 = call i32 @Perl_sv_unmagic(ptr noundef %9, i32 noundef 80) #4
  call void @Perl_sv_magic(ptr noundef %9, ptr noundef %10, i32 noundef 80, ptr noundef null, i32 noundef 0) #4
  %18 = icmp eq ptr %10, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !64
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = add i32 %21, -1
  store i32 %24, ptr %20, align 8, !tbaa !64
  br label %26

25:                                               ; preds = %19
  call void @Perl_sv_free2(ptr noundef nonnull %10, i32 noundef %21) #4
  br label %26

26:                                               ; preds = %3, %23, %25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVrv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare void @Perl_croak_no_modify() local_unnamed_addr #2

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #3

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind willreturn memory(argmem: read) }
attributes #4 = { nounwind }

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
!36 = !{!"cv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!38, !38, i64 0}
!42 = !{!43, !40, i64 92}
!43 = !{!"xpvcv", !37, i64 0, !38, i64 8, !44, i64 16, !38, i64 24, !37, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !37, i64 64, !38, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96}
!44 = !{!"long", !38, i64 0}
!45 = !{!46, !37, i64 0}
!46 = !{!"gv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!47 = !{!37, !37, i64 0}
!48 = !{!40, !40, i64 0}
!49 = !{!50, !40, i64 12}
!50 = !{!"sv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!51 = !{!50, !37, i64 0}
!52 = !{!53, !44, i64 16}
!53 = !{!"xpv", !37, i64 0, !38, i64 8, !44, i64 16, !38, i64 24}
!54 = !{!44, !44, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!59, !37, i64 56}
!59 = !{!"pmop", !37, i64 0, !37, i64 8, !37, i64 16, !44, i64 24, !40, i64 32, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !38, i64 34, !38, i64 35, !37, i64 40, !37, i64 48, !37, i64 56, !40, i64 64, !38, i64 72, !38, i64 80, !37, i64 88}
!60 = !{!61, !37, i64 32}
!61 = !{!"regexp", !37, i64 0, !38, i64 8, !44, i64 16, !38, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !40, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !37, i64 104, !40, i64 112, !40, i64 116, !37, i64 120, !37, i64 128, !37, i64 136, !44, i64 144, !44, i64 152, !44, i64 160, !44, i64 168, !40, i64 176, !40, i64 176, !37, i64 184}
!62 = !{!63, !37, i64 64}
!63 = !{!"regexp_engine", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88}
!64 = !{!50, !40, i64 8}
!65 = !{!63, !37, i64 72}
!66 = !{!67, !37, i64 32}
!67 = !{!"gp", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 28, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !40, i64 64, !40, i64 67, !37, i64 72}
