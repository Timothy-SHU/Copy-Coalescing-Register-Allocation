; ModuleID = 'ext/attributes/attributes.c'
source_filename = "ext/attributes/attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.1, ptr, %union.anon.2, %union.anon.3, %union.anon.4, ptr, %union.anon.5, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon.1 = type { i64 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.hv = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.gv = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu, %union._xnvu }
%union.anon.10 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union.anon.0 = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"ext/attributes/attributes.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"attributes::_modify_attrs\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"attributes::_fetch_attrs\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"attributes::_guess_stash\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"attributes::reftype\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"@attributes\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"lvalue\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"prototype(\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Unterminated attribute parameter in attribute list\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"A variable may not be unshared\00", align 1
@PL_sharehook = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"$reference\00", align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_attributes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_attributes__modify_attrs) #5
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_attributes__fetch_attrs, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 0) #5
  %5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_attributes__guess_stash, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 0) #5
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_attributes_reftype, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 0) #5
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
define internal void @XS_attributes__modify_attrs(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %18, %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.7) #5
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %6, %1 ]
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !12
  %25 = and i32 %24, 65280
  %26 = icmp ne i32 %25, 0
  %27 = and i32 %24, 255
  %28 = icmp eq i32 %27, 8
  %29 = or i1 %26, %28
  %30 = and i32 %24, 16777471
  %31 = icmp eq i32 %30, 16777226
  %32 = or i1 %31, %29
  %33 = and i32 %24, 2048
  %34 = icmp ne i32 %33, 0
  %35 = and i1 %34, %32
  br i1 %35, label %36, label %16

36:                                               ; preds = %18
  %37 = icmp sgt i32 %14, 1
  br i1 %37, label %38, label %49

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !14
  %41 = getelementptr ptr, ptr %19, i64 %8
  %42 = getelementptr ptr, ptr %41, i64 2
  %43 = add nsw i32 %14, -1
  %44 = tail call fastcc i32 @modify_SV_attributes(ptr noundef %40, ptr noundef nonnull %21, ptr noundef %42, i32 noundef %43) #6
  %45 = sext i32 %44 to i64
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %47 = getelementptr inbounds ptr, ptr %46, i64 %20
  %48 = getelementptr ptr, ptr %47, i64 %45
  br label %49

49:                                               ; preds = %36, %38
  %50 = phi ptr [ %48, %38 ], [ %21, %36 ]
  %51 = getelementptr ptr, ptr %50, i64 -1
  store ptr %51, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_attributes__fetch_attrs(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = shl i64 %11, 29
  %13 = ashr i64 %12, 32
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = and i64 %11, 34359738360
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %20, label %18

18:                                               ; preds = %20, %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.15) #5
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %6, %1 ]
  %22 = getelementptr ptr, ptr %21, i64 %7
  %23 = getelementptr ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !12
  %27 = and i32 %26, 65280
  %28 = icmp ne i32 %27, 0
  %29 = and i32 %26, 255
  %30 = icmp eq i32 %29, 8
  %31 = or i1 %28, %30
  %32 = and i32 %26, 16777471
  %33 = icmp eq i32 %32, 16777226
  %34 = or i1 %33, %31
  %35 = and i32 %26, 2048
  %36 = icmp ne i32 %35, 0
  %37 = and i1 %36, %34
  br i1 %37, label %38, label %18

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !12
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %45, label %79

45:                                               ; preds = %38
  %46 = load ptr, ptr %40, align 8, !tbaa !15
  %47 = getelementptr inbounds %struct.xpvcv, ptr %46, i64 0, i32 12
  %48 = load i32, ptr %47, align 4, !tbaa !17
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %53 = ptrtoint ptr %52 to i64
  %54 = ptrtoint ptr %15 to i64
  %55 = sub i64 %53, %54
  %56 = icmp slt i64 %55, 8
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #5
  br label %59

59:                                               ; preds = %51, %57
  %60 = phi ptr [ %58, %57 ], [ %15, %51 ]
  %61 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.9, i64 noundef 6, i32 noundef 524288) #5
  %62 = getelementptr inbounds ptr, ptr %60, i64 1
  store ptr %61, ptr %62, align 8, !tbaa !6
  br label %63

63:                                               ; preds = %59, %45
  %64 = phi ptr [ %62, %59 ], [ %15, %45 ]
  %65 = and i32 %48, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %69 = ptrtoint ptr %68 to i64
  %70 = ptrtoint ptr %64 to i64
  %71 = sub i64 %69, %70
  %72 = icmp slt i64 %71, 8
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = tail call ptr @Perl_stack_grow(ptr noundef %64, ptr noundef %64, i64 noundef 1) #5
  br label %75

75:                                               ; preds = %67, %73
  %76 = phi ptr [ %74, %73 ], [ %64, %67 ]
  %77 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.10, i64 noundef 6, i32 noundef 524288) #5
  %78 = getelementptr inbounds ptr, ptr %76, i64 1
  store ptr %77, ptr %78, align 8, !tbaa !6
  br label %79

79:                                               ; preds = %38, %63, %75
  %80 = phi ptr [ %78, %75 ], [ %64, %63 ], [ %15, %38 ]
  store ptr %80, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_attributes__guess_stash(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 6
  %15 = load i8, ptr %14, align 1, !tbaa !20
  %16 = and i8 %15, 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !22
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  br label %26

24:                                               ; preds = %1
  %25 = tail call ptr @Perl_sv_newmortal() #5
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi ptr [ %23, %18 ], [ %25, %24 ]
  %28 = and i64 %12, 34359738360
  %29 = icmp eq i64 %28, 8
  br i1 %29, label %31, label %30

30:                                               ; preds = %31, %26
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.15) #5
  br label %31

31:                                               ; preds = %30, %26
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %33 = sext i32 %7 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  store ptr %27, ptr %34, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !12
  %38 = and i32 %37, 65280
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %37, 255
  %41 = icmp eq i32 %40, 8
  %42 = or i1 %39, %41
  %43 = and i32 %37, 16777471
  %44 = icmp eq i32 %43, 16777226
  %45 = or i1 %44, %42
  %46 = and i32 %37, 2048
  %47 = icmp ne i32 %46, 0
  %48 = and i1 %47, %45
  br i1 %48, label %49, label %30

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !14
  %52 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !12
  %54 = and i32 %53, 1048576
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %51, align 8, !tbaa !23
  %58 = load ptr, ptr %57, align 8, !tbaa !24
  %59 = getelementptr inbounds %struct.hv, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !26
  %61 = and i32 %60, 33554432
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %144, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.hv, ptr %58, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !14
  %66 = load ptr, ptr %58, align 8, !tbaa !28
  %67 = getelementptr inbounds %struct.xpvhv, ptr %66, i64 0, i32 3
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = getelementptr ptr, ptr %65, i64 %68
  %70 = getelementptr ptr, ptr %69, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !14
  %72 = icmp eq ptr %71, null
  br i1 %72, label %144, label %73

73:                                               ; preds = %63
  %74 = getelementptr i8, ptr %69, i64 36
  %75 = load i32, ptr %74, align 4, !tbaa !31
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %144, label %141

77:                                               ; preds = %49
  %78 = trunc i32 %53 to i8
  switch i8 %78, label %146 [
    i8 13, label %79
    i8 9, label %101
  ]

79:                                               ; preds = %77
  %80 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %51) #6
  %81 = icmp eq ptr %80, null
  br i1 %81, label %98, label %82

82:                                               ; preds = %79
  %83 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %51) #6
  %84 = getelementptr inbounds %struct.gv, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !33
  %86 = and i32 %85, 255
  %87 = icmp eq i32 %86, 9
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %51) #6
  %90 = load ptr, ptr %89, align 8, !tbaa !35
  %91 = getelementptr inbounds %struct.xpvgv, ptr %90, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !14
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %51) #6
  %96 = load ptr, ptr %95, align 8, !tbaa !35
  %97 = getelementptr inbounds %struct.xpvgv, ptr %96, i64 0, i32 5
  br label %117

98:                                               ; preds = %88, %82, %79
  %99 = load ptr, ptr %51, align 8, !tbaa !23
  %100 = getelementptr inbounds %struct.xpvcv, ptr %99, i64 0, i32 4
  br label %117

101:                                              ; preds = %77
  %102 = and i32 %53, 49152
  %103 = icmp eq i32 %102, 32768
  br i1 %103, label %104, label %146

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !14
  %107 = icmp eq ptr %106, null
  br i1 %107, label %146, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.gp, ptr %106, i64 0, i32 8
  %110 = load ptr, ptr %109, align 8, !tbaa !36
  %111 = icmp eq ptr %110, null
  %112 = select i1 %111, ptr %51, ptr %110
  %113 = load ptr, ptr %112, align 8, !tbaa !35
  %114 = getelementptr inbounds %struct.xpvgv, ptr %113, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !14
  %116 = icmp eq ptr %115, null
  br i1 %116, label %146, label %121

117:                                              ; preds = %98, %94
  %118 = phi ptr [ %97, %94 ], [ %100, %98 ]
  %119 = load ptr, ptr %118, align 8, !tbaa !14
  %120 = icmp eq ptr %119, null
  br i1 %120, label %146, label %121

121:                                              ; preds = %108, %117
  %122 = phi ptr [ %119, %117 ], [ %115, %108 ]
  %123 = getelementptr inbounds %struct.hv, ptr %122, i64 0, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !26
  %125 = and i32 %124, 33554432
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %144, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.hv, ptr %122, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !14
  %130 = load ptr, ptr %122, align 8, !tbaa !28
  %131 = getelementptr inbounds %struct.xpvhv, ptr %130, i64 0, i32 3
  %132 = load i64, ptr %131, align 8, !tbaa !29
  %133 = getelementptr ptr, ptr %129, i64 %132
  %134 = getelementptr ptr, ptr %133, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !14
  %136 = icmp eq ptr %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %127
  %138 = getelementptr i8, ptr %133, i64 36
  %139 = load i32, ptr %138, align 4, !tbaa !31
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137, %73
  %142 = phi ptr [ %71, %73 ], [ %135, %137 ]
  %143 = load ptr, ptr %142, align 8, !tbaa !6
  br label %144

144:                                              ; preds = %141, %127, %121, %137, %63, %56, %73
  %145 = phi ptr [ null, %63 ], [ null, %56 ], [ %71, %73 ], [ null, %127 ], [ null, %121 ], [ %135, %137 ], [ %143, %141 ]
  tail call void @Perl_sv_sethek(ptr noundef %27, ptr noundef %145) #5
  br label %146

146:                                              ; preds = %144, %101, %104, %108, %77, %117
  %147 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %148 = load i32, ptr %147, align 4, !tbaa !12
  %149 = and i32 %148, 4194304
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %146
  %152 = tail call i32 @Perl_mg_set(ptr noundef nonnull %27) #5
  br label %153

153:                                              ; preds = %151, %146
  %154 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %155 = getelementptr inbounds ptr, ptr %154, i64 %33
  store ptr %155, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_attributes_reftype(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 6
  %15 = load i8, ptr %14, align 1, !tbaa !20
  %16 = and i8 %15, 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !22
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  br label %26

24:                                               ; preds = %1
  %25 = tail call ptr @Perl_sv_newmortal() #5
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi ptr [ %23, %18 ], [ %25, %24 ]
  %28 = and i64 %12, 34359738360
  %29 = icmp eq i64 %28, 8
  br i1 %29, label %31, label %30

30:                                               ; preds = %43, %26
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.15) #5
  br label %31

31:                                               ; preds = %30, %26
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %33 = sext i32 %7 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  store ptr %27, ptr %34, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !12
  %38 = and i32 %37, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = tail call i32 @Perl_mg_get(ptr noundef nonnull %35) #5
  %42 = load i32, ptr %36, align 4, !tbaa !12
  br label %43

43:                                               ; preds = %31, %40
  %44 = phi i32 [ %37, %31 ], [ %42, %40 ]
  %45 = and i32 %44, 65280
  %46 = icmp ne i32 %45, 0
  %47 = and i32 %44, 255
  %48 = icmp eq i32 %47, 8
  %49 = or i1 %46, %48
  %50 = and i32 %44, 16777471
  %51 = icmp eq i32 %50, 16777226
  %52 = or i1 %51, %49
  %53 = and i32 %44, 2048
  %54 = icmp ne i32 %53, 0
  %55 = and i1 %54, %52
  br i1 %55, label %56, label %30

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !14
  %59 = tail call ptr @Perl_sv_reftype(ptr noundef %58, i32 noundef 0) #5
  tail call void @Perl_sv_setpv(ptr noundef %27, ptr noundef %59) #5
  %60 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !12
  %62 = and i32 %61, 4194304
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %56
  %65 = tail call i32 @Perl_mg_set(ptr noundef nonnull %27) #5
  br label %66

66:                                               ; preds = %64, %56
  %67 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %68 = getelementptr inbounds ptr, ptr %67, i64 %33
  store ptr %68, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @modify_SV_attributes(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %160, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %155
  %10 = phi ptr [ %1, %7 ], [ %157, %155 ]
  %11 = phi ptr [ %2, %7 ], [ %14, %155 ]
  %12 = phi i32 [ %3, %7 ], [ %158, %155 ]
  %13 = phi i32 [ 0, %7 ], [ %156, %155 ]
  %14 = getelementptr inbounds ptr, ptr %11, i64 1
  %15 = load ptr, ptr %11, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %160, label %17

17:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %18 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !12
  %20 = and i32 %19, 2098176
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load ptr, ptr %15, align 8, !tbaa !23
  %24 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !38
  store i64 %25, ptr %5, align 8, !tbaa !40
  %26 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  br label %30

28:                                               ; preds = %17
  %29 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %15, ptr noundef nonnull %5, i32 noundef 34) #5
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %32 = load i8, ptr %31, align 1, !tbaa !14
  %33 = icmp eq i8 %32, 45
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = load i64, ptr %5, align 8, !tbaa !40
  %37 = add i64 %36, -1
  store i64 %37, ptr %5, align 8, !tbaa !40
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi ptr [ %35, %34 ], [ %31, %30 ]
  %40 = load i32, ptr %8, align 4, !tbaa !12
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 13
  %43 = load i64, ptr %5, align 8, !tbaa !40
  br i1 %42, label %44, label %137

44:                                               ; preds = %38
  %45 = trunc i64 %43 to i32
  switch i32 %45, label %96 [
    i32 5, label %46
    i32 6, label %62
  ]

46:                                               ; preds = %44
  %47 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %39, ptr noundef nonnull dereferenceable(5) @.str.8, i64 5)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %146

49:                                               ; preds = %46
  %50 = load ptr, ptr %0, align 8, !tbaa !23
  %51 = getelementptr inbounds %struct.xpvcv, ptr %50, i64 0, i32 12
  %52 = load i32, ptr %51, align 4, !tbaa !17
  br i1 %33, label %53, label %55

53:                                               ; preds = %49
  %54 = and i32 %52, -131073
  store i32 %54, ptr %51, align 4, !tbaa !17
  br label %155

55:                                               ; preds = %49
  %56 = and i32 %52, 192
  %57 = icmp eq i32 %56, 128
  br i1 %57, label %149, label %58

58:                                               ; preds = %55
  %59 = and i32 %52, 131072
  %60 = icmp eq i32 %59, 0
  %61 = or i32 %52, 131072
  store i32 %61, ptr %51, align 4, !tbaa !17
  br i1 %60, label %146, label %155

62:                                               ; preds = %44
  %63 = getelementptr inbounds i8, ptr %39, i64 3
  %64 = load i8, ptr %63, align 1, !tbaa !14
  switch i8 %64, label %146 [
    i8 108, label %65
    i8 104, label %85
  ]

65:                                               ; preds = %62
  %66 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %39, ptr noundef nonnull dereferenceable(6) @.str.9, i64 6)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %146

68:                                               ; preds = %65
  %69 = load ptr, ptr %0, align 8, !tbaa !15
  %70 = getelementptr inbounds %struct.xpvcv, ptr %69, i64 0, i32 12
  %71 = load i32, ptr %70, align 4, !tbaa !17
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %151

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.xpvcv, ptr %69, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %151, label %78

78:                                               ; preds = %74
  %79 = and i32 %71, 2
  %80 = icmp eq i32 %79, 0
  %81 = xor i1 %33, %80
  %82 = or i32 %71, 2
  %83 = and i32 %71, -11
  %84 = select i1 %33, i32 %83, i32 %82
  store i32 %84, ptr %70, align 4, !tbaa !17
  br i1 %81, label %146, label %155

85:                                               ; preds = %62
  %86 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %39, ptr noundef nonnull dereferenceable(6) @.str.10, i64 6)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %146

88:                                               ; preds = %85
  %89 = load ptr, ptr %0, align 8, !tbaa !15
  %90 = getelementptr inbounds %struct.xpvcv, ptr %89, i64 0, i32 12
  %91 = load i32, ptr %90, align 4, !tbaa !17
  br i1 %33, label %92, label %94

92:                                               ; preds = %88
  %93 = and i32 %91, -2
  store i32 %93, ptr %90, align 4, !tbaa !17
  br label %155

94:                                               ; preds = %88
  %95 = or i32 %91, 1
  store i32 %95, ptr %90, align 4, !tbaa !17
  br label %155

96:                                               ; preds = %44
  %97 = icmp ugt i64 %43, 10
  br i1 %97, label %98, label %146

98:                                               ; preds = %96
  %99 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %39, ptr noundef nonnull dereferenceable(10) @.str.11, i64 10)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %146

101:                                              ; preds = %98
  %102 = getelementptr inbounds i8, ptr %39, i64 10
  %103 = add i64 %43, -11
  %104 = call ptr @Perl_newSVpvn(ptr noundef nonnull %102, i64 noundef %103) #5
  %105 = call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %0) #6
  %106 = load i64, ptr %5, align 8, !tbaa !40
  %107 = add i64 %106, -1
  %108 = getelementptr inbounds i8, ptr %39, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !14
  %110 = icmp eq i8 %109, 41
  br i1 %110, label %112, label %111

111:                                              ; preds = %101
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.12) #5
  br label %112

112:                                              ; preds = %111, %101
  %113 = icmp eq ptr %105, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %112
  %115 = call ptr @Perl_newSVhek(ptr noundef nonnull %105) #5
  %116 = call ptr @Perl_sv_2mortal(ptr noundef %115) #5
  br label %119

117:                                              ; preds = %112
  %118 = call fastcc ptr @S_CvGV(ptr noundef nonnull %0) #6
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi ptr [ %116, %114 ], [ %118, %117 ]
  %121 = call zeroext i1 @Perl_ckwarn(i32 noundef 47) #5
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call zeroext i1 @Perl_validate_proto(ptr noundef %120, ptr noundef %104, i1 noundef zeroext true) #5
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i64, ptr %5, align 8, !tbaa !40
  %126 = add i64 %125, -11
  %127 = load i32, ptr %18, align 4, !tbaa !12
  %128 = and i32 %127, 536870912
  call void @Perl_cv_ckproto_len_flags(ptr noundef nonnull %0, ptr noundef %120, ptr noundef nonnull %102, i64 noundef %126, i32 noundef %128) #5
  %129 = load i64, ptr %5, align 8, !tbaa !40
  %130 = add i64 %129, -11
  call void @Perl_sv_setpvn(ptr noundef nonnull %0, ptr noundef nonnull %102, i64 noundef %130) #5
  %131 = load i32, ptr %18, align 4, !tbaa !12
  %132 = and i32 %131, 536870912
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %155, label %134

134:                                              ; preds = %124
  %135 = load i32, ptr %8, align 4, !tbaa !12
  %136 = or i32 %135, 536870912
  store i32 %136, ptr %8, align 4, !tbaa !12
  br label %155

137:                                              ; preds = %38
  %138 = icmp eq i64 %43, 6
  br i1 %138, label %139, label %146

139:                                              ; preds = %137
  %140 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %39, ptr noundef nonnull dereferenceable(6) @.str.13, i64 6)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  br i1 %33, label %143, label %144

143:                                              ; preds = %142
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14) #5
  br label %144

144:                                              ; preds = %143, %142
  %145 = load ptr, ptr @PL_sharehook, align 8, !tbaa !6
  call void %145(ptr noundef nonnull %0) #5
  br label %155

146:                                              ; preds = %58, %137, %139, %46, %85, %65, %78, %62, %98, %96
  %147 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %15, ptr %10, align 8, !tbaa !6
  %148 = add nsw i32 %13, 1
  br label %155

149:                                              ; preds = %55
  %150 = or i32 %52, 131072
  store i32 %150, ptr %51, align 4, !tbaa !17
  br label %155

151:                                              ; preds = %68, %74
  %152 = and i32 %71, -3
  %153 = select i1 %33, i32 0, i32 2
  %154 = or disjoint i32 %152, %153
  store i32 %154, ptr %70, align 4, !tbaa !17
  br label %155

155:                                              ; preds = %151, %149, %58, %124, %134, %92, %94, %53, %78, %146, %144
  %156 = phi i32 [ %148, %146 ], [ %13, %78 ], [ %13, %144 ], [ %13, %58 ], [ %13, %53 ], [ %13, %94 ], [ %13, %92 ], [ %13, %134 ], [ %13, %124 ], [ %13, %149 ], [ %13, %151 ]
  %157 = phi ptr [ %147, %146 ], [ %10, %78 ], [ %10, %144 ], [ %10, %58 ], [ %10, %53 ], [ %10, %94 ], [ %10, %92 ], [ %10, %134 ], [ %10, %124 ], [ %10, %149 ], [ %10, %151 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  %158 = add nsw i32 %12, -1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %9, !llvm.loop !41

160:                                              ; preds = %9, %155, %4
  %161 = phi i32 [ 0, %4 ], [ %156, %155 ], [ %13, %9 ]
  ret i32 %161
}

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @CvNAME_HEK(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !17
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !17
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #5
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_validate_proto(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_cv_ckproto_len_flags(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_sethek(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !11, i64 12}
!13 = !{!"sv", !7, i64 0, !11, i64 8, !11, i64 12, !8, i64 16}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !7, i64 0}
!16 = !{!"cv", !7, i64 0, !11, i64 8, !11, i64 12, !8, i64 16}
!17 = !{!18, !11, i64 92}
!18 = !{!"xpvcv", !7, i64 0, !8, i64 8, !19, i64 16, !8, i64 24, !7, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !7, i64 64, !8, i64 72, !7, i64 80, !11, i64 88, !11, i64 92, !11, i64 96}
!19 = !{!"long", !8, i64 0}
!20 = !{!21, !8, i64 35}
!21 = !{!"op", !7, i64 0, !7, i64 8, !7, i64 16, !19, i64 24, !11, i64 32, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !8, i64 34, !8, i64 35}
!22 = !{!21, !19, i64 24}
!23 = !{!13, !7, i64 0}
!24 = !{!25, !7, i64 0}
!25 = !{!"xpvmg", !7, i64 0, !8, i64 8, !19, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!26 = !{!27, !11, i64 12}
!27 = !{!"hv", !7, i64 0, !11, i64 8, !11, i64 12, !8, i64 16}
!28 = !{!27, !7, i64 0}
!29 = !{!30, !19, i64 24}
!30 = !{!"xpvhv", !7, i64 0, !8, i64 8, !19, i64 16, !19, i64 24}
!31 = !{!32, !11, i64 28}
!32 = !{!"xpvhv_aux", !8, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !7, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52}
!33 = !{!34, !11, i64 12}
!34 = !{!"gv", !7, i64 0, !11, i64 8, !11, i64 12, !8, i64 16}
!35 = !{!34, !7, i64 0}
!36 = !{!37, !7, i64 56}
!37 = !{!"gp", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !11, i64 64, !11, i64 67, !7, i64 72}
!38 = !{!39, !19, i64 16}
!39 = !{!"xpv", !7, i64 0, !8, i64 8, !19, i64 16, !8, i64 24}
!40 = !{!19, !19, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
