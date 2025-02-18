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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @Perl_cast_ulong(double noundef %0) local_unnamed_addr #0 !prof !41 {
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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @Perl_cast_i32(double noundef %0) local_unnamed_addr #0 !prof !41 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @Perl_cast_iv(double noundef %0) local_unnamed_addr #1 !prof !42 {
  %2 = fcmp olt double %0, 0x43E0000000000000
  br i1 %2, label %3, label %7, !prof !43

3:                                                ; preds = %1
  %4 = fcmp ole double %0, 0xC3E0000000000000
  %5 = select i1 %4, double 0xC3E0000000000000, double %0, !prof !44
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @Perl_cast_uv(double noundef %0) local_unnamed_addr #1 !prof !45 {
  %2 = fcmp olt double %0, 0.000000e+00
  br i1 %2, label %3, label %7, !prof !46

3:                                                ; preds = %1
  %4 = fcmp ole double %0, 0xC3E0000000000000
  %5 = select i1 %4, double 0xC3E0000000000000, double %0
  %6 = fptosi double %5 to i64
  br label %14

7:                                                ; preds = %1
  %8 = fcmp olt double %0, 0x43F0000000000000
  br i1 %8, label %9, label %11, !prof !47

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

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_grok_bin(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef writeonly %3) local_unnamed_addr #2 !prof !41 {
  %5 = load i64, ptr %1, align 8, !tbaa !48
  %6 = load i32, ptr %2, align 4, !tbaa !52
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %6, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i64 %5, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %32

13:                                               ; preds = %4
  %14 = load i8, ptr %0, align 1, !tbaa !54
  %15 = and i8 %14, -33
  %16 = icmp eq i8 %15, 66
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %0, i64 1
  %19 = add i64 %5, -1
  br label %32

20:                                               ; preds = %13
  %21 = icmp ugt i64 %5, 1
  br i1 %21, label %22, label %32

22:                                               ; preds = %20
  %23 = icmp eq i8 %14, 48
  br i1 %23, label %24, label %32

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %0, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !54
  %27 = and i8 %26, -33
  %28 = icmp eq i8 %27, 66
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %0, i64 2
  %31 = add i64 %5, -2
  br label %32

32:                                               ; preds = %20, %22, %24, %29, %17, %4
  %33 = phi i64 [ %19, %17 ], [ %31, %29 ], [ %5, %24 ], [ %5, %22 ], [ 1, %20 ], [ %5, %4 ]
  %34 = phi ptr [ %18, %17 ], [ %30, %29 ], [ %0, %24 ], [ %0, %22 ], [ %0, %20 ], [ %0, %4 ]
  %35 = icmp eq i64 %33, 0
  br i1 %35, label %95, label %36

36:                                               ; preds = %32, %89
  %37 = phi i8 [ %92, %89 ], [ 0, %32 ]
  %38 = phi ptr [ %93, %89 ], [ %34, %32 ]
  %39 = phi double [ %91, %89 ], [ 0.000000e+00, %32 ]
  %40 = phi i64 [ %90, %89 ], [ 0, %32 ]
  %41 = phi i64 [ %49, %89 ], [ %33, %32 ]
  %42 = add i64 %41, -1
  %43 = load i8, ptr %38, align 1, !tbaa !54
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %95, label %45

45:                                               ; preds = %36
  %46 = and i8 %43, -2
  %47 = icmp eq i8 %46, 48
  br i1 %47, label %48, label %71

48:                                               ; preds = %45, %81
  %49 = phi i64 [ %42, %45 ], [ %82, %81 ]
  %50 = phi ptr [ %38, %45 ], [ %77, %81 ]
  %51 = phi i8 [ %43, %45 ], [ %78, %81 ]
  %52 = and i8 %37, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = icmp sgt i64 %40, -1
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = shl nuw i64 %40, 1
  %58 = sext i8 %51 to i64
  %59 = add nsw i64 %58, -48
  %60 = or i64 %59, %57
  br label %89

61:                                               ; preds = %54
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 15, ptr noundef nonnull @.str) #14
  %62 = uitofp i64 %40 to double
  br label %63

63:                                               ; preds = %61, %48
  %64 = phi double [ %39, %48 ], [ %62, %61 ]
  %65 = phi i8 [ %37, %48 ], [ 1, %61 ]
  %66 = fmul double %64, 2.000000e+00
  %67 = sext i8 %51 to i32
  %68 = add nsw i32 %67, -48
  %69 = sitofp i32 %68 to double
  %70 = fadd double %66, %69
  br label %89

71:                                               ; preds = %45
  %72 = icmp ne i8 %43, 95
  %73 = icmp eq i64 %42, 0
  %74 = or i1 %73, %72
  %75 = or i1 %8, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds i8, ptr %38, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !54
  %79 = and i8 %78, -2
  %80 = icmp eq i8 %79, 48
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = add i64 %41, -2
  br label %48

83:                                               ; preds = %71, %76
  %84 = load i32, ptr %2, align 4, !tbaa !52
  %85 = and i32 %84, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = sext i8 %43 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 31, ptr noundef nonnull @.str.1, i32 noundef %88) #14
  br label %95

89:                                               ; preds = %63, %56
  %90 = phi i64 [ %40, %63 ], [ %60, %56 ]
  %91 = phi double [ %70, %63 ], [ %39, %56 ]
  %92 = phi i8 [ %65, %63 ], [ %37, %56 ]
  %93 = getelementptr inbounds i8, ptr %50, i64 1
  %94 = icmp eq i64 %49, 0
  br i1 %94, label %95, label %36, !llvm.loop !55

95:                                               ; preds = %36, %89, %32, %83, %87
  %96 = phi i64 [ %40, %83 ], [ %40, %87 ], [ 0, %32 ], [ %90, %89 ], [ %40, %36 ]
  %97 = phi double [ %39, %83 ], [ %39, %87 ], [ 0.000000e+00, %32 ], [ %91, %89 ], [ %39, %36 ]
  %98 = phi ptr [ %38, %83 ], [ %38, %87 ], [ %34, %32 ], [ %93, %89 ], [ %38, %36 ]
  %99 = phi i8 [ %37, %83 ], [ %37, %87 ], [ 0, %32 ], [ %92, %89 ], [ %37, %36 ]
  %100 = and i8 %99, 1
  %101 = icmp ne i8 %100, 0
  %102 = fcmp ogt double %97, 0x41EFFFFFFFE00000
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %111, label %104

104:                                              ; preds = %95
  %105 = icmp ult i64 %96, 4294967296
  %106 = select i1 %101, i1 true, i1 %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %2, align 4, !tbaa !52
  %109 = and i32 %108, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %95, %107
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.2) #14
  br label %112

112:                                              ; preds = %111, %107, %104
  %113 = ptrtoint ptr %98 to i64
  %114 = ptrtoint ptr %0 to i64
  %115 = sub i64 %113, %114
  store i64 %115, ptr %1, align 8, !tbaa !48
  br i1 %101, label %117, label %116

116:                                              ; preds = %112
  store i32 0, ptr %2, align 4, !tbaa !52
  br label %120

117:                                              ; preds = %112
  store i32 2, ptr %2, align 4, !tbaa !52
  %118 = icmp eq ptr %3, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %117
  store double %97, ptr %3, align 8, !tbaa !58
  br label %120

120:                                              ; preds = %117, %119, %116
  %121 = phi i64 [ %96, %116 ], [ -1, %119 ], [ -1, %117 ]
  ret i64 %121
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_grok_hex(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef writeonly %3) local_unnamed_addr #5 !prof !60 {
  %5 = load i64, ptr %1, align 8, !tbaa !48
  %6 = load i32, ptr %2, align 4, !tbaa !52
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %6, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i64 %5, 0
  %12 = select i1 %10, i1 %11, i1 false, !prof !61
  br i1 %12, label %13, label %32, !prof !61

13:                                               ; preds = %4
  %14 = load i8, ptr %0, align 1, !tbaa !54
  %15 = and i8 %14, -33
  %16 = icmp eq i8 %15, 88
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %0, i64 1
  %19 = add i64 %5, -1
  br label %32

20:                                               ; preds = %13
  %21 = icmp ugt i64 %5, 1
  br i1 %21, label %22, label %32

22:                                               ; preds = %20
  %23 = icmp eq i8 %14, 48
  br i1 %23, label %24, label %32

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %0, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !54
  %27 = and i8 %26, -33
  %28 = icmp eq i8 %27, 88
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %0, i64 2
  %31 = add i64 %5, -2
  br label %32

32:                                               ; preds = %20, %22, %24, %29, %17, %4
  %33 = phi i64 [ %19, %17 ], [ %31, %29 ], [ %5, %24 ], [ %5, %22 ], [ 1, %20 ], [ %5, %4 ]
  %34 = phi ptr [ %18, %17 ], [ %30, %29 ], [ %0, %24 ], [ %0, %22 ], [ %0, %20 ], [ %0, %4 ]
  %35 = icmp eq i64 %33, 0
  br i1 %35, label %118, label %36, !prof !62

36:                                               ; preds = %32, %112
  %37 = phi i8 [ %115, %112 ], [ 0, %32 ]
  %38 = phi ptr [ %116, %112 ], [ %34, %32 ]
  %39 = phi double [ %114, %112 ], [ 0.000000e+00, %32 ]
  %40 = phi i64 [ %113, %112 ], [ 0, %32 ]
  %41 = phi i64 [ %52, %112 ], [ %33, %32 ]
  %42 = add i64 %41, -1
  %43 = load i8, ptr %38, align 1, !tbaa !54
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %118, label %45, !prof !63

45:                                               ; preds = %36
  %46 = zext i8 %43 to i64
  %47 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !52
  %49 = and i32 %48, 4096
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %89, label %51, !prof !63

51:                                               ; preds = %45, %104
  %52 = phi i64 [ %42, %45 ], [ %105, %104 ]
  %53 = phi ptr [ %38, %45 ], [ %95, %104 ]
  %54 = and i8 %37, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %73, !prof !64

56:                                               ; preds = %51
  %57 = icmp ult i64 %40, 1152921504606846976
  br i1 %57, label %58, label %71, !prof !64

58:                                               ; preds = %56
  %59 = shl nuw i64 %40, 4
  %60 = load i8, ptr %53, align 1, !tbaa !54
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !52
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  %66 = zext i8 %60 to i64
  %67 = add nuw nsw i64 %66, 9
  %68 = select i1 %65, i64 %67, i64 %66, !prof !65
  %69 = and i64 %68, 15
  %70 = or disjoint i64 %69, %59
  br label %112

71:                                               ; preds = %56
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 15, ptr noundef nonnull @.str.3) #14
  %72 = uitofp i64 %40 to double
  br label %73

73:                                               ; preds = %71, %51
  %74 = phi double [ %39, %51 ], [ %72, %71 ]
  %75 = phi i8 [ %37, %51 ], [ 1, %71 ]
  %76 = fmul double %74, 1.600000e+01
  %77 = load i8, ptr %53, align 1, !tbaa !54
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !52
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  %83 = zext i8 %77 to i32
  %84 = add nuw nsw i32 %83, 9
  %85 = select i1 %82, i32 %84, i32 %83
  %86 = and i32 %85, 15
  %87 = sitofp i32 %86 to double
  %88 = fadd double %76, %87
  br label %112

89:                                               ; preds = %45
  %90 = icmp ne i8 %43, 95
  %91 = icmp eq i64 %42, 0
  %92 = or i1 %91, %90
  %93 = or i1 %8, %92
  br i1 %93, label %106, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds i8, ptr %38, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !54
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = zext i8 %96 to i64
  %100 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !52
  %102 = and i32 %101, 4096
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %98
  %105 = add i64 %41, -2
  br label %51

106:                                              ; preds = %89, %98, %94
  %107 = load i32, ptr %2, align 4, !tbaa !52
  %108 = and i32 %107, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = sext i8 %43 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 31, ptr noundef nonnull @.str.4, i32 noundef %111) #14
  br label %118

112:                                              ; preds = %73, %58
  %113 = phi i64 [ %40, %73 ], [ %70, %58 ]
  %114 = phi double [ %88, %73 ], [ %39, %58 ]
  %115 = phi i8 [ %75, %73 ], [ %37, %58 ]
  %116 = getelementptr inbounds i8, ptr %53, i64 1
  %117 = icmp eq i64 %52, 0
  br i1 %117, label %118, label %36, !prof !66, !llvm.loop !67

118:                                              ; preds = %36, %112, %32, %106, %110
  %119 = phi i64 [ %40, %106 ], [ %40, %110 ], [ 0, %32 ], [ %113, %112 ], [ %40, %36 ]
  %120 = phi double [ %39, %106 ], [ %39, %110 ], [ 0.000000e+00, %32 ], [ %114, %112 ], [ %39, %36 ]
  %121 = phi ptr [ %38, %106 ], [ %38, %110 ], [ %34, %32 ], [ %116, %112 ], [ %38, %36 ]
  %122 = phi i8 [ %37, %106 ], [ %37, %110 ], [ 0, %32 ], [ %115, %112 ], [ %37, %36 ]
  %123 = and i8 %122, 1
  %124 = icmp ne i8 %123, 0
  %125 = fcmp ogt double %120, 0x41EFFFFFFFE00000
  %126 = select i1 %124, i1 %125, i1 false, !prof !61
  br i1 %126, label %134, label %127, !prof !61

127:                                              ; preds = %118
  %128 = icmp ult i64 %119, 4294967296
  %129 = select i1 %124, i1 true, i1 %128, !prof !61
  br i1 %129, label %135, label %130, !prof !68

130:                                              ; preds = %127
  %131 = load i32, ptr %2, align 4, !tbaa !52
  %132 = and i32 %131, 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %118, %130
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.5) #14
  br label %135

135:                                              ; preds = %134, %130, %127
  %136 = ptrtoint ptr %121 to i64
  %137 = ptrtoint ptr %0 to i64
  %138 = sub i64 %136, %137
  store i64 %138, ptr %1, align 8, !tbaa !48
  br i1 %124, label %140, label %139, !prof !61

139:                                              ; preds = %135
  store i32 0, ptr %2, align 4, !tbaa !52
  br label %143

140:                                              ; preds = %135
  store i32 2, ptr %2, align 4, !tbaa !52
  %141 = icmp eq ptr %3, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %140
  store double %120, ptr %3, align 8, !tbaa !58
  br label %143

143:                                              ; preds = %140, %142, %139
  %144 = phi i64 [ %119, %139 ], [ -1, %142 ], [ -1, %140 ]
  ret i64 %144
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_grok_oct(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef writeonly %3) local_unnamed_addr #5 !prof !69 {
  %5 = load i64, ptr %1, align 8, !tbaa !48
  %6 = load i32, ptr %2, align 4, !tbaa !52
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i64 %5, 0
  br i1 %9, label %75, label %10, !prof !70

10:                                               ; preds = %4, %69
  %11 = phi i8 [ %72, %69 ], [ 0, %4 ]
  %12 = phi ptr [ %73, %69 ], [ %0, %4 ]
  %13 = phi double [ %71, %69 ], [ 0.000000e+00, %4 ]
  %14 = phi i64 [ %70, %69 ], [ 0, %4 ]
  %15 = phi i64 [ %23, %69 ], [ %5, %4 ]
  %16 = add i64 %15, -1
  %17 = load i8, ptr %12, align 1, !tbaa !54
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %75, label %19, !prof !71

19:                                               ; preds = %10
  %20 = and i8 %17, -8
  %21 = icmp eq i8 %20, 48
  br i1 %21, label %22, label %45, !prof !72

22:                                               ; preds = %19, %55
  %23 = phi i64 [ %16, %19 ], [ %56, %55 ]
  %24 = phi ptr [ %12, %19 ], [ %51, %55 ]
  %25 = and i8 %11, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %37, !prof !73

27:                                               ; preds = %22
  %28 = icmp ult i64 %14, 2305843009213693952
  br i1 %28, label %29, label %35, !prof !73

29:                                               ; preds = %27
  %30 = shl nuw i64 %14, 3
  %31 = load i8, ptr %24, align 1, !tbaa !54
  %32 = and i8 %31, 7
  %33 = zext nneg i8 %32 to i64
  %34 = or disjoint i64 %30, %33
  br label %69

35:                                               ; preds = %27
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 15, ptr noundef nonnull @.str.6) #14
  %36 = uitofp i64 %14 to double
  br label %37

37:                                               ; preds = %35, %22
  %38 = phi double [ %13, %22 ], [ %36, %35 ]
  %39 = phi i8 [ %11, %22 ], [ 1, %35 ]
  %40 = fmul double %38, 8.000000e+00
  %41 = load i8, ptr %24, align 1, !tbaa !54
  %42 = and i8 %41, 7
  %43 = uitofp i8 %42 to double
  %44 = fadd double %40, %43
  br label %69

45:                                               ; preds = %19
  %46 = icmp ne i8 %17, 95
  %47 = icmp eq i64 %16, 0
  %48 = or i1 %47, %46
  %49 = select i1 %48, i1 true, i1 %8, !prof !74
  br i1 %49, label %57, label %50, !prof !74

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %12, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !54
  %53 = and i8 %52, -8
  %54 = icmp eq i8 %53, 48
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = add i64 %15, -2
  br label %22

57:                                               ; preds = %45, %50
  %58 = zext i8 %17 to i64
  %59 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !52
  %61 = and i32 %60, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %75, label %63, !prof !74

63:                                               ; preds = %57
  %64 = load i32, ptr %2, align 4, !tbaa !52
  %65 = and i32 %64, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = sext i8 %17 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef %68) #14
  br label %75

69:                                               ; preds = %37, %29
  %70 = phi i64 [ %14, %37 ], [ %34, %29 ]
  %71 = phi double [ %44, %37 ], [ %13, %29 ]
  %72 = phi i8 [ %39, %37 ], [ %11, %29 ]
  %73 = getelementptr inbounds i8, ptr %24, i64 1
  %74 = icmp eq i64 %23, 0
  br i1 %74, label %75, label %10, !prof !75, !llvm.loop !76

75:                                               ; preds = %10, %69, %4, %57, %67, %63
  %76 = phi i64 [ %14, %57 ], [ %14, %67 ], [ %14, %63 ], [ 0, %4 ], [ %70, %69 ], [ %14, %10 ]
  %77 = phi double [ %13, %57 ], [ %13, %67 ], [ %13, %63 ], [ 0.000000e+00, %4 ], [ %71, %69 ], [ %13, %10 ]
  %78 = phi ptr [ %12, %57 ], [ %12, %67 ], [ %12, %63 ], [ %0, %4 ], [ %73, %69 ], [ %12, %10 ]
  %79 = phi i8 [ %11, %57 ], [ %11, %67 ], [ %11, %63 ], [ 0, %4 ], [ %72, %69 ], [ %11, %10 ]
  %80 = and i8 %79, 1
  %81 = icmp ne i8 %80, 0
  %82 = fcmp ogt double %77, 0x41EFFFFFFFE00000
  %83 = select i1 %81, i1 %82, i1 false, !prof !77
  br i1 %83, label %91, label %84, !prof !77

84:                                               ; preds = %75
  %85 = icmp ult i64 %76, 4294967296
  %86 = select i1 %81, i1 true, i1 %85, !prof !77
  br i1 %86, label %92, label %87, !prof !78

87:                                               ; preds = %84
  %88 = load i32, ptr %2, align 4, !tbaa !52
  %89 = and i32 %88, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %75, %87
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.8) #14
  br label %92

92:                                               ; preds = %91, %87, %84
  %93 = ptrtoint ptr %78 to i64
  %94 = ptrtoint ptr %0 to i64
  %95 = sub i64 %93, %94
  store i64 %95, ptr %1, align 8, !tbaa !48
  br i1 %81, label %97, label %96, !prof !77

96:                                               ; preds = %92
  store i32 0, ptr %2, align 4, !tbaa !52
  br label %100

97:                                               ; preds = %92
  store i32 2, ptr %2, align 4, !tbaa !52
  %98 = icmp eq ptr %3, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %97
  store double %77, ptr %3, align 8, !tbaa !58
  br label %100

100:                                              ; preds = %97, %99, %96
  %101 = phi i64 [ %76, %96 ], [ -1, %99 ], [ -1, %97 ]
  ret i64 %101
}

; Function Attrs: cold nounwind uwtable
define dso_local double @Perl_scan_bin(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 !prof !41 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store i64 %1, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %7 = load i64, ptr %2, align 8, !tbaa !48
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr %6, align 4, !tbaa !52
  %10 = call i64 @Perl_grok_bin(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %11 = load i64, ptr %4, align 8, !tbaa !48
  store i64 %11, ptr %2, align 8, !tbaa !48
  %12 = load i32, ptr %6, align 4, !tbaa !52
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = load double, ptr %5, align 8
  %16 = uitofp i64 %10 to double
  %17 = select i1 %14, double %16, double %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret double %17
}

; Function Attrs: cold nounwind uwtable
define dso_local double @Perl_scan_oct(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 !prof !41 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store i64 %1, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %7 = load i64, ptr %2, align 8, !tbaa !48
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr %6, align 4, !tbaa !52
  %10 = call i64 @Perl_grok_oct(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %11 = load i64, ptr %4, align 8, !tbaa !48
  store i64 %11, ptr %2, align 8, !tbaa !48
  %12 = load i32, ptr %6, align 4, !tbaa !52
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = load double, ptr %5, align 8
  %16 = uitofp i64 %10 to double
  %17 = select i1 %14, double %16, double %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret double %17
}

; Function Attrs: cold nounwind uwtable
define dso_local double @Perl_scan_hex(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 !prof !41 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store i64 %1, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %7 = load i64, ptr %2, align 8, !tbaa !48
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr %6, align 4, !tbaa !52
  %10 = call i64 @Perl_grok_hex(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %11 = load i64, ptr %4, align 8, !tbaa !48
  store i64 %11, ptr %2, align 8, !tbaa !48
  %12 = load i32, ptr %6, align 4, !tbaa !52
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = load double, ptr %5, align 8
  %16 = uitofp i64 %10 to double
  %17 = select i1 %14, double %16, double %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret double %17
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @Perl_grok_numeric_radix(ptr nocapture noundef %0, ptr noundef readnone %1) local_unnamed_addr #6 !prof !41 {
  %3 = load ptr, ptr %0, align 8, !tbaa !79
  %4 = icmp ult ptr %3, %1
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1, !tbaa !54
  %7 = icmp eq i8 %6, 46
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %9, ptr %0, align 8, !tbaa !79
  br label %10

10:                                               ; preds = %2, %5, %8
  %11 = phi i1 [ true, %8 ], [ false, %5 ], [ false, %2 ]
  ret i1 %11
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_grok_infnan(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #5 !prof !81 {
  %3 = ptrtoint ptr %1 to i64
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load ptr, ptr %0, align 8, !tbaa !79
  %10 = load i8, ptr %9, align 1, !tbaa !54
  switch i8 %10, label %17 [
    i8 43, label %11
    i8 45, label %14
  ], !prof !82

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %322, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds i8, ptr %9, i64 1
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %322, label %17

17:                                               ; preds = %2, %14, %11
  %18 = phi ptr [ %12, %11 ], [ %15, %14 ], [ %9, %2 ]
  %19 = phi i32 [ 0, %11 ], [ 8, %14 ], [ 0, %2 ]
  %20 = load i8, ptr %18, align 1, !tbaa !54
  %21 = icmp eq i8 %20, 49
  br i1 %21, label %22, label %38, !prof !83

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, ptr %18, i64 1
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %322, label %25, !prof !84

25:                                               ; preds = %22
  %26 = load i8, ptr %23, align 1, !tbaa !54
  %27 = icmp eq i8 %26, 46
  br i1 %27, label %28, label %31, !prof !85

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %18, i64 2
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %322, label %31, !prof !86

31:                                               ; preds = %28, %25
  %32 = phi ptr [ %29, %28 ], [ %23, %25 ]
  %33 = load i8, ptr %32, align 1, !tbaa !54
  %34 = icmp ne i8 %33, 35
  %35 = getelementptr inbounds i8, ptr %32, i64 1
  %36 = icmp eq ptr %35, %1
  %37 = select i1 %34, i1 true, i1 %36, !prof !87
  br i1 %37, label %322, label %38, !prof !87

38:                                               ; preds = %31, %17
  %39 = phi ptr [ %18, %17 ], [ %35, %31 ]
  %40 = load i8, ptr %39, align 1, !tbaa !54
  %41 = and i8 %40, -33
  switch i8 %41, label %142 [
    i8 73, label %42
    i8 83, label %139
    i8 81, label %139
  ], !prof !88

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %39, i64 1
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %322, label %45

45:                                               ; preds = %42
  %46 = load i8, ptr %43, align 1, !tbaa !54
  %47 = and i8 %46, -33
  %48 = icmp eq i8 %47, 78
  br i1 %48, label %49, label %322

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %39, i64 2
  %51 = icmp eq ptr %50, %1
  br i1 %51, label %322, label %52

52:                                               ; preds = %49
  %53 = load i8, ptr %50, align 1, !tbaa !54
  %54 = and i8 %53, -33
  switch i8 %54, label %322 [
    i8 70, label %55
    i8 68, label %128
  ]

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, ptr %39, i64 3
  %57 = icmp ult ptr %56, %1
  br i1 %57, label %58, label %96

58:                                               ; preds = %55
  %59 = load i8, ptr %56, align 1, !tbaa !54
  %60 = and i8 %59, -33
  %61 = icmp eq i8 %60, 73
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = or disjoint i32 %19, 84
  %64 = getelementptr inbounds i8, ptr %39, i64 4
  %65 = icmp eq ptr %64, %1
  br i1 %65, label %93, label %66

66:                                               ; preds = %62
  %67 = load i8, ptr %64, align 1, !tbaa !54
  %68 = and i8 %67, -33
  %69 = icmp eq i8 %68, 78
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = getelementptr inbounds i8, ptr %39, i64 5
  %72 = icmp eq ptr %71, %1
  br i1 %72, label %93, label %73

73:                                               ; preds = %70
  %74 = load i8, ptr %71, align 1, !tbaa !54
  %75 = and i8 %74, -33
  %76 = icmp eq i8 %75, 73
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = getelementptr inbounds i8, ptr %39, i64 6
  %79 = icmp eq ptr %78, %1
  br i1 %79, label %93, label %80

80:                                               ; preds = %77
  %81 = load i8, ptr %78, align 1, !tbaa !54
  %82 = and i8 %81, -33
  %83 = icmp eq i8 %82, 84
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = getelementptr inbounds i8, ptr %39, i64 7
  %86 = icmp eq ptr %85, %1
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load i8, ptr %85, align 1, !tbaa !54
  %89 = and i8 %88, -33
  %90 = icmp eq i8 %89, 89
  %91 = getelementptr inbounds i8, ptr %39, i64 8
  %92 = select i1 %90, ptr %91, ptr %85
  br label %93

93:                                               ; preds = %87, %84, %77, %80, %70, %73, %62, %66
  %94 = phi ptr [ %64, %66 ], [ %64, %62 ], [ %71, %73 ], [ %71, %70 ], [ %78, %80 ], [ %78, %77 ], [ %85, %84 ], [ %92, %87 ]
  %95 = phi i1 [ false, %66 ], [ false, %62 ], [ false, %73 ], [ false, %70 ], [ false, %80 ], [ false, %77 ], [ false, %84 ], [ %90, %87 ]
  br i1 %95, label %102, label %322

96:                                               ; preds = %58, %55
  br i1 %21, label %97, label %102

97:                                               ; preds = %96, %97
  %98 = phi ptr [ %101, %97 ], [ %56, %96 ]
  %99 = load i8, ptr %98, align 1, !tbaa !54
  %100 = icmp eq i8 %99, 48
  %101 = getelementptr inbounds i8, ptr %98, i64 1
  br i1 %100, label %97, label %102, !llvm.loop !89

102:                                              ; preds = %97, %96, %93
  %103 = phi ptr [ %94, %93 ], [ %56, %96 ], [ %98, %97 ]
  %104 = icmp ult ptr %103, %1
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  %106 = ptrtoint ptr %103 to i64
  %107 = sub i64 %3, %106
  %108 = getelementptr i8, ptr %103, i64 %107
  br label %109

109:                                              ; preds = %105, %117
  %110 = phi ptr [ %118, %117 ], [ %103, %105 ]
  %111 = load i8, ptr %110, align 1, !tbaa !54
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !52
  %115 = and i32 %114, 17408
  %116 = icmp eq i32 %115, 17408
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = getelementptr inbounds i8, ptr %110, i64 1
  %119 = icmp eq ptr %118, %108
  br i1 %119, label %124, label %109, !llvm.loop !90

120:                                              ; preds = %109
  %121 = icmp eq i8 %111, 0
  %122 = or disjoint i32 %19, 64
  %123 = select i1 %121, i32 %19, i32 %122
  br label %124

124:                                              ; preds = %117, %102, %120
  %125 = phi ptr [ %110, %120 ], [ %103, %102 ], [ %108, %117 ]
  %126 = phi i32 [ %123, %120 ], [ %19, %102 ], [ %19, %117 ]
  %127 = or i32 %126, 20
  br label %301

128:                                              ; preds = %52
  br i1 %21, label %129, label %322

129:                                              ; preds = %128
  %130 = getelementptr inbounds i8, ptr %39, i64 3
  %131 = or disjoint i32 %19, 36
  br label %132

132:                                              ; preds = %135, %129
  %133 = phi ptr [ %130, %129 ], [ %136, %135 ]
  %134 = load i8, ptr %133, align 1, !tbaa !54
  switch i8 %134, label %137 [
    i8 48, label %135
    i8 0, label %301
  ]

135:                                              ; preds = %132
  %136 = getelementptr inbounds i8, ptr %133, i64 1
  br label %132, !llvm.loop !91

137:                                              ; preds = %132
  %138 = or disjoint i32 %19, 100
  br label %301

139:                                              ; preds = %38, %38
  %140 = getelementptr inbounds i8, ptr %39, i64 1
  %141 = icmp eq ptr %140, %1
  br i1 %141, label %322, label %142

142:                                              ; preds = %38, %139
  %143 = phi ptr [ %140, %139 ], [ %39, %38 ]
  %144 = load i8, ptr %143, align 1, !tbaa !54
  %145 = and i8 %144, -33
  %146 = icmp eq i8 %145, 78
  br i1 %146, label %147, label %322, !prof !92

147:                                              ; preds = %142
  %148 = getelementptr inbounds i8, ptr %143, i64 1
  %149 = icmp eq ptr %148, %1
  br i1 %149, label %322, label %150

150:                                              ; preds = %147
  %151 = load i8, ptr %148, align 1, !tbaa !54
  %152 = and i8 %151, -33
  %153 = icmp eq i8 %152, 65
  br i1 %153, label %154, label %322

154:                                              ; preds = %150
  %155 = getelementptr inbounds i8, ptr %143, i64 2
  %156 = icmp eq ptr %155, %1
  br i1 %156, label %322, label %157

157:                                              ; preds = %154
  %158 = load i8, ptr %155, align 1, !tbaa !54
  %159 = and i8 %158, -33
  %160 = icmp eq i8 %159, 78
  br i1 %160, label %161, label %322

161:                                              ; preds = %157
  %162 = getelementptr inbounds i8, ptr %143, i64 3
  %163 = or disjoint i32 %19, 36
  %164 = load i8, ptr %162, align 1, !tbaa !54
  %165 = and i8 %164, -33
  switch i8 %165, label %168 [
    i8 81, label %166
    i8 83, label %166
  ]

166:                                              ; preds = %161, %161
  %167 = getelementptr inbounds i8, ptr %143, i64 4
  br label %168

168:                                              ; preds = %161, %166
  %169 = phi ptr [ %167, %166 ], [ %162, %161 ]
  %170 = ptrtoint ptr %169 to i64
  %171 = load i8, ptr %169, align 1, !tbaa !54
  %172 = icmp eq i8 %171, 40
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = icmp ult ptr %169, %1
  br i1 %174, label %175, label %301

175:                                              ; preds = %173
  %176 = sub i64 %3, %170
  %177 = getelementptr i8, ptr %169, i64 %176
  br label %289

178:                                              ; preds = %168
  %179 = getelementptr inbounds i8, ptr %169, i64 1
  %180 = icmp eq ptr %179, %1
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = or disjoint i32 %19, 100
  br label %282

183:                                              ; preds = %178
  %184 = getelementptr inbounds i8, ptr %169, i64 2
  %185 = getelementptr inbounds i8, ptr %169, i64 2
  %186 = icmp ult ptr %185, %1
  br i1 %186, label %187, label %196

187:                                              ; preds = %183
  %188 = sub i64 %3, %170
  br label %189

189:                                              ; preds = %187, %193
  %190 = phi i64 [ %194, %193 ], [ 2, %187 ]
  %191 = getelementptr inbounds i8, ptr %169, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !54
  switch i8 %192, label %193 [
    i8 0, label %196
    i8 41, label %196
  ]

193:                                              ; preds = %189
  %194 = add nuw i64 %190, 1
  %195 = icmp eq i64 %194, %188
  br i1 %195, label %196, label %189, !llvm.loop !93

196:                                              ; preds = %193, %189, %189, %183
  %197 = phi i64 [ 2, %183 ], [ %188, %193 ], [ %190, %189 ], [ %190, %189 ]
  %198 = getelementptr inbounds i8, ptr %169, i64 %197
  %199 = icmp eq ptr %198, %1
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = or disjoint i32 %19, 100
  br label %282

202:                                              ; preds = %196
  %203 = load i8, ptr %198, align 1, !tbaa !54
  %204 = icmp eq i8 %203, 41
  br i1 %204, label %205, label %280

205:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %206 = load i8, ptr %179, align 1, !tbaa !54
  %207 = icmp eq i8 %206, 48
  br i1 %207, label %208, label %252

208:                                              ; preds = %205
  %209 = getelementptr inbounds i8, ptr %169, i64 3
  %210 = icmp ugt i64 %197, 3
  br i1 %210, label %211, label %231

211:                                              ; preds = %208
  %212 = load i8, ptr %184, align 1, !tbaa !54
  %213 = and i8 %212, -33
  %214 = icmp eq i8 %213, 88
  br i1 %214, label %215, label %231

215:                                              ; preds = %211
  %216 = load i8, ptr %209, align 1, !tbaa !54
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !52
  %220 = and i32 %219, 4096
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %231, label %222

222:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %223 = add nsw i64 %197, -1
  store i64 %223, ptr %5, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 1, ptr %6, align 4, !tbaa !52
  %224 = call i64 @Perl_grok_hex(ptr noundef nonnull %179, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null)
  store i64 %224, ptr %4, align 8, !tbaa !48
  %225 = load i32, ptr %6, align 4, !tbaa !52
  %226 = lshr i32 %225, 1
  %227 = and i32 %226, 1
  %228 = xor i32 %227, 1
  %229 = load i64, ptr %5, align 8, !tbaa !48
  %230 = getelementptr inbounds i8, ptr %179, i64 %229
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %268

231:                                              ; preds = %215, %211, %208
  br i1 %207, label %232, label %252

232:                                              ; preds = %231
  %233 = getelementptr inbounds i8, ptr %169, i64 3
  %234 = icmp ugt i64 %197, 3
  br i1 %234, label %235, label %252

235:                                              ; preds = %232
  %236 = load i8, ptr %184, align 1, !tbaa !54
  %237 = and i8 %236, -33
  %238 = icmp eq i8 %237, 66
  br i1 %238, label %239, label %252

239:                                              ; preds = %235
  %240 = load i8, ptr %233, align 1, !tbaa !54
  %241 = and i8 %240, -2
  %242 = icmp eq i8 %241, 48
  br i1 %242, label %243, label %252

243:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %244 = add nsw i64 %197, -1
  store i64 %244, ptr %7, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 1, ptr %8, align 4, !tbaa !52
  %245 = call i64 @Perl_grok_bin(ptr noundef nonnull %179, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null)
  store i64 %245, ptr %4, align 8, !tbaa !48
  %246 = load i32, ptr %8, align 4, !tbaa !52
  %247 = lshr i32 %246, 1
  %248 = and i32 %247, 1
  %249 = xor i32 %248, 1
  %250 = load i64, ptr %7, align 8, !tbaa !48
  %251 = getelementptr inbounds i8, ptr %179, i64 %250
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %268

252:                                              ; preds = %205, %239, %235, %232, %231
  %253 = add nsw i64 %197, -1
  %254 = call i32 @Perl_grok_number_flags(ptr noundef nonnull %179, i64 noundef %253, ptr noundef nonnull %4, i32 noundef 17)
  br label %255

255:                                              ; preds = %252, %265
  %256 = phi ptr [ %266, %265 ], [ %179, %252 ]
  %257 = load i8, ptr %256, align 1, !tbaa !54
  %258 = zext i8 %257 to i64
  %259 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !52
  %261 = and i32 %260, 2
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %255
  %264 = or disjoint i32 %19, 100
  br label %268

265:                                              ; preds = %255
  %266 = getelementptr inbounds i8, ptr %256, i64 1
  %267 = icmp ult ptr %266, %198
  br i1 %267, label %255, label %268, !llvm.loop !94

268:                                              ; preds = %265, %263, %243, %222
  %269 = phi ptr [ %230, %222 ], [ %251, %243 ], [ %256, %263 ], [ %266, %265 ]
  %270 = phi i32 [ %163, %222 ], [ %163, %243 ], [ %264, %263 ], [ %163, %265 ]
  %271 = phi i32 [ %228, %222 ], [ %249, %243 ], [ %254, %263 ], [ %254, %265 ]
  %272 = and i32 %271, 4
  %273 = icmp eq i32 %272, 0
  %274 = icmp ne i32 %271, 0
  %275 = and i1 %274, %273
  %276 = icmp ult ptr %269, %198
  %277 = or i32 %270, 64
  %278 = select i1 %275, i1 %276, i1 false
  %279 = select i1 %278, i32 %277, i32 %270
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %282

280:                                              ; preds = %202
  %281 = or disjoint i32 %19, 100
  br label %282

282:                                              ; preds = %268, %280, %200, %181
  %283 = phi i32 [ %163, %181 ], [ %163, %200 ], [ %281, %280 ], [ %279, %268 ]
  %284 = phi i1 [ false, %181 ], [ false, %200 ], [ true, %280 ], [ %275, %268 ]
  %285 = phi i32 [ %182, %181 ], [ %201, %200 ], [ 0, %280 ], [ 0, %268 ]
  br i1 %284, label %301, label %322

286:                                              ; preds = %289
  %287 = getelementptr inbounds i8, ptr %290, i64 1
  %288 = icmp eq ptr %287, %177
  br i1 %288, label %301, label %289, !llvm.loop !95

289:                                              ; preds = %175, %286
  %290 = phi ptr [ %287, %286 ], [ %169, %175 ]
  %291 = load i8, ptr %290, align 1, !tbaa !54
  %292 = zext i8 %291 to i64
  %293 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %292
  %294 = load i32, ptr %293, align 4, !tbaa !52
  %295 = and i32 %294, 17408
  %296 = icmp eq i32 %295, 17408
  br i1 %296, label %286, label %297

297:                                              ; preds = %289
  %298 = icmp eq i8 %291, 0
  %299 = or disjoint i32 %19, 100
  %300 = select i1 %298, i32 %163, i32 %299
  br label %301

301:                                              ; preds = %132, %286, %173, %297, %282, %124, %137
  %302 = phi ptr [ %125, %124 ], [ %133, %137 ], [ %1, %297 ], [ %1, %282 ], [ %1, %173 ], [ %1, %286 ], [ %133, %132 ]
  %303 = phi i32 [ %127, %124 ], [ %138, %137 ], [ %300, %297 ], [ %283, %282 ], [ %163, %173 ], [ %163, %286 ], [ %131, %132 ]
  %304 = icmp ult ptr %302, %1
  br i1 %304, label %305, label %320

305:                                              ; preds = %301
  %306 = ptrtoint ptr %302 to i64
  %307 = sub i64 %3, %306
  %308 = getelementptr i8, ptr %302, i64 %307
  br label %309

309:                                              ; preds = %305, %317
  %310 = phi ptr [ %318, %317 ], [ %302, %305 ]
  %311 = load i8, ptr %310, align 1, !tbaa !54
  %312 = zext i8 %311 to i64
  %313 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !52
  %315 = and i32 %314, 17408
  %316 = icmp eq i32 %315, 17408
  br i1 %316, label %317, label %320

317:                                              ; preds = %309
  %318 = getelementptr inbounds i8, ptr %310, i64 1
  %319 = icmp eq ptr %318, %308
  br i1 %319, label %320, label %309, !llvm.loop !96

320:                                              ; preds = %309, %317, %301
  %321 = phi ptr [ %302, %301 ], [ %310, %309 ], [ %308, %317 ]
  store ptr %321, ptr %0, align 8, !tbaa !79
  br label %322

322:                                              ; preds = %139, %28, %14, %11, %142, %154, %157, %147, %150, %128, %52, %49, %42, %45, %31, %22, %93, %282, %320
  %323 = phi i32 [ %303, %320 ], [ %63, %93 ], [ %285, %282 ], [ 0, %22 ], [ 0, %31 ], [ 0, %45 ], [ 0, %42 ], [ 0, %49 ], [ 0, %52 ], [ 0, %128 ], [ 0, %150 ], [ 0, %147 ], [ 0, %157 ], [ 0, %154 ], [ 0, %142 ], [ 0, %11 ], [ 0, %14 ], [ 0, %28 ], [ 0, %139 ]
  ret i32 %323
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_grok_number_flags(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, i32 noundef %3) local_unnamed_addr #5 !prof !97 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %8, label %19, !prof !98

8:                                                ; preds = %4, %16
  %9 = phi ptr [ %17, %16 ], [ %0, %4 ]
  %10 = load i8, ptr %9, align 1, !tbaa !54
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = and i32 %13, 17408
  %15 = icmp eq i32 %14, 17408
  br i1 %15, label %16, label %19, !prof !99

16:                                               ; preds = %8
  %17 = getelementptr inbounds i8, ptr %9, i64 1
  %18 = icmp ult ptr %17, %6
  br i1 %18, label %8, label %19, !prof !100, !llvm.loop !101

19:                                               ; preds = %8, %16, %4
  %20 = phi ptr [ %0, %4 ], [ %9, %8 ], [ %17, %16 ]
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %339, label %22, !prof !99

22:                                               ; preds = %19
  %23 = load i8, ptr %20, align 1, !tbaa !54
  switch i8 %23, label %28 [
    i8 45, label %24
    i8 43, label %26
  ], !prof !102

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %20, i64 1
  br label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %20, i64 1
  br label %28

28:                                               ; preds = %22, %24, %26
  %29 = phi ptr [ %20, %22 ], [ %27, %26 ], [ %25, %24 ]
  %30 = phi i32 [ 0, %22 ], [ 0, %26 ], [ 8, %24 ]
  %31 = icmp eq ptr %29, %6
  br i1 %31, label %339, label %32, !prof !99

32:                                               ; preds = %28
  store ptr %29, ptr %5, align 8, !tbaa !79
  %33 = load i8, ptr %29, align 1, !tbaa !54
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !52
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %207, label %39, !prof !99

39:                                               ; preds = %32
  %40 = sext i8 %33 to i64
  %41 = add nsw i64 %40, -48
  %42 = getelementptr inbounds i8, ptr %29, i64 1
  %43 = icmp ult ptr %42, %6
  br i1 %43, label %44, label %174, !prof !103

44:                                               ; preds = %39
  %45 = load i8, ptr %42, align 1, !tbaa !54
  %46 = add i8 %45, -48
  %47 = icmp ult i8 %46, 10
  br i1 %47, label %48, label %169, !prof !104

48:                                               ; preds = %44
  %49 = mul nsw i64 %41, 10
  %50 = and i8 %45, 15
  %51 = zext nneg i8 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = getelementptr inbounds i8, ptr %29, i64 2
  %54 = icmp ult ptr %53, %6
  br i1 %54, label %55, label %169, !prof !105

55:                                               ; preds = %48
  %56 = load i8, ptr %53, align 1, !tbaa !54
  %57 = add i8 %56, -48
  %58 = icmp ult i8 %57, 10
  br i1 %58, label %59, label %169, !prof !106

59:                                               ; preds = %55
  %60 = mul nsw i64 %52, 10
  %61 = and i8 %56, 15
  %62 = zext nneg i8 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = getelementptr inbounds i8, ptr %29, i64 3
  %65 = icmp ult ptr %64, %6
  br i1 %65, label %66, label %169, !prof !107

66:                                               ; preds = %59
  %67 = load i8, ptr %64, align 1, !tbaa !54
  %68 = add i8 %67, -48
  %69 = icmp ult i8 %68, 10
  br i1 %69, label %70, label %169, !prof !108

70:                                               ; preds = %66
  %71 = mul nsw i64 %63, 10
  %72 = and i8 %67, 15
  %73 = zext nneg i8 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = getelementptr inbounds i8, ptr %29, i64 4
  %76 = icmp ult ptr %75, %6
  br i1 %76, label %77, label %169, !prof !109

77:                                               ; preds = %70
  %78 = load i8, ptr %75, align 1, !tbaa !54
  %79 = add i8 %78, -48
  %80 = icmp ult i8 %79, 10
  br i1 %80, label %81, label %169, !prof !110

81:                                               ; preds = %77
  %82 = mul nsw i64 %74, 10
  %83 = and i8 %78, 15
  %84 = zext nneg i8 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = getelementptr inbounds i8, ptr %29, i64 5
  %87 = icmp ult ptr %86, %6
  br i1 %87, label %88, label %169, !prof !111

88:                                               ; preds = %81
  %89 = load i8, ptr %86, align 1, !tbaa !54
  %90 = add i8 %89, -48
  %91 = icmp ult i8 %90, 10
  br i1 %91, label %92, label %169, !prof !112

92:                                               ; preds = %88
  %93 = mul nsw i64 %85, 10
  %94 = and i8 %89, 15
  %95 = zext nneg i8 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = getelementptr inbounds i8, ptr %29, i64 6
  %98 = icmp ult ptr %97, %6
  br i1 %98, label %99, label %169, !prof !113

99:                                               ; preds = %92
  %100 = load i8, ptr %97, align 1, !tbaa !54
  %101 = add i8 %100, -48
  %102 = icmp ult i8 %101, 10
  br i1 %102, label %103, label %169, !prof !114

103:                                              ; preds = %99
  %104 = mul nsw i64 %96, 10
  %105 = and i8 %100, 15
  %106 = zext nneg i8 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = getelementptr inbounds i8, ptr %29, i64 7
  %109 = icmp ult ptr %108, %6
  br i1 %109, label %110, label %169, !prof !114

110:                                              ; preds = %103
  %111 = load i8, ptr %108, align 1, !tbaa !54
  %112 = add i8 %111, -48
  %113 = icmp ult i8 %112, 10
  br i1 %113, label %114, label %169, !prof !114

114:                                              ; preds = %110
  %115 = mul nsw i64 %107, 10
  %116 = and i8 %111, 15
  %117 = zext nneg i8 %116 to i64
  %118 = add nsw i64 %115, %117
  %119 = getelementptr inbounds i8, ptr %29, i64 8
  %120 = icmp ult ptr %119, %6
  br i1 %120, label %121, label %169, !prof !114

121:                                              ; preds = %114
  %122 = load i8, ptr %119, align 1, !tbaa !54
  %123 = add i8 %122, -48
  %124 = icmp ult i8 %123, 10
  br i1 %124, label %125, label %169, !prof !114

125:                                              ; preds = %121
  %126 = mul nsw i64 %118, 10
  %127 = and i8 %122, 15
  %128 = zext nneg i8 %127 to i64
  %129 = add nsw i64 %126, %128
  %130 = getelementptr inbounds i8, ptr %29, i64 9
  %131 = icmp ult ptr %130, %6
  br i1 %131, label %132, label %169, !prof !115

132:                                              ; preds = %125, %145
  %133 = phi ptr [ %149, %145 ], [ %130, %125 ]
  %134 = phi i64 [ %148, %145 ], [ %129, %125 ]
  %135 = load i8, ptr %133, align 1, !tbaa !54
  %136 = sext i8 %135 to i32
  %137 = add nsw i32 %136, -48
  %138 = icmp ult i32 %137, 10
  br i1 %138, label %139, label %151, !prof !116

139:                                              ; preds = %132
  %140 = icmp ult i64 %134, 1844674407370955161
  br i1 %140, label %145, label %141, !prof !116

141:                                              ; preds = %139
  %142 = icmp eq i64 %134, 1844674407370955161
  %143 = icmp slt i8 %135, 54
  %144 = and i1 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %139, %141
  %146 = mul i64 %134, 10
  %147 = zext nneg i32 %137 to i64
  %148 = add i64 %146, %147
  %149 = getelementptr inbounds i8, ptr %133, i64 1
  %150 = icmp ult ptr %149, %6
  br i1 %150, label %132, label %151, !prof !117, !llvm.loop !118

151:                                              ; preds = %145, %141, %132
  %152 = phi ptr [ %133, %132 ], [ %133, %141 ], [ %149, %145 ]
  %153 = phi i64 [ %134, %132 ], [ %134, %141 ], [ %148, %145 ]
  %154 = icmp ult ptr %152, %6
  %155 = and i1 %138, %154
  br i1 %155, label %156, label %169, !prof !117

156:                                              ; preds = %151, %160
  %157 = phi ptr [ %158, %160 ], [ %152, %151 ]
  %158 = getelementptr inbounds i8, ptr %157, i64 1
  %159 = icmp ult ptr %158, %6
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i8, ptr %158, align 1, !tbaa !54
  %162 = zext i8 %161 to i64
  %163 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !52
  %165 = and i32 %164, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %156, !llvm.loop !119

167:                                              ; preds = %160, %156
  %168 = or disjoint i32 %30, 2
  br label %169

169:                                              ; preds = %44, %55, %66, %77, %88, %99, %110, %121, %151, %125, %114, %103, %92, %81, %70, %59, %48, %167
  %170 = phi ptr [ %158, %167 ], [ %152, %151 ], [ %130, %125 ], [ %119, %121 ], [ %119, %114 ], [ %108, %110 ], [ %108, %103 ], [ %97, %99 ], [ %97, %92 ], [ %86, %88 ], [ %86, %81 ], [ %75, %77 ], [ %75, %70 ], [ %64, %66 ], [ %64, %59 ], [ %53, %55 ], [ %53, %48 ], [ %42, %44 ]
  %171 = phi i32 [ %168, %167 ], [ %30, %151 ], [ %30, %125 ], [ %30, %121 ], [ %30, %114 ], [ %30, %110 ], [ %30, %103 ], [ %30, %99 ], [ %30, %92 ], [ %30, %88 ], [ %30, %81 ], [ %30, %77 ], [ %30, %70 ], [ %30, %66 ], [ %30, %59 ], [ %30, %55 ], [ %30, %48 ], [ %30, %44 ]
  %172 = phi i1 [ false, %167 ], [ true, %151 ], [ true, %125 ], [ true, %121 ], [ true, %114 ], [ true, %110 ], [ true, %103 ], [ true, %99 ], [ true, %92 ], [ true, %88 ], [ true, %81 ], [ true, %77 ], [ true, %70 ], [ true, %66 ], [ true, %59 ], [ true, %55 ], [ true, %48 ], [ true, %44 ]
  %173 = phi i64 [ %153, %167 ], [ %153, %151 ], [ %129, %125 ], [ %118, %121 ], [ %118, %114 ], [ %107, %110 ], [ %107, %103 ], [ %96, %99 ], [ %96, %92 ], [ %85, %88 ], [ %85, %81 ], [ %74, %77 ], [ %74, %70 ], [ %63, %66 ], [ %63, %59 ], [ %52, %55 ], [ %52, %48 ], [ %41, %44 ]
  br i1 %172, label %174, label %181, !prof !120

174:                                              ; preds = %169, %39
  %175 = phi ptr [ %170, %169 ], [ %42, %39 ]
  %176 = phi i32 [ %171, %169 ], [ %30, %39 ]
  %177 = phi i64 [ %173, %169 ], [ %41, %39 ]
  %178 = or i32 %176, 1
  %179 = icmp eq ptr %2, null
  br i1 %179, label %181, label %180, !prof !121

180:                                              ; preds = %174
  store i64 %177, ptr %2, align 8, !tbaa !48
  br label %181

181:                                              ; preds = %169, %174, %180
  %182 = phi ptr [ %175, %174 ], [ %175, %180 ], [ %170, %169 ]
  %183 = phi i32 [ %178, %174 ], [ %178, %180 ], [ %171, %169 ]
  %184 = icmp ult ptr %182, %6
  br i1 %184, label %185, label %190, !prof !122

185:                                              ; preds = %181
  %186 = load i8, ptr %182, align 1, !tbaa !54
  %187 = icmp eq i8 %186, 46
  %188 = zext i1 %187 to i64
  %189 = getelementptr inbounds i8, ptr %182, i64 %188
  br label %190

190:                                              ; preds = %185, %181
  %191 = phi ptr [ %182, %181 ], [ %189, %185 ]
  %192 = phi i1 [ false, %181 ], [ %187, %185 ]
  br i1 %192, label %193, label %237, !prof !122

193:                                              ; preds = %190
  %194 = or i32 %183, 4
  %195 = icmp ult ptr %191, %6
  br i1 %195, label %196, label %237, !prof !123

196:                                              ; preds = %193, %204
  %197 = phi ptr [ %205, %204 ], [ %191, %193 ]
  %198 = load i8, ptr %197, align 1, !tbaa !54
  %199 = zext i8 %198 to i64
  %200 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !52
  %202 = and i32 %201, 2
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %237, label %204, !prof !124

204:                                              ; preds = %196
  %205 = getelementptr inbounds i8, ptr %197, i64 1
  %206 = icmp ult ptr %205, %6
  br i1 %206, label %196, label %237, !prof !125, !llvm.loop !126

207:                                              ; preds = %32
  %208 = icmp ult ptr %29, %6
  %209 = icmp eq i8 %33, 46
  %210 = and i1 %208, %209
  %211 = zext i1 %210 to i64
  %212 = getelementptr inbounds i8, ptr %29, i64 %211
  br i1 %210, label %213, label %237

213:                                              ; preds = %207
  %214 = or disjoint i32 %30, 5
  %215 = icmp ult ptr %212, %6
  br i1 %215, label %216, label %339

216:                                              ; preds = %213
  %217 = load i8, ptr %212, align 1, !tbaa !54
  %218 = zext i8 %217 to i64
  %219 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !52
  %221 = and i32 %220, 2
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %339, label %223

223:                                              ; preds = %216, %227
  %224 = phi ptr [ %225, %227 ], [ %212, %216 ]
  %225 = getelementptr inbounds i8, ptr %224, i64 1
  %226 = icmp ult ptr %225, %6
  br i1 %226, label %227, label %234

227:                                              ; preds = %223
  %228 = load i8, ptr %225, align 1, !tbaa !54
  %229 = zext i8 %228 to i64
  %230 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !52
  %232 = and i32 %231, 2
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %223, !llvm.loop !127

234:                                              ; preds = %227, %223
  %235 = icmp eq ptr %2, null
  br i1 %235, label %237, label %236

236:                                              ; preds = %234
  store i64 0, ptr %2, align 8, !tbaa !48
  br label %237

237:                                              ; preds = %196, %204, %193, %190, %207, %234, %236
  %238 = phi ptr [ %225, %234 ], [ %225, %236 ], [ %212, %207 ], [ %191, %190 ], [ %191, %193 ], [ %205, %204 ], [ %197, %196 ]
  %239 = phi i32 [ %214, %234 ], [ %214, %236 ], [ %30, %207 ], [ %183, %190 ], [ %194, %193 ], [ %194, %204 ], [ %194, %196 ]
  %240 = icmp ugt ptr %238, %29
  %241 = icmp ult ptr %238, %6
  %242 = and i1 %240, %241
  br i1 %242, label %243, label %283, !prof !99

243:                                              ; preds = %237
  %244 = load i8, ptr %238, align 1, !tbaa !54
  %245 = and i8 %244, -33
  %246 = icmp eq i8 %245, 69
  br i1 %246, label %247, label %283

247:                                              ; preds = %243
  %248 = getelementptr inbounds i8, ptr %238, i64 1
  %249 = icmp ult ptr %248, %6
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load i8, ptr %248, align 1, !tbaa !54
  switch i8 %251, label %254 [
    i8 45, label %252
    i8 43, label %252
  ]

252:                                              ; preds = %250, %250
  %253 = getelementptr inbounds i8, ptr %238, i64 2
  br label %254

254:                                              ; preds = %250, %252, %247
  %255 = phi ptr [ %248, %250 ], [ %253, %252 ], [ %248, %247 ]
  %256 = icmp ult ptr %255, %6
  br i1 %256, label %257, label %275

257:                                              ; preds = %254
  %258 = load i8, ptr %255, align 1, !tbaa !54
  %259 = zext i8 %258 to i64
  %260 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %259
  %261 = load i32, ptr %260, align 4, !tbaa !52
  %262 = and i32 %261, 2
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %275, label %264

264:                                              ; preds = %257, %268
  %265 = phi ptr [ %266, %268 ], [ %255, %257 ]
  %266 = getelementptr inbounds i8, ptr %265, i64 1
  %267 = icmp ult ptr %266, %6
  br i1 %267, label %268, label %280

268:                                              ; preds = %264
  %269 = load i8, ptr %266, align 1, !tbaa !54
  %270 = zext i8 %269 to i64
  %271 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !52
  %273 = and i32 %272, 2
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %280, label %264, !llvm.loop !128

275:                                              ; preds = %257, %254
  %276 = and i32 %3, 16
  %277 = icmp eq i32 %276, 0
  %278 = or i32 %239, 64
  %279 = select i1 %277, i32 0, i32 %278
  br label %339

280:                                              ; preds = %268, %264
  %281 = and i32 %239, 8
  %282 = or disjoint i32 %281, 4
  br label %283

283:                                              ; preds = %243, %280, %237
  %284 = phi ptr [ %266, %280 ], [ %238, %243 ], [ %238, %237 ]
  %285 = phi i32 [ %282, %280 ], [ %239, %243 ], [ %239, %237 ]
  %286 = icmp ult ptr %284, %6
  br i1 %286, label %287, label %339, !prof !129

287:                                              ; preds = %283, %295
  %288 = phi ptr [ %296, %295 ], [ %284, %283 ]
  %289 = load i8, ptr %288, align 1, !tbaa !54
  %290 = zext i8 %289 to i64
  %291 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !52
  %293 = and i32 %292, 17408
  %294 = icmp eq i32 %293, 17408
  br i1 %294, label %295, label %298

295:                                              ; preds = %287
  %296 = getelementptr inbounds i8, ptr %288, i64 1
  %297 = icmp ult ptr %296, %6
  br i1 %297, label %287, label %339, !prof !129, !llvm.loop !130

298:                                              ; preds = %287
  %299 = icmp eq i64 %1, 10
  br i1 %299, label %300, label %306

300:                                              ; preds = %298
  %301 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %0, ptr noundef nonnull dereferenceable(10) @.str.9, i64 10)
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %300
  %304 = icmp eq ptr %2, null
  br i1 %304, label %339, label %305

305:                                              ; preds = %303
  store i64 0, ptr %2, align 8, !tbaa !48
  br label %339

306:                                              ; preds = %300, %298
  %307 = getelementptr inbounds i8, ptr %288, i64 2
  %308 = icmp ult ptr %307, %6
  br i1 %308, label %309, label %333

309:                                              ; preds = %306
  %310 = and i32 %292, 16400
  %311 = icmp eq i32 %310, 16400
  %312 = add i8 %289, 32
  %313 = zext i8 %312 to i32
  %314 = sext i8 %289 to i32
  %315 = select i1 %311, i32 %313, i32 %314
  %316 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.10, i32 %315, i64 6)
  %317 = icmp eq ptr %316, null
  br i1 %317, label %333, label %318

318:                                              ; preds = %309
  %319 = call i32 @Perl_grok_infnan(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %320 = and i32 %319, 16
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %318
  %323 = or i32 %319, %285
  br label %330

324:                                              ; preds = %318
  %325 = and i32 %319, 32
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = or i32 %319, %285
  %329 = and i32 %328, -9
  br label %330

330:                                              ; preds = %324, %327, %322
  %331 = phi i1 [ false, %322 ], [ false, %327 ], [ true, %324 ]
  %332 = phi i32 [ %323, %322 ], [ %329, %327 ], [ undef, %324 ]
  br i1 %331, label %338, label %339

333:                                              ; preds = %309, %306
  %334 = and i32 %3, 16
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %338, label %336

336:                                              ; preds = %333
  %337 = or i32 %285, 64
  br label %339

338:                                              ; preds = %333, %330
  br label %339

339:                                              ; preds = %295, %283, %275, %303, %305, %213, %216, %28, %19, %330, %338, %336
  %340 = phi i32 [ 0, %338 ], [ %332, %330 ], [ %337, %336 ], [ 0, %19 ], [ 0, %28 ], [ 0, %216 ], [ 0, %213 ], [ 1, %305 ], [ 1, %303 ], [ %279, %275 ], [ %285, %283 ], [ %285, %295 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret i32 %340
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_grok_number(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #5 !prof !97 {
  %4 = tail call i32 @Perl_grok_number_flags(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @Perl_grok_atoUV(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #7 !prof !131 {
  %4 = icmp eq ptr %2, null
  %5 = load i8, ptr %0, align 1, !tbaa !54
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11, !prof !132

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  %13 = sext i8 %5 to i64
  %14 = add nsw i64 %13, -48
  %15 = load i8, ptr %12, align 1, !tbaa !54
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !52
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %47, label %21, !prof !133

21:                                               ; preds = %11
  %22 = icmp eq i64 %14, 0
  br i1 %22, label %57, label %23, !prof !117

23:                                               ; preds = %21, %44
  %24 = phi ptr [ %33, %44 ], [ %12, %21 ]
  %25 = phi i64 [ %45, %44 ], [ %14, %21 ]
  %26 = load i8, ptr %24, align 1, !tbaa !54
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !52
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32, !prof !134

32:                                               ; preds = %23
  %33 = getelementptr inbounds i8, ptr %24, i64 1
  %34 = add i8 %26, -48
  %35 = icmp ult i64 %25, 1844674407370955161
  br i1 %35, label %40, label %36, !prof !116

36:                                               ; preds = %32
  %37 = icmp eq i64 %25, 1844674407370955161
  %38 = icmp ult i8 %34, 6
  %39 = and i1 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %32
  %41 = mul i64 %25, 10
  %42 = zext i8 %34 to i64
  %43 = add i64 %41, %42
  br label %44

44:                                               ; preds = %36, %40
  %45 = phi i64 [ %43, %40 ], [ %25, %36 ]
  %46 = phi i1 [ true, %40 ], [ false, %36 ]
  br i1 %46, label %23, label %57, !prof !116, !llvm.loop !135

47:                                               ; preds = %23, %11, %3
  %48 = phi ptr [ %12, %11 ], [ %0, %3 ], [ %24, %23 ]
  %49 = phi i64 [ %14, %11 ], [ 0, %3 ], [ %25, %23 ]
  %50 = icmp eq ptr %48, %0
  br i1 %50, label %57, label %51, !prof !132

51:                                               ; preds = %47
  br i1 %4, label %52, label %55, !prof !132

52:                                               ; preds = %51
  %53 = load i8, ptr %48, align 1, !tbaa !54
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %57

55:                                               ; preds = %51
  store ptr %48, ptr %2, align 8, !tbaa !79
  br label %56

56:                                               ; preds = %52, %55
  store i64 %49, ptr %1, align 8, !tbaa !48
  br label %57

57:                                               ; preds = %44, %52, %47, %21, %56
  %58 = phi i1 [ true, %56 ], [ false, %21 ], [ false, %47 ], [ false, %52 ], [ false, %44 ]
  ret i1 %58
}

; Function Attrs: nounwind uwtable
define dso_local double @Perl_my_atof(ptr noundef %0) local_unnamed_addr #5 !prof !136 {
  %2 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store double 0.000000e+00, ptr %2, align 8, !tbaa !58
  %3 = call ptr @Perl_my_atof2(ptr noundef %0, ptr noundef nonnull %2)
  %4 = load double, ptr %2, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret double %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_my_atof2(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 !prof !136 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [3 x double], align 16
  %6 = alloca [2 x i64], align 16
  %7 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store i64 -1, ptr %7, align 8
  br label %9

9:                                                ; preds = %9, %2
  %10 = phi ptr [ %0, %2 ], [ %17, %9 ]
  %11 = load i8, ptr %10, align 1, !tbaa !54
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !52
  %15 = and i32 %14, 17408
  %16 = icmp eq i32 %15, 17408
  %17 = getelementptr inbounds i8, ptr %10, i64 1
  br i1 %16, label %9, label %18, !prof !137, !llvm.loop !138

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, ptr %0, i64 %8
  switch i8 %11, label %24 [
    i8 45, label %20
    i8 43, label %21
  ], !prof !139

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %18, %20
  %22 = phi i1 [ false, %18 ], [ true, %20 ]
  %23 = getelementptr inbounds i8, ptr %10, i64 1
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi ptr [ %10, %18 ], [ %23, %21 ]
  %26 = phi i1 [ false, %18 ], [ %22, %21 ]
  %27 = sext i1 %26 to i64
  %28 = getelementptr inbounds i8, ptr %25, i64 %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store ptr %28, ptr %3, align 8, !tbaa !79
  %29 = call i32 @Perl_grok_infnan(ptr noundef nonnull %3, ptr noundef %19)
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %3, align 8
  %32 = icmp eq ptr %31, %28
  %33 = select i1 %30, i1 true, i1 %32, !prof !140
  br i1 %33, label %47, label %34, !prof !140

34:                                               ; preds = %24
  %35 = and i32 %29, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = and i32 %29, 8
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, double 0x7FF0000000000000, double 0xFFF0000000000000
  store double %40, ptr %1, align 8, !tbaa !58
  br label %47

41:                                               ; preds = %34
  %42 = and i32 %29, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store double 0x7FF8000000000000, ptr %1, align 8, !tbaa !58
  br label %47

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %46 = call double @strtod(ptr noundef null, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %47

47:                                               ; preds = %24, %37, %44, %45
  %48 = phi ptr [ %31, %37 ], [ %31, %44 ], [ null, %45 ], [ null, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %507, !prof !140

50:                                               ; preds = %47, %182
  %51 = phi ptr [ %129, %182 ], [ %25, %47 ]
  %52 = phi i8 [ 1, %182 ], [ 0, %47 ]
  %53 = phi i32 [ %131, %182 ], [ 0, %47 ]
  %54 = phi i32 [ %184, %182 ], [ 0, %47 ]
  %55 = phi i32 [ %62, %182 ], [ 0, %47 ]
  %56 = phi i32 [ %109, %182 ], [ 0, %47 ]
  %57 = phi i32 [ %111, %182 ], [ 0, %47 ]
  br label %58

58:                                               ; preds = %50, %171
  %59 = phi ptr [ %51, %50 ], [ %170, %171 ]
  %60 = phi i8 [ %52, %50 ], [ %159, %171 ]
  %61 = phi i32 [ %54, %50 ], [ %160, %171 ]
  %62 = phi i32 [ %55, %50 ], [ 1, %171 ]
  %63 = phi i32 [ %56, %50 ], [ %161, %171 ]
  %64 = phi i32 [ %57, %50 ], [ %162, %171 ]
  %65 = zext nneg i32 %62 to i64
  %66 = getelementptr inbounds [2 x i64], ptr %6, i64 0, i64 %65
  %67 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %65
  br label %68

68:                                               ; preds = %58, %150
  %69 = phi ptr [ %108, %150 ], [ %59, %58 ]
  %70 = phi i8 [ 1, %150 ], [ %60, %58 ]
  %71 = phi i32 [ %110, %150 ], [ %61, %58 ]
  %72 = phi i32 [ %109, %150 ], [ %63, %58 ]
  %73 = phi i32 [ %111, %150 ], [ %64, %58 ]
  %74 = load i8, ptr %69, align 1, !tbaa !54
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !52
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %157, label %80, !prof !141

80:                                               ; preds = %68
  %81 = getelementptr inbounds i8, ptr %69, i64 1
  %82 = sext i8 %74 to i32
  %83 = add nsw i32 %82, -48
  %84 = add nsw i32 %71, %62
  %85 = icmp eq i32 %73, 0
  %86 = icmp eq i32 %83, 0
  %87 = select i1 %85, i1 %86, i1 false, !prof !142
  br i1 %87, label %88, label %103, !prof !143, !llvm.loop !144

88:                                               ; preds = %80, %97
  %89 = phi i32 [ %101, %97 ], [ %84, %80 ]
  %90 = phi ptr [ %98, %97 ], [ %81, %80 ]
  %91 = load i8, ptr %90, align 1, !tbaa !54
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !52
  %95 = and i32 %94, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %157, label %97, !prof !145, !llvm.loop !144

97:                                               ; preds = %88
  %98 = getelementptr inbounds i8, ptr %90, i64 1
  %99 = sext i8 %91 to i32
  %100 = add nsw i32 %99, -48
  %101 = add nsw i32 %89, %62
  %102 = icmp eq i32 %100, 0
  br i1 %102, label %88, label %103, !prof !146, !llvm.loop !144

103:                                              ; preds = %97, %80
  %104 = phi i8 [ %74, %80 ], [ %91, %97 ]
  %105 = phi i32 [ %73, %80 ], [ 0, %97 ]
  %106 = phi i32 [ %72, %80 ], [ 0, %97 ]
  %107 = phi i32 [ %71, %80 ], [ %89, %97 ]
  %108 = phi ptr [ %81, %80 ], [ %98, %97 ]
  %109 = phi i32 [ %83, %80 ], [ %100, %97 ]
  %110 = phi i32 [ %84, %80 ], [ %101, %97 ]
  %111 = add nsw i32 %105, 1
  %112 = icmp sgt i32 %105, 16
  br i1 %112, label %113, label %139, !prof !147

113:                                              ; preds = %103
  %114 = icmp eq i32 %62, 0
  %115 = icmp sgt i8 %104, 53
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = icmp ne i32 %109, 5
  %118 = and i32 %106, 1
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %126, label %121

121:                                              ; preds = %116, %113
  %122 = zext nneg i32 %62 to i64
  %123 = getelementptr inbounds [2 x i64], ptr %6, i64 0, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !48
  %125 = add i64 %124, 1
  store i64 %125, ptr %123, align 8, !tbaa !48
  br label %126

126:                                              ; preds = %121, %116
  %127 = xor i32 %62, 1
  br label %128

128:                                              ; preds = %128, %126
  %129 = phi ptr [ %108, %126 ], [ %138, %128 ]
  %130 = phi i32 [ %53, %126 ], [ %131, %128 ]
  %131 = add nsw i32 %130, %127
  %132 = load i8, ptr %129, align 1, !tbaa !54
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !52
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  %138 = getelementptr inbounds i8, ptr %129, i64 1
  br i1 %137, label %182, label %128, !llvm.loop !148

139:                                              ; preds = %103
  %140 = load i64, ptr %66, align 8, !tbaa !48
  %141 = icmp ugt i64 %140, 1844674407370955160
  br i1 %141, label %142, label %150, !prof !147

142:                                              ; preds = %139
  %143 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %65
  %144 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %65
  %145 = load double, ptr %143, align 8, !tbaa !58
  %146 = load i32, ptr %144, align 4, !tbaa !52
  %147 = tail call fastcc double @S_mulexp10(double noundef %145, i32 noundef %146)
  %148 = uitofp i64 %140 to double
  %149 = fadd double %147, %148
  store double %149, ptr %143, align 8, !tbaa !58
  store i64 0, ptr %66, align 8, !tbaa !48
  store i32 0, ptr %144, align 4, !tbaa !52
  br label %150

150:                                              ; preds = %142, %139
  %151 = load i64, ptr %66, align 8, !tbaa !48
  %152 = mul i64 %151, 10
  %153 = sext i32 %109 to i64
  %154 = add i64 %152, %153
  store i64 %154, ptr %66, align 8, !tbaa !48
  %155 = load i32, ptr %67, align 4, !tbaa !52
  %156 = add nsw i32 %155, 1
  store i32 %156, ptr %67, align 4, !tbaa !52
  br label %68, !llvm.loop !144

157:                                              ; preds = %68, %88
  %158 = phi ptr [ %90, %88 ], [ %69, %68 ]
  %159 = phi i8 [ 1, %88 ], [ %70, %68 ]
  %160 = phi i32 [ %89, %88 ], [ %71, %68 ]
  %161 = phi i32 [ 0, %88 ], [ %72, %68 ]
  %162 = phi i32 [ 0, %88 ], [ %73, %68 ]
  %163 = phi i8 [ %91, %88 ], [ %74, %68 ]
  %164 = icmp eq i32 %62, 0
  br i1 %164, label %165, label %185, !prof !149

165:                                              ; preds = %157
  %166 = icmp ult ptr %158, %19
  %167 = icmp eq i8 %163, 46
  %168 = and i1 %166, %167
  %169 = zext i1 %168 to i64
  %170 = getelementptr inbounds i8, ptr %158, i64 %169
  br i1 %168, label %171, label %185, !prof !150

171:                                              ; preds = %165
  %172 = icmp sgt i32 %162, 17
  br i1 %172, label %173, label %58, !prof !151, !llvm.loop !144

173:                                              ; preds = %171, %173
  %174 = phi ptr [ %175, %173 ], [ %170, %171 ]
  %175 = getelementptr inbounds i8, ptr %174, i64 1
  %176 = load i8, ptr %175, align 1, !tbaa !54
  %177 = zext i8 %176 to i64
  %178 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !52
  %180 = and i32 %179, 2
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %185, label %173, !llvm.loop !152

182:                                              ; preds = %128
  %183 = add nsw i32 %110, -1
  %184 = select i1 %114, i32 %107, i32 %183
  br label %50, !llvm.loop !144

185:                                              ; preds = %157, %165, %173
  %186 = phi ptr [ %175, %173 ], [ %170, %165 ], [ %158, %157 ]
  %187 = phi i1 [ false, %173 ], [ %164, %165 ], [ %164, %157 ]
  %188 = load double, ptr %5, align 16, !tbaa !58
  %189 = load i32, ptr %7, align 8, !tbaa !52
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %237, label %191, !prof !153

191:                                              ; preds = %185
  %192 = fcmp oeq double %188, 0.000000e+00
  br i1 %192, label %237, label %193, !prof !154

193:                                              ; preds = %191
  %194 = icmp slt i32 %189, 0
  br i1 %194, label %195, label %212, !prof !155

195:                                              ; preds = %193
  %196 = sub nsw i32 0, %189
  %197 = fcmp une double %188, 0.000000e+00
  %198 = icmp slt i32 %189, -308
  %199 = and i1 %197, %198
  br i1 %199, label %200, label %208, !prof !129

200:                                              ; preds = %195, %200
  %201 = phi i32 [ %203, %200 ], [ %196, %195 ]
  %202 = phi double [ %204, %200 ], [ %188, %195 ]
  %203 = add nsw i32 %201, -1
  %204 = fdiv double %202, 1.000000e+01
  %205 = fcmp une double %204, 0.000000e+00
  %206 = icmp sgt i32 %201, 309
  %207 = select i1 %205, i1 %206, i1 false, !prof !155
  br i1 %207, label %200, label %208, !prof !129, !llvm.loop !156

208:                                              ; preds = %200, %195
  %209 = phi double [ %188, %195 ], [ %204, %200 ]
  %210 = phi i32 [ %196, %195 ], [ %203, %200 ]
  %211 = fcmp oeq double %209, 0.000000e+00
  br i1 %211, label %237, label %212, !prof !157

212:                                              ; preds = %208, %193
  %213 = phi double [ %209, %208 ], [ %188, %193 ]
  %214 = phi i32 [ %210, %208 ], [ %189, %193 ]
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %232, label %216, !prof !129

216:                                              ; preds = %212, %227
  %217 = phi i32 [ %231, %227 ], [ 1, %212 ]
  %218 = phi double [ %230, %227 ], [ 1.000000e+01, %212 ]
  %219 = phi double [ %229, %227 ], [ 1.000000e+00, %212 ]
  %220 = phi i32 [ %228, %227 ], [ %214, %212 ]
  %221 = and i32 %220, %217
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %227, label %223, !prof !158

223:                                              ; preds = %216
  %224 = xor i32 %220, %217
  %225 = fmul double %218, %219
  %226 = icmp eq i32 %224, 0
  br i1 %226, label %232, label %227, !prof !159

227:                                              ; preds = %223, %216
  %228 = phi i32 [ %224, %223 ], [ %220, %216 ]
  %229 = phi double [ %225, %223 ], [ %219, %216 ]
  %230 = fmul double %218, %218
  %231 = shl i32 %217, 1
  br label %216

232:                                              ; preds = %223, %212
  %233 = phi double [ 1.000000e+00, %212 ], [ %225, %223 ]
  %234 = fdiv double %213, %233
  %235 = fmul double %213, %233
  %236 = select i1 %194, double %234, double %235, !prof !155
  br label %237

237:                                              ; preds = %185, %191, %208, %232
  %238 = phi double [ %236, %232 ], [ %188, %185 ], [ 0.000000e+00, %191 ], [ %209, %208 ]
  %239 = load i64, ptr %6, align 16, !tbaa !48
  %240 = uitofp i64 %239 to double
  %241 = fadd double %238, %240
  store double %241, ptr %5, align 16, !tbaa !58
  br i1 %187, label %300, label %242, !prof !160

242:                                              ; preds = %237
  %243 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %244 = load double, ptr %243, align 8, !tbaa !58
  %245 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %246 = load i32, ptr %245, align 4, !tbaa !52
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %294, label %248, !prof !153

248:                                              ; preds = %242
  %249 = fcmp oeq double %244, 0.000000e+00
  br i1 %249, label %294, label %250, !prof !154

250:                                              ; preds = %248
  %251 = icmp slt i32 %246, 0
  br i1 %251, label %252, label %269, !prof !155

252:                                              ; preds = %250
  %253 = sub nsw i32 0, %246
  %254 = fcmp une double %244, 0.000000e+00
  %255 = icmp slt i32 %246, -308
  %256 = and i1 %254, %255
  br i1 %256, label %257, label %265, !prof !129

257:                                              ; preds = %252, %257
  %258 = phi i32 [ %260, %257 ], [ %253, %252 ]
  %259 = phi double [ %261, %257 ], [ %244, %252 ]
  %260 = add nsw i32 %258, -1
  %261 = fdiv double %259, 1.000000e+01
  %262 = fcmp une double %261, 0.000000e+00
  %263 = icmp sgt i32 %258, 309
  %264 = select i1 %262, i1 %263, i1 false, !prof !155
  br i1 %264, label %257, label %265, !prof !129, !llvm.loop !156

265:                                              ; preds = %257, %252
  %266 = phi double [ %244, %252 ], [ %261, %257 ]
  %267 = phi i32 [ %253, %252 ], [ %260, %257 ]
  %268 = fcmp oeq double %266, 0.000000e+00
  br i1 %268, label %294, label %269, !prof !157

269:                                              ; preds = %265, %250
  %270 = phi double [ %266, %265 ], [ %244, %250 ]
  %271 = phi i32 [ %267, %265 ], [ %246, %250 ]
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %289, label %273, !prof !129

273:                                              ; preds = %269, %284
  %274 = phi i32 [ %288, %284 ], [ 1, %269 ]
  %275 = phi double [ %287, %284 ], [ 1.000000e+01, %269 ]
  %276 = phi double [ %286, %284 ], [ 1.000000e+00, %269 ]
  %277 = phi i32 [ %285, %284 ], [ %271, %269 ]
  %278 = and i32 %277, %274
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %284, label %280, !prof !158

280:                                              ; preds = %273
  %281 = xor i32 %277, %274
  %282 = fmul double %275, %276
  %283 = icmp eq i32 %281, 0
  br i1 %283, label %289, label %284, !prof !159

284:                                              ; preds = %280, %273
  %285 = phi i32 [ %281, %280 ], [ %277, %273 ]
  %286 = phi double [ %282, %280 ], [ %276, %273 ]
  %287 = fmul double %275, %275
  %288 = shl i32 %274, 1
  br label %273

289:                                              ; preds = %280, %269
  %290 = phi double [ 1.000000e+00, %269 ], [ %282, %280 ]
  %291 = fdiv double %270, %290
  %292 = fmul double %270, %290
  %293 = select i1 %251, double %291, double %292, !prof !155
  br label %294

294:                                              ; preds = %242, %248, %265, %289
  %295 = phi double [ %293, %289 ], [ %244, %242 ], [ 0.000000e+00, %248 ], [ %266, %265 ]
  %296 = getelementptr inbounds [2 x i64], ptr %6, i64 0, i64 1
  %297 = load i64, ptr %296, align 8, !tbaa !48
  %298 = uitofp i64 %297 to double
  %299 = fadd double %295, %298
  store double %299, ptr %243, align 8, !tbaa !58
  br label %300

300:                                              ; preds = %294, %237
  %301 = and i8 %159, 1
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %343, label %303, !prof !137

303:                                              ; preds = %300
  %304 = load i8, ptr %186, align 1, !tbaa !54
  %305 = and i8 %304, -33
  %306 = icmp eq i8 %305, 69
  br i1 %306, label %307, label %343, !prof !137

307:                                              ; preds = %303
  %308 = getelementptr inbounds i8, ptr %186, i64 1
  %309 = load i8, ptr %308, align 1, !tbaa !54
  switch i8 %309, label %314 [
    i8 45, label %310
    i8 43, label %311
  ]

310:                                              ; preds = %307
  br label %311

311:                                              ; preds = %307, %310
  %312 = phi i1 [ false, %307 ], [ true, %310 ]
  %313 = getelementptr inbounds i8, ptr %186, i64 2
  br label %314

314:                                              ; preds = %311, %307
  %315 = phi ptr [ %308, %307 ], [ %313, %311 ]
  %316 = phi i1 [ false, %307 ], [ %312, %311 ]
  %317 = load i8, ptr %315, align 1, !tbaa !54
  %318 = zext i8 %317 to i64
  %319 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %318
  %320 = load i32, ptr %319, align 4, !tbaa !52
  %321 = and i32 %320, 2
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %338, label %323

323:                                              ; preds = %314, %323
  %324 = phi i8 [ %332, %323 ], [ %317, %314 ]
  %325 = phi i32 [ %331, %323 ], [ 0, %314 ]
  %326 = phi ptr [ %328, %323 ], [ %315, %314 ]
  %327 = mul nsw i32 %325, 10
  %328 = getelementptr inbounds i8, ptr %326, i64 1
  %329 = sext i8 %324 to i32
  %330 = add i32 %327, -48
  %331 = add i32 %330, %329
  %332 = load i8, ptr %328, align 1, !tbaa !54
  %333 = zext i8 %332 to i64
  %334 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %333
  %335 = load i32, ptr %334, align 4, !tbaa !52
  %336 = and i32 %335, 2
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %323, !llvm.loop !161

338:                                              ; preds = %323, %314
  %339 = phi ptr [ %315, %314 ], [ %328, %323 ]
  %340 = phi i32 [ 0, %314 ], [ %331, %323 ]
  %341 = sub nsw i32 0, %340
  %342 = select i1 %316, i32 %341, i32 %340
  br label %343

343:                                              ; preds = %338, %303, %300
  %344 = phi ptr [ %186, %300 ], [ %339, %338 ], [ %186, %303 ]
  %345 = phi i32 [ 0, %300 ], [ %342, %338 ], [ 0, %303 ]
  %346 = add nsw i32 %345, %53
  %347 = icmp eq i32 %346, 0
  br i1 %187, label %450, label %348, !prof !160

348:                                              ; preds = %343
  br i1 %347, label %395, label %349, !prof !153

349:                                              ; preds = %348
  %350 = fcmp oeq double %241, 0.000000e+00
  br i1 %350, label %395, label %351, !prof !154

351:                                              ; preds = %349
  %352 = icmp slt i32 %346, 0
  br i1 %352, label %353, label %370, !prof !155

353:                                              ; preds = %351
  %354 = sub nsw i32 0, %346
  %355 = fcmp une double %241, 0.000000e+00
  %356 = icmp slt i32 %346, -308
  %357 = and i1 %355, %356
  br i1 %357, label %358, label %366, !prof !129

358:                                              ; preds = %353, %358
  %359 = phi i32 [ %361, %358 ], [ %354, %353 ]
  %360 = phi double [ %362, %358 ], [ %241, %353 ]
  %361 = add nsw i32 %359, -1
  %362 = fdiv double %360, 1.000000e+01
  %363 = fcmp une double %362, 0.000000e+00
  %364 = icmp sgt i32 %359, 309
  %365 = select i1 %363, i1 %364, i1 false, !prof !155
  br i1 %365, label %358, label %366, !prof !129, !llvm.loop !156

366:                                              ; preds = %358, %353
  %367 = phi double [ %241, %353 ], [ %362, %358 ]
  %368 = phi i32 [ %354, %353 ], [ %361, %358 ]
  %369 = fcmp oeq double %367, 0.000000e+00
  br i1 %369, label %395, label %370, !prof !157

370:                                              ; preds = %366, %351
  %371 = phi double [ %367, %366 ], [ %241, %351 ]
  %372 = phi i32 [ %368, %366 ], [ %346, %351 ]
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %390, label %374, !prof !129

374:                                              ; preds = %370, %385
  %375 = phi i32 [ %389, %385 ], [ 1, %370 ]
  %376 = phi double [ %388, %385 ], [ 1.000000e+01, %370 ]
  %377 = phi double [ %387, %385 ], [ 1.000000e+00, %370 ]
  %378 = phi i32 [ %386, %385 ], [ %372, %370 ]
  %379 = and i32 %378, %375
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %385, label %381, !prof !158

381:                                              ; preds = %374
  %382 = xor i32 %378, %375
  %383 = fmul double %376, %377
  %384 = icmp eq i32 %382, 0
  br i1 %384, label %390, label %385, !prof !159

385:                                              ; preds = %381, %374
  %386 = phi i32 [ %382, %381 ], [ %378, %374 ]
  %387 = phi double [ %383, %381 ], [ %377, %374 ]
  %388 = fmul double %376, %376
  %389 = shl i32 %375, 1
  br label %374

390:                                              ; preds = %381, %370
  %391 = phi double [ 1.000000e+00, %370 ], [ %383, %381 ]
  %392 = fdiv double %371, %391
  %393 = fmul double %371, %391
  %394 = select i1 %352, double %392, double %393, !prof !155
  br label %395

395:                                              ; preds = %348, %349, %366, %390
  %396 = phi double [ %394, %390 ], [ %241, %348 ], [ 0.000000e+00, %349 ], [ %367, %366 ]
  %397 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %398 = load double, ptr %397, align 8, !tbaa !58
  %399 = sub nsw i32 %345, %160
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %447, label %401, !prof !153

401:                                              ; preds = %395
  %402 = fcmp oeq double %398, 0.000000e+00
  br i1 %402, label %447, label %403, !prof !154

403:                                              ; preds = %401
  %404 = icmp slt i32 %399, 0
  br i1 %404, label %405, label %422, !prof !155

405:                                              ; preds = %403
  %406 = sub nsw i32 0, %399
  %407 = fcmp une double %398, 0.000000e+00
  %408 = icmp slt i32 %399, -308
  %409 = and i1 %408, %407
  br i1 %409, label %410, label %418, !prof !129

410:                                              ; preds = %405, %410
  %411 = phi i32 [ %413, %410 ], [ %406, %405 ]
  %412 = phi double [ %414, %410 ], [ %398, %405 ]
  %413 = add nsw i32 %411, -1
  %414 = fdiv double %412, 1.000000e+01
  %415 = fcmp une double %414, 0.000000e+00
  %416 = icmp sgt i32 %411, 309
  %417 = select i1 %415, i1 %416, i1 false, !prof !155
  br i1 %417, label %410, label %418, !prof !129, !llvm.loop !156

418:                                              ; preds = %410, %405
  %419 = phi double [ %398, %405 ], [ %414, %410 ]
  %420 = phi i32 [ %406, %405 ], [ %413, %410 ]
  %421 = fcmp oeq double %419, 0.000000e+00
  br i1 %421, label %447, label %422, !prof !157

422:                                              ; preds = %418, %403
  %423 = phi double [ %419, %418 ], [ %398, %403 ]
  %424 = phi i32 [ %420, %418 ], [ %399, %403 ]
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %442, label %426, !prof !129

426:                                              ; preds = %422, %437
  %427 = phi i32 [ %441, %437 ], [ 1, %422 ]
  %428 = phi double [ %440, %437 ], [ 1.000000e+01, %422 ]
  %429 = phi double [ %439, %437 ], [ 1.000000e+00, %422 ]
  %430 = phi i32 [ %438, %437 ], [ %424, %422 ]
  %431 = and i32 %430, %427
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %437, label %433, !prof !158

433:                                              ; preds = %426
  %434 = xor i32 %430, %427
  %435 = fmul double %428, %429
  %436 = icmp eq i32 %434, 0
  br i1 %436, label %442, label %437, !prof !159

437:                                              ; preds = %433, %426
  %438 = phi i32 [ %434, %433 ], [ %430, %426 ]
  %439 = phi double [ %435, %433 ], [ %429, %426 ]
  %440 = fmul double %428, %428
  %441 = shl i32 %427, 1
  br label %426

442:                                              ; preds = %433, %422
  %443 = phi double [ 1.000000e+00, %422 ], [ %435, %433 ]
  %444 = fdiv double %423, %443
  %445 = fmul double %423, %443
  %446 = select i1 %404, double %444, double %445, !prof !155
  br label %447

447:                                              ; preds = %395, %401, %418, %442
  %448 = phi double [ %446, %442 ], [ %398, %395 ], [ 0.000000e+00, %401 ], [ %419, %418 ]
  %449 = fadd double %396, %448
  br label %497

450:                                              ; preds = %343
  br i1 %347, label %497, label %451, !prof !153

451:                                              ; preds = %450
  %452 = fcmp oeq double %241, 0.000000e+00
  br i1 %452, label %497, label %453, !prof !154

453:                                              ; preds = %451
  %454 = icmp slt i32 %346, 0
  br i1 %454, label %455, label %472, !prof !155

455:                                              ; preds = %453
  %456 = sub nsw i32 0, %346
  %457 = fcmp une double %241, 0.000000e+00
  %458 = icmp slt i32 %346, -308
  %459 = and i1 %457, %458
  br i1 %459, label %460, label %468, !prof !129

460:                                              ; preds = %455, %460
  %461 = phi i32 [ %463, %460 ], [ %456, %455 ]
  %462 = phi double [ %464, %460 ], [ %241, %455 ]
  %463 = add nsw i32 %461, -1
  %464 = fdiv double %462, 1.000000e+01
  %465 = fcmp une double %464, 0.000000e+00
  %466 = icmp sgt i32 %461, 309
  %467 = select i1 %465, i1 %466, i1 false, !prof !155
  br i1 %467, label %460, label %468, !prof !129, !llvm.loop !156

468:                                              ; preds = %460, %455
  %469 = phi double [ %241, %455 ], [ %464, %460 ]
  %470 = phi i32 [ %456, %455 ], [ %463, %460 ]
  %471 = fcmp oeq double %469, 0.000000e+00
  br i1 %471, label %497, label %472, !prof !157

472:                                              ; preds = %468, %453
  %473 = phi double [ %469, %468 ], [ %241, %453 ]
  %474 = phi i32 [ %470, %468 ], [ %346, %453 ]
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %492, label %476, !prof !129

476:                                              ; preds = %472, %487
  %477 = phi i32 [ %491, %487 ], [ 1, %472 ]
  %478 = phi double [ %490, %487 ], [ 1.000000e+01, %472 ]
  %479 = phi double [ %489, %487 ], [ 1.000000e+00, %472 ]
  %480 = phi i32 [ %488, %487 ], [ %474, %472 ]
  %481 = and i32 %480, %477
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %487, label %483, !prof !158

483:                                              ; preds = %476
  %484 = xor i32 %480, %477
  %485 = fmul double %478, %479
  %486 = icmp eq i32 %484, 0
  br i1 %486, label %492, label %487, !prof !159

487:                                              ; preds = %483, %476
  %488 = phi i32 [ %484, %483 ], [ %480, %476 ]
  %489 = phi double [ %485, %483 ], [ %479, %476 ]
  %490 = fmul double %478, %478
  %491 = shl i32 %477, 1
  br label %476

492:                                              ; preds = %483, %472
  %493 = phi double [ 1.000000e+00, %472 ], [ %485, %483 ]
  %494 = fdiv double %473, %493
  %495 = fmul double %473, %493
  %496 = select i1 %454, double %494, double %495, !prof !155
  br label %497

497:                                              ; preds = %492, %468, %451, %450, %447
  %498 = phi double [ %449, %447 ], [ %496, %492 ], [ %241, %450 ], [ 0.000000e+00, %451 ], [ %469, %468 ]
  %499 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  store double %498, ptr %499, align 16, !tbaa !58
  br i1 %26, label %500, label %504, !prof !137

500:                                              ; preds = %497
  %501 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %502 = load double, ptr %501, align 16, !tbaa !58
  %503 = fneg double %502
  store double %503, ptr %501, align 16, !tbaa !58
  br label %504

504:                                              ; preds = %500, %497
  %505 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %506 = load double, ptr %505, align 16, !tbaa !58
  store double %506, ptr %1, align 8, !tbaa !58
  br label %507

507:                                              ; preds = %47, %504
  %508 = phi ptr [ %344, %504 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret ptr %508
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define internal fastcc double @S_mulexp10(double noundef %0, i32 noundef %1) unnamed_addr #10 !prof !41 !PGOFuncName !162 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %50, label %4, !prof !153

4:                                                ; preds = %2
  %5 = fcmp oeq double %0, 0.000000e+00
  br i1 %5, label %50, label %6, !prof !154

6:                                                ; preds = %4
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %8, label %25, !prof !155

8:                                                ; preds = %6
  %9 = sub nsw i32 0, %1
  %10 = fcmp une double %0, 0.000000e+00
  %11 = icmp slt i32 %1, -308
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %21, !prof !129

13:                                               ; preds = %8, %13
  %14 = phi i32 [ %16, %13 ], [ %9, %8 ]
  %15 = phi double [ %17, %13 ], [ %0, %8 ]
  %16 = add nsw i32 %14, -1
  %17 = fdiv double %15, 1.000000e+01
  %18 = fcmp une double %17, 0.000000e+00
  %19 = icmp sgt i32 %14, 309
  %20 = select i1 %18, i1 %19, i1 false, !prof !155
  br i1 %20, label %13, label %21, !prof !129, !llvm.loop !156

21:                                               ; preds = %13, %8
  %22 = phi double [ %0, %8 ], [ %17, %13 ]
  %23 = phi i32 [ %9, %8 ], [ %16, %13 ]
  %24 = fcmp oeq double %22, 0.000000e+00
  br i1 %24, label %50, label %25, !prof !157

25:                                               ; preds = %21, %6
  %26 = phi double [ %22, %21 ], [ %0, %6 ]
  %27 = phi i32 [ %23, %21 ], [ %1, %6 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %45, label %29, !prof !129

29:                                               ; preds = %25, %40
  %30 = phi i32 [ %44, %40 ], [ 1, %25 ]
  %31 = phi double [ %43, %40 ], [ 1.000000e+01, %25 ]
  %32 = phi double [ %42, %40 ], [ 1.000000e+00, %25 ]
  %33 = phi i32 [ %41, %40 ], [ %27, %25 ]
  %34 = and i32 %30, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !158

36:                                               ; preds = %29
  %37 = xor i32 %30, %33
  %38 = fmul double %32, %31
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %45, label %40, !prof !159

40:                                               ; preds = %36, %29
  %41 = phi i32 [ %37, %36 ], [ %33, %29 ]
  %42 = phi double [ %38, %36 ], [ %32, %29 ]
  %43 = fmul double %31, %31
  %44 = shl i32 %30, 1
  br label %29

45:                                               ; preds = %36, %25
  %46 = phi double [ 1.000000e+00, %25 ], [ %38, %36 ]
  %47 = fdiv double %26, %46
  %48 = fmul double %26, %46
  %49 = select i1 %7, double %47, double %48, !prof !155
  br label %50

50:                                               ; preds = %21, %4, %2, %45
  %51 = phi double [ %49, %45 ], [ %0, %2 ], [ 0.000000e+00, %4 ], [ %22, %21 ]
  ret double %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @Perl_isinfnan(double noundef %0) local_unnamed_addr #1 !prof !163 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  %3 = fcmp ueq double %2, 0x7FF0000000000000
  ret i1 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_isinfnansv(ptr noundef %0) local_unnamed_addr #5 !prof !164 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !165
  %6 = and i32 %5, 65280
  %7 = icmp ne i32 %6, 0
  %8 = and i32 %5, 255
  %9 = icmp eq i32 %8, 8
  %10 = or i1 %7, %9
  %11 = and i32 %5, 16777471
  %12 = icmp eq i32 %11, 16777226
  %13 = or i1 %12, %10
  br i1 %13, label %14, label %43, !prof !167

14:                                               ; preds = %1
  %15 = and i32 %5, 8192
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17, !prof !168

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8, !tbaa !169
  %19 = getelementptr inbounds %struct.xpvnv, ptr %18, i64 0, i32 5
  %20 = load double, ptr %19, align 8, !tbaa !54
  %21 = tail call double @llvm.fabs.f64(double %20)
  %22 = fcmp ueq double %21, 0x7FF0000000000000
  br label %43

23:                                               ; preds = %14
  %24 = and i32 %5, 4096
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43, !prof !170

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %27 = and i32 %5, 2098176
  %28 = icmp eq i32 %27, 1024
  br i1 %28, label %29, label %35, !prof !171

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8, !tbaa !169
  %31 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !172
  store i64 %32, ptr %2, align 8, !tbaa !48
  %33 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  br label %37

35:                                               ; preds = %26
  %36 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 32) #14
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %34, %29 ], [ %36, %35 ]
  store ptr %38, ptr %3, align 8, !tbaa !79
  %39 = load i64, ptr %2, align 8, !tbaa !48
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = call i32 @Perl_grok_infnan(ptr noundef nonnull %3, ptr noundef %40)
  %42 = icmp ne i32 %41, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %43

43:                                               ; preds = %23, %1, %37, %17
  %44 = phi i1 [ %22, %17 ], [ %42, %37 ], [ false, %1 ], [ false, %23 ]
  ret i1 %44
}

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #13

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @Perl_grok_number, ptr @Perl_grok_number_flags, i64 117215}
!36 = !{ptr @Perl_my_atof, ptr @Perl_my_atof2, i64 5637}
!37 = !{ptr @Perl_my_atof2, ptr @strlen, i64 5637}
!38 = !{ptr @Perl_my_atof2, ptr @Perl_grok_infnan, i64 5637}
!39 = !{ptr @Perl_isinfnansv, ptr @Perl_grok_infnan, i64 5570}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!"function_entry_count", i64 748603}
!43 = !{!"branch_weights", i32 748603, i32 0}
!44 = !{!"branch_weights", i32 0, i32 748603}
!45 = !{!"function_entry_count", i64 548695}
!46 = !{!"branch_weights", i32 0, i32 548695}
!47 = !{!"branch_weights", i32 548695, i32 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"long", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !50, i64 0}
!54 = !{!50, !50, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!59, !59, i64 0}
!59 = !{!"double", !50, i64 0}
!60 = !{!"function_entry_count", i64 2350}
!61 = !{!"branch_weights", i32 0, i32 2350}
!62 = !{!"branch_weights", i32 1, i32 2349}
!63 = !{!"branch_weights", i32 0, i32 4700}
!64 = !{!"branch_weights", i32 4700, i32 0}
!65 = !{!"branch_weights", i32 72, i32 4628}
!66 = !{!"branch_weights", i32 2349, i32 2351}
!67 = distinct !{!67, !56, !57}
!68 = !{!"branch_weights", i32 2350, i32 0}
!69 = !{!"function_entry_count", i64 90}
!70 = !{!"branch_weights", i32 1, i32 129}
!71 = !{!"branch_weights", i32 1, i32 197}
!72 = !{!"branch_weights", i32 173, i32 24}
!73 = !{!"branch_weights", i32 173, i32 0}
!74 = !{!"branch_weights", i32 24, i32 0}
!75 = !{!"branch_weights", i32 129, i32 267}
!76 = distinct !{!76, !56, !57}
!77 = !{!"branch_weights", i32 0, i32 90}
!78 = !{!"branch_weights", i32 90, i32 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"any pointer", !50, i64 0}
!81 = !{!"function_entry_count", i64 11207}
!82 = !{!"branch_weights", i32 11207, i32 0, i32 0}
!83 = !{!"branch_weights", i32 16, i32 11191}
!84 = !{!"branch_weights", i32 0, i32 16}
!85 = !{!"branch_weights", i32 12, i32 4}
!86 = !{!"branch_weights", i32 0, i32 12}
!87 = !{!"branch_weights", i32 16, i32 0}
!88 = !{!"branch_weights", i32 11191, i32 0, i32 0, i32 0}
!89 = distinct !{!89, !56, !57}
!90 = distinct !{!90, !56, !57}
!91 = distinct !{!91, !56, !57}
!92 = !{!"branch_weights", i32 0, i32 11191}
!93 = distinct !{!93, !56, !57}
!94 = distinct !{!94, !56, !57}
!95 = distinct !{!95, !56, !57}
!96 = distinct !{!96, !56, !57}
!97 = !{!"function_entry_count", i64 117215}
!98 = !{!"branch_weights", i32 1, i32 0}
!99 = !{!"branch_weights", i32 0, i32 117215}
!100 = !{!"branch_weights", i32 117215, i32 0}
!101 = distinct !{!101, !56, !57}
!102 = !{!"branch_weights", i32 106289, i32 9834, i32 1092}
!103 = !{!"branch_weights", i32 92422, i32 24793}
!104 = !{!"branch_weights", i32 92417, i32 5}
!105 = !{!"branch_weights", i32 24187, i32 68230}
!106 = !{!"branch_weights", i32 24187, i32 0}
!107 = !{!"branch_weights", i32 24111, i32 76}
!108 = !{!"branch_weights", i32 24111, i32 0}
!109 = !{!"branch_weights", i32 5585, i32 18526}
!110 = !{!"branch_weights", i32 5585, i32 0}
!111 = !{!"branch_weights", i32 5580, i32 5}
!112 = !{!"branch_weights", i32 5580, i32 0}
!113 = !{!"branch_weights", i32 5575, i32 5}
!114 = !{!"branch_weights", i32 5575, i32 0}
!115 = !{!"branch_weights", i32 6, i32 5569}
!116 = !{!"branch_weights", i32 6, i32 0}
!117 = !{!"branch_weights", i32 0, i32 6}
!118 = distinct !{!118, !56, !57}
!119 = distinct !{!119, !56, !57}
!120 = !{!"branch_weights", i32 92422, i32 0}
!121 = !{!"branch_weights", i32 1, i32 117214}
!122 = !{!"branch_weights", i32 5, i32 117210}
!123 = !{!"branch_weights", i32 159, i32 1}
!124 = !{!"branch_weights", i32 0, i32 22}
!125 = !{!"branch_weights", i32 545, i32 159}
!126 = distinct !{!126, !56, !57}
!127 = distinct !{!127, !56, !57}
!128 = distinct !{!128, !56, !57}
!129 = !{!"branch_weights", i32 0, i32 1}
!130 = distinct !{!130, !56, !57}
!131 = !{!"function_entry_count", i64 130}
!132 = !{!"branch_weights", i32 0, i32 130}
!133 = !{!"branch_weights", i32 124, i32 6}
!134 = !{!"branch_weights", i32 6, i32 6}
!135 = distinct !{!135, !56, !57}
!136 = !{!"function_entry_count", i64 5637}
!137 = !{!"branch_weights", i32 0, i32 5637}
!138 = distinct !{!138, !56, !57}
!139 = !{!"branch_weights", i32 5637, i32 0, i32 0}
!140 = !{!"branch_weights", i32 5637, i32 0}
!141 = !{!"branch_weights", i32 1, i32 5703}
!142 = !{!"branch_weights", i32 5640, i32 44792}
!143 = !{!"branch_weights", i32 4, i32 50424}
!144 = distinct !{!144, !57}
!145 = !{!"branch_weights", i32 5703, i32 44729}
!146 = !{!"branch_weights", i32 0, i32 4}
!147 = !{!"branch_weights", i32 0, i32 50428}
!148 = distinct !{!148, !56, !57}
!149 = !{!"branch_weights", i32 5637, i32 67}
!150 = !{!"branch_weights", i32 67, i32 5570}
!151 = !{!"branch_weights", i32 0, i32 67}
!152 = distinct !{!152, !56, !57}
!153 = !{!"branch_weights", i32 5702, i32 5706}
!154 = !{!"branch_weights", i32 5642, i32 64}
!155 = !{!"branch_weights", i32 64, i32 0}
!156 = distinct !{!156, !56, !57}
!157 = !{!"branch_weights", i32 0, i32 64}
!158 = !{!"branch_weights", i32 37, i32 109}
!159 = !{!"branch_weights", i32 64, i32 45}
!160 = !{!"branch_weights", i32 5570, i32 67}
!161 = distinct !{!161, !56, !57}
!162 = !{!"numeric.c;S_mulexp10"}
!163 = !{!"function_entry_count", i64 543120}
!164 = !{!"function_entry_count", i64 440414}
!165 = !{!166, !53, i64 12}
!166 = !{!"sv", !80, i64 0, !53, i64 8, !53, i64 12, !50, i64 16}
!167 = !{!"branch_weights", i32 440398, i32 16}
!168 = !{!"branch_weights", i32 440397, i32 1}
!169 = !{!166, !80, i64 0}
!170 = !{!"branch_weights", i32 5570, i32 434827}
!171 = !{!"branch_weights", i32 5570, i32 0}
!172 = !{!173, !49, i64 16}
!173 = !{!"xpv", !80, i64 0, !50, i64 8, !49, i64 16, !50, i64 24}
