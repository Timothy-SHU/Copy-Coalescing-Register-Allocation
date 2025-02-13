; ModuleID = 'numeric.c'
source_filename = "numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.0, %union._xivu, %union._xnvu }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.1 }
%union.anon.1 = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"Integer overflow in binary number\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Illegal binary digit '%c' ignored\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Binary number > 0b11111111111111111111111111111111 non-portable\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Integer overflow in hexadecimal number\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Illegal hexadecimal digit '%c' ignored\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Hexadecimal number > 0xffffffff non-portable\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Integer overflow in octal number\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Illegal octal digit '%c' ignored\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Octal number > 037777777777 non-portable\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"0 but true\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"inqs#\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @Perl_cast_ulong(double noundef %0) local_unnamed_addr #0 !prof !50 {
  %2 = fcmp olt double %0, 0.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ole double %0, 0xC1E0000000000000
  %5 = select i1 %4, double 0xC1E0000000000000, double %0
  %6 = fptosi double %5 to i32
  br label %14

7:                                                ; preds = %1
  %8 = fcmp olt double %0, 0x41F0000000000000
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = fptoui double %0 to i32
  br label %14

11:                                               ; preds = %7
  %12 = fcmp ogt double %0, 0.000000e+00
  %13 = sext i1 %12 to i32
  br label %14

14:                                               ; preds = %11, %9, %3
  %15 = phi i32 [ %6, %3 ], [ %10, %9 ], [ %13, %11 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @Perl_cast_i32(double noundef %0) local_unnamed_addr #0 !prof !50 {
  %2 = fcmp olt double %0, 0x41E0000000000000
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ole double %0, 0xC1E0000000000000
  %5 = select i1 %4, double 0xC1E0000000000000, double %0
  %6 = fptosi double %5 to i32
  br label %14

7:                                                ; preds = %1
  %8 = fcmp olt double %0, 0x41F0000000000000
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = fptoui double %0 to i32
  br label %14

11:                                               ; preds = %7
  %12 = fcmp ogt double %0, 0.000000e+00
  %13 = sext i1 %12 to i32
  br label %14

14:                                               ; preds = %11, %9, %3
  %15 = phi i32 [ %6, %3 ], [ %10, %9 ], [ %13, %11 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i64 @Perl_cast_iv(double noundef %0) local_unnamed_addr #0 !prof !51 {
  %2 = fcmp olt double %0, 0x43E0000000000000
  br i1 %2, label %3, label %7, !prof !52

3:                                                ; preds = %1
  %4 = fcmp ole double %0, 0xC3E0000000000000
  %5 = select i1 %4, double 0xC3E0000000000000, double %0
  %6 = fptosi double %5 to i64
  br label %14

7:                                                ; preds = %1
  %8 = fcmp olt double %0, 0x43F0000000000000
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = fptoui double %0 to i64
  br label %14

11:                                               ; preds = %7
  %12 = fcmp ogt double %0, 0.000000e+00
  %13 = sext i1 %12 to i64
  br label %14

14:                                               ; preds = %11, %9, %3
  %15 = phi i64 [ %6, %3 ], [ %10, %9 ], [ %13, %11 ]
  ret i64 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i64 @Perl_cast_uv(double noundef %0) local_unnamed_addr #0 !prof !53 {
  %2 = fcmp olt double %0, 0.000000e+00
  br i1 %2, label %3, label %7, !prof !54

3:                                                ; preds = %1
  %4 = fcmp ole double %0, 0xC3E0000000000000
  %5 = select i1 %4, double 0xC3E0000000000000, double %0
  %6 = fptosi double %5 to i64
  br label %14

7:                                                ; preds = %1
  %8 = fcmp olt double %0, 0x43F0000000000000
  br i1 %8, label %9, label %11, !prof !55

9:                                                ; preds = %7
  %10 = fptoui double %0 to i64
  br label %14

11:                                               ; preds = %7
  %12 = fcmp ogt double %0, 0.000000e+00
  %13 = sext i1 %12 to i64
  br label %14

14:                                               ; preds = %11, %9, %3
  %15 = phi i64 [ %6, %3 ], [ %10, %9 ], [ %13, %11 ]
  ret i64 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_grok_bin(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef writeonly %3) local_unnamed_addr #1 !prof !50 {
  %5 = load i64, ptr %1, align 8, !tbaa !56
  %6 = load i32, ptr %2, align 4, !tbaa !60
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %6, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i64 %5, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %32

13:                                               ; preds = %4
  %14 = load i8, ptr %0, align 1, !tbaa !62
  %15 = and i8 %14, -33
  %16 = icmp eq i8 %15, 66
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %0, i64 1
  %19 = add i64 %5, -1
  br label %32

20:                                               ; preds = %13
  %21 = icmp ugt i64 %5, 1
  br i1 %21, label %22, label %36

22:                                               ; preds = %20
  %23 = icmp eq i8 %14, 48
  br i1 %23, label %24, label %36

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %0, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !62
  %27 = and i8 %26, -33
  %28 = icmp eq i8 %27, 66
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %0, i64 2
  %31 = add i64 %5, -2
  br label %32

32:                                               ; preds = %29, %17, %4
  %33 = phi i64 [ %19, %17 ], [ %31, %29 ], [ %5, %4 ]
  %34 = phi ptr [ %18, %17 ], [ %30, %29 ], [ %0, %4 ]
  %35 = icmp eq i64 %33, 0
  br i1 %35, label %122, label %36

36:                                               ; preds = %20, %22, %24, %32
  %37 = phi ptr [ %34, %32 ], [ %0, %24 ], [ %0, %22 ], [ %0, %20 ]
  %38 = phi i64 [ %33, %32 ], [ %5, %24 ], [ %5, %22 ], [ 1, %20 ]
  br label %39

39:                                               ; preds = %36, %92
  %40 = phi i8 [ %95, %92 ], [ 0, %36 ]
  %41 = phi ptr [ %96, %92 ], [ %37, %36 ]
  %42 = phi double [ %94, %92 ], [ 0.000000e+00, %36 ]
  %43 = phi i64 [ %93, %92 ], [ 0, %36 ]
  %44 = phi i64 [ %52, %92 ], [ %38, %36 ]
  %45 = add i64 %44, -1
  %46 = load i8, ptr %41, align 1, !tbaa !62
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %98, label %48

48:                                               ; preds = %39
  %49 = and i8 %46, -2
  %50 = icmp eq i8 %49, 48
  br i1 %50, label %51, label %74

51:                                               ; preds = %48, %84
  %52 = phi i64 [ %45, %48 ], [ %85, %84 ]
  %53 = phi ptr [ %41, %48 ], [ %80, %84 ]
  %54 = phi i8 [ %46, %48 ], [ %81, %84 ]
  %55 = and i8 %40, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = icmp sgt i64 %43, -1
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = shl nuw i64 %43, 1
  %61 = zext nneg i8 %54 to i64
  %62 = add nsw i64 %61, -48
  %63 = or i64 %62, %60
  br label %92

64:                                               ; preds = %57
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 15, ptr noundef nonnull @.str) #12
  %65 = uitofp i64 %43 to double
  br label %66

66:                                               ; preds = %64, %51
  %67 = phi double [ %42, %51 ], [ %65, %64 ]
  %68 = phi i8 [ %40, %51 ], [ 1, %64 ]
  %69 = fmul double %67, 2.000000e+00
  %70 = zext nneg i8 %54 to i32
  %71 = add nsw i32 %70, -48
  %72 = sitofp i32 %71 to double
  %73 = fadd double %69, %72
  br label %92

74:                                               ; preds = %48
  %75 = icmp ne i8 %46, 95
  %76 = icmp eq i64 %45, 0
  %77 = or i1 %76, %75
  %78 = or i1 %8, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds i8, ptr %41, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !62
  %82 = and i8 %81, -2
  %83 = icmp eq i8 %82, 48
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = add i64 %44, -2
  br label %51

86:                                               ; preds = %74, %79
  %87 = load i32, ptr %2, align 4, !tbaa !60
  %88 = and i32 %87, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = sext i8 %46 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 31, ptr noundef nonnull @.str.1, i32 noundef %91) #12
  br label %98

92:                                               ; preds = %66, %59
  %93 = phi i64 [ %43, %66 ], [ %63, %59 ]
  %94 = phi double [ %73, %66 ], [ %42, %59 ]
  %95 = phi i8 [ %68, %66 ], [ %40, %59 ]
  %96 = getelementptr inbounds i8, ptr %53, i64 1
  %97 = icmp eq i64 %52, 0
  br i1 %97, label %98, label %39, !llvm.loop !63

98:                                               ; preds = %39, %92, %86, %90
  %99 = phi i64 [ %43, %86 ], [ %43, %90 ], [ %43, %39 ], [ %93, %92 ]
  %100 = phi double [ %42, %86 ], [ %42, %90 ], [ %42, %39 ], [ %94, %92 ]
  %101 = phi ptr [ %41, %86 ], [ %41, %90 ], [ %41, %39 ], [ %96, %92 ]
  %102 = phi i8 [ %40, %86 ], [ %40, %90 ], [ %40, %39 ], [ %95, %92 ]
  %103 = and i8 %102, 1
  %104 = icmp ne i8 %103, 0
  %105 = fcmp ogt double %100, 0x41EFFFFFFFE00000
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %114, label %107

107:                                              ; preds = %98
  %108 = icmp ult i64 %99, 4294967296
  %109 = select i1 %104, i1 true, i1 %108
  br i1 %109, label %118, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %2, align 4, !tbaa !60
  %112 = and i32 %111, 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %98, %110
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.2) #12
  %115 = ptrtoint ptr %101 to i64
  %116 = ptrtoint ptr %0 to i64
  %117 = sub i64 %115, %116
  store i64 %117, ptr %1, align 8, !tbaa !56
  br i1 %104, label %130, label %128

118:                                              ; preds = %107
  %119 = ptrtoint ptr %101 to i64
  %120 = ptrtoint ptr %0 to i64
  %121 = sub i64 %119, %120
  store i64 %121, ptr %1, align 8, !tbaa !56
  br i1 %104, label %130, label %128

122:                                              ; preds = %110, %32
  %123 = phi ptr [ %34, %32 ], [ %101, %110 ]
  %124 = phi i64 [ 0, %32 ], [ %99, %110 ]
  %125 = ptrtoint ptr %123 to i64
  %126 = ptrtoint ptr %0 to i64
  %127 = sub i64 %125, %126
  store i64 %127, ptr %1, align 8, !tbaa !56
  br label %128

128:                                              ; preds = %122, %114, %118
  %129 = phi i64 [ %99, %118 ], [ %99, %114 ], [ %124, %122 ]
  store i32 0, ptr %2, align 4, !tbaa !60
  br label %133

130:                                              ; preds = %114, %118
  store i32 2, ptr %2, align 4, !tbaa !60
  %131 = icmp eq ptr %3, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %130
  store double %100, ptr %3, align 8, !tbaa !65
  br label %133

133:                                              ; preds = %130, %132, %128
  %134 = phi i64 [ %129, %128 ], [ -1, %132 ], [ -1, %130 ]
  ret i64 %134
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_grok_hex(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef writeonly %3) local_unnamed_addr #1 !prof !67 {
  %5 = load i64, ptr %1, align 8, !tbaa !56
  %6 = load i32, ptr %2, align 4, !tbaa !60
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %6, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32, !prof !68

11:                                               ; preds = %4
  %12 = icmp eq i64 %5, 0
  br i1 %12, label %137, label %13

13:                                               ; preds = %11
  %14 = load i8, ptr %0, align 1, !tbaa !62
  %15 = and i8 %14, -33
  %16 = icmp eq i8 %15, 88
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %0, i64 1
  %19 = add i64 %5, -1
  br label %32

20:                                               ; preds = %13
  %21 = icmp eq i64 %5, 1
  br i1 %21, label %36, label %22

22:                                               ; preds = %20
  %23 = icmp eq i8 %14, 48
  br i1 %23, label %24, label %36

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %0, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !62
  %27 = and i8 %26, -33
  %28 = icmp eq i8 %27, 88
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %0, i64 2
  %31 = add i64 %5, -2
  br label %32

32:                                               ; preds = %29, %17, %4
  %33 = phi i64 [ %5, %4 ], [ %19, %17 ], [ %31, %29 ]
  %34 = phi ptr [ %0, %4 ], [ %18, %17 ], [ %30, %29 ]
  %35 = icmp eq i64 %33, 0
  br i1 %35, label %137, label %36, !prof !69

36:                                               ; preds = %20, %22, %24, %32
  %37 = phi ptr [ %34, %32 ], [ %0, %24 ], [ %0, %22 ], [ %0, %20 ]
  %38 = phi i64 [ %33, %32 ], [ %5, %24 ], [ %5, %22 ], [ 1, %20 ]
  br label %39

39:                                               ; preds = %36, %114
  %40 = phi i8 [ %117, %114 ], [ 0, %36 ]
  %41 = phi ptr [ %118, %114 ], [ %37, %36 ]
  %42 = phi double [ %116, %114 ], [ 0.000000e+00, %36 ]
  %43 = phi i64 [ %115, %114 ], [ 0, %36 ]
  %44 = phi i64 [ %57, %114 ], [ %38, %36 ]
  %45 = add i64 %44, -1
  %46 = load i8, ptr %41, align 1, !tbaa !62
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %120, label %48, !prof !70

48:                                               ; preds = %39
  %49 = zext i8 %46 to i64
  %50 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !60
  %52 = and i32 %51, 4096
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %91, label %54, !prof !71

54:                                               ; preds = %48, %106
  %55 = phi i32 [ %51, %48 ], [ %103, %106 ]
  %56 = phi i8 [ %46, %48 ], [ %98, %106 ]
  %57 = phi i64 [ %45, %48 ], [ %107, %106 ]
  %58 = phi ptr [ %41, %48 ], [ %97, %106 ]
  %59 = and i8 %40, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %75, !prof !71

61:                                               ; preds = %54
  %62 = icmp ult i64 %43, 1152921504606846976
  br i1 %62, label %63, label %72, !prof !71

63:                                               ; preds = %61
  %64 = shl nuw i64 %43, 4
  %65 = and i32 %55, 2
  %66 = icmp eq i32 %65, 0
  %67 = zext i8 %56 to i64
  %68 = add nuw nsw i64 %67, 9
  %69 = select i1 %66, i64 %68, i64 %67, !prof !71
  %70 = and i64 %69, 15
  %71 = or disjoint i64 %70, %64
  br label %114

72:                                               ; preds = %61
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 15, ptr noundef nonnull @.str.3) #12
  %73 = uitofp i64 %43 to double
  %74 = load i8, ptr %58, align 1, !tbaa !62
  br label %75

75:                                               ; preds = %72, %54
  %76 = phi i8 [ %56, %54 ], [ %74, %72 ]
  %77 = phi double [ %42, %54 ], [ %73, %72 ]
  %78 = phi i8 [ %40, %54 ], [ 1, %72 ]
  %79 = fmul double %77, 1.600000e+01
  %80 = zext i8 %76 to i64
  %81 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !60
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  %85 = zext i8 %76 to i32
  %86 = add nuw nsw i32 %85, 9
  %87 = select i1 %84, i32 %86, i32 %85
  %88 = and i32 %87, 15
  %89 = sitofp i32 %88 to double
  %90 = fadd double %79, %89
  br label %114

91:                                               ; preds = %48
  %92 = icmp ne i8 %46, 95
  %93 = icmp eq i64 %45, 0
  %94 = or i1 %93, %92
  %95 = or i1 %8, %94
  br i1 %95, label %108, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds i8, ptr %41, i64 1
  %98 = load i8, ptr %97, align 1, !tbaa !62
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = zext i8 %98 to i64
  %102 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !60
  %104 = and i32 %103, 4096
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %100
  %107 = add i64 %44, -2
  br label %54

108:                                              ; preds = %91, %100, %96
  %109 = load i32, ptr %2, align 4, !tbaa !60
  %110 = and i32 %109, 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = sext i8 %46 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 31, ptr noundef nonnull @.str.4, i32 noundef %113) #12
  br label %120

114:                                              ; preds = %75, %63
  %115 = phi i64 [ %43, %75 ], [ %71, %63 ]
  %116 = phi double [ %90, %75 ], [ %42, %63 ]
  %117 = phi i8 [ %78, %75 ], [ %40, %63 ]
  %118 = getelementptr inbounds i8, ptr %58, i64 1
  %119 = icmp eq i64 %57, 0
  br i1 %119, label %120, label %39, !prof !72, !llvm.loop !73

120:                                              ; preds = %39, %114, %108, %112
  %121 = phi i64 [ %43, %108 ], [ %43, %112 ], [ %43, %39 ], [ %115, %114 ]
  %122 = phi double [ %42, %108 ], [ %42, %112 ], [ %42, %39 ], [ %116, %114 ]
  %123 = phi ptr [ %41, %108 ], [ %41, %112 ], [ %41, %39 ], [ %118, %114 ]
  %124 = phi i8 [ %40, %108 ], [ %40, %112 ], [ %40, %39 ], [ %117, %114 ]
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %129, label %127, !prof !74

127:                                              ; preds = %120
  %128 = fcmp ogt double %122, 0x41EFFFFFFFE00000
  br i1 %128, label %136, label %143

129:                                              ; preds = %120
  %130 = icmp ugt i64 %121, 4294967295
  br i1 %130, label %131, label %137, !prof !75

131:                                              ; preds = %129
  %132 = load i32, ptr %2, align 4, !tbaa !60
  %133 = and i32 %132, 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.5) #12
  br label %137

136:                                              ; preds = %127
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.5) #12
  br label %143

137:                                              ; preds = %129, %131, %11, %32, %135
  %138 = phi ptr [ %123, %135 ], [ %123, %131 ], [ %123, %129 ], [ %34, %32 ], [ %0, %11 ]
  %139 = phi i64 [ %121, %135 ], [ %121, %131 ], [ %121, %129 ], [ 0, %32 ], [ 0, %11 ]
  %140 = ptrtoint ptr %138 to i64
  %141 = ptrtoint ptr %0 to i64
  %142 = sub i64 %140, %141
  store i64 %142, ptr %1, align 8, !tbaa !56
  store i32 0, ptr %2, align 4, !tbaa !60
  br label %149

143:                                              ; preds = %127, %136
  %144 = ptrtoint ptr %123 to i64
  %145 = ptrtoint ptr %0 to i64
  %146 = sub i64 %144, %145
  store i64 %146, ptr %1, align 8, !tbaa !56
  store i32 2, ptr %2, align 4, !tbaa !60
  %147 = icmp eq ptr %3, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %143
  store double %122, ptr %3, align 8, !tbaa !65
  br label %149

149:                                              ; preds = %143, %148, %137
  %150 = phi i64 [ %139, %137 ], [ -1, %148 ], [ -1, %143 ]
  ret i64 %150
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_grok_oct(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef writeonly %3) local_unnamed_addr #1 !prof !76 {
  %5 = load i64, ptr %1, align 8, !tbaa !56
  %6 = load i32, ptr %2, align 4, !tbaa !60
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i64 %5, 0
  br i1 %9, label %104, label %10, !prof !77

10:                                               ; preds = %4, %70
  %11 = phi i8 [ %73, %70 ], [ 0, %4 ]
  %12 = phi ptr [ %74, %70 ], [ %0, %4 ]
  %13 = phi double [ %72, %70 ], [ 0.000000e+00, %4 ]
  %14 = phi i64 [ %71, %70 ], [ 0, %4 ]
  %15 = phi i64 [ %24, %70 ], [ %5, %4 ]
  %16 = add i64 %15, -1
  %17 = load i8, ptr %12, align 1, !tbaa !62
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %76, label %19, !prof !78

19:                                               ; preds = %10
  %20 = and i8 %17, -8
  %21 = icmp eq i8 %20, 48
  br i1 %21, label %22, label %46, !prof !79

22:                                               ; preds = %19, %56
  %23 = phi i8 [ %17, %19 ], [ %53, %56 ]
  %24 = phi i64 [ %16, %19 ], [ %57, %56 ]
  %25 = phi ptr [ %12, %19 ], [ %52, %56 ]
  %26 = and i8 %11, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %38, !prof !80

28:                                               ; preds = %22
  %29 = icmp ult i64 %14, 2305843009213693952
  br i1 %29, label %30, label %35, !prof !80

30:                                               ; preds = %28
  %31 = shl nuw i64 %14, 3
  %32 = and i8 %23, 7
  %33 = zext nneg i8 %32 to i64
  %34 = or disjoint i64 %31, %33
  br label %70

35:                                               ; preds = %28
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 15, ptr noundef nonnull @.str.6) #12
  %36 = uitofp i64 %14 to double
  %37 = load i8, ptr %25, align 1, !tbaa !62
  br label %38

38:                                               ; preds = %35, %22
  %39 = phi i8 [ %23, %22 ], [ %37, %35 ]
  %40 = phi double [ %13, %22 ], [ %36, %35 ]
  %41 = phi i8 [ %11, %22 ], [ 1, %35 ]
  %42 = fmul double %40, 8.000000e+00
  %43 = and i8 %39, 7
  %44 = uitofp i8 %43 to double
  %45 = fadd double %42, %44
  br label %70

46:                                               ; preds = %19
  %47 = icmp ne i8 %17, 95
  %48 = icmp eq i64 %16, 0
  %49 = or i1 %48, %47
  %50 = select i1 %49, i1 true, i1 %8
  br i1 %50, label %58, label %51, !prof !81

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, ptr %12, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !62
  %54 = and i8 %53, -8
  %55 = icmp eq i8 %54, 48
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = add i64 %15, -2
  br label %22

58:                                               ; preds = %46, %51
  %59 = zext i8 %17 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !60
  %62 = and i32 %61, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %76, label %64, !prof !82

64:                                               ; preds = %58
  %65 = load i32, ptr %2, align 4, !tbaa !60
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = sext i8 %17 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef %69) #12
  br label %76

70:                                               ; preds = %38, %30
  %71 = phi i64 [ %14, %38 ], [ %34, %30 ]
  %72 = phi double [ %45, %38 ], [ %13, %30 ]
  %73 = phi i8 [ %41, %38 ], [ %11, %30 ]
  %74 = getelementptr inbounds i8, ptr %25, i64 1
  %75 = icmp eq i64 %24, 0
  br i1 %75, label %76, label %10, !prof !83, !llvm.loop !84

76:                                               ; preds = %10, %70, %58, %68, %64
  %77 = phi i64 [ %14, %58 ], [ %14, %68 ], [ %14, %64 ], [ %14, %10 ], [ %71, %70 ]
  %78 = phi double [ %13, %58 ], [ %13, %68 ], [ %13, %64 ], [ %13, %10 ], [ %72, %70 ]
  %79 = phi ptr [ %12, %58 ], [ %12, %68 ], [ %12, %64 ], [ %12, %10 ], [ %74, %70 ]
  %80 = phi i8 [ %11, %58 ], [ %11, %68 ], [ %11, %64 ], [ %11, %10 ], [ %73, %70 ]
  %81 = and i8 %80, 1
  %82 = icmp ne i8 %81, 0
  %83 = fcmp ogt double %78, 0x41EFFFFFFFE00000
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %96, label %85, !prof !85

85:                                               ; preds = %76
  %86 = icmp ult i64 %77, 4294967296
  %87 = select i1 %82, i1 true, i1 %86
  br i1 %87, label %100, label %88, !prof !86

88:                                               ; preds = %85
  %89 = load i32, ptr %2, align 4, !tbaa !60
  %90 = and i32 %89, 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = ptrtoint ptr %79 to i64
  %94 = ptrtoint ptr %0 to i64
  %95 = sub i64 %93, %94
  br label %104

96:                                               ; preds = %76, %88
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.8) #12
  %97 = ptrtoint ptr %79 to i64
  %98 = ptrtoint ptr %0 to i64
  %99 = sub i64 %97, %98
  store i64 %99, ptr %1, align 8, !tbaa !56
  br i1 %82, label %109, label %107, !prof !87

100:                                              ; preds = %85
  %101 = ptrtoint ptr %79 to i64
  %102 = ptrtoint ptr %0 to i64
  %103 = sub i64 %101, %102
  store i64 %103, ptr %1, align 8, !tbaa !56
  br i1 %82, label %109, label %107, !prof !87

104:                                              ; preds = %4, %92
  %105 = phi i64 [ %95, %92 ], [ 0, %4 ]
  %106 = phi i64 [ %77, %92 ], [ 0, %4 ]
  store i64 %105, ptr %1, align 8, !tbaa !56
  br label %107

107:                                              ; preds = %104, %96, %100
  %108 = phi i64 [ %77, %100 ], [ %77, %96 ], [ %106, %104 ]
  store i32 0, ptr %2, align 4, !tbaa !60
  br label %112

109:                                              ; preds = %96, %100
  store i32 2, ptr %2, align 4, !tbaa !60
  %110 = icmp eq ptr %3, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %109
  store double %78, ptr %3, align 8, !tbaa !65
  br label %112

112:                                              ; preds = %109, %111, %107
  %113 = phi i64 [ %108, %107 ], [ -1, %111 ], [ -1, %109 ]
  ret i64 %113
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @Perl_scan_bin(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 !prof !50 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store i64 %1, ptr %4, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %7 = load i64, ptr %2, align 8, !tbaa !56
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr %6, align 4, !tbaa !60
  %10 = call i64 @Perl_grok_bin(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #14
  %11 = load i64, ptr %4, align 8, !tbaa !56
  store i64 %11, ptr %2, align 8, !tbaa !56
  %12 = load i32, ptr %6, align 4, !tbaa !60
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = load double, ptr %5, align 8
  %16 = uitofp i64 %10 to double
  %17 = select i1 %14, double %16, double %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret double %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @Perl_scan_oct(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 !prof !50 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store i64 %1, ptr %4, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %7 = load i64, ptr %2, align 8, !tbaa !56
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr %6, align 4, !tbaa !60
  %10 = call i64 @Perl_grok_oct(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #14
  %11 = load i64, ptr %4, align 8, !tbaa !56
  store i64 %11, ptr %2, align 8, !tbaa !56
  %12 = load i32, ptr %6, align 4, !tbaa !60
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = load double, ptr %5, align 8
  %16 = uitofp i64 %10 to double
  %17 = select i1 %14, double %16, double %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret double %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @Perl_scan_hex(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 !prof !50 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store i64 %1, ptr %4, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %7 = load i64, ptr %2, align 8, !tbaa !56
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr %6, align 4, !tbaa !60
  %10 = call i64 @Perl_grok_hex(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #14
  %11 = load i64, ptr %4, align 8, !tbaa !56
  store i64 %11, ptr %2, align 8, !tbaa !56
  %12 = load i32, ptr %6, align 4, !tbaa !60
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = load double, ptr %5, align 8
  %16 = uitofp i64 %10 to double
  %17 = select i1 %14, double %16, double %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret double %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @Perl_grok_numeric_radix(ptr nocapture noundef %0, ptr noundef readnone %1) local_unnamed_addr #4 !prof !88 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  %4 = icmp ult ptr %3, %1
  br i1 %4, label %5, label %10, !prof !91

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1, !tbaa !62
  %7 = icmp eq i8 %6, 46
  br i1 %7, label %8, label %10, !prof !92

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %9, ptr %0, align 8, !tbaa !89
  br label %10

10:                                               ; preds = %2, %5, %8
  %11 = phi i1 [ true, %8 ], [ false, %5 ], [ false, %2 ]
  ret i1 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_grok_infnan(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !93 {
  %3 = ptrtoint ptr %1 to i64
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load ptr, ptr %0, align 8, !tbaa !89
  %10 = load i8, ptr %9, align 1, !tbaa !62
  switch i8 %10, label %21 [
    i8 43, label %11
    i8 45, label %14
  ], !prof !94

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %316, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds i8, ptr %9, i64 1
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %316, label %17

17:                                               ; preds = %11, %14
  %18 = phi ptr [ %15, %14 ], [ %12, %11 ]
  %19 = phi i32 [ 8, %14 ], [ 0, %11 ]
  %20 = load i8, ptr %18, align 1, !tbaa !62
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi i8 [ %20, %17 ], [ %10, %2 ]
  %23 = phi ptr [ %18, %17 ], [ %9, %2 ]
  %24 = phi i32 [ %19, %17 ], [ 0, %2 ]
  %25 = icmp eq i8 %22, 49
  br i1 %25, label %26, label %47, !prof !95

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, ptr %23, i64 1
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %316, label %29, !prof !96

29:                                               ; preds = %26
  %30 = load i8, ptr %27, align 1, !tbaa !62
  %31 = icmp eq i8 %30, 46
  br i1 %31, label %32, label %37, !prof !97

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %23, i64 2
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %316, label %35, !prof !98

35:                                               ; preds = %32
  %36 = load i8, ptr %33, align 1, !tbaa !62
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i8 [ %36, %35 ], [ %30, %29 ]
  %39 = phi i64 [ 2, %35 ], [ 1, %29 ]
  %40 = getelementptr inbounds i8, ptr %23, i64 %39
  %41 = icmp ne i8 %38, 35
  %42 = getelementptr inbounds i8, ptr %40, i64 1
  %43 = icmp eq ptr %42, %1
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %316, label %45, !prof !99

45:                                               ; preds = %37
  %46 = load i8, ptr %42, align 1, !tbaa !62
  br label %47

47:                                               ; preds = %45, %21
  %48 = phi i8 [ %22, %21 ], [ %46, %45 ]
  %49 = phi ptr [ %23, %21 ], [ %42, %45 ]
  %50 = and i8 %48, -33
  switch i8 %50, label %149 [
    i8 73, label %51
    i8 83, label %144
    i8 81, label %144
  ], !prof !100

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %49, i64 1
  %53 = icmp eq ptr %52, %1
  br i1 %53, label %316, label %54

54:                                               ; preds = %51
  %55 = load i8, ptr %52, align 1, !tbaa !62
  %56 = and i8 %55, -33
  %57 = icmp eq i8 %56, 78
  br i1 %57, label %58, label %316

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, ptr %49, i64 2
  %60 = icmp eq ptr %59, %1
  br i1 %60, label %316, label %61

61:                                               ; preds = %58
  %62 = load i8, ptr %59, align 1, !tbaa !62
  %63 = and i8 %62, -33
  switch i8 %63, label %316 [
    i8 70, label %64
    i8 68, label %133
  ]

64:                                               ; preds = %61
  %65 = getelementptr inbounds i8, ptr %49, i64 3
  %66 = icmp ult ptr %65, %1
  br i1 %66, label %67, label %101

67:                                               ; preds = %64
  %68 = load i8, ptr %65, align 1, !tbaa !62
  %69 = and i8 %68, -33
  %70 = icmp eq i8 %69, 73
  br i1 %70, label %71, label %101

71:                                               ; preds = %67
  %72 = or disjoint i32 %24, 84
  %73 = getelementptr inbounds i8, ptr %49, i64 4
  %74 = icmp eq ptr %73, %1
  br i1 %74, label %316, label %75

75:                                               ; preds = %71
  %76 = load i8, ptr %73, align 1, !tbaa !62
  %77 = and i8 %76, -33
  %78 = icmp eq i8 %77, 78
  br i1 %78, label %79, label %316

79:                                               ; preds = %75
  %80 = getelementptr inbounds i8, ptr %49, i64 5
  %81 = icmp eq ptr %80, %1
  br i1 %81, label %316, label %82

82:                                               ; preds = %79
  %83 = load i8, ptr %80, align 1, !tbaa !62
  %84 = and i8 %83, -33
  %85 = icmp eq i8 %84, 73
  br i1 %85, label %86, label %316

86:                                               ; preds = %82
  %87 = getelementptr inbounds i8, ptr %49, i64 6
  %88 = icmp eq ptr %87, %1
  br i1 %88, label %316, label %89

89:                                               ; preds = %86
  %90 = load i8, ptr %87, align 1, !tbaa !62
  %91 = and i8 %90, -33
  %92 = icmp eq i8 %91, 84
  br i1 %92, label %93, label %316

93:                                               ; preds = %89
  %94 = getelementptr inbounds i8, ptr %49, i64 7
  %95 = icmp eq ptr %94, %1
  br i1 %95, label %316, label %96

96:                                               ; preds = %93
  %97 = load i8, ptr %94, align 1, !tbaa !62
  %98 = and i8 %97, -33
  %99 = icmp eq i8 %98, 89
  %100 = getelementptr inbounds i8, ptr %49, i64 8
  br i1 %99, label %107, label %316

101:                                              ; preds = %67, %64
  br i1 %25, label %102, label %107

102:                                              ; preds = %101, %102
  %103 = phi ptr [ %106, %102 ], [ %65, %101 ]
  %104 = load i8, ptr %103, align 1, !tbaa !62
  %105 = icmp eq i8 %104, 48
  %106 = getelementptr inbounds i8, ptr %103, i64 1
  br i1 %105, label %102, label %107, !llvm.loop !101

107:                                              ; preds = %102, %101, %96
  %108 = phi ptr [ %100, %96 ], [ %65, %101 ], [ %103, %102 ]
  %109 = icmp ult ptr %108, %1
  br i1 %109, label %110, label %129

110:                                              ; preds = %107
  %111 = ptrtoint ptr %108 to i64
  %112 = sub i64 %3, %111
  %113 = getelementptr i8, ptr %108, i64 %112
  br label %114

114:                                              ; preds = %110, %122
  %115 = phi ptr [ %123, %122 ], [ %108, %110 ]
  %116 = load i8, ptr %115, align 1, !tbaa !62
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !60
  %120 = and i32 %119, 17408
  %121 = icmp eq i32 %120, 17408
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = getelementptr inbounds i8, ptr %115, i64 1
  %124 = icmp eq ptr %123, %113
  br i1 %124, label %129, label %114, !llvm.loop !102

125:                                              ; preds = %114
  %126 = icmp eq i8 %116, 0
  %127 = or disjoint i32 %24, 64
  %128 = select i1 %126, i32 %24, i32 %127
  br label %129

129:                                              ; preds = %122, %107, %125
  %130 = phi ptr [ %115, %125 ], [ %108, %107 ], [ %113, %122 ]
  %131 = phi i32 [ %128, %125 ], [ %24, %107 ], [ %24, %122 ]
  %132 = or i32 %131, 20
  br label %294

133:                                              ; preds = %61
  br i1 %25, label %134, label %316

134:                                              ; preds = %133
  %135 = getelementptr inbounds i8, ptr %49, i64 3
  %136 = or disjoint i32 %24, 36
  br label %137

137:                                              ; preds = %140, %134
  %138 = phi ptr [ %135, %134 ], [ %141, %140 ]
  %139 = load i8, ptr %138, align 1, !tbaa !62
  switch i8 %139, label %142 [
    i8 48, label %140
    i8 0, label %294
  ]

140:                                              ; preds = %137
  %141 = getelementptr inbounds i8, ptr %138, i64 1
  br label %137, !llvm.loop !103

142:                                              ; preds = %137
  %143 = or disjoint i32 %24, 100
  br label %294

144:                                              ; preds = %47, %47
  %145 = getelementptr inbounds i8, ptr %49, i64 1
  %146 = icmp eq ptr %145, %1
  br i1 %146, label %316, label %147

147:                                              ; preds = %144
  %148 = load i8, ptr %145, align 1, !tbaa !62
  br label %149

149:                                              ; preds = %147, %47
  %150 = phi i8 [ %148, %147 ], [ %48, %47 ]
  %151 = phi ptr [ %145, %147 ], [ %49, %47 ]
  %152 = and i8 %150, -33
  %153 = icmp eq i8 %152, 78
  br i1 %153, label %154, label %316, !prof !104

154:                                              ; preds = %149
  %155 = getelementptr inbounds i8, ptr %151, i64 1
  %156 = icmp eq ptr %155, %1
  br i1 %156, label %316, label %157

157:                                              ; preds = %154
  %158 = load i8, ptr %155, align 1, !tbaa !62
  %159 = and i8 %158, -33
  %160 = icmp eq i8 %159, 65
  br i1 %160, label %161, label %316

161:                                              ; preds = %157
  %162 = getelementptr inbounds i8, ptr %151, i64 2
  %163 = icmp eq ptr %162, %1
  br i1 %163, label %316, label %164

164:                                              ; preds = %161
  %165 = load i8, ptr %162, align 1, !tbaa !62
  %166 = and i8 %165, -33
  %167 = icmp eq i8 %166, 78
  br i1 %167, label %168, label %316

168:                                              ; preds = %164
  %169 = getelementptr inbounds i8, ptr %151, i64 3
  %170 = or disjoint i32 %24, 36
  %171 = load i8, ptr %169, align 1, !tbaa !62
  %172 = and i8 %171, -33
  switch i8 %172, label %176 [
    i8 81, label %173
    i8 83, label %173
  ]

173:                                              ; preds = %168, %168
  %174 = getelementptr inbounds i8, ptr %151, i64 4
  %175 = load i8, ptr %174, align 1, !tbaa !62
  br label %176

176:                                              ; preds = %168, %173
  %177 = phi i8 [ %171, %168 ], [ %175, %173 ]
  %178 = phi ptr [ %169, %168 ], [ %174, %173 ]
  %179 = ptrtoint ptr %178 to i64
  %180 = icmp eq i8 %177, 40
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = icmp ult ptr %178, %1
  br i1 %182, label %183, label %313

183:                                              ; preds = %181
  %184 = sub i64 %3, %179
  %185 = getelementptr i8, ptr %178, i64 %184
  br label %282

186:                                              ; preds = %176
  %187 = getelementptr inbounds i8, ptr %178, i64 1
  %188 = icmp eq ptr %187, %1
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = or disjoint i32 %24, 100
  br label %316

191:                                              ; preds = %186
  %192 = getelementptr inbounds i8, ptr %178, i64 2
  %193 = icmp ult ptr %192, %1
  br i1 %193, label %194, label %203

194:                                              ; preds = %191
  %195 = sub i64 %3, %179
  br label %196

196:                                              ; preds = %194, %200
  %197 = phi i64 [ %201, %200 ], [ 2, %194 ]
  %198 = getelementptr inbounds i8, ptr %178, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !62
  switch i8 %199, label %200 [
    i8 0, label %203
    i8 41, label %203
  ]

200:                                              ; preds = %196
  %201 = add nuw i64 %197, 1
  %202 = icmp eq i64 %201, %195
  br i1 %202, label %203, label %196, !llvm.loop !105

203:                                              ; preds = %200, %196, %196, %191
  %204 = phi i64 [ 2, %191 ], [ %197, %196 ], [ %197, %196 ], [ %195, %200 ]
  %205 = getelementptr inbounds i8, ptr %178, i64 %204
  %206 = icmp eq ptr %205, %1
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = or disjoint i32 %24, 100
  br label %316

209:                                              ; preds = %203
  %210 = load i8, ptr %205, align 1, !tbaa !62
  %211 = icmp eq i8 %210, 41
  br i1 %211, label %212, label %266

212:                                              ; preds = %209
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %213 = load i8, ptr %187, align 1, !tbaa !62
  %214 = icmp eq i8 %213, 48
  br i1 %214, label %215, label %250

215:                                              ; preds = %212
  %216 = getelementptr inbounds i8, ptr %178, i64 3
  %217 = icmp ugt i64 %204, 3
  br i1 %217, label %218, label %250

218:                                              ; preds = %215
  %219 = load i8, ptr %192, align 1, !tbaa !62
  %220 = and i8 %219, -33
  switch i8 %220, label %250 [
    i8 88, label %221
    i8 66, label %237
  ]

221:                                              ; preds = %218
  %222 = load i8, ptr %216, align 1, !tbaa !62
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !60
  %226 = and i32 %225, 4096
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %250, label %228

228:                                              ; preds = %221
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %229 = add nsw i64 %204, -1
  store i64 %229, ptr %5, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 1, ptr %6, align 4, !tbaa !60
  %230 = call i64 @Perl_grok_hex(ptr noundef nonnull %187, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #14
  %231 = load i32, ptr %6, align 4, !tbaa !60
  %232 = lshr i32 %231, 1
  %233 = and i32 %232, 1
  %234 = xor i32 %233, 1
  %235 = load i64, ptr %5, align 8, !tbaa !56
  %236 = getelementptr inbounds i8, ptr %187, i64 %235
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %268

237:                                              ; preds = %218
  %238 = load i8, ptr %216, align 1, !tbaa !62
  %239 = and i8 %238, -2
  %240 = icmp eq i8 %239, 48
  br i1 %240, label %241, label %250

241:                                              ; preds = %237
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %242 = add nsw i64 %204, -1
  store i64 %242, ptr %7, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 1, ptr %8, align 4, !tbaa !60
  %243 = call i64 @Perl_grok_bin(ptr noundef nonnull %187, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #14
  %244 = load i32, ptr %8, align 4, !tbaa !60
  %245 = lshr i32 %244, 1
  %246 = and i32 %245, 1
  %247 = xor i32 %246, 1
  %248 = load i64, ptr %7, align 8, !tbaa !56
  %249 = getelementptr inbounds i8, ptr %187, i64 %248
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %268

250:                                              ; preds = %218, %221, %237, %212, %215
  %251 = add nsw i64 %204, -1
  %252 = call i32 @Perl_grok_number_flags(ptr noundef nonnull %187, i64 noundef %251, ptr noundef nonnull %4, i32 noundef 17) #14
  br label %253

253:                                              ; preds = %250, %263
  %254 = phi ptr [ %264, %263 ], [ %187, %250 ]
  %255 = load i8, ptr %254, align 1, !tbaa !62
  %256 = zext i8 %255 to i64
  %257 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !60
  %259 = and i32 %258, 2
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %253
  %262 = or disjoint i32 %24, 100
  br label %268

263:                                              ; preds = %253
  %264 = getelementptr inbounds i8, ptr %254, i64 1
  %265 = icmp ult ptr %264, %205
  br i1 %265, label %253, label %268, !llvm.loop !106

266:                                              ; preds = %209
  %267 = or disjoint i32 %24, 100
  br label %313

268:                                              ; preds = %263, %228, %241, %261
  %269 = phi ptr [ %236, %228 ], [ %249, %241 ], [ %254, %261 ], [ %264, %263 ]
  %270 = phi i32 [ %170, %228 ], [ %170, %241 ], [ %262, %261 ], [ %170, %263 ]
  %271 = phi i32 [ %234, %228 ], [ %247, %241 ], [ %252, %261 ], [ %252, %263 ]
  %272 = and i32 %271, 4
  %273 = icmp eq i32 %272, 0
  %274 = icmp ne i32 %271, 0
  %275 = and i1 %274, %273
  %276 = icmp ult ptr %269, %205
  %277 = or i32 %270, 64
  %278 = select i1 %276, i32 %277, i32 %270
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br i1 %275, label %313, label %316

279:                                              ; preds = %282
  %280 = getelementptr inbounds i8, ptr %283, i64 1
  %281 = icmp eq ptr %280, %185
  br i1 %281, label %313, label %282, !llvm.loop !107

282:                                              ; preds = %183, %279
  %283 = phi ptr [ %280, %279 ], [ %178, %183 ]
  %284 = load i8, ptr %283, align 1, !tbaa !62
  %285 = zext i8 %284 to i64
  %286 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !60
  %288 = and i32 %287, 17408
  %289 = icmp eq i32 %288, 17408
  br i1 %289, label %279, label %290

290:                                              ; preds = %282
  %291 = icmp eq i8 %284, 0
  %292 = or disjoint i32 %24, 100
  %293 = select i1 %291, i32 %170, i32 %292
  br label %313

294:                                              ; preds = %137, %129, %142
  %295 = phi ptr [ %130, %129 ], [ %138, %142 ], [ %138, %137 ]
  %296 = phi i32 [ %132, %129 ], [ %143, %142 ], [ %136, %137 ]
  %297 = icmp ult ptr %295, %1
  br i1 %297, label %298, label %313

298:                                              ; preds = %294
  %299 = ptrtoint ptr %295 to i64
  %300 = sub i64 %3, %299
  %301 = getelementptr i8, ptr %295, i64 %300
  br label %302

302:                                              ; preds = %298, %310
  %303 = phi ptr [ %311, %310 ], [ %295, %298 ]
  %304 = load i8, ptr %303, align 1, !tbaa !62
  %305 = zext i8 %304 to i64
  %306 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !60
  %308 = and i32 %307, 17408
  %309 = icmp eq i32 %308, 17408
  br i1 %309, label %310, label %313

310:                                              ; preds = %302
  %311 = getelementptr inbounds i8, ptr %303, i64 1
  %312 = icmp eq ptr %311, %301
  br i1 %312, label %313, label %302, !llvm.loop !108

313:                                              ; preds = %302, %310, %279, %181, %266, %268, %290, %294
  %314 = phi i32 [ %296, %294 ], [ %170, %181 ], [ %267, %266 ], [ %278, %268 ], [ %293, %290 ], [ %170, %279 ], [ %296, %310 ], [ %296, %302 ]
  %315 = phi ptr [ %295, %294 ], [ %1, %181 ], [ %1, %266 ], [ %1, %268 ], [ %1, %290 ], [ %1, %279 ], [ %303, %302 ], [ %301, %310 ]
  store ptr %315, ptr %0, align 8, !tbaa !89
  br label %316

316:                                              ; preds = %207, %189, %93, %86, %89, %79, %82, %71, %75, %149, %161, %164, %154, %157, %144, %133, %61, %58, %51, %54, %37, %32, %26, %14, %11, %96, %268, %313
  %317 = phi i32 [ %314, %313 ], [ %72, %96 ], [ 0, %268 ], [ 0, %11 ], [ 0, %14 ], [ 0, %26 ], [ 0, %32 ], [ 0, %37 ], [ 0, %54 ], [ 0, %51 ], [ 0, %58 ], [ 0, %61 ], [ 0, %133 ], [ 0, %144 ], [ 0, %157 ], [ 0, %154 ], [ 0, %164 ], [ 0, %161 ], [ 0, %149 ], [ %72, %75 ], [ %72, %71 ], [ %72, %82 ], [ %72, %79 ], [ %72, %89 ], [ %72, %86 ], [ %72, %93 ], [ %208, %207 ], [ %190, %189 ]
  ret i32 %317
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_grok_number_flags(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, i32 noundef %3) local_unnamed_addr #1 !prof !109 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %7 = getelementptr inbounds i8, ptr %0, i64 %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %8 = icmp sgt i64 %1, 0
  br i1 %8, label %9, label %20, !prof !110

9:                                                ; preds = %4, %17
  %10 = phi ptr [ %18, %17 ], [ %0, %4 ]
  %11 = load i8, ptr %10, align 1, !tbaa !62
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !60
  %15 = and i32 %14, 17408
  %16 = icmp eq i32 %15, 17408
  br i1 %16, label %17, label %20, !prof !111

17:                                               ; preds = %9
  %18 = getelementptr inbounds i8, ptr %10, i64 1
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %9, label %20, !prof !112, !llvm.loop !113

20:                                               ; preds = %9, %17, %4
  %21 = phi ptr [ %0, %4 ], [ %18, %17 ], [ %10, %9 ]
  store ptr %21, ptr %5, align 8, !tbaa !89
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %324, label %23, !prof !111

23:                                               ; preds = %20
  %24 = load i8, ptr %21, align 1, !tbaa !62
  switch i8 %24, label %29 [
    i8 45, label %25
    i8 43, label %27
  ], !prof !114

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %26, ptr %5, align 8, !tbaa !89
  br label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %28, ptr %5, align 8, !tbaa !89
  br label %29

29:                                               ; preds = %23, %25, %27
  %30 = phi ptr [ %26, %25 ], [ %28, %27 ], [ %21, %23 ]
  %31 = phi i32 [ 8, %25 ], [ 0, %27 ], [ 0, %23 ]
  %32 = icmp eq ptr %30, %7
  br i1 %32, label %324, label %33, !prof !111

33:                                               ; preds = %29
  store ptr %30, ptr %6, align 8, !tbaa !89
  %34 = load i8, ptr %30, align 1, !tbaa !62
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !60
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %193, label %40, !prof !115

40:                                               ; preds = %33
  %41 = sext i8 %34 to i64
  %42 = add nsw i64 %41, -48
  %43 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %43, ptr %5, align 8, !tbaa !89
  %44 = icmp ult ptr %43, %7
  br i1 %44, label %45, label %170, !prof !116

45:                                               ; preds = %40
  %46 = load i8, ptr %43, align 1, !tbaa !62
  %47 = add i8 %46, -48
  %48 = icmp ult i8 %47, 10
  br i1 %48, label %49, label %170, !prof !117

49:                                               ; preds = %45
  %50 = mul nsw i64 %42, 10
  %51 = and i8 %46, 15
  %52 = zext nneg i8 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = getelementptr inbounds i8, ptr %30, i64 2
  store ptr %54, ptr %5, align 8, !tbaa !89
  %55 = icmp ult ptr %54, %7
  br i1 %55, label %56, label %170, !prof !118

56:                                               ; preds = %49
  %57 = load i8, ptr %54, align 1, !tbaa !62
  %58 = add i8 %57, -48
  %59 = icmp ult i8 %58, 10
  br i1 %59, label %60, label %170, !prof !119

60:                                               ; preds = %56
  %61 = mul nsw i64 %53, 10
  %62 = and i8 %57, 15
  %63 = zext nneg i8 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = getelementptr inbounds i8, ptr %30, i64 3
  store ptr %65, ptr %5, align 8, !tbaa !89
  %66 = icmp ult ptr %65, %7
  br i1 %66, label %67, label %170, !prof !120

67:                                               ; preds = %60
  %68 = load i8, ptr %65, align 1, !tbaa !62
  %69 = add i8 %68, -48
  %70 = icmp ult i8 %69, 10
  br i1 %70, label %71, label %170, !prof !121

71:                                               ; preds = %67
  %72 = mul nsw i64 %64, 10
  %73 = and i8 %68, 15
  %74 = zext nneg i8 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = getelementptr inbounds i8, ptr %30, i64 4
  store ptr %76, ptr %5, align 8, !tbaa !89
  %77 = icmp ult ptr %76, %7
  br i1 %77, label %78, label %170, !prof !122

78:                                               ; preds = %71
  %79 = load i8, ptr %76, align 1, !tbaa !62
  %80 = add i8 %79, -48
  %81 = icmp ult i8 %80, 10
  br i1 %81, label %82, label %170, !prof !123

82:                                               ; preds = %78
  %83 = mul nsw i64 %75, 10
  %84 = and i8 %79, 15
  %85 = zext nneg i8 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = getelementptr inbounds i8, ptr %30, i64 5
  store ptr %87, ptr %5, align 8, !tbaa !89
  %88 = icmp ult ptr %87, %7
  br i1 %88, label %89, label %170, !prof !124

89:                                               ; preds = %82
  %90 = load i8, ptr %87, align 1, !tbaa !62
  %91 = add i8 %90, -48
  %92 = icmp ult i8 %91, 10
  br i1 %92, label %93, label %170, !prof !125

93:                                               ; preds = %89
  %94 = mul nsw i64 %86, 10
  %95 = and i8 %90, 15
  %96 = zext nneg i8 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = getelementptr inbounds i8, ptr %30, i64 6
  store ptr %98, ptr %5, align 8, !tbaa !89
  %99 = icmp ult ptr %98, %7
  br i1 %99, label %100, label %170, !prof !126

100:                                              ; preds = %93
  %101 = load i8, ptr %98, align 1, !tbaa !62
  %102 = add i8 %101, -48
  %103 = icmp ult i8 %102, 10
  br i1 %103, label %104, label %170, !prof !127

104:                                              ; preds = %100
  %105 = mul nsw i64 %97, 10
  %106 = and i8 %101, 15
  %107 = zext nneg i8 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = getelementptr inbounds i8, ptr %30, i64 7
  store ptr %109, ptr %5, align 8, !tbaa !89
  %110 = icmp ult ptr %109, %7
  br i1 %110, label %111, label %170, !prof !128

111:                                              ; preds = %104
  %112 = load i8, ptr %109, align 1, !tbaa !62
  %113 = add i8 %112, -48
  %114 = icmp ult i8 %113, 10
  br i1 %114, label %115, label %170, !prof !127

115:                                              ; preds = %111
  %116 = mul nsw i64 %108, 10
  %117 = and i8 %112, 15
  %118 = zext nneg i8 %117 to i64
  %119 = add nsw i64 %116, %118
  %120 = getelementptr inbounds i8, ptr %30, i64 8
  store ptr %120, ptr %5, align 8, !tbaa !89
  %121 = icmp ult ptr %120, %7
  br i1 %121, label %122, label %170, !prof !128

122:                                              ; preds = %115
  %123 = load i8, ptr %120, align 1, !tbaa !62
  %124 = add i8 %123, -48
  %125 = icmp ult i8 %124, 10
  br i1 %125, label %126, label %170, !prof !127

126:                                              ; preds = %122
  %127 = mul nsw i64 %119, 10
  %128 = and i8 %123, 15
  %129 = zext nneg i8 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = getelementptr inbounds i8, ptr %30, i64 9
  store ptr %131, ptr %5, align 8, !tbaa !89
  %132 = icmp ult ptr %131, %7
  br i1 %132, label %133, label %170, !prof !129

133:                                              ; preds = %126, %146
  %134 = phi ptr [ %150, %146 ], [ %131, %126 ]
  %135 = phi i64 [ %149, %146 ], [ %130, %126 ]
  %136 = load i8, ptr %134, align 1, !tbaa !62
  %137 = sext i8 %136 to i32
  %138 = add nsw i32 %137, -48
  %139 = icmp ult i32 %138, 10
  br i1 %139, label %140, label %169, !prof !130

140:                                              ; preds = %133
  %141 = icmp ult i64 %135, 1844674407370955161
  br i1 %141, label %146, label %142, !prof !131

142:                                              ; preds = %140
  %143 = icmp eq i64 %135, 1844674407370955161
  %144 = icmp slt i8 %136, 54
  %145 = and i1 %143, %144
  br i1 %145, label %146, label %152, !prof !131

146:                                              ; preds = %140, %142
  %147 = mul nuw i64 %135, 10
  %148 = zext nneg i32 %138 to i64
  %149 = add i64 %147, %148
  %150 = getelementptr inbounds i8, ptr %134, i64 1
  %151 = icmp ult ptr %150, %7
  br i1 %151, label %133, label %152, !prof !132, !llvm.loop !133

152:                                              ; preds = %146, %142
  %153 = phi ptr [ %150, %146 ], [ %134, %142 ]
  %154 = phi i64 [ %149, %146 ], [ %135, %142 ]
  store ptr %153, ptr %5, align 8, !tbaa !89
  %155 = icmp ult ptr %153, %7
  br i1 %155, label %156, label %170, !prof !134

156:                                              ; preds = %152, %160
  %157 = phi ptr [ %158, %160 ], [ %153, %152 ]
  %158 = getelementptr inbounds i8, ptr %157, i64 1
  %159 = icmp ult ptr %158, %7
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i8, ptr %158, align 1, !tbaa !62
  %162 = zext i8 %161 to i64
  %163 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !60
  %165 = and i32 %164, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %156, !llvm.loop !135

167:                                              ; preds = %160, %156
  store ptr %158, ptr %5, align 8, !tbaa !89
  %168 = or disjoint i32 %31, 2
  br label %175

169:                                              ; preds = %133
  store ptr %134, ptr %5, align 8, !tbaa !89
  br label %170

170:                                              ; preds = %169, %45, %56, %67, %78, %89, %100, %111, %122, %152, %126, %115, %104, %93, %82, %71, %60, %49, %40
  %171 = phi i64 [ %42, %40 ], [ %42, %45 ], [ %53, %49 ], [ %53, %56 ], [ %64, %60 ], [ %64, %67 ], [ %75, %71 ], [ %75, %78 ], [ %86, %82 ], [ %86, %89 ], [ %97, %93 ], [ %97, %100 ], [ %108, %104 ], [ %108, %111 ], [ %119, %115 ], [ %119, %122 ], [ %130, %126 ], [ %154, %152 ], [ %135, %169 ]
  %172 = or disjoint i32 %31, 1
  %173 = icmp eq ptr %2, null
  br i1 %173, label %175, label %174, !prof !136

174:                                              ; preds = %170
  store i64 %171, ptr %2, align 8, !tbaa !56
  br label %175

175:                                              ; preds = %167, %170, %174
  %176 = phi i32 [ %168, %167 ], [ %172, %174 ], [ %172, %170 ]
  %177 = call zeroext i1 @Perl_grok_numeric_radix(ptr noundef nonnull %5, ptr noundef %7) #14
  %178 = load ptr, ptr %5, align 8, !tbaa !89
  br i1 %177, label %179, label %222, !prof !137

179:                                              ; preds = %175
  %180 = or i32 %176, 4
  %181 = icmp ult ptr %178, %7
  br i1 %181, label %182, label %220, !prof !138

182:                                              ; preds = %179, %190
  %183 = phi ptr [ %191, %190 ], [ %178, %179 ]
  %184 = load i8, ptr %183, align 1, !tbaa !62
  %185 = zext i8 %184 to i64
  %186 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !60
  %188 = and i32 %187, 2
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %220, label %190, !prof !139

190:                                              ; preds = %182
  %191 = getelementptr inbounds i8, ptr %183, i64 1
  %192 = icmp ult ptr %191, %7
  br i1 %192, label %182, label %220, !prof !140, !llvm.loop !141

193:                                              ; preds = %33
  %194 = call zeroext i1 @Perl_grok_numeric_radix(ptr noundef nonnull %5, ptr noundef %7) #14
  %195 = load ptr, ptr %5, align 8, !tbaa !89
  br i1 %194, label %196, label %222

196:                                              ; preds = %193
  %197 = or disjoint i32 %31, 5
  %198 = icmp ult ptr %195, %7
  br i1 %198, label %199, label %324

199:                                              ; preds = %196
  %200 = load i8, ptr %195, align 1, !tbaa !62
  %201 = zext i8 %200 to i64
  %202 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !60
  %204 = and i32 %203, 2
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %324, label %206

206:                                              ; preds = %199, %210
  %207 = phi ptr [ %208, %210 ], [ %195, %199 ]
  %208 = getelementptr inbounds i8, ptr %207, i64 1
  %209 = icmp ult ptr %208, %7
  br i1 %209, label %210, label %217

210:                                              ; preds = %206
  %211 = load i8, ptr %208, align 1, !tbaa !62
  %212 = zext i8 %211 to i64
  %213 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !60
  %215 = and i32 %214, 2
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %206, !llvm.loop !142

217:                                              ; preds = %206, %210
  store ptr %208, ptr %5, align 8, !tbaa !89
  %218 = icmp eq ptr %2, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %217
  store i64 0, ptr %2, align 8, !tbaa !56
  br label %222

220:                                              ; preds = %190, %182, %179
  %221 = phi ptr [ %178, %179 ], [ %183, %182 ], [ %191, %190 ]
  store ptr %221, ptr %5, align 8, !tbaa !89
  br label %222

222:                                              ; preds = %220, %175, %193, %217, %219
  %223 = phi ptr [ %208, %219 ], [ %208, %217 ], [ %195, %193 ], [ %178, %175 ], [ %221, %220 ]
  %224 = phi i32 [ %197, %219 ], [ %197, %217 ], [ %31, %193 ], [ %176, %175 ], [ %180, %220 ]
  %225 = icmp ugt ptr %223, %30
  %226 = icmp ult ptr %223, %7
  %227 = and i1 %225, %226
  br i1 %227, label %228, label %268, !prof !143

228:                                              ; preds = %222
  %229 = load i8, ptr %223, align 1, !tbaa !62
  %230 = and i8 %229, -33
  %231 = icmp eq i8 %230, 69
  br i1 %231, label %232, label %268

232:                                              ; preds = %228
  %233 = getelementptr inbounds i8, ptr %223, i64 1
  store ptr %233, ptr %5, align 8, !tbaa !89
  %234 = icmp ult ptr %233, %7
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load i8, ptr %233, align 1, !tbaa !62
  switch i8 %236, label %239 [
    i8 45, label %237
    i8 43, label %237
  ]

237:                                              ; preds = %235, %235
  %238 = getelementptr inbounds i8, ptr %223, i64 2
  store ptr %238, ptr %5, align 8, !tbaa !89
  br label %239

239:                                              ; preds = %235, %237, %232
  %240 = phi ptr [ %233, %235 ], [ %238, %237 ], [ %233, %232 ]
  %241 = icmp ult ptr %240, %7
  br i1 %241, label %242, label %260

242:                                              ; preds = %239
  %243 = load i8, ptr %240, align 1, !tbaa !62
  %244 = zext i8 %243 to i64
  %245 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !60
  %247 = and i32 %246, 2
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %260, label %249

249:                                              ; preds = %242, %253
  %250 = phi ptr [ %251, %253 ], [ %240, %242 ]
  %251 = getelementptr inbounds i8, ptr %250, i64 1
  %252 = icmp ult ptr %251, %7
  br i1 %252, label %253, label %265

253:                                              ; preds = %249
  %254 = load i8, ptr %251, align 1, !tbaa !62
  %255 = zext i8 %254 to i64
  %256 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !60
  %258 = and i32 %257, 2
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %265, label %249, !llvm.loop !144

260:                                              ; preds = %242, %239
  %261 = and i32 %3, 16
  %262 = icmp eq i32 %261, 0
  %263 = or i32 %224, 64
  %264 = select i1 %262, i32 0, i32 %263
  br label %324

265:                                              ; preds = %249, %253
  store ptr %251, ptr %5, align 8, !tbaa !89
  %266 = and i32 %224, 8
  %267 = or disjoint i32 %266, 4
  br label %268

268:                                              ; preds = %228, %265, %222
  %269 = phi ptr [ %251, %265 ], [ %223, %228 ], [ %223, %222 ]
  %270 = phi i32 [ %267, %265 ], [ %224, %228 ], [ %224, %222 ]
  %271 = icmp ult ptr %269, %7
  br i1 %271, label %272, label %324, !prof !145

272:                                              ; preds = %268, %280
  %273 = phi ptr [ %281, %280 ], [ %269, %268 ]
  %274 = load i8, ptr %273, align 1, !tbaa !62
  %275 = zext i8 %274 to i64
  %276 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !60
  %278 = and i32 %277, 17408
  %279 = icmp eq i32 %278, 17408
  br i1 %279, label %280, label %283, !prof !111

280:                                              ; preds = %272
  %281 = getelementptr inbounds i8, ptr %273, i64 1
  %282 = icmp ult ptr %281, %7
  br i1 %282, label %272, label %324, !prof !146, !llvm.loop !147

283:                                              ; preds = %272
  store ptr %273, ptr %5, align 8, !tbaa !89
  %284 = icmp eq i64 %1, 10
  br i1 %284, label %285, label %291

285:                                              ; preds = %283
  %286 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %0, ptr noundef nonnull dereferenceable(10) @.str.9, i64 10)
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = icmp eq ptr %2, null
  br i1 %289, label %324, label %290

290:                                              ; preds = %288
  store i64 0, ptr %2, align 8, !tbaa !56
  br label %324

291:                                              ; preds = %285, %283
  %292 = getelementptr inbounds i8, ptr %273, i64 2
  %293 = icmp ult ptr %292, %7
  br i1 %293, label %294, label %319

294:                                              ; preds = %291
  %295 = load i8, ptr %273, align 1, !tbaa !62
  %296 = zext i8 %295 to i64
  %297 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %296
  %298 = load i32, ptr %297, align 4, !tbaa !60
  %299 = and i32 %298, 16400
  %300 = icmp eq i32 %299, 16400
  %301 = add i8 %295, 32
  %302 = zext i8 %301 to i32
  %303 = sext i8 %295 to i32
  %304 = select i1 %300, i32 %302, i32 %303
  %305 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.10, i32 %304, i64 6)
  %306 = icmp eq ptr %305, null
  br i1 %306, label %319, label %307

307:                                              ; preds = %294
  %308 = call i32 @Perl_grok_infnan(ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %309 = and i32 %308, 16
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %307
  %312 = or i32 %308, %270
  br label %324

313:                                              ; preds = %307
  %314 = and i32 %308, 32
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %324, label %316

316:                                              ; preds = %313
  %317 = or i32 %308, %270
  %318 = and i32 %317, -9
  br label %324

319:                                              ; preds = %294, %291
  %320 = and i32 %3, 16
  %321 = icmp eq i32 %320, 0
  %322 = or i32 %270, 64
  %323 = select i1 %321, i32 0, i32 %322
  br label %324

324:                                              ; preds = %280, %268, %319, %316, %311, %313, %260, %288, %290, %196, %199, %29, %20
  %325 = phi i32 [ 0, %20 ], [ 0, %29 ], [ 0, %199 ], [ 0, %196 ], [ 1, %290 ], [ 1, %288 ], [ %264, %260 ], [ 0, %313 ], [ %318, %316 ], [ %312, %311 ], [ %323, %319 ], [ %270, %268 ], [ %270, %280 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %325
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_grok_number(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !109 {
  %4 = tail call i32 @Perl_grok_number_flags(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 0) #14
  ret i32 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @Perl_grok_atoUV(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #5 !prof !148 {
  %4 = icmp eq ptr %2, null
  %5 = load i8, ptr %0, align 1, !tbaa !62
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !60
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %52, label %11, !prof !149

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  %13 = sext i8 %5 to i64
  %14 = add nsw i64 %13, -48
  %15 = load i8, ptr %12, align 1, !tbaa !62
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !60
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %44, label %21, !prof !149

21:                                               ; preds = %11
  %22 = icmp eq i64 %14, 0
  br i1 %22, label %52, label %23, !prof !132

23:                                               ; preds = %21, %34
  %24 = phi i8 [ %38, %34 ], [ %15, %21 ]
  %25 = phi i64 [ %37, %34 ], [ %14, %21 ]
  %26 = phi ptr [ %27, %34 ], [ %12, %21 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = add i8 %24, -48
  %29 = icmp ult i64 %25, 1844674407370955161
  br i1 %29, label %34, label %30, !prof !131

30:                                               ; preds = %23
  %31 = icmp eq i64 %25, 1844674407370955161
  %32 = icmp ult i8 %28, 6
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %23, %30
  %35 = mul nuw i64 %25, 10
  %36 = zext i8 %28 to i64
  %37 = add i64 %35, %36
  %38 = load i8, ptr %27, align 1, !tbaa !62
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !60
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %23, !prof !150, !llvm.loop !151

44:                                               ; preds = %34, %11
  %45 = phi ptr [ %12, %11 ], [ %27, %34 ]
  %46 = phi i64 [ %14, %11 ], [ %37, %34 ]
  br i1 %4, label %47, label %50, !prof !77

47:                                               ; preds = %44
  %48 = load i8, ptr %45, align 1, !tbaa !62
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %52

50:                                               ; preds = %44
  store ptr %45, ptr %2, align 8, !tbaa !89
  br label %51

51:                                               ; preds = %47, %50
  store i64 %46, ptr %1, align 8, !tbaa !56
  br label %52

52:                                               ; preds = %30, %3, %47, %21, %51
  %53 = phi i1 [ true, %51 ], [ false, %21 ], [ false, %47 ], [ false, %3 ], [ false, %30 ]
  ret i1 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @Perl_my_atof(ptr noundef %0) local_unnamed_addr #1 !prof !152 {
  %2 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store double 0.000000e+00, ptr %2, align 8, !tbaa !65
  %3 = call ptr @Perl_my_atof2(ptr noundef %0, ptr noundef nonnull %2) #14
  %4 = load double, ptr %2, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret double %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_my_atof2(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 !prof !152 {
  %3 = alloca ptr, align 8
  %4 = alloca [3 x double], align 16
  %5 = alloca [2 x i64], align 16
  %6 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store i64 -1, ptr %6, align 8
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %16, %8 ], [ %0, %2 ]
  %10 = load i8, ptr %9, align 1, !tbaa !62
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !60
  %14 = and i32 %13, 17408
  %15 = icmp eq i32 %14, 17408
  %16 = getelementptr inbounds i8, ptr %9, i64 1
  br i1 %15, label %8, label %17, !prof !153, !llvm.loop !154

17:                                               ; preds = %8
  %18 = getelementptr inbounds i8, ptr %0, i64 %7
  store ptr %9, ptr %3, align 8, !tbaa !89
  switch i8 %10, label %22 [
    i8 45, label %19
    i8 43, label %20
  ]

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %17, %19
  %21 = phi i1 [ false, %17 ], [ true, %19 ]
  store ptr %16, ptr %3, align 8, !tbaa !89
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi ptr [ %9, %17 ], [ %16, %20 ]
  %24 = phi i1 [ false, %17 ], [ %21, %20 ]
  %25 = tail call fastcc ptr @S_my_atof_infnan(ptr noundef nonnull %23, i1 noundef zeroext %24, ptr noundef %18, ptr noundef %1) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %244

27:                                               ; preds = %22, %160
  %28 = phi ptr [ %161, %160 ], [ %23, %22 ]
  %29 = phi i8 [ 1, %160 ], [ 0, %22 ]
  %30 = phi i32 [ %162, %160 ], [ 0, %22 ]
  %31 = phi i32 [ %97, %160 ], [ 0, %22 ]
  %32 = phi i32 [ %39, %160 ], [ 0, %22 ]
  %33 = phi i32 [ %70, %160 ], [ 0, %22 ]
  %34 = phi i32 [ %79, %160 ], [ 0, %22 ]
  br label %35

35:                                               ; preds = %27, %148
  %36 = phi ptr [ %28, %27 ], [ %150, %148 ]
  %37 = phi i8 [ %29, %27 ], [ %141, %148 ]
  %38 = phi i32 [ %31, %27 ], [ %142, %148 ]
  %39 = phi i32 [ %32, %27 ], [ 1, %148 ]
  %40 = phi i32 [ %33, %27 ], [ %143, %148 ]
  %41 = phi i32 [ %34, %27 ], [ %144, %148 ]
  %42 = icmp ne i32 %39, 0
  br label %43

43:                                               ; preds = %35, %131
  %44 = phi ptr [ %68, %131 ], [ %36, %35 ]
  %45 = phi i8 [ 1, %131 ], [ %37, %35 ]
  %46 = phi i32 [ %74, %131 ], [ %38, %35 ]
  %47 = phi i32 [ %70, %131 ], [ %40, %35 ]
  %48 = phi i32 [ %79, %131 ], [ %41, %35 ]
  %49 = load i8, ptr %44, align 1, !tbaa !62
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !60
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %139, label %62, !prof !155

55:                                               ; preds = %73
  %56 = load i8, ptr %68, align 1, !tbaa !62
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !60
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %139, label %62, !prof !156

62:                                               ; preds = %43, %55
  %63 = phi i8 [ %56, %55 ], [ %49, %43 ]
  %64 = phi i32 [ 0, %55 ], [ %48, %43 ]
  %65 = phi i32 [ 0, %55 ], [ %47, %43 ]
  %66 = phi i32 [ %74, %55 ], [ %46, %43 ]
  %67 = phi ptr [ %68, %55 ], [ %44, %43 ]
  %68 = getelementptr inbounds i8, ptr %67, i64 1
  %69 = sext i8 %63 to i32
  %70 = add nsw i32 %69, -48
  br i1 %42, label %71, label %73, !prof !157

71:                                               ; preds = %62
  %72 = add nsw i32 %66, 1
  br label %73

73:                                               ; preds = %71, %62
  %74 = phi i32 [ %72, %71 ], [ %66, %62 ]
  %75 = icmp eq i32 %64, 0
  %76 = icmp eq i32 %70, 0
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %55, label %78, !prof !158

78:                                               ; preds = %73
  store ptr %68, ptr %3, align 8, !tbaa !89
  %79 = add nsw i32 %64, 1
  %80 = icmp sgt i32 %64, 16
  br i1 %80, label %81, label %115, !prof !159

81:                                               ; preds = %78
  %82 = icmp sgt i8 %63, 53
  br i1 %82, label %88, label %83

83:                                               ; preds = %81
  %84 = icmp ne i32 %70, 5
  %85 = and i32 %65, 1
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %83, %81
  %89 = zext nneg i32 %39 to i64
  %90 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !56
  %92 = add i64 %91, 1
  store i64 %92, ptr %90, align 8, !tbaa !56
  br label %93

93:                                               ; preds = %88, %83
  %94 = xor i32 %39, 1
  %95 = add nsw i32 %30, %94
  %96 = sext i1 %42 to i32
  %97 = add nsw i32 %74, %96
  %98 = load i8, ptr %68, align 1, !tbaa !62
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !60
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %160, label %104

104:                                              ; preds = %93, %104
  %105 = phi i32 [ %108, %104 ], [ %95, %93 ]
  %106 = phi ptr [ %107, %104 ], [ %68, %93 ]
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  %108 = add nsw i32 %105, %94
  %109 = load i8, ptr %107, align 1, !tbaa !62
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !60
  %113 = and i32 %112, 2
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %160, label %104, !llvm.loop !160

115:                                              ; preds = %78
  %116 = zext nneg i32 %39 to i64
  %117 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !56
  %119 = icmp ugt i64 %118, 1844674407370955160
  br i1 %119, label %123, label %120, !prof !159

120:                                              ; preds = %115
  %121 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %116
  %122 = load i32, ptr %121, align 4, !tbaa !60
  br label %131

123:                                              ; preds = %115
  %124 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %116
  %125 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %116
  %126 = load double, ptr %124, align 8, !tbaa !65
  %127 = load i32, ptr %125, align 4, !tbaa !60
  %128 = tail call fastcc double @S_mulexp10(double noundef %126, i32 noundef %127) #14
  %129 = uitofp i64 %118 to double
  %130 = fadd double %128, %129
  store double %130, ptr %124, align 8, !tbaa !65
  br label %131

131:                                              ; preds = %120, %123
  %132 = phi i32 [ 0, %123 ], [ %122, %120 ]
  %133 = phi i64 [ 0, %123 ], [ %118, %120 ]
  %134 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %116
  %135 = mul nuw i64 %133, 10
  %136 = sext i32 %70 to i64
  %137 = add i64 %135, %136
  store i64 %137, ptr %117, align 8, !tbaa !56
  %138 = add nsw i32 %132, 1
  store i32 %138, ptr %134, align 4, !tbaa !60
  br label %43

139:                                              ; preds = %43, %55
  %140 = phi ptr [ %68, %55 ], [ %44, %43 ]
  %141 = phi i8 [ 1, %55 ], [ %45, %43 ]
  %142 = phi i32 [ %74, %55 ], [ %46, %43 ]
  %143 = phi i32 [ 0, %55 ], [ %47, %43 ]
  %144 = phi i32 [ 0, %55 ], [ %48, %43 ]
  store ptr %140, ptr %3, align 8, !tbaa !89
  %145 = icmp eq i32 %39, 0
  br i1 %145, label %146, label %164, !prof !161

146:                                              ; preds = %139
  %147 = call zeroext i1 @Perl_grok_numeric_radix(ptr noundef nonnull %3, ptr noundef %18) #14
  br i1 %147, label %148, label %164, !prof !162

148:                                              ; preds = %146
  %149 = icmp sgt i32 %144, 17
  %150 = load ptr, ptr %3, align 8, !tbaa !89
  br i1 %149, label %151, label %35, !prof !163

151:                                              ; preds = %148, %151
  %152 = phi ptr [ %153, %151 ], [ %150, %148 ]
  %153 = getelementptr inbounds i8, ptr %152, i64 1
  %154 = load i8, ptr %153, align 1, !tbaa !62
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !60
  %158 = and i32 %157, 2
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %151, !prof !164, !llvm.loop !165

160:                                              ; preds = %104, %93
  %161 = phi ptr [ %68, %93 ], [ %107, %104 ]
  %162 = phi i32 [ %95, %93 ], [ %108, %104 ]
  store ptr %161, ptr %3, align 8, !tbaa !89
  br label %27

163:                                              ; preds = %151
  store ptr %153, ptr %3, align 8, !tbaa !89
  br label %164

164:                                              ; preds = %139, %146, %163
  %165 = phi i1 [ false, %163 ], [ %145, %146 ], [ %145, %139 ]
  %166 = load double, ptr %4, align 16, !tbaa !65
  %167 = load i32, ptr %6, align 8, !tbaa !60
  %168 = tail call fastcc double @S_mulexp10(double noundef %166, i32 noundef %167) #14
  %169 = load i64, ptr %5, align 16, !tbaa !56
  %170 = uitofp i64 %169 to double
  %171 = fadd double %168, %170
  br i1 %165, label %182, label %172, !prof !166

172:                                              ; preds = %164
  %173 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %174 = load double, ptr %173, align 8, !tbaa !65
  %175 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %176 = load i32, ptr %175, align 4, !tbaa !60
  %177 = tail call fastcc double @S_mulexp10(double noundef %174, i32 noundef %176) #14
  %178 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 1
  %179 = load i64, ptr %178, align 8, !tbaa !56
  %180 = uitofp i64 %179 to double
  %181 = fadd double %177, %180
  store double %181, ptr %173, align 8, !tbaa !65
  br label %182

182:                                              ; preds = %172, %164
  %183 = and i8 %141, 1
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %227, label %185, !prof !153

185:                                              ; preds = %182
  %186 = load ptr, ptr %3, align 8, !tbaa !89
  %187 = load i8, ptr %186, align 1, !tbaa !62
  %188 = and i8 %187, -33
  %189 = icmp eq i8 %188, 69
  br i1 %189, label %190, label %227, !prof !153

190:                                              ; preds = %185
  %191 = getelementptr inbounds i8, ptr %186, i64 1
  %192 = load i8, ptr %191, align 1, !tbaa !62
  switch i8 %192, label %198 [
    i8 45, label %193
    i8 43, label %194
  ]

193:                                              ; preds = %190
  br label %194

194:                                              ; preds = %190, %193
  %195 = phi i1 [ false, %190 ], [ true, %193 ]
  %196 = getelementptr inbounds i8, ptr %186, i64 2
  %197 = load i8, ptr %196, align 1, !tbaa !62
  br label %198

198:                                              ; preds = %194, %190
  %199 = phi i8 [ %192, %190 ], [ %197, %194 ]
  %200 = phi ptr [ %191, %190 ], [ %196, %194 ]
  %201 = phi i1 [ false, %190 ], [ %195, %194 ]
  %202 = zext i8 %199 to i64
  %203 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !60
  %205 = and i32 %204, 2
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %222, label %207

207:                                              ; preds = %198, %207
  %208 = phi i8 [ %216, %207 ], [ %199, %198 ]
  %209 = phi i32 [ %215, %207 ], [ 0, %198 ]
  %210 = phi ptr [ %212, %207 ], [ %200, %198 ]
  %211 = mul nsw i32 %209, 10
  %212 = getelementptr inbounds i8, ptr %210, i64 1
  %213 = sext i8 %208 to i32
  %214 = add i32 %211, -48
  %215 = add i32 %214, %213
  %216 = load i8, ptr %212, align 1, !tbaa !62
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !60
  %220 = and i32 %219, 2
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %207, !llvm.loop !167

222:                                              ; preds = %207, %198
  %223 = phi ptr [ %200, %198 ], [ %212, %207 ]
  %224 = phi i32 [ 0, %198 ], [ %215, %207 ]
  store ptr %223, ptr %3, align 8, !tbaa !89
  %225 = sub nsw i32 0, %224
  %226 = select i1 %201, i32 %225, i32 %224
  br label %227

227:                                              ; preds = %222, %185, %182
  %228 = phi i32 [ %226, %222 ], [ 0, %185 ], [ 0, %182 ]
  %229 = add nsw i32 %228, %30
  %230 = tail call fastcc double @S_mulexp10(double noundef %171, i32 noundef %229) #14
  br i1 %165, label %237, label %231, !prof !166

231:                                              ; preds = %227
  %232 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %233 = load double, ptr %232, align 8, !tbaa !65
  %234 = sub nsw i32 %228, %142
  %235 = tail call fastcc double @S_mulexp10(double noundef %233, i32 noundef %234) #14
  %236 = fadd double %230, %235
  br label %237

237:                                              ; preds = %227, %231
  %238 = phi double [ %236, %231 ], [ %230, %227 ]
  br i1 %24, label %239, label %241, !prof !153

239:                                              ; preds = %237
  %240 = fneg double %238
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi double [ %240, %239 ], [ %238, %237 ]
  store double %242, ptr %1, align 8, !tbaa !65
  %243 = load ptr, ptr %3, align 8, !tbaa !89
  br label %244

244:                                              ; preds = %22, %241
  %245 = phi ptr [ %243, %241 ], [ %25, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret ptr %245
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_my_atof_infnan(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 !prof !152 !PGOFuncName !168 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  br i1 %1, label %7, label %9, !prof !153

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %0, i64 -1
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ %0, %4 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %10, ptr %5, align 8, !tbaa !89
  %11 = call i32 @Perl_grok_infnan(ptr noundef nonnull %5, ptr noundef %2) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13, !prof !169

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !89
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = and i32 %11, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = and i32 %11, 8
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, double 0x7FF0000000000000, double 0xFFF0000000000000
  store double %22, ptr %3, align 8, !tbaa !65
  br label %29

23:                                               ; preds = %16
  %24 = and i32 %11, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store double 0x7FF8000000000000, ptr %3, align 8, !tbaa !65
  br label %29

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %28 = call double @strtod(ptr noundef null, ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %29

29:                                               ; preds = %9, %13, %27, %26, %19
  %30 = phi ptr [ %14, %19 ], [ %14, %26 ], [ null, %27 ], [ null, %13 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc double @S_mulexp10(double noundef %0, i32 noundef %1) unnamed_addr #8 !prof !170 !PGOFuncName !171 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %46, label %4, !prof !172

4:                                                ; preds = %2
  %5 = fcmp oeq double %0, 0.000000e+00
  br i1 %5, label %46, label %6, !prof !173

6:                                                ; preds = %4
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %8, label %23, !prof !174

8:                                                ; preds = %6
  %9 = sub nsw i32 0, %1
  %10 = icmp ugt i32 %9, 308
  br i1 %10, label %11, label %19, !prof !175

11:                                               ; preds = %8, %11
  %12 = phi i32 [ %14, %11 ], [ %9, %8 ]
  %13 = phi double [ %15, %11 ], [ %0, %8 ]
  %14 = add nsw i32 %12, -1
  %15 = fdiv double %13, 1.000000e+01
  %16 = fcmp une double %15, 0.000000e+00
  %17 = icmp ugt i32 %14, 308
  %18 = select i1 %16, i1 %17, i1 false, !prof !174
  br i1 %18, label %11, label %19, !prof !146, !llvm.loop !176

19:                                               ; preds = %11, %8
  %20 = phi double [ %0, %8 ], [ %15, %11 ]
  %21 = phi i32 [ %9, %8 ], [ %14, %11 ]
  %22 = fcmp oeq double %20, 0.000000e+00
  br i1 %22, label %46, label %23, !prof !177

23:                                               ; preds = %19, %6
  %24 = phi double [ %20, %19 ], [ %0, %6 ]
  %25 = phi i32 [ %21, %19 ], [ %1, %6 ]
  br label %26

26:                                               ; preds = %23, %37
  %27 = phi i32 [ %25, %23 ], [ %38, %37 ]
  %28 = phi double [ 1.000000e+00, %23 ], [ %39, %37 ]
  %29 = phi double [ 1.000000e+01, %23 ], [ %40, %37 ]
  %30 = phi i32 [ 1, %23 ], [ %41, %37 ]
  %31 = and i32 %30, %27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33, !prof !178

33:                                               ; preds = %26
  %34 = xor i32 %30, %27
  %35 = fmul double %28, %29
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %42, label %37, !prof !179

37:                                               ; preds = %33, %26
  %38 = phi i32 [ %34, %33 ], [ %27, %26 ]
  %39 = phi double [ %35, %33 ], [ %28, %26 ]
  %40 = fmul double %29, %29
  %41 = shl i32 %30, 1
  br label %26, !llvm.loop !180

42:                                               ; preds = %33
  %43 = fdiv double %24, %35
  %44 = fmul double %24, %35
  %45 = select i1 %7, double %43, double %44, !prof !174
  br label %46

46:                                               ; preds = %19, %4, %2, %42
  %47 = phi double [ %45, %42 ], [ %0, %2 ], [ 0.000000e+00, %4 ], [ %20, %19 ]
  ret double %47
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @Perl_isinfnan(double noundef %0) local_unnamed_addr #0 !prof !181 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  %3 = fcmp ueq double %2, 0x7FF0000000000000
  ret i1 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl_isinfnansv(ptr noundef %0) local_unnamed_addr #1 !prof !182 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !183
  %6 = and i32 %5, 65280
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14, !prof !185

8:                                                ; preds = %1
  %9 = and i32 %5, 255
  %10 = icmp eq i32 %9, 8
  %11 = and i32 %5, 16777471
  %12 = icmp eq i32 %11, 16777226
  %13 = or i1 %10, %12
  br i1 %13, label %14, label %43, !prof !186

14:                                               ; preds = %8, %1
  %15 = and i32 %5, 8192
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17, !prof !187

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8, !tbaa !188
  %19 = getelementptr inbounds %struct.xpvnv, ptr %18, i64 0, i32 5
  %20 = load double, ptr %19, align 8, !tbaa !62
  %21 = tail call zeroext i1 @Perl_isinfnan(double noundef %20) #14
  br label %43

22:                                               ; preds = %14
  %23 = and i32 %5, 4096
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43, !prof !189

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %26 = and i32 %5, 2098176
  %27 = icmp eq i32 %26, 1024
  br i1 %27, label %28, label %34, !prof !190

28:                                               ; preds = %25
  %29 = load ptr, ptr %0, align 8, !tbaa !188
  %30 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !191
  store i64 %31, ptr %2, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  br label %37

34:                                               ; preds = %25
  %35 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 32) #12
  %36 = load i64, ptr %2, align 8, !tbaa !56
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i64 [ %31, %28 ], [ %36, %34 ]
  %39 = phi ptr [ %33, %28 ], [ %35, %34 ]
  store ptr %39, ptr %3, align 8, !tbaa !89
  %40 = getelementptr inbounds i8, ptr %39, i64 %38
  %41 = call i32 @Perl_grok_infnan(ptr noundef nonnull %3, ptr noundef %40) #14
  %42 = icmp ne i32 %41, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %43

43:                                               ; preds = %22, %8, %37, %17
  %44 = phi i1 [ %21, %17 ], [ %42, %37 ], [ false, %8 ], [ false, %22 ]
  ret i1 %44
}

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!49}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!36 = !{ptr @Perl_grok_hex, ptr @Perl_ck_warner, i64 102}
!37 = !{ptr @Perl_grok_oct, ptr @Perl_ck_warner, i64 2}
!38 = !{ptr @Perl_grok_number_flags, ptr @Perl_grok_numeric_radix, i64 117213}
!39 = !{ptr @Perl_grok_number, ptr @Perl_grok_number_flags, i64 117215}
!40 = !{ptr @Perl_my_atof, ptr @Perl_my_atof2, i64 5637}
!41 = !{ptr @Perl_my_atof2, ptr @strlen, i64 5637}
!42 = !{ptr @Perl_my_atof2, ptr @S_my_atof_infnan, i64 5637}
!43 = !{ptr @Perl_my_atof2, ptr @Perl_grok_numeric_radix, i64 2114}
!44 = !{ptr @Perl_my_atof2, ptr @S_mulexp10, i64 4278}
!45 = !{ptr @S_my_atof_infnan, ptr @Perl_grok_infnan, i64 5637}
!46 = !{ptr @Perl_isinfnansv, ptr @Perl_isinfnan, i64 2}
!47 = !{ptr @Perl_isinfnansv, ptr @Perl_sv_2pv_flags, i64 1}
!48 = !{ptr @Perl_isinfnansv, ptr @Perl_grok_infnan, i64 5571}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!"function_entry_count", i64 748603}
!52 = !{!"branch_weights", i32 748604, i32 1}
!53 = !{!"function_entry_count", i64 548695}
!54 = !{!"branch_weights", i32 1, i32 548696}
!55 = !{!"branch_weights", i32 548696, i32 1}
!56 = !{!57, !57, i64 0}
!57 = !{!"long", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !58, i64 0}
!62 = !{!58, !58, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!66, !66, i64 0}
!66 = !{!"double", !58, i64 0}
!67 = !{!"function_entry_count", i64 2350}
!68 = !{!"branch_weights", i32 1, i32 2351}
!69 = !{!"branch_weights", i32 571199, i32 2146912449}
!70 = !{!"branch_weights", i32 2351, i32 4701}
!71 = !{!"branch_weights", i32 4701, i32 1}
!72 = !{!"branch_weights", i32 2350, i32 2351}
!73 = distinct !{!73, !64}
!74 = !{!"branch_weights", i32 2146570214, i32 913434}
!75 = !{!"branch_weights", i32 913239, i32 2146570409}
!76 = !{!"function_entry_count", i64 90}
!77 = !{!"branch_weights", i32 1, i32 131}
!78 = !{!"branch_weights", i32 67, i32 198}
!79 = !{!"branch_weights", i32 1, i32 198}
!80 = !{!"branch_weights", i32 174, i32 1}
!81 = !{!"branch_weights", i32 103, i32 1}
!82 = !{!"branch_weights", i32 25, i32 1}
!83 = !{!"branch_weights", i32 131, i32 267}
!84 = distinct !{!84, !64}
!85 = !{!"branch_weights", i32 11760199, i32 2135723449}
!86 = !{!"branch_weights", i32 2124217935, i32 23265713}
!87 = !{!"branch_weights", i32 23647797, i32 2123835851}
!88 = !{!"function_entry_count", i64 122852}
!89 = !{!90, !90, i64 0}
!90 = !{!"any pointer", !58, i64 0}
!91 = !{!"branch_weights", i32 73, i32 122781}
!92 = !{!"branch_weights", i32 73, i32 1}
!93 = !{!"function_entry_count", i64 11207}
!94 = !{!"branch_weights", i32 125619264, i32 11209, i32 11208}
!95 = !{!"branch_weights", i32 17, i32 11192}
!96 = !{!"branch_weights", i32 1, i32 17}
!97 = !{!"branch_weights", i32 13, i32 5}
!98 = !{!"branch_weights", i32 1, i32 13}
!99 = !{!"branch_weights", i32 35, i32 1}
!100 = !{!"branch_weights", i32 -1556843097, i32 244693, i32 244671, i32 244650}
!101 = distinct !{!101, !64}
!102 = distinct !{!102, !64}
!103 = distinct !{!103, !64}
!104 = !{!"branch_weights", i32 1, i32 11192}
!105 = distinct !{!105, !64}
!106 = distinct !{!106, !64}
!107 = distinct !{!107, !64}
!108 = distinct !{!108, !64}
!109 = !{!"function_entry_count", i64 117215}
!110 = !{!"branch_weights", i32 127, i32 1}
!111 = !{!"branch_weights", i32 1, i32 117216}
!112 = !{!"branch_weights", i32 15003521, i32 127}
!113 = distinct !{!113, !64}
!114 = !{!"branch_weights", i32 -1441559101, i32 264027951, i32 29342131}
!115 = !{!"branch_weights", i32 117216, i32 1}
!116 = !{!"branch_weights", i32 92423, i32 24794}
!117 = !{!"branch_weights", i32 -24423934, i32 323466}
!118 = !{!"branch_weights", i32 24188, i32 68231}
!119 = !{!"branch_weights", i32 585059344, i32 48377}
!120 = !{!"branch_weights", i32 24112, i32 77}
!121 = !{!"branch_weights", i32 581388544, i32 48225}
!122 = !{!"branch_weights", i32 5586, i32 18527}
!123 = !{!"branch_weights", i32 31203396, i32 11173}
!124 = !{!"branch_weights", i32 5581, i32 6}
!125 = !{!"branch_weights", i32 31147561, i32 11163}
!126 = !{!"branch_weights", i32 5576, i32 6}
!127 = !{!"branch_weights", i32 31091776, i32 11153}
!128 = !{!"branch_weights", i32 5576, i32 1}
!129 = !{!"branch_weights", i32 7, i32 5570}
!130 = !{!"branch_weights", i32 49, i32 15}
!131 = !{!"branch_weights", i32 7, i32 1}
!132 = !{!"branch_weights", i32 1, i32 7}
!133 = distinct !{!133, !64}
!134 = !{!"branch_weights", i32 277262675, i32 1870220973}
!135 = distinct !{!135, !64}
!136 = !{!"branch_weights", i32 2, i32 117215}
!137 = !{!"branch_weights", i32 6, i32 117211}
!138 = !{!"branch_weights", i32 191, i32 1}
!139 = !{!"branch_weights", i32 6, i32 23}
!140 = !{!"branch_weights", i32 545, i32 191}
!141 = distinct !{!141, !64}
!142 = distinct !{!142, !64}
!143 = !{!"branch_weights", i32 29304, i32 -860040328}
!144 = distinct !{!144, !64}
!145 = !{!"branch_weights", i32 1, i32 117215}
!146 = !{!"branch_weights", i32 0, i32 1}
!147 = distinct !{!147, !64}
!148 = !{!"function_entry_count", i64 130}
!149 = !{!"branch_weights", i32 131, i32 1}
!150 = !{!"branch_weights", i32 223, i32 1}
!151 = distinct !{!151, !64}
!152 = !{!"function_entry_count", i64 5637}
!153 = !{!"branch_weights", i32 1, i32 5638}
!154 = distinct !{!154, !64}
!155 = !{!"branch_weights", i32 56136, i32 1}
!156 = !{!"branch_weights", i32 1, i32 0}
!157 = !{!"branch_weights", i32 234, i32 50200}
!158 = !{!"branch_weights", i32 28205, i32 284520423}
!159 = !{!"branch_weights", i32 1, i32 50429}
!160 = distinct !{!160, !64}
!161 = !{!"branch_weights", i32 5638, i32 68}
!162 = !{!"branch_weights", i32 68, i32 5571}
!163 = !{!"branch_weights", i32 1, i32 68}
!164 = !{!"branch_weights", i32 25896238, i32 2121587410}
!165 = distinct !{!165, !64}
!166 = !{!"branch_weights", i32 5571, i32 68}
!167 = distinct !{!167, !64}
!168 = !{!"numeric.c:S_my_atof_infnan"}
!169 = !{!"branch_weights", i32 5638, i32 1}
!170 = !{!"function_entry_count", i64 11408}
!171 = !{!"numeric.c:S_mulexp10"}
!172 = !{!"branch_weights", i32 5703, i32 5707}
!173 = !{!"branch_weights", i32 5643, i32 65}
!174 = !{!"branch_weights", i32 65, i32 1}
!175 = !{!"branch_weights", i32 1, i32 64}
!176 = distinct !{!176, !64}
!177 = !{!"branch_weights", i32 1, i32 65}
!178 = !{!"branch_weights", i32 38, i32 110}
!179 = !{!"branch_weights", i32 65, i32 46}
!180 = distinct !{!180, !64}
!181 = !{!"function_entry_count", i64 543121}
!182 = !{!"function_entry_count", i64 440414}
!183 = !{!184, !61, i64 12}
!184 = !{!"sv", !90, i64 0, !61, i64 8, !61, i64 12, !58, i64 16}
!185 = !{!"branch_weights", i32 17, i32 440399}
!186 = !{!"branch_weights", i32 35, i32 289}
!187 = !{!"branch_weights", i32 440398, i32 2}
!188 = !{!184, !90, i64 0}
!189 = !{!"branch_weights", i32 5571, i32 434828}
!190 = !{!"branch_weights", i32 5571, i32 1}
!191 = !{!192, !57, i64 16}
!192 = !{!"xpv", !90, i64 0, !58, i64 8, !57, i64 16, !58, i64 24}
