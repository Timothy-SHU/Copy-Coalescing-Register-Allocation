; ModuleID = 'fncode.cpp'
source_filename = "fncode.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Token_Struct" = type { i32, i32, %"struct.pov_base::ITextStream::FilePos", i32, i32, ptr, double, i32, i32, ptr, ptr, ptr, ptr, i8 }
%"struct.pov_base::ITextStream::FilePos" = type { i64, i32 }
%"struct.pov::TrapS" = type { ptr, i32 }
%"struct.pov::Trap" = type { ptr, i32 }
%"class.pov::FNCode" = type <{ ptr, i32, i32, i32, i32, i32, [4 x i8] }>
%"struct.pov::FunctionCode" = type { ptr, i32, i8, i8, i8, [56 x i32], [56 x ptr], [56 x ptr], ptr, ptr, %"struct.pov_base::ITextStream::FilePos", i32, ptr, ptr, ptr }
%"class.pov_base::ITextStream" = type { ptr, ptr, [512 x i8], i64, i64, i64, i64, ptr, i32, i32 }
%"struct.pov::ExprNodeStruct" = type { ptr, ptr, ptr, ptr, i32, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN3pov5TokenE = external local_unnamed_addr global %"struct.pov::Token_Struct", align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"parameter identifier\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"At least one function parameter is required!\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fncode.cpp\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"fn: program\00", align 1
@_ZN3pov21POVFPU_TrapSTableSizeE = external local_unnamed_addr constant i32, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Function 'internal(%d)' does not exist.\00", align 1
@_ZN3pov17POVFPU_TrapSTableE = external local_unnamed_addr global [0 x %"struct.pov::TrapS"], align 8
@_ZN3pov20POVFPU_TrapTableSizeE = external local_unnamed_addr constant i32, align 4
@_ZN3pov16POVFPU_TrapTableE = external local_unnamed_addr global [0 x %"struct.pov::Trap"], align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"Division by zero.\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Zero power optimised to constant 1.0!\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"transmit\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"grey\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"hf\00", align 1
@_ZN3pov17Experimental_FlagE = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [109 x i8] c"Invalid member access: Valid member names are x, y, z, t, u, v,\0Ared, green, blue, grey, filter and transmit.\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"Invalid number of parameters: At least one parameter expected!\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"function identifier\00", align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"Invalid number of parameters for '%s': Only one parameter expected!\00", align 1
@.str.20 = private unnamed_addr constant [64 x i8] c"Invalid number of parameters for '%s': Two parameters expected!\00", align 1
@.str.21 = private unnamed_addr constant [69 x i8] c"Invalid number of parameters for '%s': Only two parameters expected!\00", align 1
@.str.22 = private unnamed_addr constant [73 x i8] c"Invalid number of parameters for '%s': At least two parameters expected!\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"Invalid number of parameters: Three or four parameters expected!\00", align 1
@.str.24 = private unnamed_addr constant [70 x i8] c"Invalid number of parameters: Only three or four parameters expected!\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"Invalid number of parameters: Four parameters expected!\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"Invalid number of parameters: Only four parameters expected!\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"Too many local variables!\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"Local variable name expected!\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"Recursive function calls are not allowed!\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"Invalid number of parameters: %d supplied, %d required!\00", align 1
@.str.31 = private unnamed_addr constant [59 x i8] c"parameter identifier or floating-point constant identifier\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"Function too complex!\00", align 1
@.str.38 = private unnamed_addr constant [60 x i8] c"Internal function compiler failed in 'compile_instruction'.\00", align 1

@_ZN3pov6FNCodeC1EPNS_12FunctionCodeEbPKc = dso_local unnamed_addr alias void (ptr, ptr, i1, ptr), ptr @_ZN3pov6FNCodeC2EPNS_12FunctionCodeEbPKc

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCodeC2EPNS_12FunctionCodeEbPKc(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 align 2 {
  %5 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  store ptr %1, ptr %0, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %1, i8 0, i64 15, i1 false)
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %13, %6 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %8, i64 0, i32 5, i64 %7
  store i32 0, ptr %9, align 4, !tbaa !40
  %10 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %8, i64 0, i32 6, i64 %7
  store ptr null, ptr %10, align 8, !tbaa !41
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %11, i64 0, i32 7, i64 %7
  store ptr null, ptr %12, align 8, !tbaa !41
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 56
  br i1 %14, label %15, label %6, !llvm.loop !42

15:                                               ; preds = %6
  %16 = icmp eq ptr %3, null
  %17 = select i1 %16, ptr @.str, ptr %3
  %18 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef nonnull %17)
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  %20 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %19, i64 0, i32 8
  store ptr %18, ptr %20, align 8, !tbaa !45
  %21 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 9), align 8, !tbaa !49
  %22 = getelementptr inbounds %"class.pov_base::ITextStream", ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef %23)
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %25, i64 0, i32 9
  store ptr %24, ptr %26, align 8, !tbaa !55
  %27 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 9), align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %15
  %30 = tail call { i64, i32 } @_ZN8pov_base11ITextStream5tellgEv(ptr noundef nonnull align 8 dereferenceable(576) %27)
  %31 = extractvalue { i64, i32 } %30, 0
  %32 = extractvalue { i64, i32 } %30, 1
  %33 = load ptr, ptr %0, align 8, !tbaa !34
  %34 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %33, i64 0, i32 10
  store i64 %31, ptr %34, align 8, !tbaa.struct !56
  %35 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %33, i64 0, i32 10, i32 1
  store i32 %32, ptr %35, align 8, !tbaa.struct !58
  br label %39

36:                                               ; preds = %15
  %37 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %25, i64 0, i32 10, i32 1
  store i32 0, ptr %37, align 8, !tbaa !59
  %38 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %25, i64 0, i32 10
  store i64 0, ptr %38, align 8, !tbaa !60
  br label %39

39:                                               ; preds = %36, %29
  %40 = load ptr, ptr %0, align 8, !tbaa !34
  %41 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %40, i64 0, i32 11
  store i32 0, ptr %41, align 8, !tbaa !61
  %42 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %40, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  br i1 %2, label %43, label %44

43:                                               ; preds = %39
  store i32 2, ptr %41, align 8, !tbaa !61
  br label %44

44:                                               ; preds = %43, %39
  ret void
}

declare noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef) local_unnamed_addr #1

declare { i64, i32 } @_ZN8pov_base11ITextStream5tellgEv(ptr noundef nonnull align 8 dereferenceable(576)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCode9ParameterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %0) local_unnamed_addr #0 align 2 {
  tail call void @_ZN3pov9Get_TokenEv()
  %2 = load i32, ptr @_ZN3pov5TokenE, align 8, !tbaa !62
  %3 = icmp eq i32 %2, 173
  br i1 %3, label %4, label %42

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %5, i64 0, i32 3
  store i8 0, ptr %6, align 1, !tbaa !63
  br label %7

7:                                                ; preds = %23, %4
  %8 = load i32, ptr @_ZN3pov5TokenE, align 8, !tbaa !62
  %9 = icmp eq i32 %8, 219
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %11, i64 0, i32 3
  %13 = load i8, ptr %12, align 1, !tbaa !63
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %10, %7
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %16, i64 0, i32 3
  %18 = load i8, ptr %17, align 1, !tbaa !63
  %19 = icmp ult i8 %18, 56
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  tail call void @_ZN3pov9Get_TokenEv()
  %21 = load i32, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 1), align 4
  switch i32 %21, label %22 [
    i32 401, label %23
    i32 400, label %23
    i32 161, label %23
    i32 73, label %23
    i32 72, label %23
    i32 71, label %23
  ]

22:                                               ; preds = %20
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef nonnull @.str.1)
  br label %23

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %22
  %24 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 5), align 8, !tbaa !64
  %25 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef %24)
  %26 = load ptr, ptr %0, align 8, !tbaa !34
  %27 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %26, i64 0, i32 3
  %28 = load i8, ptr %27, align 1, !tbaa !63
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %26, i64 0, i32 7, i64 %29
  store ptr %25, ptr %30, align 8, !tbaa !41
  tail call void @_ZN3pov11Parse_CommaEv()
  %31 = load ptr, ptr %0, align 8, !tbaa !34
  %32 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %31, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !63
  %34 = add i8 %33, 1
  store i8 %34, ptr %32, align 1, !tbaa !63
  br label %7, !llvm.loop !65

35:                                               ; preds = %10, %15
  tail call void @_ZN3pov9Get_TokenEv()
  %36 = load ptr, ptr %0, align 8, !tbaa !34
  %37 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %36, i64 0, i32 3
  %38 = load i8, ptr %37, align 1, !tbaa !63
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.2)
  br label %43

42:                                               ; preds = %1
  tail call void @_ZN3pov11Unget_TokenEv()
  br label %43

43:                                               ; preds = %35, %40, %42
  ret void
}

declare void @_ZN3pov9Get_TokenEv() local_unnamed_addr #1

declare void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov11Parse_CommaEv() local_unnamed_addr #1

declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN3pov11Unget_TokenEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCode7CompileEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  store i32 256, ptr %3, align 8, !tbaa !66
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !67
  %6 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 1024, ptr noundef nonnull @.str.3, i32 noundef 258, ptr noundef nonnull @.str.4)
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %6, ptr %7, align 8, !tbaa !68
  %8 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !69
  %10 = icmp eq i32 %9, 23
  br i1 %10, label %11, label %101

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %7, i64 0, i32 2
  %13 = load i8, ptr %12, align 4, !tbaa !71
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !72
  br i1 %14, label %59, label %17

17:                                               ; preds = %11
  %18 = load i32, ptr @_ZN3pov21POVFPU_TrapSTableSizeE, align 4, !tbaa !40
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.5, i32 noundef %16)
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, ptr %15, align 8, !tbaa !72
  %24 = load ptr, ptr %0, align 8, !tbaa !34
  %25 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !67
  %27 = load i32, ptr %3, align 8, !tbaa !66
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = add i32 %27, 256
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 1048575)
  store i32 %31, ptr %3, align 8, !tbaa !66
  %32 = load ptr, ptr %24, align 8, !tbaa !68
  %33 = shl nuw nsw i32 %31, 2
  %34 = zext nneg i32 %33 to i64
  %35 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %32, i64 noundef %34, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %36 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %35, ptr %36, align 8, !tbaa !68
  br label %37

37:                                               ; preds = %29, %22
  %38 = shl i32 %23, 12
  %39 = or disjoint i32 %38, 967
  %40 = load ptr, ptr %0, align 8, !tbaa !34
  %41 = load ptr, ptr %40, align 8, !tbaa !68
  %42 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %40, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !67
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %41, i64 %44
  store i32 %39, ptr %45, align 4, !tbaa !40
  %46 = load i32, ptr %42, align 8, !tbaa !67
  %47 = add i32 %46, 1
  store i32 %47, ptr %42, align 8, !tbaa !67
  %48 = icmp ugt i32 %47, 1048574
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %51

51:                                               ; preds = %37, %49
  %52 = load ptr, ptr %0, align 8, !tbaa !34
  %53 = load i32, ptr %15, align 8, !tbaa !72
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [0 x %"struct.pov::TrapS"], ptr @_ZN3pov17POVFPU_TrapSTableE, i64 0, i64 %54, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !73
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %52, i64 0, i32 3
  store i8 %57, ptr %58, align 1, !tbaa !63
  br label %152

59:                                               ; preds = %11
  %60 = load i32, ptr @_ZN3pov20POVFPU_TrapTableSizeE, align 4, !tbaa !40
  %61 = icmp ult i32 %16, %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.5, i32 noundef %16)
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, ptr %15, align 8, !tbaa !72
  %66 = load ptr, ptr %0, align 8, !tbaa !34
  %67 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %66, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !67
  %69 = load i32, ptr %3, align 8, !tbaa !66
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %64
  %72 = add i32 %69, 256
  %73 = tail call i32 @llvm.umin.i32(i32 %72, i32 1048575)
  store i32 %73, ptr %3, align 8, !tbaa !66
  %74 = load ptr, ptr %66, align 8, !tbaa !68
  %75 = shl nuw nsw i32 %73, 2
  %76 = zext nneg i32 %75 to i64
  %77 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %74, i64 noundef %76, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %78 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %77, ptr %78, align 8, !tbaa !68
  br label %79

79:                                               ; preds = %71, %64
  %80 = shl i32 %65, 12
  %81 = or disjoint i32 %80, 966
  %82 = load ptr, ptr %0, align 8, !tbaa !34
  %83 = load ptr, ptr %82, align 8, !tbaa !68
  %84 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %82, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !67
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %83, i64 %86
  store i32 %81, ptr %87, align 4, !tbaa !40
  %88 = load i32, ptr %84, align 8, !tbaa !67
  %89 = add i32 %88, 1
  store i32 %89, ptr %84, align 8, !tbaa !67
  %90 = icmp ugt i32 %89, 1048574
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %93

93:                                               ; preds = %79, %91
  %94 = load ptr, ptr %0, align 8, !tbaa !34
  %95 = load i32, ptr %15, align 8, !tbaa !72
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [0 x %"struct.pov::Trap"], ptr @_ZN3pov16POVFPU_TrapTableE, i64 0, i64 %96, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !75
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %94, i64 0, i32 3
  store i8 %99, ptr %100, align 1, !tbaa !63
  br label %152

101:                                              ; preds = %2
  %102 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %7, i64 0, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !67
  %104 = load i32, ptr %3, align 8, !tbaa !66
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %101
  %107 = add i32 %104, 256
  %108 = tail call i32 @llvm.umin.i32(i32 %107, i32 1048575)
  store i32 %108, ptr %3, align 8, !tbaa !66
  %109 = shl nuw nsw i32 %108, 2
  %110 = zext nneg i32 %109 to i64
  %111 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %6, i64 noundef %110, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %112 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %111, ptr %112, align 8, !tbaa !68
  br label %113

113:                                              ; preds = %106, %101
  %114 = load ptr, ptr %0, align 8, !tbaa !34
  %115 = load ptr, ptr %114, align 8, !tbaa !68
  %116 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %114, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !67
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %115, i64 %118
  store i32 991, ptr %119, align 4, !tbaa !40
  %120 = load i32, ptr %116, align 8, !tbaa !67
  %121 = add i32 %120, 1
  store i32 %121, ptr %116, align 8, !tbaa !67
  %122 = icmp ugt i32 %121, 1048574
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %125

125:                                              ; preds = %113, %123
  %126 = load ptr, ptr %0, align 8, !tbaa !34
  %127 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %126, i64 0, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !67
  %129 = add i32 %128, -1
  tail call void @_ZN3pov6FNCode18compile_parametersEv(ptr noundef nonnull align 8 dereferenceable(28) %0)
  %130 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  store i32 0, ptr %130, align 8, !tbaa !77
  %131 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 4
  store i32 0, ptr %131, align 4, !tbaa !78
  %132 = load ptr, ptr %0, align 8, !tbaa !34
  %133 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %132, i64 0, i32 3
  %134 = load i8, ptr %133, align 1, !tbaa !63
  %135 = zext i8 %134 to i32
  %136 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 2
  store i32 %135, ptr %136, align 4, !tbaa !79
  %137 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 3
  store i32 %135, ptr %137, align 8, !tbaa !80
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1)
  %138 = load i32, ptr %136, align 4, !tbaa !79
  %139 = load ptr, ptr %0, align 8, !tbaa !34
  %140 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %139, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !67
  %142 = icmp ugt i32 %141, %129
  br i1 %142, label %145, label %143

143:                                              ; preds = %125
  %144 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.38)
  br label %145

145:                                              ; preds = %125, %143
  %146 = shl i32 %138, 12
  %147 = or disjoint i32 %146, 968
  %148 = load ptr, ptr %0, align 8, !tbaa !34
  %149 = load ptr, ptr %148, align 8, !tbaa !68
  %150 = zext i32 %129 to i64
  %151 = getelementptr inbounds i32, ptr %149, i64 %150
  store i32 %147, ptr %151, align 4, !tbaa !40
  br label %152

152:                                              ; preds = %51, %93, %145
  %153 = load ptr, ptr %0, align 8, !tbaa !34
  %154 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %153, i64 0, i32 1
  %155 = load i32, ptr %154, align 8, !tbaa !67
  %156 = load i32, ptr %3, align 8, !tbaa !66
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %152
  %159 = add i32 %156, 256
  %160 = tail call i32 @llvm.umin.i32(i32 %159, i32 1048575)
  store i32 %160, ptr %3, align 8, !tbaa !66
  %161 = load ptr, ptr %153, align 8, !tbaa !68
  %162 = shl nuw nsw i32 %160, 2
  %163 = zext nneg i32 %162 to i64
  %164 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %161, i64 noundef %163, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %165 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %164, ptr %165, align 8, !tbaa !68
  br label %166

166:                                              ; preds = %158, %152
  %167 = load ptr, ptr %0, align 8, !tbaa !34
  %168 = load ptr, ptr %167, align 8, !tbaa !68
  %169 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %167, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !67
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, ptr %168, i64 %171
  store i32 962, ptr %172, align 4, !tbaa !40
  %173 = load i32, ptr %169, align 8, !tbaa !67
  %174 = add i32 %173, 1
  store i32 %174, ptr %169, align 8, !tbaa !67
  %175 = icmp ugt i32 %174, 1048574
  br i1 %175, label %176, label %178

176:                                              ; preds = %166
  %177 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %178

178:                                              ; preds = %166, %176
  %179 = load ptr, ptr %0, align 8, !tbaa !34
  %180 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %179, i64 0, i32 1
  %181 = load i32, ptr %180, align 8, !tbaa !67
  %182 = load ptr, ptr %179, align 8, !tbaa !68
  %183 = zext i32 %181 to i64
  %184 = shl nuw nsw i64 %183, 2
  %185 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %182, i64 noundef %184, ptr noundef nonnull @.str.3, i32 noundef 338, ptr noundef nonnull @.str.4)
  %186 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %185, ptr %186, align 8, !tbaa !68
  ret void
}

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %5
  %13 = add i32 %10, 256
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 1048575)
  store i32 %14, ptr %9, align 8, !tbaa !66
  %15 = load ptr, ptr %6, align 8, !tbaa !68
  %16 = shl nuw nsw i32 %14, 2
  %17 = zext nneg i32 %16 to i64
  %18 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %15, i64 noundef %17, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %18, ptr %19, align 8, !tbaa !68
  br label %20

20:                                               ; preds = %12, %5
  %21 = shl i32 %4, 12
  %22 = shl i32 %2, 3
  %23 = or i32 %22, %1
  %24 = or i32 %23, %3
  %25 = and i32 %24, 4095
  %26 = or disjoint i32 %25, %21
  %27 = load ptr, ptr %0, align 8, !tbaa !34
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %27, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !67
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %28, i64 %31
  store i32 %26, ptr %32, align 4, !tbaa !40
  %33 = load i32, ptr %29, align 8, !tbaa !67
  %34 = add i32 %33, 1
  store i32 %34, ptr %29, align 8, !tbaa !67
  %35 = icmp ugt i32 %34, 1048574
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %38

38:                                               ; preds = %36, %20
  %39 = load ptr, ptr %0, align 8, !tbaa !34
  %40 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !67
  %42 = add i32 %41, -1
  ret i32 %42
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCode18compile_parametersEv(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #0 align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %2, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !63
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  store i8 3, ptr %3, align 1, !tbaa !63
  %7 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef nonnull @.str.32)
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %8, i64 0, i32 7
  store ptr %7, ptr %9, align 8, !tbaa !41
  %10 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef nonnull @.str.33)
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %11, i64 0, i32 7, i64 1
  store ptr %10, ptr %12, align 8, !tbaa !41
  %13 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef nonnull @.str.34)
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %14, i64 0, i32 7, i64 2
  store ptr %13, ptr %15, align 8, !tbaa !41
  br label %16

16:                                               ; preds = %6, %1
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %17, i64 0, i32 3
  %19 = load i8, ptr %18, align 1, !tbaa !63
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %147, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %23 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  br label %25

25:                                               ; preds = %21, %130
  %26 = phi i64 [ 0, %21 ], [ %134, %130 ]
  %27 = phi ptr [ %17, %21 ], [ %135, %130 ]
  %28 = phi i8 [ 0, %21 ], [ %133, %130 ]
  %29 = phi i8 [ 0, %21 ], [ %132, %130 ]
  %30 = phi i8 [ 0, %21 ], [ %131, %130 ]
  %31 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %27, i64 0, i32 7, i64 %26
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(2) @.str.32) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(2) @.str.35) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %35, %25
  %39 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %27, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !67
  %41 = load i32, ptr %24, align 8, !tbaa !66
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = add i32 %41, 256
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 1048575)
  store i32 %45, ptr %24, align 8, !tbaa !66
  %46 = load ptr, ptr %27, align 8, !tbaa !68
  %47 = shl nuw nsw i32 %45, 2
  %48 = zext nneg i32 %47 to i64
  %49 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %46, i64 noundef %48, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %50 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %49, ptr %50, align 8, !tbaa !68
  br label %51

51:                                               ; preds = %43, %38
  %52 = load ptr, ptr %0, align 8, !tbaa !34
  %53 = load ptr, ptr %52, align 8, !tbaa !68
  %54 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %52, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !67
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %53, i64 %56
  %58 = trunc i64 %26 to i32
  %59 = shl i32 %58, 12
  %60 = or disjoint i32 %59, 714
  store i32 %60, ptr %57, align 4, !tbaa !40
  %61 = load i32, ptr %54, align 8, !tbaa !67
  %62 = add i32 %61, 1
  store i32 %62, ptr %54, align 8, !tbaa !67
  %63 = icmp ugt i32 %62, 1048574
  br i1 %63, label %125, label %130

64:                                               ; preds = %35
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(2) @.str.33) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(2) @.str.36) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %67, %64
  %71 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %27, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !67
  %73 = load i32, ptr %23, align 8, !tbaa !66
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = add i32 %73, 256
  %77 = tail call i32 @llvm.umin.i32(i32 %76, i32 1048575)
  store i32 %77, ptr %23, align 8, !tbaa !66
  %78 = load ptr, ptr %27, align 8, !tbaa !68
  %79 = shl nuw nsw i32 %77, 2
  %80 = zext nneg i32 %79 to i64
  %81 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %78, i64 noundef %80, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %82 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %81, ptr %82, align 8, !tbaa !68
  br label %83

83:                                               ; preds = %75, %70
  %84 = load ptr, ptr %0, align 8, !tbaa !34
  %85 = load ptr, ptr %84, align 8, !tbaa !68
  %86 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %84, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !67
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %85, i64 %88
  %90 = trunc i64 %26 to i32
  %91 = shl i32 %90, 12
  %92 = or disjoint i32 %91, 715
  store i32 %92, ptr %89, align 4, !tbaa !40
  %93 = load i32, ptr %86, align 8, !tbaa !67
  %94 = add i32 %93, 1
  store i32 %94, ptr %86, align 8, !tbaa !67
  %95 = icmp ugt i32 %94, 1048574
  br i1 %95, label %125, label %130

96:                                               ; preds = %67
  %97 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(2) @.str.34) #7
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %130

99:                                               ; preds = %96
  %100 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %27, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !67
  %102 = load i32, ptr %22, align 8, !tbaa !66
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %99
  %105 = add i32 %102, 256
  %106 = tail call i32 @llvm.umin.i32(i32 %105, i32 1048575)
  store i32 %106, ptr %22, align 8, !tbaa !66
  %107 = load ptr, ptr %27, align 8, !tbaa !68
  %108 = shl nuw nsw i32 %106, 2
  %109 = zext nneg i32 %108 to i64
  %110 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %107, i64 noundef %109, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %111 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %110, ptr %111, align 8, !tbaa !68
  br label %112

112:                                              ; preds = %104, %99
  %113 = load ptr, ptr %0, align 8, !tbaa !34
  %114 = load ptr, ptr %113, align 8, !tbaa !68
  %115 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %113, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !67
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, ptr %114, i64 %117
  %119 = trunc i64 %26 to i32
  %120 = shl i32 %119, 12
  %121 = or disjoint i32 %120, 716
  store i32 %121, ptr %118, align 4, !tbaa !40
  %122 = load i32, ptr %115, align 8, !tbaa !67
  %123 = add i32 %122, 1
  store i32 %123, ptr %115, align 8, !tbaa !67
  %124 = icmp ugt i32 %123, 1048574
  br i1 %124, label %125, label %130

125:                                              ; preds = %112, %83, %51
  %126 = phi i8 [ 1, %51 ], [ %30, %83 ], [ %30, %112 ]
  %127 = phi i8 [ %29, %51 ], [ 1, %83 ], [ %29, %112 ]
  %128 = phi i8 [ %28, %51 ], [ %28, %83 ], [ 1, %112 ]
  %129 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %130

130:                                              ; preds = %125, %112, %83, %51, %96
  %131 = phi i8 [ %30, %96 ], [ 1, %51 ], [ %30, %83 ], [ %30, %112 ], [ %126, %125 ]
  %132 = phi i8 [ %29, %96 ], [ %29, %51 ], [ 1, %83 ], [ %29, %112 ], [ %127, %125 ]
  %133 = phi i8 [ %28, %96 ], [ %28, %51 ], [ %28, %83 ], [ 1, %112 ], [ %128, %125 ]
  %134 = add nuw nsw i64 %26, 1
  %135 = load ptr, ptr %0, align 8, !tbaa !34
  %136 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %135, i64 0, i32 3
  %137 = load i8, ptr %136, align 1, !tbaa !63
  %138 = zext i8 %137 to i64
  %139 = icmp ult i64 %134, %138
  br i1 %139, label %25, label %140, !llvm.loop !81

140:                                              ; preds = %130
  %141 = and i8 %131, 1
  %142 = icmp eq i8 %141, 0
  %143 = and i8 %132, 1
  %144 = icmp eq i8 %143, 0
  %145 = and i8 %133, 1
  %146 = icmp eq i8 %145, 0
  br label %147

147:                                              ; preds = %140, %16
  %148 = phi i1 [ true, %16 ], [ %142, %140 ]
  %149 = phi i1 [ true, %16 ], [ %144, %140 ]
  %150 = phi i1 [ true, %16 ], [ %146, %140 ]
  br i1 %148, label %151, label %181

151:                                              ; preds = %147
  %152 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0.000000e+00)
  %153 = load ptr, ptr %0, align 8, !tbaa !34
  %154 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %153, i64 0, i32 1
  %155 = load i32, ptr %154, align 8, !tbaa !67
  %156 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %157 = load i32, ptr %156, align 8, !tbaa !66
  %158 = icmp ult i32 %155, %157
  br i1 %158, label %167, label %159

159:                                              ; preds = %151
  %160 = add i32 %157, 256
  %161 = tail call i32 @llvm.umin.i32(i32 %160, i32 1048575)
  store i32 %161, ptr %156, align 8, !tbaa !66
  %162 = load ptr, ptr %153, align 8, !tbaa !68
  %163 = shl nuw nsw i32 %161, 2
  %164 = zext nneg i32 %163 to i64
  %165 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %162, i64 noundef %164, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %166 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %165, ptr %166, align 8, !tbaa !68
  br label %167

167:                                              ; preds = %159, %151
  %168 = shl i32 %152, 12
  %169 = or disjoint i32 %168, 618
  %170 = load ptr, ptr %0, align 8, !tbaa !34
  %171 = load ptr, ptr %170, align 8, !tbaa !68
  %172 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %170, i64 0, i32 1
  %173 = load i32, ptr %172, align 8, !tbaa !67
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, ptr %171, i64 %174
  store i32 %169, ptr %175, align 4, !tbaa !40
  %176 = load i32, ptr %172, align 8, !tbaa !67
  %177 = add i32 %176, 1
  store i32 %177, ptr %172, align 8, !tbaa !67
  %178 = icmp ugt i32 %177, 1048574
  br i1 %178, label %179, label %181

179:                                              ; preds = %167
  %180 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %181

181:                                              ; preds = %179, %167, %147
  br i1 %149, label %182, label %212

182:                                              ; preds = %181
  %183 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0.000000e+00)
  %184 = load ptr, ptr %0, align 8, !tbaa !34
  %185 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %184, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !67
  %187 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %188 = load i32, ptr %187, align 8, !tbaa !66
  %189 = icmp ult i32 %186, %188
  br i1 %189, label %198, label %190

190:                                              ; preds = %182
  %191 = add i32 %188, 256
  %192 = tail call i32 @llvm.umin.i32(i32 %191, i32 1048575)
  store i32 %192, ptr %187, align 8, !tbaa !66
  %193 = load ptr, ptr %184, align 8, !tbaa !68
  %194 = shl nuw nsw i32 %192, 2
  %195 = zext nneg i32 %194 to i64
  %196 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %193, i64 noundef %195, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %197 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %196, ptr %197, align 8, !tbaa !68
  br label %198

198:                                              ; preds = %190, %182
  %199 = shl i32 %183, 12
  %200 = or disjoint i32 %199, 619
  %201 = load ptr, ptr %0, align 8, !tbaa !34
  %202 = load ptr, ptr %201, align 8, !tbaa !68
  %203 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %201, i64 0, i32 1
  %204 = load i32, ptr %203, align 8, !tbaa !67
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, ptr %202, i64 %205
  store i32 %200, ptr %206, align 4, !tbaa !40
  %207 = load i32, ptr %203, align 8, !tbaa !67
  %208 = add i32 %207, 1
  store i32 %208, ptr %203, align 8, !tbaa !67
  %209 = icmp ugt i32 %208, 1048574
  br i1 %209, label %210, label %212

210:                                              ; preds = %198
  %211 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %212

212:                                              ; preds = %210, %198, %181
  br i1 %150, label %213, label %243

213:                                              ; preds = %212
  %214 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0.000000e+00)
  %215 = load ptr, ptr %0, align 8, !tbaa !34
  %216 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %215, i64 0, i32 1
  %217 = load i32, ptr %216, align 8, !tbaa !67
  %218 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %219 = load i32, ptr %218, align 8, !tbaa !66
  %220 = icmp ult i32 %217, %219
  br i1 %220, label %229, label %221

221:                                              ; preds = %213
  %222 = add i32 %219, 256
  %223 = tail call i32 @llvm.umin.i32(i32 %222, i32 1048575)
  store i32 %223, ptr %218, align 8, !tbaa !66
  %224 = load ptr, ptr %215, align 8, !tbaa !68
  %225 = shl nuw nsw i32 %223, 2
  %226 = zext nneg i32 %225 to i64
  %227 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %224, i64 noundef %226, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %228 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %227, ptr %228, align 8, !tbaa !68
  br label %229

229:                                              ; preds = %221, %213
  %230 = shl i32 %214, 12
  %231 = or disjoint i32 %230, 620
  %232 = load ptr, ptr %0, align 8, !tbaa !34
  %233 = load ptr, ptr %232, align 8, !tbaa !68
  %234 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %232, i64 0, i32 1
  %235 = load i32, ptr %234, align 8, !tbaa !67
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i32, ptr %233, i64 %236
  store i32 %231, ptr %237, align 4, !tbaa !40
  %238 = load i32, ptr %234, align 8, !tbaa !67
  %239 = add i32 %238, 1
  store i32 %239, ptr %234, align 8, !tbaa !67
  %240 = icmp ugt i32 %239, 1048574
  br i1 %240, label %241, label %243

241:                                              ; preds = %229
  %242 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %243

243:                                              ; preds = %241, %229, %212
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef readonly %1) local_unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !69
  %5 = icmp slt i32 %4, 17
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr noundef nonnull align 8 dereferenceable(28) %0)
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  %10 = icmp eq ptr %1, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %21 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %23 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %31 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %32 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %34 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 6
  %39 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %40 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 6
  %41 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 6
  %42 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  br label %46

43:                                               ; preds = %1724, %8
  %44 = load i32, ptr %3, align 4, !tbaa !69
  %45 = icmp slt i32 %44, 17
  br i1 %45, label %1728, label %1756

46:                                               ; preds = %11, %1724
  %47 = phi ptr [ %1, %11 ], [ %1726, %1724 ]
  %48 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !82
  %50 = icmp eq ptr %49, null
  br i1 %50, label %873, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %49, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !69
  %54 = icmp eq i32 %53, 18
  br i1 %54, label %55, label %868

55:                                               ; preds = %51
  %56 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %47, i64 0, i32 5
  %57 = load i32, ptr %56, align 4, !tbaa !69
  switch i32 %57, label %868 [
    i32 7, label %58
    i32 8, label %91
    i32 10, label %124
    i32 11, label %157
    i32 13, label %195
  ]

58:                                               ; preds = %55
  %59 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %49, i64 0, i32 6
  %60 = load double, ptr %59, align 8, !tbaa !72
  %61 = fcmp une double %60, 0.000000e+00
  br i1 %61, label %62, label %1724

62:                                               ; preds = %58
  %63 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef %60)
  %64 = load ptr, ptr %0, align 8, !tbaa !34
  %65 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !67
  %67 = load i32, ptr %23, align 8, !tbaa !66
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %62
  %70 = add i32 %67, 256
  %71 = tail call i32 @llvm.umin.i32(i32 %70, i32 1048575)
  store i32 %71, ptr %23, align 8, !tbaa !66
  %72 = load ptr, ptr %64, align 8, !tbaa !68
  %73 = shl nuw nsw i32 %71, 2
  %74 = zext nneg i32 %73 to i64
  %75 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %72, i64 noundef %74, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %76 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %75, ptr %76, align 8, !tbaa !68
  br label %77

77:                                               ; preds = %69, %62
  %78 = shl i32 %63, 12
  %79 = or disjoint i32 %78, 581
  %80 = load ptr, ptr %0, align 8, !tbaa !34
  %81 = load ptr, ptr %80, align 8, !tbaa !68
  %82 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %80, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !67
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %81, i64 %84
  store i32 %79, ptr %85, align 4, !tbaa !40
  %86 = load i32, ptr %82, align 8, !tbaa !67
  %87 = add i32 %86, 1
  store i32 %87, ptr %82, align 8, !tbaa !67
  %88 = icmp ugt i32 %87, 1048574
  br i1 %88, label %89, label %1724

89:                                               ; preds = %77
  %90 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

91:                                               ; preds = %55
  %92 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %49, i64 0, i32 6
  %93 = load double, ptr %92, align 8, !tbaa !72
  %94 = fcmp une double %93, 0.000000e+00
  br i1 %94, label %95, label %1724

95:                                               ; preds = %91
  %96 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef %93)
  %97 = load ptr, ptr %0, align 8, !tbaa !34
  %98 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %97, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !67
  %100 = load i32, ptr %22, align 8, !tbaa !66
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %95
  %103 = add i32 %100, 256
  %104 = tail call i32 @llvm.umin.i32(i32 %103, i32 1048575)
  store i32 %104, ptr %22, align 8, !tbaa !66
  %105 = load ptr, ptr %97, align 8, !tbaa !68
  %106 = shl nuw nsw i32 %104, 2
  %107 = zext nneg i32 %106 to i64
  %108 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %105, i64 noundef %107, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %109 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %108, ptr %109, align 8, !tbaa !68
  br label %110

110:                                              ; preds = %102, %95
  %111 = shl i32 %96, 12
  %112 = or disjoint i32 %111, 589
  %113 = load ptr, ptr %0, align 8, !tbaa !34
  %114 = load ptr, ptr %113, align 8, !tbaa !68
  %115 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %113, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !67
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, ptr %114, i64 %117
  store i32 %112, ptr %118, align 4, !tbaa !40
  %119 = load i32, ptr %115, align 8, !tbaa !67
  %120 = add i32 %119, 1
  store i32 %120, ptr %115, align 8, !tbaa !67
  %121 = icmp ugt i32 %120, 1048574
  br i1 %121, label %122, label %1724

122:                                              ; preds = %110
  %123 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

124:                                              ; preds = %55
  %125 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %49, i64 0, i32 6
  %126 = load double, ptr %125, align 8, !tbaa !72
  %127 = fcmp une double %126, 1.000000e+00
  br i1 %127, label %128, label %1724

128:                                              ; preds = %124
  %129 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef %126)
  %130 = load ptr, ptr %0, align 8, !tbaa !34
  %131 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !67
  %133 = load i32, ptr %21, align 8, !tbaa !66
  %134 = icmp ult i32 %132, %133
  br i1 %134, label %143, label %135

135:                                              ; preds = %128
  %136 = add i32 %133, 256
  %137 = tail call i32 @llvm.umin.i32(i32 %136, i32 1048575)
  store i32 %137, ptr %21, align 8, !tbaa !66
  %138 = load ptr, ptr %130, align 8, !tbaa !68
  %139 = shl nuw nsw i32 %137, 2
  %140 = zext nneg i32 %139 to i64
  %141 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %138, i64 noundef %140, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %142 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %141, ptr %142, align 8, !tbaa !68
  br label %143

143:                                              ; preds = %135, %128
  %144 = shl i32 %129, 12
  %145 = or disjoint i32 %144, 597
  %146 = load ptr, ptr %0, align 8, !tbaa !34
  %147 = load ptr, ptr %146, align 8, !tbaa !68
  %148 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %146, i64 0, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !67
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, ptr %147, i64 %150
  store i32 %145, ptr %151, align 4, !tbaa !40
  %152 = load i32, ptr %148, align 8, !tbaa !67
  %153 = add i32 %152, 1
  store i32 %153, ptr %148, align 8, !tbaa !67
  %154 = icmp ugt i32 %153, 1048574
  br i1 %154, label %155, label %1724

155:                                              ; preds = %143
  %156 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

157:                                              ; preds = %55
  %158 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %49, i64 0, i32 6
  %159 = load double, ptr %158, align 8, !tbaa !72
  %160 = fcmp oeq double %159, 0.000000e+00
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.6)
  br label %1724

163:                                              ; preds = %157
  %164 = fcmp une double %159, 1.000000e+00
  br i1 %164, label %165, label %1724

165:                                              ; preds = %163
  %166 = fdiv double 1.000000e+00, %159
  %167 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef %166)
  %168 = load ptr, ptr %0, align 8, !tbaa !34
  %169 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !67
  %171 = load i32, ptr %20, align 8, !tbaa !66
  %172 = icmp ult i32 %170, %171
  br i1 %172, label %181, label %173

173:                                              ; preds = %165
  %174 = add i32 %171, 256
  %175 = tail call i32 @llvm.umin.i32(i32 %174, i32 1048575)
  store i32 %175, ptr %20, align 8, !tbaa !66
  %176 = load ptr, ptr %168, align 8, !tbaa !68
  %177 = shl nuw nsw i32 %175, 2
  %178 = zext nneg i32 %177 to i64
  %179 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %176, i64 noundef %178, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %180 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %179, ptr %180, align 8, !tbaa !68
  br label %181

181:                                              ; preds = %173, %165
  %182 = shl i32 %167, 12
  %183 = or disjoint i32 %182, 597
  %184 = load ptr, ptr %0, align 8, !tbaa !34
  %185 = load ptr, ptr %184, align 8, !tbaa !68
  %186 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %184, i64 0, i32 1
  %187 = load i32, ptr %186, align 8, !tbaa !67
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32, ptr %185, i64 %188
  store i32 %183, ptr %189, align 4, !tbaa !40
  %190 = load i32, ptr %186, align 8, !tbaa !67
  %191 = add i32 %190, 1
  store i32 %191, ptr %186, align 8, !tbaa !67
  %192 = icmp ugt i32 %191, 1048574
  br i1 %192, label %193, label %1724

193:                                              ; preds = %181
  %194 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

195:                                              ; preds = %55
  %196 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %49, i64 0, i32 6
  %197 = load double, ptr %196, align 8, !tbaa !72
  %198 = fcmp oeq double %197, 0.000000e+00
  br i1 %198, label %199, label %230

199:                                              ; preds = %195
  %200 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 1.000000e+00)
  %201 = load ptr, ptr %0, align 8, !tbaa !34
  %202 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %201, i64 0, i32 1
  %203 = load i32, ptr %202, align 8, !tbaa !67
  %204 = load i32, ptr %19, align 8, !tbaa !66
  %205 = icmp ult i32 %203, %204
  br i1 %205, label %214, label %206

206:                                              ; preds = %199
  %207 = add i32 %204, 256
  %208 = tail call i32 @llvm.umin.i32(i32 %207, i32 1048575)
  store i32 %208, ptr %19, align 8, !tbaa !66
  %209 = load ptr, ptr %201, align 8, !tbaa !68
  %210 = shl nuw nsw i32 %208, 2
  %211 = zext nneg i32 %210 to i64
  %212 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %209, i64 noundef %211, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %213 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %212, ptr %213, align 8, !tbaa !68
  br label %214

214:                                              ; preds = %206, %199
  %215 = shl i32 %200, 12
  %216 = or disjoint i32 %215, 621
  %217 = load ptr, ptr %0, align 8, !tbaa !34
  %218 = load ptr, ptr %217, align 8, !tbaa !68
  %219 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %217, i64 0, i32 1
  %220 = load i32, ptr %219, align 8, !tbaa !67
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i32, ptr %218, i64 %221
  store i32 %216, ptr %222, align 4, !tbaa !40
  %223 = load i32, ptr %219, align 8, !tbaa !67
  %224 = add i32 %223, 1
  store i32 %224, ptr %219, align 8, !tbaa !67
  %225 = icmp ugt i32 %224, 1048574
  br i1 %225, label %226, label %228

226:                                              ; preds = %214
  %227 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %228

228:                                              ; preds = %214, %226
  %229 = tail call noundef i32 (i32, ptr, ...) @_ZN3pov7WarningEjPKcz(i32 noundef 0, ptr noundef nonnull @.str.7)
  br label %1724

230:                                              ; preds = %195
  %231 = fcmp oeq double %197, 2.000000e+00
  br i1 %231, label %232, label %258

232:                                              ; preds = %230
  %233 = load ptr, ptr %0, align 8, !tbaa !34
  %234 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %233, i64 0, i32 1
  %235 = load i32, ptr %234, align 8, !tbaa !67
  %236 = load i32, ptr %18, align 8, !tbaa !66
  %237 = icmp ult i32 %235, %236
  br i1 %237, label %246, label %238

238:                                              ; preds = %232
  %239 = add i32 %236, 256
  %240 = tail call i32 @llvm.umin.i32(i32 %239, i32 1048575)
  store i32 %240, ptr %18, align 8, !tbaa !66
  %241 = load ptr, ptr %233, align 8, !tbaa !68
  %242 = shl nuw nsw i32 %240, 2
  %243 = zext nneg i32 %242 to i64
  %244 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %241, i64 noundef %243, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %245 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %244, ptr %245, align 8, !tbaa !68
  br label %246

246:                                              ; preds = %238, %232
  %247 = load ptr, ptr %0, align 8, !tbaa !34
  %248 = load ptr, ptr %247, align 8, !tbaa !68
  %249 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %247, i64 0, i32 1
  %250 = load i32, ptr %249, align 8, !tbaa !67
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i32, ptr %248, i64 %251
  store i32 173, ptr %252, align 4, !tbaa !40
  %253 = load i32, ptr %249, align 8, !tbaa !67
  %254 = add i32 %253, 1
  store i32 %254, ptr %249, align 8, !tbaa !67
  %255 = icmp ugt i32 %254, 1048574
  br i1 %255, label %256, label %1724

256:                                              ; preds = %246
  %257 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

258:                                              ; preds = %230
  %259 = fcmp oeq double %197, 3.000000e+00
  br i1 %259, label %260, label %338

260:                                              ; preds = %258
  %261 = load ptr, ptr %0, align 8, !tbaa !34
  %262 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %261, i64 0, i32 1
  %263 = load i32, ptr %262, align 8, !tbaa !67
  %264 = load i32, ptr %17, align 8, !tbaa !66
  %265 = icmp ult i32 %263, %264
  br i1 %265, label %274, label %266

266:                                              ; preds = %260
  %267 = add i32 %264, 256
  %268 = tail call i32 @llvm.umin.i32(i32 %267, i32 1048575)
  store i32 %268, ptr %17, align 8, !tbaa !66
  %269 = load ptr, ptr %261, align 8, !tbaa !68
  %270 = shl nuw nsw i32 %268, 2
  %271 = zext nneg i32 %270 to i64
  %272 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %269, i64 noundef %271, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %273 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %272, ptr %273, align 8, !tbaa !68
  br label %274

274:                                              ; preds = %266, %260
  %275 = load ptr, ptr %0, align 8, !tbaa !34
  %276 = load ptr, ptr %275, align 8, !tbaa !68
  %277 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %275, i64 0, i32 1
  %278 = load i32, ptr %277, align 8, !tbaa !67
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i32, ptr %276, i64 %279
  store i32 360, ptr %280, align 4, !tbaa !40
  %281 = load i32, ptr %277, align 8, !tbaa !67
  %282 = add i32 %281, 1
  store i32 %282, ptr %277, align 8, !tbaa !67
  %283 = icmp ugt i32 %282, 1048574
  br i1 %283, label %284, label %286

284:                                              ; preds = %274
  %285 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %286

286:                                              ; preds = %274, %284
  %287 = load ptr, ptr %0, align 8, !tbaa !34
  %288 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %287, i64 0, i32 1
  %289 = load i32, ptr %288, align 8, !tbaa !67
  %290 = load i32, ptr %17, align 8, !tbaa !66
  %291 = icmp ult i32 %289, %290
  br i1 %291, label %300, label %292

292:                                              ; preds = %286
  %293 = add i32 %290, 256
  %294 = tail call i32 @llvm.umin.i32(i32 %293, i32 1048575)
  store i32 %294, ptr %17, align 8, !tbaa !66
  %295 = load ptr, ptr %287, align 8, !tbaa !68
  %296 = shl nuw nsw i32 %294, 2
  %297 = zext nneg i32 %296 to i64
  %298 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %295, i64 noundef %297, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %299 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %298, ptr %299, align 8, !tbaa !68
  br label %300

300:                                              ; preds = %292, %286
  %301 = load ptr, ptr %0, align 8, !tbaa !34
  %302 = load ptr, ptr %301, align 8, !tbaa !68
  %303 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %301, i64 0, i32 1
  %304 = load i32, ptr %303, align 8, !tbaa !67
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds i32, ptr %302, i64 %305
  store i32 133, ptr %306, align 4, !tbaa !40
  %307 = load i32, ptr %303, align 8, !tbaa !67
  %308 = add i32 %307, 1
  store i32 %308, ptr %303, align 8, !tbaa !67
  %309 = icmp ugt i32 %308, 1048574
  br i1 %309, label %310, label %312

310:                                              ; preds = %300
  %311 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %312

312:                                              ; preds = %300, %310
  %313 = load ptr, ptr %0, align 8, !tbaa !34
  %314 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %313, i64 0, i32 1
  %315 = load i32, ptr %314, align 8, !tbaa !67
  %316 = load i32, ptr %17, align 8, !tbaa !66
  %317 = icmp ult i32 %315, %316
  br i1 %317, label %326, label %318

318:                                              ; preds = %312
  %319 = add i32 %316, 256
  %320 = tail call i32 @llvm.umin.i32(i32 %319, i32 1048575)
  store i32 %320, ptr %17, align 8, !tbaa !66
  %321 = load ptr, ptr %313, align 8, !tbaa !68
  %322 = shl nuw nsw i32 %320, 2
  %323 = zext nneg i32 %322 to i64
  %324 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %321, i64 noundef %323, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %325 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %324, ptr %325, align 8, !tbaa !68
  br label %326

326:                                              ; preds = %318, %312
  %327 = load ptr, ptr %0, align 8, !tbaa !34
  %328 = load ptr, ptr %327, align 8, !tbaa !68
  %329 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %327, i64 0, i32 1
  %330 = load i32, ptr %329, align 8, !tbaa !67
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds i32, ptr %328, i64 %331
  store i32 133, ptr %332, align 4, !tbaa !40
  %333 = load i32, ptr %329, align 8, !tbaa !67
  %334 = add i32 %333, 1
  store i32 %334, ptr %329, align 8, !tbaa !67
  %335 = icmp ugt i32 %334, 1048574
  br i1 %335, label %336, label %1724

336:                                              ; preds = %326
  %337 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

338:                                              ; preds = %258
  %339 = fcmp oeq double %197, 4.000000e+00
  br i1 %339, label %340, label %392

340:                                              ; preds = %338
  %341 = load ptr, ptr %0, align 8, !tbaa !34
  %342 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %341, i64 0, i32 1
  %343 = load i32, ptr %342, align 8, !tbaa !67
  %344 = load i32, ptr %16, align 8, !tbaa !66
  %345 = icmp ult i32 %343, %344
  br i1 %345, label %354, label %346

346:                                              ; preds = %340
  %347 = add i32 %344, 256
  %348 = tail call i32 @llvm.umin.i32(i32 %347, i32 1048575)
  store i32 %348, ptr %16, align 8, !tbaa !66
  %349 = load ptr, ptr %341, align 8, !tbaa !68
  %350 = shl nuw nsw i32 %348, 2
  %351 = zext nneg i32 %350 to i64
  %352 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %349, i64 noundef %351, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %353 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %352, ptr %353, align 8, !tbaa !68
  br label %354

354:                                              ; preds = %346, %340
  %355 = load ptr, ptr %0, align 8, !tbaa !34
  %356 = load ptr, ptr %355, align 8, !tbaa !68
  %357 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %355, i64 0, i32 1
  %358 = load i32, ptr %357, align 8, !tbaa !67
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds i32, ptr %356, i64 %359
  store i32 173, ptr %360, align 4, !tbaa !40
  %361 = load i32, ptr %357, align 8, !tbaa !67
  %362 = add i32 %361, 1
  store i32 %362, ptr %357, align 8, !tbaa !67
  %363 = icmp ugt i32 %362, 1048574
  br i1 %363, label %364, label %366

364:                                              ; preds = %354
  %365 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %366

366:                                              ; preds = %354, %364
  %367 = load ptr, ptr %0, align 8, !tbaa !34
  %368 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %367, i64 0, i32 1
  %369 = load i32, ptr %368, align 8, !tbaa !67
  %370 = load i32, ptr %16, align 8, !tbaa !66
  %371 = icmp ult i32 %369, %370
  br i1 %371, label %380, label %372

372:                                              ; preds = %366
  %373 = add i32 %370, 256
  %374 = tail call i32 @llvm.umin.i32(i32 %373, i32 1048575)
  store i32 %374, ptr %16, align 8, !tbaa !66
  %375 = load ptr, ptr %367, align 8, !tbaa !68
  %376 = shl nuw nsw i32 %374, 2
  %377 = zext nneg i32 %376 to i64
  %378 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %375, i64 noundef %377, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %379 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %378, ptr %379, align 8, !tbaa !68
  br label %380

380:                                              ; preds = %372, %366
  %381 = load ptr, ptr %0, align 8, !tbaa !34
  %382 = load ptr, ptr %381, align 8, !tbaa !68
  %383 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %381, i64 0, i32 1
  %384 = load i32, ptr %383, align 8, !tbaa !67
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds i32, ptr %382, i64 %385
  store i32 173, ptr %386, align 4, !tbaa !40
  %387 = load i32, ptr %383, align 8, !tbaa !67
  %388 = add i32 %387, 1
  store i32 %388, ptr %383, align 8, !tbaa !67
  %389 = icmp ugt i32 %388, 1048574
  br i1 %389, label %390, label %1724

390:                                              ; preds = %380
  %391 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

392:                                              ; preds = %338
  %393 = fcmp oeq double %197, 5.000000e+00
  br i1 %393, label %394, label %498

394:                                              ; preds = %392
  %395 = load ptr, ptr %0, align 8, !tbaa !34
  %396 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %395, i64 0, i32 1
  %397 = load i32, ptr %396, align 8, !tbaa !67
  %398 = load i32, ptr %15, align 8, !tbaa !66
  %399 = icmp ult i32 %397, %398
  br i1 %399, label %408, label %400

400:                                              ; preds = %394
  %401 = add i32 %398, 256
  %402 = tail call i32 @llvm.umin.i32(i32 %401, i32 1048575)
  store i32 %402, ptr %15, align 8, !tbaa !66
  %403 = load ptr, ptr %395, align 8, !tbaa !68
  %404 = shl nuw nsw i32 %402, 2
  %405 = zext nneg i32 %404 to i64
  %406 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %403, i64 noundef %405, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %407 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %406, ptr %407, align 8, !tbaa !68
  br label %408

408:                                              ; preds = %400, %394
  %409 = load ptr, ptr %0, align 8, !tbaa !34
  %410 = load ptr, ptr %409, align 8, !tbaa !68
  %411 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %409, i64 0, i32 1
  %412 = load i32, ptr %411, align 8, !tbaa !67
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds i32, ptr %410, i64 %413
  store i32 360, ptr %414, align 4, !tbaa !40
  %415 = load i32, ptr %411, align 8, !tbaa !67
  %416 = add i32 %415, 1
  store i32 %416, ptr %411, align 8, !tbaa !67
  %417 = icmp ugt i32 %416, 1048574
  br i1 %417, label %418, label %420

418:                                              ; preds = %408
  %419 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %420

420:                                              ; preds = %408, %418
  %421 = load ptr, ptr %0, align 8, !tbaa !34
  %422 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %421, i64 0, i32 1
  %423 = load i32, ptr %422, align 8, !tbaa !67
  %424 = load i32, ptr %15, align 8, !tbaa !66
  %425 = icmp ult i32 %423, %424
  br i1 %425, label %434, label %426

426:                                              ; preds = %420
  %427 = add i32 %424, 256
  %428 = tail call i32 @llvm.umin.i32(i32 %427, i32 1048575)
  store i32 %428, ptr %15, align 8, !tbaa !66
  %429 = load ptr, ptr %421, align 8, !tbaa !68
  %430 = shl nuw nsw i32 %428, 2
  %431 = zext nneg i32 %430 to i64
  %432 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %429, i64 noundef %431, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %433 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %432, ptr %433, align 8, !tbaa !68
  br label %434

434:                                              ; preds = %426, %420
  %435 = load ptr, ptr %0, align 8, !tbaa !34
  %436 = load ptr, ptr %435, align 8, !tbaa !68
  %437 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %435, i64 0, i32 1
  %438 = load i32, ptr %437, align 8, !tbaa !67
  %439 = zext i32 %438 to i64
  %440 = getelementptr inbounds i32, ptr %436, i64 %439
  store i32 173, ptr %440, align 4, !tbaa !40
  %441 = load i32, ptr %437, align 8, !tbaa !67
  %442 = add i32 %441, 1
  store i32 %442, ptr %437, align 8, !tbaa !67
  %443 = icmp ugt i32 %442, 1048574
  br i1 %443, label %444, label %446

444:                                              ; preds = %434
  %445 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %446

446:                                              ; preds = %434, %444
  %447 = load ptr, ptr %0, align 8, !tbaa !34
  %448 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %447, i64 0, i32 1
  %449 = load i32, ptr %448, align 8, !tbaa !67
  %450 = load i32, ptr %15, align 8, !tbaa !66
  %451 = icmp ult i32 %449, %450
  br i1 %451, label %460, label %452

452:                                              ; preds = %446
  %453 = add i32 %450, 256
  %454 = tail call i32 @llvm.umin.i32(i32 %453, i32 1048575)
  store i32 %454, ptr %15, align 8, !tbaa !66
  %455 = load ptr, ptr %447, align 8, !tbaa !68
  %456 = shl nuw nsw i32 %454, 2
  %457 = zext nneg i32 %456 to i64
  %458 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %455, i64 noundef %457, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %459 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %458, ptr %459, align 8, !tbaa !68
  br label %460

460:                                              ; preds = %452, %446
  %461 = load ptr, ptr %0, align 8, !tbaa !34
  %462 = load ptr, ptr %461, align 8, !tbaa !68
  %463 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %461, i64 0, i32 1
  %464 = load i32, ptr %463, align 8, !tbaa !67
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds i32, ptr %462, i64 %465
  store i32 173, ptr %466, align 4, !tbaa !40
  %467 = load i32, ptr %463, align 8, !tbaa !67
  %468 = add i32 %467, 1
  store i32 %468, ptr %463, align 8, !tbaa !67
  %469 = icmp ugt i32 %468, 1048574
  br i1 %469, label %470, label %472

470:                                              ; preds = %460
  %471 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %472

472:                                              ; preds = %460, %470
  %473 = load ptr, ptr %0, align 8, !tbaa !34
  %474 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %473, i64 0, i32 1
  %475 = load i32, ptr %474, align 8, !tbaa !67
  %476 = load i32, ptr %15, align 8, !tbaa !66
  %477 = icmp ult i32 %475, %476
  br i1 %477, label %486, label %478

478:                                              ; preds = %472
  %479 = add i32 %476, 256
  %480 = tail call i32 @llvm.umin.i32(i32 %479, i32 1048575)
  store i32 %480, ptr %15, align 8, !tbaa !66
  %481 = load ptr, ptr %473, align 8, !tbaa !68
  %482 = shl nuw nsw i32 %480, 2
  %483 = zext nneg i32 %482 to i64
  %484 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %481, i64 noundef %483, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %485 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %484, ptr %485, align 8, !tbaa !68
  br label %486

486:                                              ; preds = %478, %472
  %487 = load ptr, ptr %0, align 8, !tbaa !34
  %488 = load ptr, ptr %487, align 8, !tbaa !68
  %489 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %487, i64 0, i32 1
  %490 = load i32, ptr %489, align 8, !tbaa !67
  %491 = zext i32 %490 to i64
  %492 = getelementptr inbounds i32, ptr %488, i64 %491
  store i32 133, ptr %492, align 4, !tbaa !40
  %493 = load i32, ptr %489, align 8, !tbaa !67
  %494 = add i32 %493, 1
  store i32 %494, ptr %489, align 8, !tbaa !67
  %495 = icmp ugt i32 %494, 1048574
  br i1 %495, label %496, label %1724

496:                                              ; preds = %486
  %497 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

498:                                              ; preds = %392
  %499 = fcmp oeq double %197, 6.000000e+00
  br i1 %499, label %500, label %630

500:                                              ; preds = %498
  %501 = load ptr, ptr %0, align 8, !tbaa !34
  %502 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %501, i64 0, i32 1
  %503 = load i32, ptr %502, align 8, !tbaa !67
  %504 = load i32, ptr %14, align 8, !tbaa !66
  %505 = icmp ult i32 %503, %504
  br i1 %505, label %514, label %506

506:                                              ; preds = %500
  %507 = add i32 %504, 256
  %508 = tail call i32 @llvm.umin.i32(i32 %507, i32 1048575)
  store i32 %508, ptr %14, align 8, !tbaa !66
  %509 = load ptr, ptr %501, align 8, !tbaa !68
  %510 = shl nuw nsw i32 %508, 2
  %511 = zext nneg i32 %510 to i64
  %512 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %509, i64 noundef %511, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %513 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %512, ptr %513, align 8, !tbaa !68
  br label %514

514:                                              ; preds = %506, %500
  %515 = load ptr, ptr %0, align 8, !tbaa !34
  %516 = load ptr, ptr %515, align 8, !tbaa !68
  %517 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %515, i64 0, i32 1
  %518 = load i32, ptr %517, align 8, !tbaa !67
  %519 = zext i32 %518 to i64
  %520 = getelementptr inbounds i32, ptr %516, i64 %519
  store i32 360, ptr %520, align 4, !tbaa !40
  %521 = load i32, ptr %517, align 8, !tbaa !67
  %522 = add i32 %521, 1
  store i32 %522, ptr %517, align 8, !tbaa !67
  %523 = icmp ugt i32 %522, 1048574
  br i1 %523, label %524, label %526

524:                                              ; preds = %514
  %525 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %526

526:                                              ; preds = %514, %524
  %527 = load ptr, ptr %0, align 8, !tbaa !34
  %528 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %527, i64 0, i32 1
  %529 = load i32, ptr %528, align 8, !tbaa !67
  %530 = load i32, ptr %14, align 8, !tbaa !66
  %531 = icmp ult i32 %529, %530
  br i1 %531, label %540, label %532

532:                                              ; preds = %526
  %533 = add i32 %530, 256
  %534 = tail call i32 @llvm.umin.i32(i32 %533, i32 1048575)
  store i32 %534, ptr %14, align 8, !tbaa !66
  %535 = load ptr, ptr %527, align 8, !tbaa !68
  %536 = shl nuw nsw i32 %534, 2
  %537 = zext nneg i32 %536 to i64
  %538 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %535, i64 noundef %537, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %539 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %538, ptr %539, align 8, !tbaa !68
  br label %540

540:                                              ; preds = %532, %526
  %541 = load ptr, ptr %0, align 8, !tbaa !34
  %542 = load ptr, ptr %541, align 8, !tbaa !68
  %543 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %541, i64 0, i32 1
  %544 = load i32, ptr %543, align 8, !tbaa !67
  %545 = zext i32 %544 to i64
  %546 = getelementptr inbounds i32, ptr %542, i64 %545
  store i32 173, ptr %546, align 4, !tbaa !40
  %547 = load i32, ptr %543, align 8, !tbaa !67
  %548 = add i32 %547, 1
  store i32 %548, ptr %543, align 8, !tbaa !67
  %549 = icmp ugt i32 %548, 1048574
  br i1 %549, label %550, label %552

550:                                              ; preds = %540
  %551 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %552

552:                                              ; preds = %540, %550
  %553 = load ptr, ptr %0, align 8, !tbaa !34
  %554 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %553, i64 0, i32 1
  %555 = load i32, ptr %554, align 8, !tbaa !67
  %556 = load i32, ptr %14, align 8, !tbaa !66
  %557 = icmp ult i32 %555, %556
  br i1 %557, label %566, label %558

558:                                              ; preds = %552
  %559 = add i32 %556, 256
  %560 = tail call i32 @llvm.umin.i32(i32 %559, i32 1048575)
  store i32 %560, ptr %14, align 8, !tbaa !66
  %561 = load ptr, ptr %553, align 8, !tbaa !68
  %562 = shl nuw nsw i32 %560, 2
  %563 = zext nneg i32 %562 to i64
  %564 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %561, i64 noundef %563, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %565 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %564, ptr %565, align 8, !tbaa !68
  br label %566

566:                                              ; preds = %558, %552
  %567 = load ptr, ptr %0, align 8, !tbaa !34
  %568 = load ptr, ptr %567, align 8, !tbaa !68
  %569 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %567, i64 0, i32 1
  %570 = load i32, ptr %569, align 8, !tbaa !67
  %571 = zext i32 %570 to i64
  %572 = getelementptr inbounds i32, ptr %568, i64 %571
  store i32 173, ptr %572, align 4, !tbaa !40
  %573 = load i32, ptr %569, align 8, !tbaa !67
  %574 = add i32 %573, 1
  store i32 %574, ptr %569, align 8, !tbaa !67
  %575 = icmp ugt i32 %574, 1048574
  br i1 %575, label %576, label %578

576:                                              ; preds = %566
  %577 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %578

578:                                              ; preds = %566, %576
  %579 = load ptr, ptr %0, align 8, !tbaa !34
  %580 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %579, i64 0, i32 1
  %581 = load i32, ptr %580, align 8, !tbaa !67
  %582 = load i32, ptr %14, align 8, !tbaa !66
  %583 = icmp ult i32 %581, %582
  br i1 %583, label %592, label %584

584:                                              ; preds = %578
  %585 = add i32 %582, 256
  %586 = tail call i32 @llvm.umin.i32(i32 %585, i32 1048575)
  store i32 %586, ptr %14, align 8, !tbaa !66
  %587 = load ptr, ptr %579, align 8, !tbaa !68
  %588 = shl nuw nsw i32 %586, 2
  %589 = zext nneg i32 %588 to i64
  %590 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %587, i64 noundef %589, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %591 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %590, ptr %591, align 8, !tbaa !68
  br label %592

592:                                              ; preds = %584, %578
  %593 = load ptr, ptr %0, align 8, !tbaa !34
  %594 = load ptr, ptr %593, align 8, !tbaa !68
  %595 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %593, i64 0, i32 1
  %596 = load i32, ptr %595, align 8, !tbaa !67
  %597 = zext i32 %596 to i64
  %598 = getelementptr inbounds i32, ptr %594, i64 %597
  store i32 128, ptr %598, align 4, !tbaa !40
  %599 = load i32, ptr %595, align 8, !tbaa !67
  %600 = add i32 %599, 1
  store i32 %600, ptr %595, align 8, !tbaa !67
  %601 = icmp ugt i32 %600, 1048574
  br i1 %601, label %602, label %604

602:                                              ; preds = %592
  %603 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %604

604:                                              ; preds = %592, %602
  %605 = load ptr, ptr %0, align 8, !tbaa !34
  %606 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %605, i64 0, i32 1
  %607 = load i32, ptr %606, align 8, !tbaa !67
  %608 = load i32, ptr %14, align 8, !tbaa !66
  %609 = icmp ult i32 %607, %608
  br i1 %609, label %618, label %610

610:                                              ; preds = %604
  %611 = add i32 %608, 256
  %612 = tail call i32 @llvm.umin.i32(i32 %611, i32 1048575)
  store i32 %612, ptr %14, align 8, !tbaa !66
  %613 = load ptr, ptr %605, align 8, !tbaa !68
  %614 = shl nuw nsw i32 %612, 2
  %615 = zext nneg i32 %614 to i64
  %616 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %613, i64 noundef %615, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %617 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %616, ptr %617, align 8, !tbaa !68
  br label %618

618:                                              ; preds = %610, %604
  %619 = load ptr, ptr %0, align 8, !tbaa !34
  %620 = load ptr, ptr %619, align 8, !tbaa !68
  %621 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %619, i64 0, i32 1
  %622 = load i32, ptr %621, align 8, !tbaa !67
  %623 = zext i32 %622 to i64
  %624 = getelementptr inbounds i32, ptr %620, i64 %623
  store i32 133, ptr %624, align 4, !tbaa !40
  %625 = load i32, ptr %621, align 8, !tbaa !67
  %626 = add i32 %625, 1
  store i32 %626, ptr %621, align 8, !tbaa !67
  %627 = icmp ugt i32 %626, 1048574
  br i1 %627, label %628, label %1724

628:                                              ; preds = %618
  %629 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

630:                                              ; preds = %498
  %631 = fcmp oeq double %197, 7.000000e+00
  br i1 %631, label %632, label %788

632:                                              ; preds = %630
  %633 = load ptr, ptr %0, align 8, !tbaa !34
  %634 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %633, i64 0, i32 1
  %635 = load i32, ptr %634, align 8, !tbaa !67
  %636 = load i32, ptr %13, align 8, !tbaa !66
  %637 = icmp ult i32 %635, %636
  br i1 %637, label %646, label %638

638:                                              ; preds = %632
  %639 = add i32 %636, 256
  %640 = tail call i32 @llvm.umin.i32(i32 %639, i32 1048575)
  store i32 %640, ptr %13, align 8, !tbaa !66
  %641 = load ptr, ptr %633, align 8, !tbaa !68
  %642 = shl nuw nsw i32 %640, 2
  %643 = zext nneg i32 %642 to i64
  %644 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %641, i64 noundef %643, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %645 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %644, ptr %645, align 8, !tbaa !68
  br label %646

646:                                              ; preds = %638, %632
  %647 = load ptr, ptr %0, align 8, !tbaa !34
  %648 = load ptr, ptr %647, align 8, !tbaa !68
  %649 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %647, i64 0, i32 1
  %650 = load i32, ptr %649, align 8, !tbaa !67
  %651 = zext i32 %650 to i64
  %652 = getelementptr inbounds i32, ptr %648, i64 %651
  store i32 360, ptr %652, align 4, !tbaa !40
  %653 = load i32, ptr %649, align 8, !tbaa !67
  %654 = add i32 %653, 1
  store i32 %654, ptr %649, align 8, !tbaa !67
  %655 = icmp ugt i32 %654, 1048574
  br i1 %655, label %656, label %658

656:                                              ; preds = %646
  %657 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %658

658:                                              ; preds = %646, %656
  %659 = load ptr, ptr %0, align 8, !tbaa !34
  %660 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %659, i64 0, i32 1
  %661 = load i32, ptr %660, align 8, !tbaa !67
  %662 = load i32, ptr %13, align 8, !tbaa !66
  %663 = icmp ult i32 %661, %662
  br i1 %663, label %672, label %664

664:                                              ; preds = %658
  %665 = add i32 %662, 256
  %666 = tail call i32 @llvm.umin.i32(i32 %665, i32 1048575)
  store i32 %666, ptr %13, align 8, !tbaa !66
  %667 = load ptr, ptr %659, align 8, !tbaa !68
  %668 = shl nuw nsw i32 %666, 2
  %669 = zext nneg i32 %668 to i64
  %670 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %667, i64 noundef %669, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %671 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %670, ptr %671, align 8, !tbaa !68
  br label %672

672:                                              ; preds = %664, %658
  %673 = load ptr, ptr %0, align 8, !tbaa !34
  %674 = load ptr, ptr %673, align 8, !tbaa !68
  %675 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %673, i64 0, i32 1
  %676 = load i32, ptr %675, align 8, !tbaa !67
  %677 = zext i32 %676 to i64
  %678 = getelementptr inbounds i32, ptr %674, i64 %677
  store i32 173, ptr %678, align 4, !tbaa !40
  %679 = load i32, ptr %675, align 8, !tbaa !67
  %680 = add i32 %679, 1
  store i32 %680, ptr %675, align 8, !tbaa !67
  %681 = icmp ugt i32 %680, 1048574
  br i1 %681, label %682, label %684

682:                                              ; preds = %672
  %683 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %684

684:                                              ; preds = %672, %682
  %685 = load ptr, ptr %0, align 8, !tbaa !34
  %686 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %685, i64 0, i32 1
  %687 = load i32, ptr %686, align 8, !tbaa !67
  %688 = load i32, ptr %13, align 8, !tbaa !66
  %689 = icmp ult i32 %687, %688
  br i1 %689, label %698, label %690

690:                                              ; preds = %684
  %691 = add i32 %688, 256
  %692 = tail call i32 @llvm.umin.i32(i32 %691, i32 1048575)
  store i32 %692, ptr %13, align 8, !tbaa !66
  %693 = load ptr, ptr %685, align 8, !tbaa !68
  %694 = shl nuw nsw i32 %692, 2
  %695 = zext nneg i32 %694 to i64
  %696 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %693, i64 noundef %695, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %697 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %696, ptr %697, align 8, !tbaa !68
  br label %698

698:                                              ; preds = %690, %684
  %699 = load ptr, ptr %0, align 8, !tbaa !34
  %700 = load ptr, ptr %699, align 8, !tbaa !68
  %701 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %699, i64 0, i32 1
  %702 = load i32, ptr %701, align 8, !tbaa !67
  %703 = zext i32 %702 to i64
  %704 = getelementptr inbounds i32, ptr %700, i64 %703
  store i32 173, ptr %704, align 4, !tbaa !40
  %705 = load i32, ptr %701, align 8, !tbaa !67
  %706 = add i32 %705, 1
  store i32 %706, ptr %701, align 8, !tbaa !67
  %707 = icmp ugt i32 %706, 1048574
  br i1 %707, label %708, label %710

708:                                              ; preds = %698
  %709 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %710

710:                                              ; preds = %698, %708
  %711 = load ptr, ptr %0, align 8, !tbaa !34
  %712 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %711, i64 0, i32 1
  %713 = load i32, ptr %712, align 8, !tbaa !67
  %714 = load i32, ptr %13, align 8, !tbaa !66
  %715 = icmp ult i32 %713, %714
  br i1 %715, label %724, label %716

716:                                              ; preds = %710
  %717 = add i32 %714, 256
  %718 = tail call i32 @llvm.umin.i32(i32 %717, i32 1048575)
  store i32 %718, ptr %13, align 8, !tbaa !66
  %719 = load ptr, ptr %711, align 8, !tbaa !68
  %720 = shl nuw nsw i32 %718, 2
  %721 = zext nneg i32 %720 to i64
  %722 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %719, i64 noundef %721, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %723 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %722, ptr %723, align 8, !tbaa !68
  br label %724

724:                                              ; preds = %716, %710
  %725 = load ptr, ptr %0, align 8, !tbaa !34
  %726 = load ptr, ptr %725, align 8, !tbaa !68
  %727 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %725, i64 0, i32 1
  %728 = load i32, ptr %727, align 8, !tbaa !67
  %729 = zext i32 %728 to i64
  %730 = getelementptr inbounds i32, ptr %726, i64 %729
  store i32 133, ptr %730, align 4, !tbaa !40
  %731 = load i32, ptr %727, align 8, !tbaa !67
  %732 = add i32 %731, 1
  store i32 %732, ptr %727, align 8, !tbaa !67
  %733 = icmp ugt i32 %732, 1048574
  br i1 %733, label %734, label %736

734:                                              ; preds = %724
  %735 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %736

736:                                              ; preds = %724, %734
  %737 = load ptr, ptr %0, align 8, !tbaa !34
  %738 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %737, i64 0, i32 1
  %739 = load i32, ptr %738, align 8, !tbaa !67
  %740 = load i32, ptr %13, align 8, !tbaa !66
  %741 = icmp ult i32 %739, %740
  br i1 %741, label %750, label %742

742:                                              ; preds = %736
  %743 = add i32 %740, 256
  %744 = tail call i32 @llvm.umin.i32(i32 %743, i32 1048575)
  store i32 %744, ptr %13, align 8, !tbaa !66
  %745 = load ptr, ptr %737, align 8, !tbaa !68
  %746 = shl nuw nsw i32 %744, 2
  %747 = zext nneg i32 %746 to i64
  %748 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %745, i64 noundef %747, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %749 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %748, ptr %749, align 8, !tbaa !68
  br label %750

750:                                              ; preds = %742, %736
  %751 = load ptr, ptr %0, align 8, !tbaa !34
  %752 = load ptr, ptr %751, align 8, !tbaa !68
  %753 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %751, i64 0, i32 1
  %754 = load i32, ptr %753, align 8, !tbaa !67
  %755 = zext i32 %754 to i64
  %756 = getelementptr inbounds i32, ptr %752, i64 %755
  store i32 128, ptr %756, align 4, !tbaa !40
  %757 = load i32, ptr %753, align 8, !tbaa !67
  %758 = add i32 %757, 1
  store i32 %758, ptr %753, align 8, !tbaa !67
  %759 = icmp ugt i32 %758, 1048574
  br i1 %759, label %760, label %762

760:                                              ; preds = %750
  %761 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %762

762:                                              ; preds = %750, %760
  %763 = load ptr, ptr %0, align 8, !tbaa !34
  %764 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %763, i64 0, i32 1
  %765 = load i32, ptr %764, align 8, !tbaa !67
  %766 = load i32, ptr %13, align 8, !tbaa !66
  %767 = icmp ult i32 %765, %766
  br i1 %767, label %776, label %768

768:                                              ; preds = %762
  %769 = add i32 %766, 256
  %770 = tail call i32 @llvm.umin.i32(i32 %769, i32 1048575)
  store i32 %770, ptr %13, align 8, !tbaa !66
  %771 = load ptr, ptr %763, align 8, !tbaa !68
  %772 = shl nuw nsw i32 %770, 2
  %773 = zext nneg i32 %772 to i64
  %774 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %771, i64 noundef %773, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %775 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %774, ptr %775, align 8, !tbaa !68
  br label %776

776:                                              ; preds = %768, %762
  %777 = load ptr, ptr %0, align 8, !tbaa !34
  %778 = load ptr, ptr %777, align 8, !tbaa !68
  %779 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %777, i64 0, i32 1
  %780 = load i32, ptr %779, align 8, !tbaa !67
  %781 = zext i32 %780 to i64
  %782 = getelementptr inbounds i32, ptr %778, i64 %781
  store i32 133, ptr %782, align 4, !tbaa !40
  %783 = load i32, ptr %779, align 8, !tbaa !67
  %784 = add i32 %783, 1
  store i32 %784, ptr %779, align 8, !tbaa !67
  %785 = icmp ugt i32 %784, 1048574
  br i1 %785, label %786, label %1724

786:                                              ; preds = %776
  %787 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

788:                                              ; preds = %630
  %789 = fcmp oeq double %197, 8.000000e+00
  br i1 %789, label %790, label %868

790:                                              ; preds = %788
  %791 = load ptr, ptr %0, align 8, !tbaa !34
  %792 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %791, i64 0, i32 1
  %793 = load i32, ptr %792, align 8, !tbaa !67
  %794 = load i32, ptr %12, align 8, !tbaa !66
  %795 = icmp ult i32 %793, %794
  br i1 %795, label %804, label %796

796:                                              ; preds = %790
  %797 = add i32 %794, 256
  %798 = tail call i32 @llvm.umin.i32(i32 %797, i32 1048575)
  store i32 %798, ptr %12, align 8, !tbaa !66
  %799 = load ptr, ptr %791, align 8, !tbaa !68
  %800 = shl nuw nsw i32 %798, 2
  %801 = zext nneg i32 %800 to i64
  %802 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %799, i64 noundef %801, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %803 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %802, ptr %803, align 8, !tbaa !68
  br label %804

804:                                              ; preds = %796, %790
  %805 = load ptr, ptr %0, align 8, !tbaa !34
  %806 = load ptr, ptr %805, align 8, !tbaa !68
  %807 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %805, i64 0, i32 1
  %808 = load i32, ptr %807, align 8, !tbaa !67
  %809 = zext i32 %808 to i64
  %810 = getelementptr inbounds i32, ptr %806, i64 %809
  store i32 173, ptr %810, align 4, !tbaa !40
  %811 = load i32, ptr %807, align 8, !tbaa !67
  %812 = add i32 %811, 1
  store i32 %812, ptr %807, align 8, !tbaa !67
  %813 = icmp ugt i32 %812, 1048574
  br i1 %813, label %814, label %816

814:                                              ; preds = %804
  %815 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %816

816:                                              ; preds = %804, %814
  %817 = load ptr, ptr %0, align 8, !tbaa !34
  %818 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %817, i64 0, i32 1
  %819 = load i32, ptr %818, align 8, !tbaa !67
  %820 = load i32, ptr %12, align 8, !tbaa !66
  %821 = icmp ult i32 %819, %820
  br i1 %821, label %830, label %822

822:                                              ; preds = %816
  %823 = add i32 %820, 256
  %824 = tail call i32 @llvm.umin.i32(i32 %823, i32 1048575)
  store i32 %824, ptr %12, align 8, !tbaa !66
  %825 = load ptr, ptr %817, align 8, !tbaa !68
  %826 = shl nuw nsw i32 %824, 2
  %827 = zext nneg i32 %826 to i64
  %828 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %825, i64 noundef %827, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %829 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %828, ptr %829, align 8, !tbaa !68
  br label %830

830:                                              ; preds = %822, %816
  %831 = load ptr, ptr %0, align 8, !tbaa !34
  %832 = load ptr, ptr %831, align 8, !tbaa !68
  %833 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %831, i64 0, i32 1
  %834 = load i32, ptr %833, align 8, !tbaa !67
  %835 = zext i32 %834 to i64
  %836 = getelementptr inbounds i32, ptr %832, i64 %835
  store i32 173, ptr %836, align 4, !tbaa !40
  %837 = load i32, ptr %833, align 8, !tbaa !67
  %838 = add i32 %837, 1
  store i32 %838, ptr %833, align 8, !tbaa !67
  %839 = icmp ugt i32 %838, 1048574
  br i1 %839, label %840, label %842

840:                                              ; preds = %830
  %841 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %842

842:                                              ; preds = %830, %840
  %843 = load ptr, ptr %0, align 8, !tbaa !34
  %844 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %843, i64 0, i32 1
  %845 = load i32, ptr %844, align 8, !tbaa !67
  %846 = load i32, ptr %12, align 8, !tbaa !66
  %847 = icmp ult i32 %845, %846
  br i1 %847, label %856, label %848

848:                                              ; preds = %842
  %849 = add i32 %846, 256
  %850 = tail call i32 @llvm.umin.i32(i32 %849, i32 1048575)
  store i32 %850, ptr %12, align 8, !tbaa !66
  %851 = load ptr, ptr %843, align 8, !tbaa !68
  %852 = shl nuw nsw i32 %850, 2
  %853 = zext nneg i32 %852 to i64
  %854 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %851, i64 noundef %853, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %855 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %854, ptr %855, align 8, !tbaa !68
  br label %856

856:                                              ; preds = %848, %842
  %857 = load ptr, ptr %0, align 8, !tbaa !34
  %858 = load ptr, ptr %857, align 8, !tbaa !68
  %859 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %857, i64 0, i32 1
  %860 = load i32, ptr %859, align 8, !tbaa !67
  %861 = zext i32 %860 to i64
  %862 = getelementptr inbounds i32, ptr %858, i64 %861
  store i32 173, ptr %862, align 4, !tbaa !40
  %863 = load i32, ptr %859, align 8, !tbaa !67
  %864 = add i32 %863, 1
  store i32 %864, ptr %859, align 8, !tbaa !67
  %865 = icmp ugt i32 %864, 1048574
  br i1 %865, label %866, label %1724

866:                                              ; preds = %856
  %867 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

868:                                              ; preds = %55, %788, %51
  %869 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %47, i64 0, i32 5
  %870 = load i32, ptr %869, align 4, !tbaa !69
  %871 = icmp eq i32 %870, 22
  br i1 %871, label %873, label %872

872:                                              ; preds = %868
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %49)
  br label %873

873:                                              ; preds = %868, %872, %46
  %874 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %47, i64 0, i32 5
  %875 = load i32, ptr %874, align 4, !tbaa !69
  switch i32 %875, label %1724 [
    i32 18, label %876
    i32 19, label %906
    i32 16, label %1698
    i32 21, label %908
    i32 22, label %910
    i32 1, label %918
    i32 2, label %970
    i32 3, label %1022
    i32 4, label %1074
    i32 5, label %1126
    i32 6, label %1178
    i32 7, label %1230
    i32 8, label %1256
    i32 9, label %1282
    i32 10, label %1386
    i32 11, label %1412
    i32 12, label %1464
    i32 13, label %1542
    i32 14, label %1672
  ]

876:                                              ; preds = %873
  %877 = load double, ptr %41, align 8, !tbaa !72
  %878 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef %877)
  %879 = load ptr, ptr %0, align 8, !tbaa !34
  %880 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %879, i64 0, i32 1
  %881 = load i32, ptr %880, align 8, !tbaa !67
  %882 = load i32, ptr %42, align 8, !tbaa !66
  %883 = icmp ult i32 %881, %882
  br i1 %883, label %892, label %884

884:                                              ; preds = %876
  %885 = add i32 %882, 256
  %886 = tail call i32 @llvm.umin.i32(i32 %885, i32 1048575)
  store i32 %886, ptr %42, align 8, !tbaa !66
  %887 = load ptr, ptr %879, align 8, !tbaa !68
  %888 = shl nuw nsw i32 %886, 2
  %889 = zext nneg i32 %888 to i64
  %890 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %887, i64 noundef %889, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %891 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %890, ptr %891, align 8, !tbaa !68
  br label %892

892:                                              ; preds = %884, %876
  %893 = shl i32 %878, 12
  %894 = or disjoint i32 %893, 616
  %895 = load ptr, ptr %0, align 8, !tbaa !34
  %896 = load ptr, ptr %895, align 8, !tbaa !68
  %897 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %895, i64 0, i32 1
  %898 = load i32, ptr %897, align 8, !tbaa !67
  %899 = zext i32 %898 to i64
  %900 = getelementptr inbounds i32, ptr %896, i64 %899
  store i32 %894, ptr %900, align 4, !tbaa !40
  %901 = load i32, ptr %897, align 8, !tbaa !67
  %902 = add i32 %901, 1
  store i32 %902, ptr %897, align 8, !tbaa !67
  %903 = icmp ugt i32 %902, 1048574
  br i1 %903, label %904, label %1724

904:                                              ; preds = %892
  %905 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

906:                                              ; preds = %873
  %907 = load ptr, ptr %40, align 8, !tbaa !72
  tail call void @_ZN3pov6FNCode16compile_variableEPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %907)
  br label %1724

908:                                              ; preds = %873
  %909 = load ptr, ptr %38, align 8, !tbaa !72
  tail call void @_ZN3pov6FNCode14compile_memberEPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %909)
  br label %1724

910:                                              ; preds = %873
  %911 = load ptr, ptr %48, align 8, !tbaa !82
  %912 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %47, i64 0, i32 6
  %913 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %47, i64 0, i32 6, i32 0, i32 2
  %914 = load i32, ptr %913, align 4, !tbaa !72
  %915 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %47, i64 0, i32 6, i32 0, i32 1
  %916 = load i32, ptr %915, align 8, !tbaa !72
  %917 = load ptr, ptr %912, align 8, !tbaa !72
  tail call void @_ZN3pov6FNCode12compile_callEPNS_14ExprNodeStructEjiPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %911, i32 noundef %914, i32 noundef %916, ptr noundef %917)
  br label %1724

918:                                              ; preds = %873
  %919 = load ptr, ptr %0, align 8, !tbaa !34
  %920 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %919, i64 0, i32 1
  %921 = load i32, ptr %920, align 8, !tbaa !67
  %922 = load i32, ptr %37, align 8, !tbaa !66
  %923 = icmp ult i32 %921, %922
  br i1 %923, label %932, label %924

924:                                              ; preds = %918
  %925 = add i32 %922, 256
  %926 = tail call i32 @llvm.umin.i32(i32 %925, i32 1048575)
  store i32 %926, ptr %37, align 8, !tbaa !66
  %927 = load ptr, ptr %919, align 8, !tbaa !68
  %928 = shl nuw nsw i32 %926, 2
  %929 = zext nneg i32 %928 to i64
  %930 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %927, i64 noundef %929, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %931 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %930, ptr %931, align 8, !tbaa !68
  br label %932

932:                                              ; preds = %924, %918
  %933 = load ptr, ptr %0, align 8, !tbaa !34
  %934 = load ptr, ptr %933, align 8, !tbaa !68
  %935 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %933, i64 0, i32 1
  %936 = load i32, ptr %935, align 8, !tbaa !67
  %937 = zext i32 %936 to i64
  %938 = getelementptr inbounds i32, ptr %934, i64 %937
  store i32 389, ptr %938, align 4, !tbaa !40
  %939 = load i32, ptr %935, align 8, !tbaa !67
  %940 = add i32 %939, 1
  store i32 %940, ptr %935, align 8, !tbaa !67
  %941 = icmp ugt i32 %940, 1048574
  br i1 %941, label %942, label %944

942:                                              ; preds = %932
  %943 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %944

944:                                              ; preds = %932, %942
  %945 = load ptr, ptr %0, align 8, !tbaa !34
  %946 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %945, i64 0, i32 1
  %947 = load i32, ptr %946, align 8, !tbaa !67
  %948 = load i32, ptr %37, align 8, !tbaa !66
  %949 = icmp ult i32 %947, %948
  br i1 %949, label %958, label %950

950:                                              ; preds = %944
  %951 = add i32 %948, 256
  %952 = tail call i32 @llvm.umin.i32(i32 %951, i32 1048575)
  store i32 %952, ptr %37, align 8, !tbaa !66
  %953 = load ptr, ptr %945, align 8, !tbaa !68
  %954 = shl nuw nsw i32 %952, 2
  %955 = zext nneg i32 %954 to i64
  %956 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %953, i64 noundef %955, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %957 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %956, ptr %957, align 8, !tbaa !68
  br label %958

958:                                              ; preds = %950, %944
  %959 = load ptr, ptr %0, align 8, !tbaa !34
  %960 = load ptr, ptr %959, align 8, !tbaa !68
  %961 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %959, i64 0, i32 1
  %962 = load i32, ptr %961, align 8, !tbaa !67
  %963 = zext i32 %962 to i64
  %964 = getelementptr inbounds i32, ptr %960, i64 %963
  store i32 645, ptr %964, align 4, !tbaa !40
  %965 = load i32, ptr %961, align 8, !tbaa !67
  %966 = add i32 %965, 1
  store i32 %966, ptr %961, align 8, !tbaa !67
  %967 = icmp ugt i32 %966, 1048574
  br i1 %967, label %968, label %1724

968:                                              ; preds = %958
  %969 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

970:                                              ; preds = %873
  %971 = load ptr, ptr %0, align 8, !tbaa !34
  %972 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %971, i64 0, i32 1
  %973 = load i32, ptr %972, align 8, !tbaa !67
  %974 = load i32, ptr %36, align 8, !tbaa !66
  %975 = icmp ult i32 %973, %974
  br i1 %975, label %984, label %976

976:                                              ; preds = %970
  %977 = add i32 %974, 256
  %978 = tail call i32 @llvm.umin.i32(i32 %977, i32 1048575)
  store i32 %978, ptr %36, align 8, !tbaa !66
  %979 = load ptr, ptr %971, align 8, !tbaa !68
  %980 = shl nuw nsw i32 %978, 2
  %981 = zext nneg i32 %980 to i64
  %982 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %979, i64 noundef %981, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %983 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %982, ptr %983, align 8, !tbaa !68
  br label %984

984:                                              ; preds = %976, %970
  %985 = load ptr, ptr %0, align 8, !tbaa !34
  %986 = load ptr, ptr %985, align 8, !tbaa !68
  %987 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %985, i64 0, i32 1
  %988 = load i32, ptr %987, align 8, !tbaa !67
  %989 = zext i32 %988 to i64
  %990 = getelementptr inbounds i32, ptr %986, i64 %989
  store i32 389, ptr %990, align 4, !tbaa !40
  %991 = load i32, ptr %987, align 8, !tbaa !67
  %992 = add i32 %991, 1
  store i32 %992, ptr %987, align 8, !tbaa !67
  %993 = icmp ugt i32 %992, 1048574
  br i1 %993, label %994, label %996

994:                                              ; preds = %984
  %995 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %996

996:                                              ; preds = %984, %994
  %997 = load ptr, ptr %0, align 8, !tbaa !34
  %998 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %997, i64 0, i32 1
  %999 = load i32, ptr %998, align 8, !tbaa !67
  %1000 = load i32, ptr %36, align 8, !tbaa !66
  %1001 = icmp ult i32 %999, %1000
  br i1 %1001, label %1010, label %1002

1002:                                             ; preds = %996
  %1003 = add i32 %1000, 256
  %1004 = tail call i32 @llvm.umin.i32(i32 %1003, i32 1048575)
  store i32 %1004, ptr %36, align 8, !tbaa !66
  %1005 = load ptr, ptr %997, align 8, !tbaa !68
  %1006 = shl nuw nsw i32 %1004, 2
  %1007 = zext nneg i32 %1006 to i64
  %1008 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1005, i64 noundef %1007, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1009 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1008, ptr %1009, align 8, !tbaa !68
  br label %1010

1010:                                             ; preds = %1002, %996
  %1011 = load ptr, ptr %0, align 8, !tbaa !34
  %1012 = load ptr, ptr %1011, align 8, !tbaa !68
  %1013 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1011, i64 0, i32 1
  %1014 = load i32, ptr %1013, align 8, !tbaa !67
  %1015 = zext i32 %1014 to i64
  %1016 = getelementptr inbounds i32, ptr %1012, i64 %1015
  store i32 653, ptr %1016, align 4, !tbaa !40
  %1017 = load i32, ptr %1013, align 8, !tbaa !67
  %1018 = add i32 %1017, 1
  store i32 %1018, ptr %1013, align 8, !tbaa !67
  %1019 = icmp ugt i32 %1018, 1048574
  br i1 %1019, label %1020, label %1724

1020:                                             ; preds = %1010
  %1021 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1022:                                             ; preds = %873
  %1023 = load ptr, ptr %0, align 8, !tbaa !34
  %1024 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1023, i64 0, i32 1
  %1025 = load i32, ptr %1024, align 8, !tbaa !67
  %1026 = load i32, ptr %35, align 8, !tbaa !66
  %1027 = icmp ult i32 %1025, %1026
  br i1 %1027, label %1036, label %1028

1028:                                             ; preds = %1022
  %1029 = add i32 %1026, 256
  %1030 = tail call i32 @llvm.umin.i32(i32 %1029, i32 1048575)
  store i32 %1030, ptr %35, align 8, !tbaa !66
  %1031 = load ptr, ptr %1023, align 8, !tbaa !68
  %1032 = shl nuw nsw i32 %1030, 2
  %1033 = zext nneg i32 %1032 to i64
  %1034 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1031, i64 noundef %1033, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1035 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1034, ptr %1035, align 8, !tbaa !68
  br label %1036

1036:                                             ; preds = %1028, %1022
  %1037 = load ptr, ptr %0, align 8, !tbaa !34
  %1038 = load ptr, ptr %1037, align 8, !tbaa !68
  %1039 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1037, i64 0, i32 1
  %1040 = load i32, ptr %1039, align 8, !tbaa !67
  %1041 = zext i32 %1040 to i64
  %1042 = getelementptr inbounds i32, ptr %1038, i64 %1041
  store i32 389, ptr %1042, align 4, !tbaa !40
  %1043 = load i32, ptr %1039, align 8, !tbaa !67
  %1044 = add i32 %1043, 1
  store i32 %1044, ptr %1039, align 8, !tbaa !67
  %1045 = icmp ugt i32 %1044, 1048574
  br i1 %1045, label %1046, label %1048

1046:                                             ; preds = %1036
  %1047 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1048

1048:                                             ; preds = %1036, %1046
  %1049 = load ptr, ptr %0, align 8, !tbaa !34
  %1050 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1049, i64 0, i32 1
  %1051 = load i32, ptr %1050, align 8, !tbaa !67
  %1052 = load i32, ptr %35, align 8, !tbaa !66
  %1053 = icmp ult i32 %1051, %1052
  br i1 %1053, label %1062, label %1054

1054:                                             ; preds = %1048
  %1055 = add i32 %1052, 256
  %1056 = tail call i32 @llvm.umin.i32(i32 %1055, i32 1048575)
  store i32 %1056, ptr %35, align 8, !tbaa !66
  %1057 = load ptr, ptr %1049, align 8, !tbaa !68
  %1058 = shl nuw nsw i32 %1056, 2
  %1059 = zext nneg i32 %1058 to i64
  %1060 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1057, i64 noundef %1059, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1061 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1060, ptr %1061, align 8, !tbaa !68
  br label %1062

1062:                                             ; preds = %1054, %1048
  %1063 = load ptr, ptr %0, align 8, !tbaa !34
  %1064 = load ptr, ptr %1063, align 8, !tbaa !68
  %1065 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1063, i64 0, i32 1
  %1066 = load i32, ptr %1065, align 8, !tbaa !67
  %1067 = zext i32 %1066 to i64
  %1068 = getelementptr inbounds i32, ptr %1064, i64 %1067
  store i32 661, ptr %1068, align 4, !tbaa !40
  %1069 = load i32, ptr %1065, align 8, !tbaa !67
  %1070 = add i32 %1069, 1
  store i32 %1070, ptr %1065, align 8, !tbaa !67
  %1071 = icmp ugt i32 %1070, 1048574
  br i1 %1071, label %1072, label %1724

1072:                                             ; preds = %1062
  %1073 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1074:                                             ; preds = %873
  %1075 = load ptr, ptr %0, align 8, !tbaa !34
  %1076 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1075, i64 0, i32 1
  %1077 = load i32, ptr %1076, align 8, !tbaa !67
  %1078 = load i32, ptr %34, align 8, !tbaa !66
  %1079 = icmp ult i32 %1077, %1078
  br i1 %1079, label %1088, label %1080

1080:                                             ; preds = %1074
  %1081 = add i32 %1078, 256
  %1082 = tail call i32 @llvm.umin.i32(i32 %1081, i32 1048575)
  store i32 %1082, ptr %34, align 8, !tbaa !66
  %1083 = load ptr, ptr %1075, align 8, !tbaa !68
  %1084 = shl nuw nsw i32 %1082, 2
  %1085 = zext nneg i32 %1084 to i64
  %1086 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1083, i64 noundef %1085, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1087 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1086, ptr %1087, align 8, !tbaa !68
  br label %1088

1088:                                             ; preds = %1080, %1074
  %1089 = load ptr, ptr %0, align 8, !tbaa !34
  %1090 = load ptr, ptr %1089, align 8, !tbaa !68
  %1091 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1089, i64 0, i32 1
  %1092 = load i32, ptr %1091, align 8, !tbaa !67
  %1093 = zext i32 %1092 to i64
  %1094 = getelementptr inbounds i32, ptr %1090, i64 %1093
  store i32 389, ptr %1094, align 4, !tbaa !40
  %1095 = load i32, ptr %1091, align 8, !tbaa !67
  %1096 = add i32 %1095, 1
  store i32 %1096, ptr %1091, align 8, !tbaa !67
  %1097 = icmp ugt i32 %1096, 1048574
  br i1 %1097, label %1098, label %1100

1098:                                             ; preds = %1088
  %1099 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1100

1100:                                             ; preds = %1088, %1098
  %1101 = load ptr, ptr %0, align 8, !tbaa !34
  %1102 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1101, i64 0, i32 1
  %1103 = load i32, ptr %1102, align 8, !tbaa !67
  %1104 = load i32, ptr %34, align 8, !tbaa !66
  %1105 = icmp ult i32 %1103, %1104
  br i1 %1105, label %1114, label %1106

1106:                                             ; preds = %1100
  %1107 = add i32 %1104, 256
  %1108 = tail call i32 @llvm.umin.i32(i32 %1107, i32 1048575)
  store i32 %1108, ptr %34, align 8, !tbaa !66
  %1109 = load ptr, ptr %1101, align 8, !tbaa !68
  %1110 = shl nuw nsw i32 %1108, 2
  %1111 = zext nneg i32 %1110 to i64
  %1112 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1109, i64 noundef %1111, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1113 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1112, ptr %1113, align 8, !tbaa !68
  br label %1114

1114:                                             ; preds = %1106, %1100
  %1115 = load ptr, ptr %0, align 8, !tbaa !34
  %1116 = load ptr, ptr %1115, align 8, !tbaa !68
  %1117 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1115, i64 0, i32 1
  %1118 = load i32, ptr %1117, align 8, !tbaa !67
  %1119 = zext i32 %1118 to i64
  %1120 = getelementptr inbounds i32, ptr %1116, i64 %1119
  store i32 669, ptr %1120, align 4, !tbaa !40
  %1121 = load i32, ptr %1117, align 8, !tbaa !67
  %1122 = add i32 %1121, 1
  store i32 %1122, ptr %1117, align 8, !tbaa !67
  %1123 = icmp ugt i32 %1122, 1048574
  br i1 %1123, label %1124, label %1724

1124:                                             ; preds = %1114
  %1125 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1126:                                             ; preds = %873
  %1127 = load ptr, ptr %0, align 8, !tbaa !34
  %1128 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1127, i64 0, i32 1
  %1129 = load i32, ptr %1128, align 8, !tbaa !67
  %1130 = load i32, ptr %33, align 8, !tbaa !66
  %1131 = icmp ult i32 %1129, %1130
  br i1 %1131, label %1140, label %1132

1132:                                             ; preds = %1126
  %1133 = add i32 %1130, 256
  %1134 = tail call i32 @llvm.umin.i32(i32 %1133, i32 1048575)
  store i32 %1134, ptr %33, align 8, !tbaa !66
  %1135 = load ptr, ptr %1127, align 8, !tbaa !68
  %1136 = shl nuw nsw i32 %1134, 2
  %1137 = zext nneg i32 %1136 to i64
  %1138 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1135, i64 noundef %1137, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1139 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1138, ptr %1139, align 8, !tbaa !68
  br label %1140

1140:                                             ; preds = %1132, %1126
  %1141 = load ptr, ptr %0, align 8, !tbaa !34
  %1142 = load ptr, ptr %1141, align 8, !tbaa !68
  %1143 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1141, i64 0, i32 1
  %1144 = load i32, ptr %1143, align 8, !tbaa !67
  %1145 = zext i32 %1144 to i64
  %1146 = getelementptr inbounds i32, ptr %1142, i64 %1145
  store i32 389, ptr %1146, align 4, !tbaa !40
  %1147 = load i32, ptr %1143, align 8, !tbaa !67
  %1148 = add i32 %1147, 1
  store i32 %1148, ptr %1143, align 8, !tbaa !67
  %1149 = icmp ugt i32 %1148, 1048574
  br i1 %1149, label %1150, label %1152

1150:                                             ; preds = %1140
  %1151 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1152

1152:                                             ; preds = %1140, %1150
  %1153 = load ptr, ptr %0, align 8, !tbaa !34
  %1154 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1153, i64 0, i32 1
  %1155 = load i32, ptr %1154, align 8, !tbaa !67
  %1156 = load i32, ptr %33, align 8, !tbaa !66
  %1157 = icmp ult i32 %1155, %1156
  br i1 %1157, label %1166, label %1158

1158:                                             ; preds = %1152
  %1159 = add i32 %1156, 256
  %1160 = tail call i32 @llvm.umin.i32(i32 %1159, i32 1048575)
  store i32 %1160, ptr %33, align 8, !tbaa !66
  %1161 = load ptr, ptr %1153, align 8, !tbaa !68
  %1162 = shl nuw nsw i32 %1160, 2
  %1163 = zext nneg i32 %1162 to i64
  %1164 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1161, i64 noundef %1163, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1165 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1164, ptr %1165, align 8, !tbaa !68
  br label %1166

1166:                                             ; preds = %1158, %1152
  %1167 = load ptr, ptr %0, align 8, !tbaa !34
  %1168 = load ptr, ptr %1167, align 8, !tbaa !68
  %1169 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1167, i64 0, i32 1
  %1170 = load i32, ptr %1169, align 8, !tbaa !67
  %1171 = zext i32 %1170 to i64
  %1172 = getelementptr inbounds i32, ptr %1168, i64 %1171
  store i32 677, ptr %1172, align 4, !tbaa !40
  %1173 = load i32, ptr %1169, align 8, !tbaa !67
  %1174 = add i32 %1173, 1
  store i32 %1174, ptr %1169, align 8, !tbaa !67
  %1175 = icmp ugt i32 %1174, 1048574
  br i1 %1175, label %1176, label %1724

1176:                                             ; preds = %1166
  %1177 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1178:                                             ; preds = %873
  %1179 = load ptr, ptr %0, align 8, !tbaa !34
  %1180 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1179, i64 0, i32 1
  %1181 = load i32, ptr %1180, align 8, !tbaa !67
  %1182 = load i32, ptr %32, align 8, !tbaa !66
  %1183 = icmp ult i32 %1181, %1182
  br i1 %1183, label %1192, label %1184

1184:                                             ; preds = %1178
  %1185 = add i32 %1182, 256
  %1186 = tail call i32 @llvm.umin.i32(i32 %1185, i32 1048575)
  store i32 %1186, ptr %32, align 8, !tbaa !66
  %1187 = load ptr, ptr %1179, align 8, !tbaa !68
  %1188 = shl nuw nsw i32 %1186, 2
  %1189 = zext nneg i32 %1188 to i64
  %1190 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1187, i64 noundef %1189, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1191 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1190, ptr %1191, align 8, !tbaa !68
  br label %1192

1192:                                             ; preds = %1184, %1178
  %1193 = load ptr, ptr %0, align 8, !tbaa !34
  %1194 = load ptr, ptr %1193, align 8, !tbaa !68
  %1195 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1193, i64 0, i32 1
  %1196 = load i32, ptr %1195, align 8, !tbaa !67
  %1197 = zext i32 %1196 to i64
  %1198 = getelementptr inbounds i32, ptr %1194, i64 %1197
  store i32 389, ptr %1198, align 4, !tbaa !40
  %1199 = load i32, ptr %1195, align 8, !tbaa !67
  %1200 = add i32 %1199, 1
  store i32 %1200, ptr %1195, align 8, !tbaa !67
  %1201 = icmp ugt i32 %1200, 1048574
  br i1 %1201, label %1202, label %1204

1202:                                             ; preds = %1192
  %1203 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1204

1204:                                             ; preds = %1192, %1202
  %1205 = load ptr, ptr %0, align 8, !tbaa !34
  %1206 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1205, i64 0, i32 1
  %1207 = load i32, ptr %1206, align 8, !tbaa !67
  %1208 = load i32, ptr %32, align 8, !tbaa !66
  %1209 = icmp ult i32 %1207, %1208
  br i1 %1209, label %1218, label %1210

1210:                                             ; preds = %1204
  %1211 = add i32 %1208, 256
  %1212 = tail call i32 @llvm.umin.i32(i32 %1211, i32 1048575)
  store i32 %1212, ptr %32, align 8, !tbaa !66
  %1213 = load ptr, ptr %1205, align 8, !tbaa !68
  %1214 = shl nuw nsw i32 %1212, 2
  %1215 = zext nneg i32 %1214 to i64
  %1216 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1213, i64 noundef %1215, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1217 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1216, ptr %1217, align 8, !tbaa !68
  br label %1218

1218:                                             ; preds = %1210, %1204
  %1219 = load ptr, ptr %0, align 8, !tbaa !34
  %1220 = load ptr, ptr %1219, align 8, !tbaa !68
  %1221 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1219, i64 0, i32 1
  %1222 = load i32, ptr %1221, align 8, !tbaa !67
  %1223 = zext i32 %1222 to i64
  %1224 = getelementptr inbounds i32, ptr %1220, i64 %1223
  store i32 685, ptr %1224, align 4, !tbaa !40
  %1225 = load i32, ptr %1221, align 8, !tbaa !67
  %1226 = add i32 %1225, 1
  store i32 %1226, ptr %1221, align 8, !tbaa !67
  %1227 = icmp ugt i32 %1226, 1048574
  br i1 %1227, label %1228, label %1724

1228:                                             ; preds = %1218
  %1229 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1230:                                             ; preds = %873
  %1231 = load ptr, ptr %0, align 8, !tbaa !34
  %1232 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1231, i64 0, i32 1
  %1233 = load i32, ptr %1232, align 8, !tbaa !67
  %1234 = load i32, ptr %31, align 8, !tbaa !66
  %1235 = icmp ult i32 %1233, %1234
  br i1 %1235, label %1244, label %1236

1236:                                             ; preds = %1230
  %1237 = add i32 %1234, 256
  %1238 = tail call i32 @llvm.umin.i32(i32 %1237, i32 1048575)
  store i32 %1238, ptr %31, align 8, !tbaa !66
  %1239 = load ptr, ptr %1231, align 8, !tbaa !68
  %1240 = shl nuw nsw i32 %1238, 2
  %1241 = zext nneg i32 %1240 to i64
  %1242 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1239, i64 noundef %1241, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1243 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1242, ptr %1243, align 8, !tbaa !68
  br label %1244

1244:                                             ; preds = %1236, %1230
  %1245 = load ptr, ptr %0, align 8, !tbaa !34
  %1246 = load ptr, ptr %1245, align 8, !tbaa !68
  %1247 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1245, i64 0, i32 1
  %1248 = load i32, ptr %1247, align 8, !tbaa !67
  %1249 = zext i32 %1248 to i64
  %1250 = getelementptr inbounds i32, ptr %1246, i64 %1249
  store i32 5, ptr %1250, align 4, !tbaa !40
  %1251 = load i32, ptr %1247, align 8, !tbaa !67
  %1252 = add i32 %1251, 1
  store i32 %1252, ptr %1247, align 8, !tbaa !67
  %1253 = icmp ugt i32 %1252, 1048574
  br i1 %1253, label %1254, label %1724

1254:                                             ; preds = %1244
  %1255 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1256:                                             ; preds = %873
  %1257 = load ptr, ptr %0, align 8, !tbaa !34
  %1258 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1257, i64 0, i32 1
  %1259 = load i32, ptr %1258, align 8, !tbaa !67
  %1260 = load i32, ptr %30, align 8, !tbaa !66
  %1261 = icmp ult i32 %1259, %1260
  br i1 %1261, label %1270, label %1262

1262:                                             ; preds = %1256
  %1263 = add i32 %1260, 256
  %1264 = tail call i32 @llvm.umin.i32(i32 %1263, i32 1048575)
  store i32 %1264, ptr %30, align 8, !tbaa !66
  %1265 = load ptr, ptr %1257, align 8, !tbaa !68
  %1266 = shl nuw nsw i32 %1264, 2
  %1267 = zext nneg i32 %1266 to i64
  %1268 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1265, i64 noundef %1267, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1269 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1268, ptr %1269, align 8, !tbaa !68
  br label %1270

1270:                                             ; preds = %1262, %1256
  %1271 = load ptr, ptr %0, align 8, !tbaa !34
  %1272 = load ptr, ptr %1271, align 8, !tbaa !68
  %1273 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1271, i64 0, i32 1
  %1274 = load i32, ptr %1273, align 8, !tbaa !67
  %1275 = zext i32 %1274 to i64
  %1276 = getelementptr inbounds i32, ptr %1272, i64 %1275
  store i32 69, ptr %1276, align 4, !tbaa !40
  %1277 = load i32, ptr %1273, align 8, !tbaa !67
  %1278 = add i32 %1277, 1
  store i32 %1278, ptr %1273, align 8, !tbaa !67
  %1279 = icmp ugt i32 %1278, 1048574
  br i1 %1279, label %1280, label %1724

1280:                                             ; preds = %1270
  %1281 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1282:                                             ; preds = %873
  %1283 = load ptr, ptr %0, align 8, !tbaa !34
  %1284 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1283, i64 0, i32 1
  %1285 = load i32, ptr %1284, align 8, !tbaa !67
  %1286 = load i32, ptr %29, align 8, !tbaa !66
  %1287 = icmp ult i32 %1285, %1286
  br i1 %1287, label %1296, label %1288

1288:                                             ; preds = %1282
  %1289 = add i32 %1286, 256
  %1290 = tail call i32 @llvm.umin.i32(i32 %1289, i32 1048575)
  store i32 %1290, ptr %29, align 8, !tbaa !66
  %1291 = load ptr, ptr %1283, align 8, !tbaa !68
  %1292 = shl nuw nsw i32 %1290, 2
  %1293 = zext nneg i32 %1292 to i64
  %1294 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1291, i64 noundef %1293, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1295 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1294, ptr %1295, align 8, !tbaa !68
  br label %1296

1296:                                             ; preds = %1288, %1282
  %1297 = load ptr, ptr %0, align 8, !tbaa !34
  %1298 = load ptr, ptr %1297, align 8, !tbaa !68
  %1299 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1297, i64 0, i32 1
  %1300 = load i32, ptr %1299, align 8, !tbaa !67
  %1301 = zext i32 %1300 to i64
  %1302 = getelementptr inbounds i32, ptr %1298, i64 %1301
  store i32 701, ptr %1302, align 4, !tbaa !40
  %1303 = load i32, ptr %1299, align 8, !tbaa !67
  %1304 = add i32 %1303, 1
  store i32 %1304, ptr %1299, align 8, !tbaa !67
  %1305 = icmp ugt i32 %1304, 1048574
  br i1 %1305, label %1306, label %1308

1306:                                             ; preds = %1296
  %1307 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1308

1308:                                             ; preds = %1296, %1306
  %1309 = load ptr, ptr %0, align 8, !tbaa !34
  %1310 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1309, i64 0, i32 1
  %1311 = load i32, ptr %1310, align 8, !tbaa !67
  %1312 = load i32, ptr %29, align 8, !tbaa !66
  %1313 = icmp ult i32 %1311, %1312
  br i1 %1313, label %1322, label %1314

1314:                                             ; preds = %1308
  %1315 = add i32 %1312, 256
  %1316 = tail call i32 @llvm.umin.i32(i32 %1315, i32 1048575)
  store i32 %1316, ptr %29, align 8, !tbaa !66
  %1317 = load ptr, ptr %1309, align 8, !tbaa !68
  %1318 = shl nuw nsw i32 %1316, 2
  %1319 = zext nneg i32 %1318 to i64
  %1320 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1317, i64 noundef %1319, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1321 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1320, ptr %1321, align 8, !tbaa !68
  br label %1322

1322:                                             ; preds = %1314, %1308
  %1323 = load ptr, ptr %0, align 8, !tbaa !34
  %1324 = load ptr, ptr %1323, align 8, !tbaa !68
  %1325 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1323, i64 0, i32 1
  %1326 = load i32, ptr %1325, align 8, !tbaa !67
  %1327 = zext i32 %1326 to i64
  %1328 = getelementptr inbounds i32, ptr %1324, i64 %1327
  store i32 696, ptr %1328, align 4, !tbaa !40
  %1329 = load i32, ptr %1325, align 8, !tbaa !67
  %1330 = add i32 %1329, 1
  store i32 %1330, ptr %1325, align 8, !tbaa !67
  %1331 = icmp ugt i32 %1330, 1048574
  br i1 %1331, label %1332, label %1334

1332:                                             ; preds = %1322
  %1333 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1334

1334:                                             ; preds = %1322, %1332
  %1335 = load ptr, ptr %0, align 8, !tbaa !34
  %1336 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1335, i64 0, i32 1
  %1337 = load i32, ptr %1336, align 8, !tbaa !67
  %1338 = load i32, ptr %29, align 8, !tbaa !66
  %1339 = icmp ult i32 %1337, %1338
  br i1 %1339, label %1348, label %1340

1340:                                             ; preds = %1334
  %1341 = add i32 %1338, 256
  %1342 = tail call i32 @llvm.umin.i32(i32 %1341, i32 1048575)
  store i32 %1342, ptr %29, align 8, !tbaa !66
  %1343 = load ptr, ptr %1335, align 8, !tbaa !68
  %1344 = shl nuw nsw i32 %1342, 2
  %1345 = zext nneg i32 %1344 to i64
  %1346 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1343, i64 noundef %1345, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1347 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1346, ptr %1347, align 8, !tbaa !68
  br label %1348

1348:                                             ; preds = %1340, %1334
  %1349 = load ptr, ptr %0, align 8, !tbaa !34
  %1350 = load ptr, ptr %1349, align 8, !tbaa !68
  %1351 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1349, i64 0, i32 1
  %1352 = load i32, ptr %1351, align 8, !tbaa !67
  %1353 = zext i32 %1352 to i64
  %1354 = getelementptr inbounds i32, ptr %1350, i64 %1353
  store i32 5, ptr %1354, align 4, !tbaa !40
  %1355 = load i32, ptr %1351, align 8, !tbaa !67
  %1356 = add i32 %1355, 1
  store i32 %1356, ptr %1351, align 8, !tbaa !67
  %1357 = icmp ugt i32 %1356, 1048574
  br i1 %1357, label %1358, label %1360

1358:                                             ; preds = %1348
  %1359 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1360

1360:                                             ; preds = %1348, %1358
  %1361 = load ptr, ptr %0, align 8, !tbaa !34
  %1362 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1361, i64 0, i32 1
  %1363 = load i32, ptr %1362, align 8, !tbaa !67
  %1364 = load i32, ptr %29, align 8, !tbaa !66
  %1365 = icmp ult i32 %1363, %1364
  br i1 %1365, label %1374, label %1366

1366:                                             ; preds = %1360
  %1367 = add i32 %1364, 256
  %1368 = tail call i32 @llvm.umin.i32(i32 %1367, i32 1048575)
  store i32 %1368, ptr %29, align 8, !tbaa !66
  %1369 = load ptr, ptr %1361, align 8, !tbaa !68
  %1370 = shl nuw nsw i32 %1368, 2
  %1371 = zext nneg i32 %1370 to i64
  %1372 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1369, i64 noundef %1371, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1373 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1372, ptr %1373, align 8, !tbaa !68
  br label %1374

1374:                                             ; preds = %1366, %1360
  %1375 = load ptr, ptr %0, align 8, !tbaa !34
  %1376 = load ptr, ptr %1375, align 8, !tbaa !68
  %1377 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1375, i64 0, i32 1
  %1378 = load i32, ptr %1377, align 8, !tbaa !67
  %1379 = zext i32 %1378 to i64
  %1380 = getelementptr inbounds i32, ptr %1376, i64 %1379
  store i32 701, ptr %1380, align 4, !tbaa !40
  %1381 = load i32, ptr %1377, align 8, !tbaa !67
  %1382 = add i32 %1381, 1
  store i32 %1382, ptr %1377, align 8, !tbaa !67
  %1383 = icmp ugt i32 %1382, 1048574
  br i1 %1383, label %1384, label %1724

1384:                                             ; preds = %1374
  %1385 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1386:                                             ; preds = %873
  %1387 = load ptr, ptr %0, align 8, !tbaa !34
  %1388 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1387, i64 0, i32 1
  %1389 = load i32, ptr %1388, align 8, !tbaa !67
  %1390 = load i32, ptr %28, align 8, !tbaa !66
  %1391 = icmp ult i32 %1389, %1390
  br i1 %1391, label %1400, label %1392

1392:                                             ; preds = %1386
  %1393 = add i32 %1390, 256
  %1394 = tail call i32 @llvm.umin.i32(i32 %1393, i32 1048575)
  store i32 %1394, ptr %28, align 8, !tbaa !66
  %1395 = load ptr, ptr %1387, align 8, !tbaa !68
  %1396 = shl nuw nsw i32 %1394, 2
  %1397 = zext nneg i32 %1396 to i64
  %1398 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1395, i64 noundef %1397, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1399 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1398, ptr %1399, align 8, !tbaa !68
  br label %1400

1400:                                             ; preds = %1392, %1386
  %1401 = load ptr, ptr %0, align 8, !tbaa !34
  %1402 = load ptr, ptr %1401, align 8, !tbaa !68
  %1403 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1401, i64 0, i32 1
  %1404 = load i32, ptr %1403, align 8, !tbaa !67
  %1405 = zext i32 %1404 to i64
  %1406 = getelementptr inbounds i32, ptr %1402, i64 %1405
  store i32 133, ptr %1406, align 4, !tbaa !40
  %1407 = load i32, ptr %1403, align 8, !tbaa !67
  %1408 = add i32 %1407, 1
  store i32 %1408, ptr %1403, align 8, !tbaa !67
  %1409 = icmp ugt i32 %1408, 1048574
  br i1 %1409, label %1410, label %1724

1410:                                             ; preds = %1400
  %1411 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1412:                                             ; preds = %873
  %1413 = load ptr, ptr %0, align 8, !tbaa !34
  %1414 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1413, i64 0, i32 1
  %1415 = load i32, ptr %1414, align 8, !tbaa !67
  %1416 = load i32, ptr %27, align 8, !tbaa !66
  %1417 = icmp ult i32 %1415, %1416
  br i1 %1417, label %1426, label %1418

1418:                                             ; preds = %1412
  %1419 = add i32 %1416, 256
  %1420 = tail call i32 @llvm.umin.i32(i32 %1419, i32 1048575)
  store i32 %1420, ptr %27, align 8, !tbaa !66
  %1421 = load ptr, ptr %1413, align 8, !tbaa !68
  %1422 = shl nuw nsw i32 %1420, 2
  %1423 = zext nneg i32 %1422 to i64
  %1424 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1421, i64 noundef %1423, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1425 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1424, ptr %1425, align 8, !tbaa !68
  br label %1426

1426:                                             ; preds = %1418, %1412
  %1427 = load ptr, ptr %0, align 8, !tbaa !34
  %1428 = load ptr, ptr %1427, align 8, !tbaa !68
  %1429 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1427, i64 0, i32 1
  %1430 = load i32, ptr %1429, align 8, !tbaa !67
  %1431 = zext i32 %1430 to i64
  %1432 = getelementptr inbounds i32, ptr %1428, i64 %1431
  store i32 896, ptr %1432, align 4, !tbaa !40
  %1433 = load i32, ptr %1429, align 8, !tbaa !67
  %1434 = add i32 %1433, 1
  store i32 %1434, ptr %1429, align 8, !tbaa !67
  %1435 = icmp ugt i32 %1434, 1048574
  br i1 %1435, label %1436, label %1438

1436:                                             ; preds = %1426
  %1437 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1438

1438:                                             ; preds = %1426, %1436
  %1439 = load ptr, ptr %0, align 8, !tbaa !34
  %1440 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1439, i64 0, i32 1
  %1441 = load i32, ptr %1440, align 8, !tbaa !67
  %1442 = load i32, ptr %27, align 8, !tbaa !66
  %1443 = icmp ult i32 %1441, %1442
  br i1 %1443, label %1452, label %1444

1444:                                             ; preds = %1438
  %1445 = add i32 %1442, 256
  %1446 = tail call i32 @llvm.umin.i32(i32 %1445, i32 1048575)
  store i32 %1446, ptr %27, align 8, !tbaa !66
  %1447 = load ptr, ptr %1439, align 8, !tbaa !68
  %1448 = shl nuw nsw i32 %1446, 2
  %1449 = zext nneg i32 %1448 to i64
  %1450 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1447, i64 noundef %1449, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1451 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1450, ptr %1451, align 8, !tbaa !68
  br label %1452

1452:                                             ; preds = %1444, %1438
  %1453 = load ptr, ptr %0, align 8, !tbaa !34
  %1454 = load ptr, ptr %1453, align 8, !tbaa !68
  %1455 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1453, i64 0, i32 1
  %1456 = load i32, ptr %1455, align 8, !tbaa !67
  %1457 = zext i32 %1456 to i64
  %1458 = getelementptr inbounds i32, ptr %1454, i64 %1457
  store i32 197, ptr %1458, align 4, !tbaa !40
  %1459 = load i32, ptr %1455, align 8, !tbaa !67
  %1460 = add i32 %1459, 1
  store i32 %1460, ptr %1455, align 8, !tbaa !67
  %1461 = icmp ugt i32 %1460, 1048574
  br i1 %1461, label %1462, label %1724

1462:                                             ; preds = %1452
  %1463 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1464:                                             ; preds = %873
  %1465 = load ptr, ptr %0, align 8, !tbaa !34
  %1466 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1465, i64 0, i32 1
  %1467 = load i32, ptr %1466, align 8, !tbaa !67
  %1468 = load i32, ptr %26, align 8, !tbaa !66
  %1469 = icmp ult i32 %1467, %1468
  br i1 %1469, label %1478, label %1470

1470:                                             ; preds = %1464
  %1471 = add i32 %1468, 256
  %1472 = tail call i32 @llvm.umin.i32(i32 %1471, i32 1048575)
  store i32 %1472, ptr %26, align 8, !tbaa !66
  %1473 = load ptr, ptr %1465, align 8, !tbaa !68
  %1474 = shl nuw nsw i32 %1472, 2
  %1475 = zext nneg i32 %1474 to i64
  %1476 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1473, i64 noundef %1475, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1477 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1476, ptr %1477, align 8, !tbaa !68
  br label %1478

1478:                                             ; preds = %1470, %1464
  %1479 = load ptr, ptr %0, align 8, !tbaa !34
  %1480 = load ptr, ptr %1479, align 8, !tbaa !68
  %1481 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1479, i64 0, i32 1
  %1482 = load i32, ptr %1481, align 8, !tbaa !67
  %1483 = zext i32 %1482 to i64
  %1484 = getelementptr inbounds i32, ptr %1480, i64 %1483
  store i32 701, ptr %1484, align 4, !tbaa !40
  %1485 = load i32, ptr %1481, align 8, !tbaa !67
  %1486 = add i32 %1485, 1
  store i32 %1486, ptr %1481, align 8, !tbaa !67
  %1487 = icmp ugt i32 %1486, 1048574
  br i1 %1487, label %1488, label %1490

1488:                                             ; preds = %1478
  %1489 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1490

1490:                                             ; preds = %1478, %1488
  %1491 = load ptr, ptr %0, align 8, !tbaa !34
  %1492 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1491, i64 0, i32 1
  %1493 = load i32, ptr %1492, align 8, !tbaa !67
  %1494 = load i32, ptr %26, align 8, !tbaa !66
  %1495 = icmp ult i32 %1493, %1494
  br i1 %1495, label %1504, label %1496

1496:                                             ; preds = %1490
  %1497 = add i32 %1494, 256
  %1498 = tail call i32 @llvm.umin.i32(i32 %1497, i32 1048575)
  store i32 %1498, ptr %26, align 8, !tbaa !66
  %1499 = load ptr, ptr %1491, align 8, !tbaa !68
  %1500 = shl nuw nsw i32 %1498, 2
  %1501 = zext nneg i32 %1500 to i64
  %1502 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1499, i64 noundef %1501, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1503 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1502, ptr %1503, align 8, !tbaa !68
  br label %1504

1504:                                             ; preds = %1496, %1490
  %1505 = load ptr, ptr %0, align 8, !tbaa !34
  %1506 = load ptr, ptr %1505, align 8, !tbaa !68
  %1507 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1505, i64 0, i32 1
  %1508 = load i32, ptr %1507, align 8, !tbaa !67
  %1509 = zext i32 %1508 to i64
  %1510 = getelementptr inbounds i32, ptr %1506, i64 %1509
  store i32 696, ptr %1510, align 4, !tbaa !40
  %1511 = load i32, ptr %1507, align 8, !tbaa !67
  %1512 = add i32 %1511, 1
  store i32 %1512, ptr %1507, align 8, !tbaa !67
  %1513 = icmp ugt i32 %1512, 1048574
  br i1 %1513, label %1514, label %1516

1514:                                             ; preds = %1504
  %1515 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1516

1516:                                             ; preds = %1504, %1514
  %1517 = load ptr, ptr %0, align 8, !tbaa !34
  %1518 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1517, i64 0, i32 1
  %1519 = load i32, ptr %1518, align 8, !tbaa !67
  %1520 = load i32, ptr %26, align 8, !tbaa !66
  %1521 = icmp ult i32 %1519, %1520
  br i1 %1521, label %1530, label %1522

1522:                                             ; preds = %1516
  %1523 = add i32 %1520, 256
  %1524 = tail call i32 @llvm.umin.i32(i32 %1523, i32 1048575)
  store i32 %1524, ptr %26, align 8, !tbaa !66
  %1525 = load ptr, ptr %1517, align 8, !tbaa !68
  %1526 = shl nuw nsw i32 %1524, 2
  %1527 = zext nneg i32 %1526 to i64
  %1528 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1525, i64 noundef %1527, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1529 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1528, ptr %1529, align 8, !tbaa !68
  br label %1530

1530:                                             ; preds = %1522, %1516
  %1531 = load ptr, ptr %0, align 8, !tbaa !34
  %1532 = load ptr, ptr %1531, align 8, !tbaa !68
  %1533 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1531, i64 0, i32 1
  %1534 = load i32, ptr %1533, align 8, !tbaa !67
  %1535 = zext i32 %1534 to i64
  %1536 = getelementptr inbounds i32, ptr %1532, i64 %1535
  store i32 133, ptr %1536, align 4, !tbaa !40
  %1537 = load i32, ptr %1533, align 8, !tbaa !67
  %1538 = add i32 %1537, 1
  store i32 %1538, ptr %1533, align 8, !tbaa !67
  %1539 = icmp ugt i32 %1538, 1048574
  br i1 %1539, label %1540, label %1724

1540:                                             ; preds = %1530
  %1541 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1542:                                             ; preds = %873
  %1543 = load ptr, ptr %0, align 8, !tbaa !34
  %1544 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1543, i64 0, i32 1
  %1545 = load i32, ptr %1544, align 8, !tbaa !67
  %1546 = load i32, ptr %25, align 8, !tbaa !66
  %1547 = icmp ult i32 %1545, %1546
  br i1 %1547, label %1556, label %1548

1548:                                             ; preds = %1542
  %1549 = add i32 %1546, 256
  %1550 = tail call i32 @llvm.umin.i32(i32 %1549, i32 1048575)
  store i32 %1550, ptr %25, align 8, !tbaa !66
  %1551 = load ptr, ptr %1543, align 8, !tbaa !68
  %1552 = shl nuw nsw i32 %1550, 2
  %1553 = zext nneg i32 %1552 to i64
  %1554 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1551, i64 noundef %1553, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1555 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1554, ptr %1555, align 8, !tbaa !68
  br label %1556

1556:                                             ; preds = %1548, %1542
  %1557 = load ptr, ptr %0, align 8, !tbaa !34
  %1558 = load ptr, ptr %1557, align 8, !tbaa !68
  %1559 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1557, i64 0, i32 1
  %1560 = load i32, ptr %1559, align 8, !tbaa !67
  %1561 = zext i32 %1560 to i64
  %1562 = getelementptr inbounds i32, ptr %1558, i64 %1561
  store i32 949, ptr %1562, align 4, !tbaa !40
  %1563 = load i32, ptr %1559, align 8, !tbaa !67
  %1564 = add i32 %1563, 1
  store i32 %1564, ptr %1559, align 8, !tbaa !67
  %1565 = icmp ugt i32 %1564, 1048574
  br i1 %1565, label %1566, label %1568

1566:                                             ; preds = %1556
  %1567 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1568

1568:                                             ; preds = %1556, %1566
  %1569 = load ptr, ptr %0, align 8, !tbaa !34
  %1570 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1569, i64 0, i32 1
  %1571 = load i32, ptr %1570, align 8, !tbaa !67
  %1572 = load i32, ptr %25, align 8, !tbaa !66
  %1573 = icmp ult i32 %1571, %1572
  br i1 %1573, label %1582, label %1574

1574:                                             ; preds = %1568
  %1575 = add i32 %1572, 256
  %1576 = tail call i32 @llvm.umin.i32(i32 %1575, i32 1048575)
  store i32 %1576, ptr %25, align 8, !tbaa !66
  %1577 = load ptr, ptr %1569, align 8, !tbaa !68
  %1578 = shl nuw nsw i32 %1576, 2
  %1579 = zext nneg i32 %1578 to i64
  %1580 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1577, i64 noundef %1579, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1581 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1580, ptr %1581, align 8, !tbaa !68
  br label %1582

1582:                                             ; preds = %1574, %1568
  %1583 = load ptr, ptr %0, align 8, !tbaa !34
  %1584 = load ptr, ptr %1583, align 8, !tbaa !68
  %1585 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1583, i64 0, i32 1
  %1586 = load i32, ptr %1585, align 8, !tbaa !67
  %1587 = zext i32 %1586 to i64
  %1588 = getelementptr inbounds i32, ptr %1584, i64 %1587
  store i32 321, ptr %1588, align 4, !tbaa !40
  %1589 = load i32, ptr %1585, align 8, !tbaa !67
  %1590 = add i32 %1589, 1
  store i32 %1590, ptr %1585, align 8, !tbaa !67
  %1591 = icmp ugt i32 %1590, 1048574
  br i1 %1591, label %1592, label %1594

1592:                                             ; preds = %1582
  %1593 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1594

1594:                                             ; preds = %1582, %1592
  %1595 = load ptr, ptr %0, align 8, !tbaa !34
  %1596 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1595, i64 0, i32 1
  %1597 = load i32, ptr %1596, align 8, !tbaa !67
  %1598 = load i32, ptr %25, align 8, !tbaa !66
  %1599 = icmp ult i32 %1597, %1598
  br i1 %1599, label %1608, label %1600

1600:                                             ; preds = %1594
  %1601 = add i32 %1598, 256
  %1602 = tail call i32 @llvm.umin.i32(i32 %1601, i32 1048575)
  store i32 %1602, ptr %25, align 8, !tbaa !66
  %1603 = load ptr, ptr %1595, align 8, !tbaa !68
  %1604 = shl nuw nsw i32 %1602, 2
  %1605 = zext nneg i32 %1604 to i64
  %1606 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1603, i64 noundef %1605, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1607 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1606, ptr %1607, align 8, !tbaa !68
  br label %1608

1608:                                             ; preds = %1600, %1594
  %1609 = load ptr, ptr %0, align 8, !tbaa !34
  %1610 = load ptr, ptr %1609, align 8, !tbaa !68
  %1611 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1609, i64 0, i32 1
  %1612 = load i32, ptr %1611, align 8, !tbaa !67
  %1613 = zext i32 %1612 to i64
  %1614 = getelementptr inbounds i32, ptr %1610, i64 %1613
  store i32 360, ptr %1614, align 4, !tbaa !40
  %1615 = load i32, ptr %1611, align 8, !tbaa !67
  %1616 = add i32 %1615, 1
  store i32 %1616, ptr %1611, align 8, !tbaa !67
  %1617 = icmp ugt i32 %1616, 1048574
  br i1 %1617, label %1618, label %1620

1618:                                             ; preds = %1608
  %1619 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1620

1620:                                             ; preds = %1608, %1618
  %1621 = load ptr, ptr %0, align 8, !tbaa !34
  %1622 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1621, i64 0, i32 1
  %1623 = load i32, ptr %1622, align 8, !tbaa !67
  %1624 = load i32, ptr %25, align 8, !tbaa !66
  %1625 = icmp ult i32 %1623, %1624
  br i1 %1625, label %1634, label %1626

1626:                                             ; preds = %1620
  %1627 = add i32 %1624, 256
  %1628 = tail call i32 @llvm.umin.i32(i32 %1627, i32 1048575)
  store i32 %1628, ptr %25, align 8, !tbaa !66
  %1629 = load ptr, ptr %1621, align 8, !tbaa !68
  %1630 = shl nuw nsw i32 %1628, 2
  %1631 = zext nneg i32 %1630 to i64
  %1632 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1629, i64 noundef %1631, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1633 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1632, ptr %1633, align 8, !tbaa !68
  br label %1634

1634:                                             ; preds = %1626, %1620
  %1635 = load ptr, ptr %0, align 8, !tbaa !34
  %1636 = load ptr, ptr %1635, align 8, !tbaa !68
  %1637 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1635, i64 0, i32 1
  %1638 = load i32, ptr %1637, align 8, !tbaa !67
  %1639 = zext i32 %1638 to i64
  %1640 = getelementptr inbounds i32, ptr %1636, i64 %1639
  store i32 965, ptr %1640, align 4, !tbaa !40
  %1641 = load i32, ptr %1637, align 8, !tbaa !67
  %1642 = add i32 %1641, 1
  store i32 %1642, ptr %1637, align 8, !tbaa !67
  %1643 = icmp ugt i32 %1642, 1048574
  br i1 %1643, label %1644, label %1646

1644:                                             ; preds = %1634
  %1645 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1646

1646:                                             ; preds = %1634, %1644
  %1647 = load ptr, ptr %0, align 8, !tbaa !34
  %1648 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1647, i64 0, i32 1
  %1649 = load i32, ptr %1648, align 8, !tbaa !67
  %1650 = load i32, ptr %25, align 8, !tbaa !66
  %1651 = icmp ult i32 %1649, %1650
  br i1 %1651, label %1660, label %1652

1652:                                             ; preds = %1646
  %1653 = add i32 %1650, 256
  %1654 = tail call i32 @llvm.umin.i32(i32 %1653, i32 1048575)
  store i32 %1654, ptr %25, align 8, !tbaa !66
  %1655 = load ptr, ptr %1647, align 8, !tbaa !68
  %1656 = shl nuw nsw i32 %1654, 2
  %1657 = zext nneg i32 %1656 to i64
  %1658 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1655, i64 noundef %1657, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1659 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1658, ptr %1659, align 8, !tbaa !68
  br label %1660

1660:                                             ; preds = %1652, %1646
  %1661 = load ptr, ptr %0, align 8, !tbaa !34
  %1662 = load ptr, ptr %1661, align 8, !tbaa !68
  %1663 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1661, i64 0, i32 1
  %1664 = load i32, ptr %1663, align 8, !tbaa !67
  %1665 = zext i32 %1664 to i64
  %1666 = getelementptr inbounds i32, ptr %1662, i64 %1665
  store i32 325, ptr %1666, align 4, !tbaa !40
  %1667 = load i32, ptr %1663, align 8, !tbaa !67
  %1668 = add i32 %1667, 1
  store i32 %1668, ptr %1663, align 8, !tbaa !67
  %1669 = icmp ugt i32 %1668, 1048574
  br i1 %1669, label %1670, label %1724

1670:                                             ; preds = %1660
  %1671 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1672:                                             ; preds = %873
  %1673 = load ptr, ptr %0, align 8, !tbaa !34
  %1674 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1673, i64 0, i32 1
  %1675 = load i32, ptr %1674, align 8, !tbaa !67
  %1676 = load i32, ptr %24, align 8, !tbaa !66
  %1677 = icmp ult i32 %1675, %1676
  br i1 %1677, label %1686, label %1678

1678:                                             ; preds = %1672
  %1679 = add i32 %1676, 256
  %1680 = tail call i32 @llvm.umin.i32(i32 %1679, i32 1048575)
  store i32 %1680, ptr %24, align 8, !tbaa !66
  %1681 = load ptr, ptr %1673, align 8, !tbaa !68
  %1682 = shl nuw nsw i32 %1680, 2
  %1683 = zext nneg i32 %1682 to i64
  %1684 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1681, i64 noundef %1683, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1685 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1684, ptr %1685, align 8, !tbaa !68
  br label %1686

1686:                                             ; preds = %1678, %1672
  %1687 = load ptr, ptr %0, align 8, !tbaa !34
  %1688 = load ptr, ptr %1687, align 8, !tbaa !68
  %1689 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1687, i64 0, i32 1
  %1690 = load i32, ptr %1689, align 8, !tbaa !67
  %1691 = zext i32 %1690 to i64
  %1692 = getelementptr inbounds i32, ptr %1688, i64 %1691
  store i32 453, ptr %1692, align 4, !tbaa !40
  %1693 = load i32, ptr %1689, align 8, !tbaa !67
  %1694 = add i32 %1693, 1
  store i32 %1694, ptr %1689, align 8, !tbaa !67
  %1695 = icmp ugt i32 %1694, 1048574
  br i1 %1695, label %1696, label %1724

1696:                                             ; preds = %1686
  %1697 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1698:                                             ; preds = %873
  %1699 = load ptr, ptr %0, align 8, !tbaa !34
  %1700 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1699, i64 0, i32 1
  %1701 = load i32, ptr %1700, align 8, !tbaa !67
  %1702 = load i32, ptr %39, align 8, !tbaa !66
  %1703 = icmp ult i32 %1701, %1702
  br i1 %1703, label %1712, label %1704

1704:                                             ; preds = %1698
  %1705 = add i32 %1702, 256
  %1706 = tail call i32 @llvm.umin.i32(i32 %1705, i32 1048575)
  store i32 %1706, ptr %39, align 8, !tbaa !66
  %1707 = load ptr, ptr %1699, align 8, !tbaa !68
  %1708 = shl nuw nsw i32 %1706, 2
  %1709 = zext nneg i32 %1708 to i64
  %1710 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1707, i64 noundef %1709, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1711 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1710, ptr %1711, align 8, !tbaa !68
  br label %1712

1712:                                             ; preds = %1704, %1698
  %1713 = load ptr, ptr %0, align 8, !tbaa !34
  %1714 = load ptr, ptr %1713, align 8, !tbaa !68
  %1715 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1713, i64 0, i32 1
  %1716 = load i32, ptr %1715, align 8, !tbaa !67
  %1717 = zext i32 %1716 to i64
  %1718 = getelementptr inbounds i32, ptr %1714, i64 %1717
  store i32 325, ptr %1718, align 4, !tbaa !40
  %1719 = load i32, ptr %1715, align 8, !tbaa !67
  %1720 = add i32 %1719, 1
  store i32 %1720, ptr %1715, align 8, !tbaa !67
  %1721 = icmp ugt i32 %1720, 1048574
  br i1 %1721, label %1722, label %1724

1722:                                             ; preds = %1712
  %1723 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1724

1724:                                             ; preds = %1722, %1712, %1696, %1686, %1670, %1660, %1540, %1530, %1462, %1452, %1410, %1400, %1384, %1374, %1280, %1270, %1254, %1244, %1228, %1218, %1176, %1166, %1124, %1114, %1072, %1062, %1020, %1010, %968, %958, %904, %892, %866, %856, %786, %776, %628, %618, %496, %486, %390, %380, %336, %326, %256, %246, %193, %181, %155, %143, %122, %110, %89, %77, %906, %908, %910, %873, %161, %163, %124, %91, %58, %228
  %1725 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %47, i64 0, i32 3
  %1726 = load ptr, ptr %1725, align 8, !tbaa !83
  %1727 = icmp eq ptr %1726, null
  br i1 %1727, label %43, label %46, !llvm.loop !84

1728:                                             ; preds = %43
  %1729 = load ptr, ptr %0, align 8, !tbaa !34
  %1730 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1729, i64 0, i32 1
  %1731 = load i32, ptr %1730, align 8, !tbaa !67
  %1732 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %1733 = load i32, ptr %1732, align 8, !tbaa !66
  %1734 = icmp ult i32 %1731, %1733
  br i1 %1734, label %1743, label %1735

1735:                                             ; preds = %1728
  %1736 = add i32 %1733, 256
  %1737 = tail call i32 @llvm.umin.i32(i32 %1736, i32 1048575)
  store i32 %1737, ptr %1732, align 8, !tbaa !66
  %1738 = load ptr, ptr %1729, align 8, !tbaa !68
  %1739 = shl nuw nsw i32 %1737, 2
  %1740 = zext nneg i32 %1739 to i64
  %1741 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %1738, i64 noundef %1740, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %1742 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %1741, ptr %1742, align 8, !tbaa !68
  br label %1743

1743:                                             ; preds = %1735, %1728
  %1744 = load ptr, ptr %0, align 8, !tbaa !34
  %1745 = load ptr, ptr %1744, align 8, !tbaa !68
  %1746 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1744, i64 0, i32 1
  %1747 = load i32, ptr %1746, align 8, !tbaa !67
  %1748 = zext i32 %1747 to i64
  %1749 = getelementptr inbounds i32, ptr %1745, i64 %1748
  store i32 360, ptr %1749, align 4, !tbaa !40
  %1750 = load i32, ptr %1746, align 8, !tbaa !67
  %1751 = add i32 %1750, 1
  store i32 %1751, ptr %1746, align 8, !tbaa !67
  %1752 = icmp ugt i32 %1751, 1048574
  br i1 %1752, label %1753, label %1755

1753:                                             ; preds = %1743
  %1754 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %1755

1755:                                             ; preds = %1743, %1753
  tail call void @_ZN3pov6FNCode18compile_pop_resultEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %9)
  br label %1756

1756:                                             ; preds = %1755, %43
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %0, i32 noundef returned %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !67
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.38)
  br label %13

13:                                               ; preds = %11, %6
  %14 = shl i32 %5, 12
  %15 = shl i32 %3, 3
  %16 = or i32 %15, %2
  %17 = or i32 %16, %4
  %18 = and i32 %17, 4095
  %19 = or disjoint i32 %18, %14
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  store i32 %19, ptr %23, align 4, !tbaa !40
  ret i32 %1
}

declare noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov11FNCode_CopyEPNS_12FunctionCodeES1_(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  store ptr null, ptr %1, align 8, !tbaa !68
  %3 = load ptr, ptr %0, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %9, ptr noundef nonnull @.str.3, i32 noundef 400, ptr noundef nonnull @.str.4)
  store ptr %10, ptr %1, align 8, !tbaa !68
  %11 = load ptr, ptr %0, align 8, !tbaa !68
  %12 = load i32, ptr %6, align 8, !tbaa !67
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %11, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %5, %2
  %16 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 8
  store ptr null, ptr %16, align 8, !tbaa !45
  %17 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef nonnull %18)
  store ptr %21, ptr %16, align 8, !tbaa !45
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 9
  store ptr null, ptr %23, align 8, !tbaa !55
  %24 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef nonnull %25)
  store ptr %28, ptr %23, align 8, !tbaa !55
  br label %29

29:                                               ; preds = %27, %22
  %30 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !67
  %32 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 1
  store i32 %31, ptr %32, align 8, !tbaa !67
  %33 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 2
  %34 = load i8, ptr %33, align 4, !tbaa !71
  %35 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 2
  store i8 %34, ptr %35, align 4, !tbaa !71
  %36 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 3
  %37 = load i8, ptr %36, align 1, !tbaa !63
  %38 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 3
  store i8 %37, ptr %38, align 1, !tbaa !63
  %39 = icmp eq i8 %37, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %29, %40
  %41 = phi i64 [ %46, %40 ], [ 0, %29 ]
  %42 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 7, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !41
  %44 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef %43)
  %45 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 7, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !41
  %46 = add nuw nsw i64 %41, 1
  %47 = load i8, ptr %38, align 1, !tbaa !63
  %48 = zext i8 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %40, label %50, !llvm.loop !85

50:                                               ; preds = %40, %29
  %51 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 4
  %52 = load i8, ptr %51, align 2, !tbaa !86
  %53 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 4
  store i8 %52, ptr %53, align 2, !tbaa !86
  %54 = icmp eq i8 %52, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50, %55
  %56 = phi i64 [ %61, %55 ], [ 0, %50 ]
  %57 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 6, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !41
  %59 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef %58)
  %60 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 6, i64 %56
  store ptr %59, ptr %60, align 8, !tbaa !41
  %61 = add nuw nsw i64 %56, 1
  %62 = load i8, ptr %53, align 2, !tbaa !86
  %63 = zext i8 %62 to i64
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %55, label %65, !llvm.loop !87

65:                                               ; preds = %55, %50
  %66 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 10
  %67 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 10, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !59
  %69 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 10
  %70 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 10, i32 1
  store i32 %68, ptr %70, align 8, !tbaa !59
  %71 = load i64, ptr %66, align 8, !tbaa !60
  store i64 %71, ptr %69, align 8, !tbaa !60
  %72 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 11
  %73 = load i32, ptr %72, align 8, !tbaa !61
  %74 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 11
  store i32 %73, ptr %74, align 8, !tbaa !61
  %75 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 12
  %76 = load ptr, ptr %75, align 8, !tbaa !88
  %77 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 12
  store ptr %76, ptr %77, align 8, !tbaa !88
  %78 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 13
  %79 = load ptr, ptr %78, align 8, !tbaa !89
  %80 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 13
  store ptr %79, ptr %80, align 8, !tbaa !89
  %81 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 14
  store ptr null, ptr %81, align 8, !tbaa !90
  %82 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 14
  %83 = load ptr, ptr %82, align 8, !tbaa !90
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %65
  %86 = load ptr, ptr %75, align 8, !tbaa !88
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = tail call noundef ptr %86(ptr noundef nonnull %83)
  br label %90

90:                                               ; preds = %85, %88
  %91 = phi ptr [ %89, %88 ], [ null, %85 ]
  store ptr %91, ptr %81, align 8, !tbaa !90
  br label %92

92:                                               ; preds = %90, %65
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov13FNCode_DeleteEPNS_12FunctionCodeE(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %2, ptr noundef nonnull @.str.3, i32 noundef 475)
  store ptr null, ptr %0, align 8, !tbaa !68
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, i32 noundef 481)
  store ptr null, ptr %6, align 8, !tbaa !45
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %12, ptr noundef nonnull @.str.3, i32 noundef 487)
  store ptr null, ptr %11, align 8, !tbaa !55
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 3
  %17 = load i8, ptr %16, align 1, !tbaa !63
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15, %25
  %20 = phi i64 [ %26, %25 ], [ 0, %15 ]
  %21 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 7, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %22, ptr noundef nonnull @.str.3, i32 noundef 495)
  store ptr null, ptr %21, align 8, !tbaa !41
  br label %25

25:                                               ; preds = %19, %24
  %26 = add nuw nsw i64 %20, 1
  %27 = load i8, ptr %16, align 1, !tbaa !63
  %28 = zext i8 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %19, label %30, !llvm.loop !91

30:                                               ; preds = %25, %15
  %31 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 3
  store i8 0, ptr %31, align 1, !tbaa !63
  %32 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 4
  %33 = load i8, ptr %32, align 2, !tbaa !86
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30, %41
  %36 = phi i64 [ %42, %41 ], [ 0, %30 ]
  %37 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 6, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %38, ptr noundef nonnull @.str.3, i32 noundef 505)
  store ptr null, ptr %37, align 8, !tbaa !41
  br label %41

41:                                               ; preds = %35, %40
  %42 = add nuw nsw i64 %36, 1
  %43 = load i8, ptr %32, align 2, !tbaa !86
  %44 = zext i8 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %35, label %46, !llvm.loop !92

46:                                               ; preds = %41, %30
  %47 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 4
  store i8 0, ptr %47, align 2, !tbaa !86
  %48 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 14
  %49 = load ptr, ptr %48, align 8, !tbaa !90
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 13
  %53 = load ptr, ptr %52, align 8, !tbaa !89
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void %53(ptr noundef nonnull %49)
  br label %57

56:                                               ; preds = %51
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %49, ptr noundef nonnull @.str.3, i32 noundef 516)
  store ptr null, ptr %48, align 8, !tbaa !90
  br label %57

57:                                               ; preds = %56, %55
  store ptr null, ptr %48, align 8, !tbaa !90
  br label %58

58:                                               ; preds = %57, %46
  %59 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 1
  store i32 0, ptr %59, align 8, !tbaa !67
  %60 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 2
  store i8 0, ptr %60, align 4, !tbaa !71
  ret void
}

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN3pov6FNCode7SetFlagEjPc(ptr nocapture noundef nonnull readnone align 8 dereferenceable(28) %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #3 align 2 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !80
  %4 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = add i32 %5, %3
  %7 = add nsw i32 %6, -2
  %8 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !79
  %10 = tail call i32 @llvm.smax.i32(i32 %7, i32 %9)
  store i32 %10, ptr %8, align 4, !tbaa !79
  switch i32 %5, label %61 [
    i32 1, label %11
    i32 2, label %36
  ]

11:                                               ; preds = %1
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !67
  %15 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !66
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = add i32 %16, 256
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 1048575)
  store i32 %20, ptr %15, align 8, !tbaa !66
  %21 = load ptr, ptr %12, align 8, !tbaa !68
  %22 = shl nuw nsw i32 %20, 2
  %23 = zext nneg i32 %22 to i64
  %24 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %21, i64 noundef %23, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %24, ptr %25, align 8, !tbaa !68
  br label %26

26:                                               ; preds = %18, %11
  %27 = load ptr, ptr %0, align 8, !tbaa !34
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %27, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !67
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %28, i64 %31
  store i32 366, ptr %32, align 4, !tbaa !40
  %33 = load i32, ptr %29, align 8, !tbaa !67
  %34 = add i32 %33, 1
  store i32 %34, ptr %29, align 8, !tbaa !67
  %35 = icmp ugt i32 %34, 1048574
  br i1 %35, label %90, label %92

36:                                               ; preds = %1
  %37 = load ptr, ptr %0, align 8, !tbaa !34
  %38 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !67
  %40 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !66
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = add i32 %41, 256
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 1048575)
  store i32 %45, ptr %40, align 8, !tbaa !66
  %46 = load ptr, ptr %37, align 8, !tbaa !68
  %47 = shl nuw nsw i32 %45, 2
  %48 = zext nneg i32 %47 to i64
  %49 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %46, i64 noundef %48, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %50 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %49, ptr %50, align 8, !tbaa !68
  br label %51

51:                                               ; preds = %43, %36
  %52 = load ptr, ptr %0, align 8, !tbaa !34
  %53 = load ptr, ptr %52, align 8, !tbaa !68
  %54 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %52, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !67
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %53, i64 %56
  store i32 367, ptr %57, align 4, !tbaa !40
  %58 = load i32, ptr %54, align 8, !tbaa !67
  %59 = add i32 %58, 1
  store i32 %59, ptr %54, align 8, !tbaa !67
  %60 = icmp ugt i32 %59, 1048574
  br i1 %60, label %90, label %92

61:                                               ; preds = %1
  %62 = icmp sgt i32 %5, 2
  br i1 %62, label %63, label %92

63:                                               ; preds = %61
  %64 = load ptr, ptr %0, align 8, !tbaa !34
  %65 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !67
  %67 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !66
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %63
  %71 = add i32 %68, 256
  %72 = tail call i32 @llvm.umin.i32(i32 %71, i32 1048575)
  store i32 %72, ptr %67, align 8, !tbaa !66
  %73 = load ptr, ptr %64, align 8, !tbaa !68
  %74 = shl nuw nsw i32 %72, 2
  %75 = zext nneg i32 %74 to i64
  %76 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %73, i64 noundef %75, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %77 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %76, ptr %77, align 8, !tbaa !68
  br label %78

78:                                               ; preds = %70, %63
  %79 = shl i32 %6, 12
  %80 = add i32 %79, -11507
  %81 = load ptr, ptr %0, align 8, !tbaa !34
  %82 = load ptr, ptr %81, align 8, !tbaa !68
  %83 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %81, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !67
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, ptr %82, i64 %85
  store i32 %80, ptr %86, align 4, !tbaa !40
  %87 = load i32, ptr %83, align 8, !tbaa !67
  %88 = add i32 %87, 1
  store i32 %88, ptr %83, align 8, !tbaa !67
  %89 = icmp ugt i32 %88, 1048574
  br i1 %89, label %90, label %92

90:                                               ; preds = %78, %51, %26
  %91 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %92

92:                                               ; preds = %90, %78, %51, %26, %61
  %93 = load i32, ptr %4, align 8, !tbaa !77
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %4, align 8, !tbaa !77
  %95 = load i32, ptr %2, align 8, !tbaa !80
  %96 = add nsw i32 %95, %94
  %97 = tail call i32 @llvm.smax.i32(i32 %96, i32 4)
  %98 = add nsw i32 %97, -4
  ret i32 %98
}

declare noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef) local_unnamed_addr #1

declare noundef i32 @_ZN3pov7WarningEjPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCode16compile_variableEPc(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds i8, ptr %1, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !72
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %89

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !72
  switch i8 %7, label %89 [
    i8 120, label %8
    i8 117, label %8
    i8 121, label %35
    i8 118, label %35
    i8 122, label %62
  ]

8:                                                ; preds = %6, %6
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !66
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = add i32 %13, 256
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 1048575)
  store i32 %17, ptr %12, align 8, !tbaa !66
  %18 = load ptr, ptr %9, align 8, !tbaa !68
  %19 = shl nuw nsw i32 %17, 2
  %20 = zext nneg i32 %19 to i64
  %21 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %18, i64 noundef %20, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %21, ptr %22, align 8, !tbaa !68
  br label %23

23:                                               ; preds = %15, %8
  %24 = load ptr, ptr %0, align 8, !tbaa !34
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  %26 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %24, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !67
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %25, i64 %28
  store i32 336, ptr %29, align 4, !tbaa !40
  %30 = load i32, ptr %26, align 8, !tbaa !67
  %31 = add i32 %30, 1
  store i32 %31, ptr %26, align 8, !tbaa !67
  %32 = icmp ugt i32 %31, 1048574
  br i1 %32, label %33, label %187

33:                                               ; preds = %23
  %34 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %187

35:                                               ; preds = %6, %6
  %36 = load ptr, ptr %0, align 8, !tbaa !34
  %37 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !67
  %39 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !66
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = add i32 %40, 256
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 1048575)
  store i32 %44, ptr %39, align 8, !tbaa !66
  %45 = load ptr, ptr %36, align 8, !tbaa !68
  %46 = shl nuw nsw i32 %44, 2
  %47 = zext nneg i32 %46 to i64
  %48 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %45, i64 noundef %47, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %49 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %48, ptr %49, align 8, !tbaa !68
  br label %50

50:                                               ; preds = %42, %35
  %51 = load ptr, ptr %0, align 8, !tbaa !34
  %52 = load ptr, ptr %51, align 8, !tbaa !68
  %53 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %51, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !67
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %52, i64 %55
  store i32 344, ptr %56, align 4, !tbaa !40
  %57 = load i32, ptr %53, align 8, !tbaa !67
  %58 = add i32 %57, 1
  store i32 %58, ptr %53, align 8, !tbaa !67
  %59 = icmp ugt i32 %58, 1048574
  br i1 %59, label %60, label %187

60:                                               ; preds = %50
  %61 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %187

62:                                               ; preds = %6
  %63 = load ptr, ptr %0, align 8, !tbaa !34
  %64 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %63, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !67
  %66 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !66
  %68 = icmp ult i32 %65, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %62
  %70 = add i32 %67, 256
  %71 = tail call i32 @llvm.umin.i32(i32 %70, i32 1048575)
  store i32 %71, ptr %66, align 8, !tbaa !66
  %72 = load ptr, ptr %63, align 8, !tbaa !68
  %73 = shl nuw nsw i32 %71, 2
  %74 = zext nneg i32 %73 to i64
  %75 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %72, i64 noundef %74, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %76 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %75, ptr %76, align 8, !tbaa !68
  br label %77

77:                                               ; preds = %69, %62
  %78 = load ptr, ptr %0, align 8, !tbaa !34
  %79 = load ptr, ptr %78, align 8, !tbaa !68
  %80 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %78, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !67
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %79, i64 %82
  store i32 352, ptr %83, align 4, !tbaa !40
  %84 = load i32, ptr %80, align 8, !tbaa !67
  %85 = add i32 %84, 1
  store i32 %85, ptr %80, align 8, !tbaa !67
  %86 = icmp ugt i32 %85, 1048574
  br i1 %86, label %87, label %187

87:                                               ; preds = %77
  %88 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %187

89:                                               ; preds = %6, %2
  %90 = load ptr, ptr %0, align 8, !tbaa !34
  %91 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %90, i64 0, i32 4
  %92 = load i8, ptr %91, align 2, !tbaa !86
  %93 = zext i8 %92 to i32
  %94 = icmp eq i8 %92, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %89
  %96 = zext i8 %92 to i64
  br label %97

97:                                               ; preds = %95, %97
  %98 = phi i64 [ 0, %95 ], [ %106, %97 ]
  %99 = phi i32 [ 1048575, %95 ], [ %105, %97 ]
  %100 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %90, i64 0, i32 6, i64 %98
  %101 = load ptr, ptr %100, align 8, !tbaa !41
  %102 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %101) #7
  %103 = icmp eq i32 %102, 0
  %104 = trunc i64 %98 to i32
  %105 = select i1 %103, i32 %104, i32 %99
  %106 = add nuw nsw i64 %98, 1
  %107 = icmp eq i64 %106, %96
  br i1 %107, label %108, label %97, !llvm.loop !93

108:                                              ; preds = %97, %89
  %109 = phi i32 [ 1048575, %89 ], [ %105, %97 ]
  %110 = icmp ult i32 %109, %93
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %90, i64 0, i32 3
  %113 = load i8, ptr %112, align 1, !tbaa !63
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %186, label %115

115:                                              ; preds = %111
  %116 = zext i8 %113 to i64
  br label %148

117:                                              ; preds = %108
  %118 = zext nneg i32 %109 to i64
  %119 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %90, i64 0, i32 5, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !40
  %121 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %90, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !67
  %123 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !66
  %125 = icmp ult i32 %122, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %117
  %127 = add i32 %124, 256
  %128 = tail call i32 @llvm.umin.i32(i32 %127, i32 1048575)
  store i32 %128, ptr %123, align 8, !tbaa !66
  %129 = load ptr, ptr %90, align 8, !tbaa !68
  %130 = shl nuw nsw i32 %128, 2
  %131 = zext nneg i32 %130 to i64
  %132 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %129, i64 noundef %131, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %133 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %132, ptr %133, align 8, !tbaa !68
  br label %134

134:                                              ; preds = %126, %117
  %135 = shl i32 %120, 12
  %136 = or disjoint i32 %135, 712
  %137 = load ptr, ptr %0, align 8, !tbaa !34
  %138 = load ptr, ptr %137, align 8, !tbaa !68
  %139 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %137, i64 0, i32 1
  %140 = load i32, ptr %139, align 8, !tbaa !67
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, ptr %138, i64 %141
  store i32 %136, ptr %142, align 4, !tbaa !40
  %143 = load i32, ptr %139, align 8, !tbaa !67
  %144 = add i32 %143, 1
  store i32 %144, ptr %139, align 8, !tbaa !67
  %145 = icmp ugt i32 %144, 1048574
  br i1 %145, label %146, label %187

146:                                              ; preds = %134
  %147 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %187

148:                                              ; preds = %115, %183
  %149 = phi i64 [ 0, %115 ], [ %184, %183 ]
  %150 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %90, i64 0, i32 7, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !41
  %152 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %151) #7
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %183

154:                                              ; preds = %148
  %155 = trunc i64 %149 to i32
  %156 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %90, i64 0, i32 1
  %157 = load i32, ptr %156, align 8, !tbaa !67
  %158 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %159 = load i32, ptr %158, align 8, !tbaa !66
  %160 = icmp ult i32 %157, %159
  br i1 %160, label %169, label %161

161:                                              ; preds = %154
  %162 = add i32 %159, 256
  %163 = tail call i32 @llvm.umin.i32(i32 %162, i32 1048575)
  store i32 %163, ptr %158, align 8, !tbaa !66
  %164 = load ptr, ptr %90, align 8, !tbaa !68
  %165 = shl nuw nsw i32 %163, 2
  %166 = zext nneg i32 %165 to i64
  %167 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %164, i64 noundef %166, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %168 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %167, ptr %168, align 8, !tbaa !68
  br label %169

169:                                              ; preds = %161, %154
  %170 = shl i32 %155, 12
  %171 = or disjoint i32 %170, 712
  %172 = load ptr, ptr %0, align 8, !tbaa !34
  %173 = load ptr, ptr %172, align 8, !tbaa !68
  %174 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %172, i64 0, i32 1
  %175 = load i32, ptr %174, align 8, !tbaa !67
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, ptr %173, i64 %176
  store i32 %171, ptr %177, align 4, !tbaa !40
  %178 = load i32, ptr %174, align 8, !tbaa !67
  %179 = add i32 %178, 1
  store i32 %179, ptr %174, align 8, !tbaa !67
  %180 = icmp ugt i32 %179, 1048574
  br i1 %180, label %181, label %187

181:                                              ; preds = %169
  %182 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %187

183:                                              ; preds = %148
  %184 = add nuw nsw i64 %149, 1
  %185 = icmp eq i64 %184, %116
  br i1 %185, label %186, label %148, !llvm.loop !94

186:                                              ; preds = %183, %111
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef nonnull @.str.31)
  br label %187

187:                                              ; preds = %181, %169, %146, %134, %87, %77, %60, %50, %33, %23, %186
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCode14compile_memberEPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !77
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 2)
  %8 = tail call i32 @llvm.smin.i32(i32 %6, i32 2)
  %9 = add i32 %4, -1
  %10 = add i32 %9, %8
  %11 = add i32 %10, %7
  %12 = getelementptr inbounds i8, ptr %1, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !72
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %133

15:                                               ; preds = %2
  %16 = load i8, ptr %1, align 1, !tbaa !72
  switch i8 %16, label %133 [
    i8 120, label %17
    i8 117, label %17
    i8 121, label %46
    i8 118, label %46
    i8 122, label %75
    i8 116, label %104
  ]

17:                                               ; preds = %15, %15
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  %19 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !67
  %21 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !66
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = add i32 %22, 256
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 1048575)
  store i32 %26, ptr %21, align 8, !tbaa !66
  %27 = load ptr, ptr %18, align 8, !tbaa !68
  %28 = shl nuw nsw i32 %26, 2
  %29 = zext nneg i32 %28 to i64
  %30 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %27, i64 noundef %29, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %31 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %30, ptr %31, align 8, !tbaa !68
  br label %32

32:                                               ; preds = %24, %17
  %33 = shl i32 %11, 12
  %34 = or disjoint i32 %33, 717
  %35 = load ptr, ptr %0, align 8, !tbaa !34
  %36 = load ptr, ptr %35, align 8, !tbaa !68
  %37 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %35, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !67
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %36, i64 %39
  store i32 %34, ptr %40, align 4, !tbaa !40
  %41 = load i32, ptr %37, align 8, !tbaa !67
  %42 = add i32 %41, 1
  store i32 %42, ptr %37, align 8, !tbaa !67
  %43 = icmp ugt i32 %42, 1048574
  br i1 %43, label %44, label %672

44:                                               ; preds = %32
  %45 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %672

46:                                               ; preds = %15, %15
  %47 = load ptr, ptr %0, align 8, !tbaa !34
  %48 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !67
  %50 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !66
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %46
  %54 = add i32 %51, 256
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 1048575)
  store i32 %55, ptr %50, align 8, !tbaa !66
  %56 = load ptr, ptr %47, align 8, !tbaa !68
  %57 = shl nuw nsw i32 %55, 2
  %58 = zext nneg i32 %57 to i64
  %59 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %56, i64 noundef %58, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %60 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %59, ptr %60, align 8, !tbaa !68
  br label %61

61:                                               ; preds = %53, %46
  %62 = shl i32 %11, 12
  %63 = add i32 %62, 4813
  %64 = load ptr, ptr %0, align 8, !tbaa !34
  %65 = load ptr, ptr %64, align 8, !tbaa !68
  %66 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %64, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !67
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %65, i64 %68
  store i32 %63, ptr %69, align 4, !tbaa !40
  %70 = load i32, ptr %66, align 8, !tbaa !67
  %71 = add i32 %70, 1
  store i32 %71, ptr %66, align 8, !tbaa !67
  %72 = icmp ugt i32 %71, 1048574
  br i1 %72, label %73, label %672

73:                                               ; preds = %61
  %74 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %672

75:                                               ; preds = %15
  %76 = load ptr, ptr %0, align 8, !tbaa !34
  %77 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %76, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !67
  %79 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !66
  %81 = icmp ult i32 %78, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %75
  %83 = add i32 %80, 256
  %84 = tail call i32 @llvm.umin.i32(i32 %83, i32 1048575)
  store i32 %84, ptr %79, align 8, !tbaa !66
  %85 = load ptr, ptr %76, align 8, !tbaa !68
  %86 = shl nuw nsw i32 %84, 2
  %87 = zext nneg i32 %86 to i64
  %88 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %85, i64 noundef %87, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %89 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %88, ptr %89, align 8, !tbaa !68
  br label %90

90:                                               ; preds = %82, %75
  %91 = shl i32 %11, 12
  %92 = add i32 %91, 8909
  %93 = load ptr, ptr %0, align 8, !tbaa !34
  %94 = load ptr, ptr %93, align 8, !tbaa !68
  %95 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %93, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !67
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %94, i64 %97
  store i32 %92, ptr %98, align 4, !tbaa !40
  %99 = load i32, ptr %95, align 8, !tbaa !67
  %100 = add i32 %99, 1
  store i32 %100, ptr %95, align 8, !tbaa !67
  %101 = icmp ugt i32 %100, 1048574
  br i1 %101, label %102, label %672

102:                                              ; preds = %90
  %103 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %672

104:                                              ; preds = %15
  %105 = load ptr, ptr %0, align 8, !tbaa !34
  %106 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %105, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !67
  %108 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !66
  %110 = icmp ult i32 %107, %109
  br i1 %110, label %119, label %111

111:                                              ; preds = %104
  %112 = add i32 %109, 256
  %113 = tail call i32 @llvm.umin.i32(i32 %112, i32 1048575)
  store i32 %113, ptr %108, align 8, !tbaa !66
  %114 = load ptr, ptr %105, align 8, !tbaa !68
  %115 = shl nuw nsw i32 %113, 2
  %116 = zext nneg i32 %115 to i64
  %117 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %114, i64 noundef %116, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %118 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %117, ptr %118, align 8, !tbaa !68
  br label %119

119:                                              ; preds = %111, %104
  %120 = shl i32 %11, 12
  %121 = add i32 %120, 13005
  %122 = load ptr, ptr %0, align 8, !tbaa !34
  %123 = load ptr, ptr %122, align 8, !tbaa !68
  %124 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %122, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !67
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %123, i64 %126
  store i32 %121, ptr %127, align 4, !tbaa !40
  %128 = load i32, ptr %124, align 8, !tbaa !67
  %129 = add i32 %128, 1
  store i32 %129, ptr %124, align 8, !tbaa !67
  %130 = icmp ugt i32 %129, 1048574
  br i1 %130, label %131, label %672

131:                                              ; preds = %119
  %132 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %672

133:                                              ; preds = %15, %2
  %134 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.8) #7
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %165

136:                                              ; preds = %133
  %137 = load ptr, ptr %0, align 8, !tbaa !34
  %138 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %137, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !67
  %140 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !66
  %142 = icmp ult i32 %139, %141
  br i1 %142, label %151, label %143

143:                                              ; preds = %136
  %144 = add i32 %141, 256
  %145 = tail call i32 @llvm.umin.i32(i32 %144, i32 1048575)
  store i32 %145, ptr %140, align 8, !tbaa !66
  %146 = load ptr, ptr %137, align 8, !tbaa !68
  %147 = shl nuw nsw i32 %145, 2
  %148 = zext nneg i32 %147 to i64
  %149 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %146, i64 noundef %148, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %150 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %149, ptr %150, align 8, !tbaa !68
  br label %151

151:                                              ; preds = %143, %136
  %152 = shl i32 %11, 12
  %153 = or disjoint i32 %152, 717
  %154 = load ptr, ptr %0, align 8, !tbaa !34
  %155 = load ptr, ptr %154, align 8, !tbaa !68
  %156 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %154, i64 0, i32 1
  %157 = load i32, ptr %156, align 8, !tbaa !67
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, ptr %155, i64 %158
  store i32 %153, ptr %159, align 4, !tbaa !40
  %160 = load i32, ptr %156, align 8, !tbaa !67
  %161 = add i32 %160, 1
  store i32 %161, ptr %156, align 8, !tbaa !67
  %162 = icmp ugt i32 %161, 1048574
  br i1 %162, label %163, label %672

163:                                              ; preds = %151
  %164 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %672

165:                                              ; preds = %133
  %166 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.9) #7
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %197

168:                                              ; preds = %165
  %169 = load ptr, ptr %0, align 8, !tbaa !34
  %170 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %169, i64 0, i32 1
  %171 = load i32, ptr %170, align 8, !tbaa !67
  %172 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %173 = load i32, ptr %172, align 8, !tbaa !66
  %174 = icmp ult i32 %171, %173
  br i1 %174, label %183, label %175

175:                                              ; preds = %168
  %176 = add i32 %173, 256
  %177 = tail call i32 @llvm.umin.i32(i32 %176, i32 1048575)
  store i32 %177, ptr %172, align 8, !tbaa !66
  %178 = load ptr, ptr %169, align 8, !tbaa !68
  %179 = shl nuw nsw i32 %177, 2
  %180 = zext nneg i32 %179 to i64
  %181 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %178, i64 noundef %180, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %182 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %181, ptr %182, align 8, !tbaa !68
  br label %183

183:                                              ; preds = %175, %168
  %184 = shl i32 %11, 12
  %185 = add i32 %184, 4813
  %186 = load ptr, ptr %0, align 8, !tbaa !34
  %187 = load ptr, ptr %186, align 8, !tbaa !68
  %188 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %186, i64 0, i32 1
  %189 = load i32, ptr %188, align 8, !tbaa !67
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, ptr %187, i64 %190
  store i32 %185, ptr %191, align 4, !tbaa !40
  %192 = load i32, ptr %188, align 8, !tbaa !67
  %193 = add i32 %192, 1
  store i32 %193, ptr %188, align 8, !tbaa !67
  %194 = icmp ugt i32 %193, 1048574
  br i1 %194, label %195, label %672

195:                                              ; preds = %183
  %196 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %672

197:                                              ; preds = %165
  %198 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.10) #7
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %229

200:                                              ; preds = %197
  %201 = load ptr, ptr %0, align 8, !tbaa !34
  %202 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %201, i64 0, i32 1
  %203 = load i32, ptr %202, align 8, !tbaa !67
  %204 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %205 = load i32, ptr %204, align 8, !tbaa !66
  %206 = icmp ult i32 %203, %205
  br i1 %206, label %215, label %207

207:                                              ; preds = %200
  %208 = add i32 %205, 256
  %209 = tail call i32 @llvm.umin.i32(i32 %208, i32 1048575)
  store i32 %209, ptr %204, align 8, !tbaa !66
  %210 = load ptr, ptr %201, align 8, !tbaa !68
  %211 = shl nuw nsw i32 %209, 2
  %212 = zext nneg i32 %211 to i64
  %213 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %210, i64 noundef %212, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %214 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %213, ptr %214, align 8, !tbaa !68
  br label %215

215:                                              ; preds = %207, %200
  %216 = shl i32 %11, 12
  %217 = add i32 %216, 8909
  %218 = load ptr, ptr %0, align 8, !tbaa !34
  %219 = load ptr, ptr %218, align 8, !tbaa !68
  %220 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %218, i64 0, i32 1
  %221 = load i32, ptr %220, align 8, !tbaa !67
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, ptr %219, i64 %222
  store i32 %217, ptr %223, align 4, !tbaa !40
  %224 = load i32, ptr %220, align 8, !tbaa !67
  %225 = add i32 %224, 1
  store i32 %225, ptr %220, align 8, !tbaa !67
  %226 = icmp ugt i32 %225, 1048574
  br i1 %226, label %227, label %672

227:                                              ; preds = %215
  %228 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %672

229:                                              ; preds = %197
  %230 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.11) #7
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %261

232:                                              ; preds = %229
  %233 = load ptr, ptr %0, align 8, !tbaa !34
  %234 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %233, i64 0, i32 1
  %235 = load i32, ptr %234, align 8, !tbaa !67
  %236 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %237 = load i32, ptr %236, align 8, !tbaa !66
  %238 = icmp ult i32 %235, %237
  br i1 %238, label %247, label %239

239:                                              ; preds = %232
  %240 = add i32 %237, 256
  %241 = tail call i32 @llvm.umin.i32(i32 %240, i32 1048575)
  store i32 %241, ptr %236, align 8, !tbaa !66
  %242 = load ptr, ptr %233, align 8, !tbaa !68
  %243 = shl nuw nsw i32 %241, 2
  %244 = zext nneg i32 %243 to i64
  %245 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %242, i64 noundef %244, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %246 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %245, ptr %246, align 8, !tbaa !68
  br label %247

247:                                              ; preds = %239, %232
  %248 = shl i32 %11, 12
  %249 = add i32 %248, 13005
  %250 = load ptr, ptr %0, align 8, !tbaa !34
  %251 = load ptr, ptr %250, align 8, !tbaa !68
  %252 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %250, i64 0, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !67
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32, ptr %251, i64 %254
  store i32 %249, ptr %255, align 4, !tbaa !40
  %256 = load i32, ptr %252, align 8, !tbaa !67
  %257 = add i32 %256, 1
  store i32 %257, ptr %252, align 8, !tbaa !67
  %258 = icmp ugt i32 %257, 1048574
  br i1 %258, label %259, label %672

259:                                              ; preds = %247
  %260 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %672

261:                                              ; preds = %229
  %262 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.12) #7
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %293

264:                                              ; preds = %261
  %265 = load ptr, ptr %0, align 8, !tbaa !34
  %266 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %265, i64 0, i32 1
  %267 = load i32, ptr %266, align 8, !tbaa !67
  %268 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %269 = load i32, ptr %268, align 8, !tbaa !66
  %270 = icmp ult i32 %267, %269
  br i1 %270, label %279, label %271

271:                                              ; preds = %264
  %272 = add i32 %269, 256
  %273 = tail call i32 @llvm.umin.i32(i32 %272, i32 1048575)
  store i32 %273, ptr %268, align 8, !tbaa !66
  %274 = load ptr, ptr %265, align 8, !tbaa !68
  %275 = shl nuw nsw i32 %273, 2
  %276 = zext nneg i32 %275 to i64
  %277 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %274, i64 noundef %276, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %278 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %277, ptr %278, align 8, !tbaa !68
  br label %279

279:                                              ; preds = %271, %264
  %280 = shl i32 %11, 12
  %281 = add i32 %280, 17101
  %282 = load ptr, ptr %0, align 8, !tbaa !34
  %283 = load ptr, ptr %282, align 8, !tbaa !68
  %284 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %282, i64 0, i32 1
  %285 = load i32, ptr %284, align 8, !tbaa !67
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, ptr %283, i64 %286
  store i32 %281, ptr %287, align 4, !tbaa !40
  %288 = load i32, ptr %284, align 8, !tbaa !67
  %289 = add i32 %288, 1
  store i32 %289, ptr %284, align 8, !tbaa !67
  %290 = icmp ugt i32 %289, 1048574
  br i1 %290, label %291, label %672

291:                                              ; preds = %279
  %292 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %672

293:                                              ; preds = %261
  %294 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.13) #7
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %293
  %297 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.14) #7
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %523

299:                                              ; preds = %296, %293
  %300 = load ptr, ptr %0, align 8, !tbaa !34
  %301 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %300, i64 0, i32 1
  %302 = load i32, ptr %301, align 8, !tbaa !67
  %303 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %304 = load i32, ptr %303, align 8, !tbaa !66
  %305 = icmp ult i32 %302, %304
  br i1 %305, label %314, label %306

306:                                              ; preds = %299
  %307 = add i32 %304, 256
  %308 = tail call i32 @llvm.umin.i32(i32 %307, i32 1048575)
  store i32 %308, ptr %303, align 8, !tbaa !66
  %309 = load ptr, ptr %300, align 8, !tbaa !68
  %310 = shl nuw nsw i32 %308, 2
  %311 = zext nneg i32 %310 to i64
  %312 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %309, i64 noundef %311, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %313 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %312, ptr %313, align 8, !tbaa !68
  br label %314

314:                                              ; preds = %306, %299
  %315 = shl i32 %11, 12
  %316 = or disjoint i32 %315, 717
  %317 = load ptr, ptr %0, align 8, !tbaa !34
  %318 = load ptr, ptr %317, align 8, !tbaa !68
  %319 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %317, i64 0, i32 1
  %320 = load i32, ptr %319, align 8, !tbaa !67
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i32, ptr %318, i64 %321
  store i32 %316, ptr %322, align 4, !tbaa !40
  %323 = load i32, ptr %319, align 8, !tbaa !67
  %324 = add i32 %323, 1
  store i32 %324, ptr %319, align 8, !tbaa !67
  %325 = icmp ugt i32 %324, 1048574
  br i1 %325, label %326, label %328

326:                                              ; preds = %314
  %327 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %328

328:                                              ; preds = %314, %326
  %329 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 2.970000e-01)
  %330 = load ptr, ptr %0, align 8, !tbaa !34
  %331 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %330, i64 0, i32 1
  %332 = load i32, ptr %331, align 8, !tbaa !67
  %333 = load i32, ptr %303, align 8, !tbaa !66
  %334 = icmp ult i32 %332, %333
  br i1 %334, label %343, label %335

335:                                              ; preds = %328
  %336 = add i32 %333, 256
  %337 = tail call i32 @llvm.umin.i32(i32 %336, i32 1048575)
  store i32 %337, ptr %303, align 8, !tbaa !66
  %338 = load ptr, ptr %330, align 8, !tbaa !68
  %339 = shl nuw nsw i32 %337, 2
  %340 = zext nneg i32 %339 to i64
  %341 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %338, i64 noundef %340, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %342 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %341, ptr %342, align 8, !tbaa !68
  br label %343

343:                                              ; preds = %335, %328
  %344 = shl i32 %329, 12
  %345 = or disjoint i32 %344, 597
  %346 = load ptr, ptr %0, align 8, !tbaa !34
  %347 = load ptr, ptr %346, align 8, !tbaa !68
  %348 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %346, i64 0, i32 1
  %349 = load i32, ptr %348, align 8, !tbaa !67
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds i32, ptr %347, i64 %350
  store i32 %345, ptr %351, align 4, !tbaa !40
  %352 = load i32, ptr %348, align 8, !tbaa !67
  %353 = add i32 %352, 1
  store i32 %353, ptr %348, align 8, !tbaa !67
  %354 = icmp ugt i32 %353, 1048574
  br i1 %354, label %355, label %357

355:                                              ; preds = %343
  %356 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %357

357:                                              ; preds = %343, %355
  %358 = load ptr, ptr %0, align 8, !tbaa !34
  %359 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %358, i64 0, i32 1
  %360 = load i32, ptr %359, align 8, !tbaa !67
  %361 = load i32, ptr %303, align 8, !tbaa !66
  %362 = icmp ult i32 %360, %361
  br i1 %362, label %371, label %363

363:                                              ; preds = %357
  %364 = add i32 %361, 256
  %365 = tail call i32 @llvm.umin.i32(i32 %364, i32 1048575)
  store i32 %365, ptr %303, align 8, !tbaa !66
  %366 = load ptr, ptr %358, align 8, !tbaa !68
  %367 = shl nuw nsw i32 %365, 2
  %368 = zext nneg i32 %367 to i64
  %369 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %366, i64 noundef %368, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %370 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %369, ptr %370, align 8, !tbaa !68
  br label %371

371:                                              ; preds = %363, %357
  %372 = shl i32 %11, 12
  %373 = add i32 %372, 4808
  %374 = load ptr, ptr %0, align 8, !tbaa !34
  %375 = load ptr, ptr %374, align 8, !tbaa !68
  %376 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %374, i64 0, i32 1
  %377 = load i32, ptr %376, align 8, !tbaa !67
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds i32, ptr %375, i64 %378
  store i32 %373, ptr %379, align 4, !tbaa !40
  %380 = load i32, ptr %376, align 8, !tbaa !67
  %381 = add i32 %380, 1
  store i32 %381, ptr %376, align 8, !tbaa !67
  %382 = icmp ugt i32 %381, 1048574
  br i1 %382, label %383, label %385

383:                                              ; preds = %371
  %384 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %385

385:                                              ; preds = %371, %383
  %386 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 5.890000e-01)
  %387 = load ptr, ptr %0, align 8, !tbaa !34
  %388 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %387, i64 0, i32 1
  %389 = load i32, ptr %388, align 8, !tbaa !67
  %390 = load i32, ptr %303, align 8, !tbaa !66
  %391 = icmp ult i32 %389, %390
  br i1 %391, label %400, label %392

392:                                              ; preds = %385
  %393 = add i32 %390, 256
  %394 = tail call i32 @llvm.umin.i32(i32 %393, i32 1048575)
  store i32 %394, ptr %303, align 8, !tbaa !66
  %395 = load ptr, ptr %387, align 8, !tbaa !68
  %396 = shl nuw nsw i32 %394, 2
  %397 = zext nneg i32 %396 to i64
  %398 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %395, i64 noundef %397, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %399 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %398, ptr %399, align 8, !tbaa !68
  br label %400

400:                                              ; preds = %392, %385
  %401 = shl i32 %386, 12
  %402 = or disjoint i32 %401, 592
  %403 = load ptr, ptr %0, align 8, !tbaa !34
  %404 = load ptr, ptr %403, align 8, !tbaa !68
  %405 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %403, i64 0, i32 1
  %406 = load i32, ptr %405, align 8, !tbaa !67
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds i32, ptr %404, i64 %407
  store i32 %402, ptr %408, align 4, !tbaa !40
  %409 = load i32, ptr %405, align 8, !tbaa !67
  %410 = add i32 %409, 1
  store i32 %410, ptr %405, align 8, !tbaa !67
  %411 = icmp ugt i32 %410, 1048574
  br i1 %411, label %412, label %414

412:                                              ; preds = %400
  %413 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %414

414:                                              ; preds = %400, %412
  %415 = load ptr, ptr %0, align 8, !tbaa !34
  %416 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %415, i64 0, i32 1
  %417 = load i32, ptr %416, align 8, !tbaa !67
  %418 = load i32, ptr %303, align 8, !tbaa !66
  %419 = icmp ult i32 %417, %418
  br i1 %419, label %428, label %420

420:                                              ; preds = %414
  %421 = add i32 %418, 256
  %422 = tail call i32 @llvm.umin.i32(i32 %421, i32 1048575)
  store i32 %422, ptr %303, align 8, !tbaa !66
  %423 = load ptr, ptr %415, align 8, !tbaa !68
  %424 = shl nuw nsw i32 %422, 2
  %425 = zext nneg i32 %424 to i64
  %426 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %423, i64 noundef %425, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %427 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %426, ptr %427, align 8, !tbaa !68
  br label %428

428:                                              ; preds = %420, %414
  %429 = load ptr, ptr %0, align 8, !tbaa !34
  %430 = load ptr, ptr %429, align 8, !tbaa !68
  %431 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %429, i64 0, i32 1
  %432 = load i32, ptr %431, align 8, !tbaa !67
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds i32, ptr %430, i64 %433
  store i32 5, ptr %434, align 4, !tbaa !40
  %435 = load i32, ptr %431, align 8, !tbaa !67
  %436 = add i32 %435, 1
  store i32 %436, ptr %431, align 8, !tbaa !67
  %437 = icmp ugt i32 %436, 1048574
  br i1 %437, label %438, label %440

438:                                              ; preds = %428
  %439 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %440

440:                                              ; preds = %428, %438
  %441 = load ptr, ptr %0, align 8, !tbaa !34
  %442 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %441, i64 0, i32 1
  %443 = load i32, ptr %442, align 8, !tbaa !67
  %444 = load i32, ptr %303, align 8, !tbaa !66
  %445 = icmp ult i32 %443, %444
  br i1 %445, label %454, label %446

446:                                              ; preds = %440
  %447 = add i32 %444, 256
  %448 = tail call i32 @llvm.umin.i32(i32 %447, i32 1048575)
  store i32 %448, ptr %303, align 8, !tbaa !66
  %449 = load ptr, ptr %441, align 8, !tbaa !68
  %450 = shl nuw nsw i32 %448, 2
  %451 = zext nneg i32 %450 to i64
  %452 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %449, i64 noundef %451, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %453 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %452, ptr %453, align 8, !tbaa !68
  br label %454

454:                                              ; preds = %446, %440
  %455 = shl i32 %11, 12
  %456 = add i32 %455, 8904
  %457 = load ptr, ptr %0, align 8, !tbaa !34
  %458 = load ptr, ptr %457, align 8, !tbaa !68
  %459 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %457, i64 0, i32 1
  %460 = load i32, ptr %459, align 8, !tbaa !67
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds i32, ptr %458, i64 %461
  store i32 %456, ptr %462, align 4, !tbaa !40
  %463 = load i32, ptr %459, align 8, !tbaa !67
  %464 = add i32 %463, 1
  store i32 %464, ptr %459, align 8, !tbaa !67
  %465 = icmp ugt i32 %464, 1048574
  br i1 %465, label %466, label %468

466:                                              ; preds = %454
  %467 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %468

468:                                              ; preds = %454, %466
  %469 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 1.140000e-01)
  %470 = load ptr, ptr %0, align 8, !tbaa !34
  %471 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %470, i64 0, i32 1
  %472 = load i32, ptr %471, align 8, !tbaa !67
  %473 = load i32, ptr %303, align 8, !tbaa !66
  %474 = icmp ult i32 %472, %473
  br i1 %474, label %483, label %475

475:                                              ; preds = %468
  %476 = add i32 %473, 256
  %477 = tail call i32 @llvm.umin.i32(i32 %476, i32 1048575)
  store i32 %477, ptr %303, align 8, !tbaa !66
  %478 = load ptr, ptr %470, align 8, !tbaa !68
  %479 = shl nuw nsw i32 %477, 2
  %480 = zext nneg i32 %479 to i64
  %481 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %478, i64 noundef %480, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %482 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %481, ptr %482, align 8, !tbaa !68
  br label %483

483:                                              ; preds = %475, %468
  %484 = shl i32 %469, 12
  %485 = or disjoint i32 %484, 592
  %486 = load ptr, ptr %0, align 8, !tbaa !34
  %487 = load ptr, ptr %486, align 8, !tbaa !68
  %488 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %486, i64 0, i32 1
  %489 = load i32, ptr %488, align 8, !tbaa !67
  %490 = zext i32 %489 to i64
  %491 = getelementptr inbounds i32, ptr %487, i64 %490
  store i32 %485, ptr %491, align 4, !tbaa !40
  %492 = load i32, ptr %488, align 8, !tbaa !67
  %493 = add i32 %492, 1
  store i32 %493, ptr %488, align 8, !tbaa !67
  %494 = icmp ugt i32 %493, 1048574
  br i1 %494, label %495, label %497

495:                                              ; preds = %483
  %496 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %497

497:                                              ; preds = %483, %495
  %498 = load ptr, ptr %0, align 8, !tbaa !34
  %499 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %498, i64 0, i32 1
  %500 = load i32, ptr %499, align 8, !tbaa !67
  %501 = load i32, ptr %303, align 8, !tbaa !66
  %502 = icmp ult i32 %500, %501
  br i1 %502, label %511, label %503

503:                                              ; preds = %497
  %504 = add i32 %501, 256
  %505 = tail call i32 @llvm.umin.i32(i32 %504, i32 1048575)
  store i32 %505, ptr %303, align 8, !tbaa !66
  %506 = load ptr, ptr %498, align 8, !tbaa !68
  %507 = shl nuw nsw i32 %505, 2
  %508 = zext nneg i32 %507 to i64
  %509 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %506, i64 noundef %508, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %510 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %509, ptr %510, align 8, !tbaa !68
  br label %511

511:                                              ; preds = %503, %497
  %512 = load ptr, ptr %0, align 8, !tbaa !34
  %513 = load ptr, ptr %512, align 8, !tbaa !68
  %514 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %512, i64 0, i32 1
  %515 = load i32, ptr %514, align 8, !tbaa !67
  %516 = zext i32 %515 to i64
  %517 = getelementptr inbounds i32, ptr %513, i64 %516
  store i32 5, ptr %517, align 4, !tbaa !40
  %518 = load i32, ptr %514, align 8, !tbaa !67
  %519 = add i32 %518, 1
  store i32 %519, ptr %514, align 8, !tbaa !67
  %520 = icmp ugt i32 %519, 1048574
  br i1 %520, label %521, label %672

521:                                              ; preds = %511
  %522 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %672

523:                                              ; preds = %296
  %524 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.15) #7
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %670

526:                                              ; preds = %523
  %527 = load ptr, ptr %0, align 8, !tbaa !34
  %528 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %527, i64 0, i32 1
  %529 = load i32, ptr %528, align 8, !tbaa !67
  %530 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %531 = load i32, ptr %530, align 8, !tbaa !66
  %532 = icmp ult i32 %529, %531
  br i1 %532, label %541, label %533

533:                                              ; preds = %526
  %534 = add i32 %531, 256
  %535 = tail call i32 @llvm.umin.i32(i32 %534, i32 1048575)
  store i32 %535, ptr %530, align 8, !tbaa !66
  %536 = load ptr, ptr %527, align 8, !tbaa !68
  %537 = shl nuw nsw i32 %535, 2
  %538 = zext nneg i32 %537 to i64
  %539 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %536, i64 noundef %538, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %540 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %539, ptr %540, align 8, !tbaa !68
  br label %541

541:                                              ; preds = %533, %526
  %542 = shl i32 %11, 12
  %543 = or disjoint i32 %542, 717
  %544 = load ptr, ptr %0, align 8, !tbaa !34
  %545 = load ptr, ptr %544, align 8, !tbaa !68
  %546 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %544, i64 0, i32 1
  %547 = load i32, ptr %546, align 8, !tbaa !67
  %548 = zext i32 %547 to i64
  %549 = getelementptr inbounds i32, ptr %545, i64 %548
  store i32 %543, ptr %549, align 4, !tbaa !40
  %550 = load i32, ptr %546, align 8, !tbaa !67
  %551 = add i32 %550, 1
  store i32 %551, ptr %546, align 8, !tbaa !67
  %552 = icmp ugt i32 %551, 1048574
  br i1 %552, label %553, label %555

553:                                              ; preds = %541
  %554 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %555

555:                                              ; preds = %541, %553
  %556 = load ptr, ptr %0, align 8, !tbaa !34
  %557 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %556, i64 0, i32 1
  %558 = load i32, ptr %557, align 8, !tbaa !67
  %559 = load i32, ptr %530, align 8, !tbaa !66
  %560 = icmp ult i32 %558, %559
  br i1 %560, label %569, label %561

561:                                              ; preds = %555
  %562 = add i32 %559, 256
  %563 = tail call i32 @llvm.umin.i32(i32 %562, i32 1048575)
  store i32 %563, ptr %530, align 8, !tbaa !66
  %564 = load ptr, ptr %556, align 8, !tbaa !68
  %565 = shl nuw nsw i32 %563, 2
  %566 = zext nneg i32 %565 to i64
  %567 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %564, i64 noundef %566, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %568 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %567, ptr %568, align 8, !tbaa !68
  br label %569

569:                                              ; preds = %561, %555
  %570 = shl i32 %11, 12
  %571 = add i32 %570, 4808
  %572 = load ptr, ptr %0, align 8, !tbaa !34
  %573 = load ptr, ptr %572, align 8, !tbaa !68
  %574 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %572, i64 0, i32 1
  %575 = load i32, ptr %574, align 8, !tbaa !67
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds i32, ptr %573, i64 %576
  store i32 %571, ptr %577, align 4, !tbaa !40
  %578 = load i32, ptr %574, align 8, !tbaa !67
  %579 = add i32 %578, 1
  store i32 %579, ptr %574, align 8, !tbaa !67
  %580 = icmp ugt i32 %579, 1048574
  br i1 %580, label %581, label %583

581:                                              ; preds = %569
  %582 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %583

583:                                              ; preds = %569, %581
  %584 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0x3F70101010101010)
  %585 = load ptr, ptr %0, align 8, !tbaa !34
  %586 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %585, i64 0, i32 1
  %587 = load i32, ptr %586, align 8, !tbaa !67
  %588 = load i32, ptr %530, align 8, !tbaa !66
  %589 = icmp ult i32 %587, %588
  br i1 %589, label %598, label %590

590:                                              ; preds = %583
  %591 = add i32 %588, 256
  %592 = tail call i32 @llvm.umin.i32(i32 %591, i32 1048575)
  store i32 %592, ptr %530, align 8, !tbaa !66
  %593 = load ptr, ptr %585, align 8, !tbaa !68
  %594 = shl nuw nsw i32 %592, 2
  %595 = zext nneg i32 %594 to i64
  %596 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %593, i64 noundef %595, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %597 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %596, ptr %597, align 8, !tbaa !68
  br label %598

598:                                              ; preds = %590, %583
  %599 = shl i32 %584, 12
  %600 = or disjoint i32 %599, 592
  %601 = load ptr, ptr %0, align 8, !tbaa !34
  %602 = load ptr, ptr %601, align 8, !tbaa !68
  %603 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %601, i64 0, i32 1
  %604 = load i32, ptr %603, align 8, !tbaa !67
  %605 = zext i32 %604 to i64
  %606 = getelementptr inbounds i32, ptr %602, i64 %605
  store i32 %600, ptr %606, align 4, !tbaa !40
  %607 = load i32, ptr %603, align 8, !tbaa !67
  %608 = add i32 %607, 1
  store i32 %608, ptr %603, align 8, !tbaa !67
  %609 = icmp ugt i32 %608, 1048574
  br i1 %609, label %610, label %612

610:                                              ; preds = %598
  %611 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %612

612:                                              ; preds = %598, %610
  %613 = load ptr, ptr %0, align 8, !tbaa !34
  %614 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %613, i64 0, i32 1
  %615 = load i32, ptr %614, align 8, !tbaa !67
  %616 = load i32, ptr %530, align 8, !tbaa !66
  %617 = icmp ult i32 %615, %616
  br i1 %617, label %626, label %618

618:                                              ; preds = %612
  %619 = add i32 %616, 256
  %620 = tail call i32 @llvm.umin.i32(i32 %619, i32 1048575)
  store i32 %620, ptr %530, align 8, !tbaa !66
  %621 = load ptr, ptr %613, align 8, !tbaa !68
  %622 = shl nuw nsw i32 %620, 2
  %623 = zext nneg i32 %622 to i64
  %624 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %621, i64 noundef %623, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %625 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %624, ptr %625, align 8, !tbaa !68
  br label %626

626:                                              ; preds = %618, %612
  %627 = load ptr, ptr %0, align 8, !tbaa !34
  %628 = load ptr, ptr %627, align 8, !tbaa !68
  %629 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %627, i64 0, i32 1
  %630 = load i32, ptr %629, align 8, !tbaa !67
  %631 = zext i32 %630 to i64
  %632 = getelementptr inbounds i32, ptr %628, i64 %631
  store i32 5, ptr %632, align 4, !tbaa !40
  %633 = load i32, ptr %629, align 8, !tbaa !67
  %634 = add i32 %633, 1
  store i32 %634, ptr %629, align 8, !tbaa !67
  %635 = icmp ugt i32 %634, 1048574
  br i1 %635, label %636, label %638

636:                                              ; preds = %626
  %637 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %638

638:                                              ; preds = %626, %636
  %639 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 9.960930e-01)
  %640 = load ptr, ptr %0, align 8, !tbaa !34
  %641 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %640, i64 0, i32 1
  %642 = load i32, ptr %641, align 8, !tbaa !67
  %643 = load i32, ptr %530, align 8, !tbaa !66
  %644 = icmp ult i32 %642, %643
  br i1 %644, label %653, label %645

645:                                              ; preds = %638
  %646 = add i32 %643, 256
  %647 = tail call i32 @llvm.umin.i32(i32 %646, i32 1048575)
  store i32 %647, ptr %530, align 8, !tbaa !66
  %648 = load ptr, ptr %640, align 8, !tbaa !68
  %649 = shl nuw nsw i32 %647, 2
  %650 = zext nneg i32 %649 to i64
  %651 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %648, i64 noundef %650, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %652 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %651, ptr %652, align 8, !tbaa !68
  br label %653

653:                                              ; preds = %645, %638
  %654 = shl i32 %639, 12
  %655 = or disjoint i32 %654, 597
  %656 = load ptr, ptr %0, align 8, !tbaa !34
  %657 = load ptr, ptr %656, align 8, !tbaa !68
  %658 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %656, i64 0, i32 1
  %659 = load i32, ptr %658, align 8, !tbaa !67
  %660 = zext i32 %659 to i64
  %661 = getelementptr inbounds i32, ptr %657, i64 %660
  store i32 %655, ptr %661, align 4, !tbaa !40
  %662 = load i32, ptr %658, align 8, !tbaa !67
  %663 = add i32 %662, 1
  store i32 %663, ptr %658, align 8, !tbaa !67
  %664 = icmp ugt i32 %663, 1048574
  br i1 %664, label %665, label %667

665:                                              ; preds = %653
  %666 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %667

667:                                              ; preds = %653, %665
  %668 = load i32, ptr @_ZN3pov17Experimental_FlagE, align 4, !tbaa !40
  %669 = or i32 %668, 4
  store i32 %669, ptr @_ZN3pov17Experimental_FlagE, align 4, !tbaa !40
  br label %672

670:                                              ; preds = %523
  %671 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.16)
  br label %672

672:                                              ; preds = %521, %511, %291, %279, %259, %247, %227, %215, %195, %183, %163, %151, %131, %119, %102, %90, %73, %61, %44, %32, %667, %670
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCode12compile_callEPNS_14ExprNodeStructEjiPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.17)
  br label %9

9:                                                ; preds = %7, %5
  switch i32 %3, label %43 [
    i32 31, label %44
    i32 6, label %10
    i32 44, label %11
    i32 43, label %12
    i32 42, label %13
    i32 1, label %14
    i32 57, label %15
    i32 56, label %16
    i32 58, label %17
    i32 61, label %18
    i32 60, label %19
    i32 59, label %20
    i32 0, label %21
    i32 29, label %22
    i32 7, label %23
    i32 8, label %24
    i32 21, label %25
    i32 12, label %26
    i32 3, label %27
    i32 32, label %28
    i32 9, label %29
    i32 22, label %30
    i32 23, label %31
    i32 25, label %32
    i32 24, label %33
    i32 2, label %34
    i32 28, label %35
    i32 26, label %36
    i32 30, label %37
    i32 62, label %38
    i32 63, label %39
    i32 364, label %40
    i32 487, label %41
    i32 488, label %42
  ]

10:                                               ; preds = %9
  br label %44

11:                                               ; preds = %9
  br label %44

12:                                               ; preds = %9
  br label %44

13:                                               ; preds = %9
  br label %44

14:                                               ; preds = %9
  br label %44

15:                                               ; preds = %9
  br label %44

16:                                               ; preds = %9
  br label %44

17:                                               ; preds = %9
  br label %44

18:                                               ; preds = %9
  br label %44

19:                                               ; preds = %9
  br label %44

20:                                               ; preds = %9
  br label %44

21:                                               ; preds = %9
  br label %44

22:                                               ; preds = %9
  br label %44

23:                                               ; preds = %9
  br label %44

24:                                               ; preds = %9
  br label %44

25:                                               ; preds = %9
  br label %44

26:                                               ; preds = %9
  br label %44

27:                                               ; preds = %9
  br label %44

28:                                               ; preds = %9
  br label %44

29:                                               ; preds = %9
  br label %44

30:                                               ; preds = %9
  br label %44

31:                                               ; preds = %9
  br label %44

32:                                               ; preds = %9
  br label %44

33:                                               ; preds = %9
  br label %44

34:                                               ; preds = %9
  br label %44

35:                                               ; preds = %9
  br label %44

36:                                               ; preds = %9
  br label %44

37:                                               ; preds = %9
  br label %44

38:                                               ; preds = %9
  br label %44

39:                                               ; preds = %9
  br label %44

40:                                               ; preds = %9
  br label %44

41:                                               ; preds = %9
  br label %44

42:                                               ; preds = %9
  br label %44

43:                                               ; preds = %9
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef nonnull @.str.18)
  br label %44

44:                                               ; preds = %9, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  %45 = phi i1 [ true, %43 ], [ true, %42 ], [ true, %41 ], [ true, %40 ], [ true, %39 ], [ true, %38 ], [ true, %37 ], [ true, %36 ], [ true, %35 ], [ true, %34 ], [ true, %33 ], [ true, %32 ], [ false, %31 ], [ false, %30 ], [ true, %29 ], [ true, %28 ], [ true, %27 ], [ true, %26 ], [ true, %25 ], [ true, %24 ], [ true, %23 ], [ true, %22 ], [ true, %21 ], [ true, %20 ], [ true, %19 ], [ true, %18 ], [ true, %17 ], [ true, %16 ], [ true, %15 ], [ true, %14 ], [ true, %13 ], [ true, %12 ], [ true, %11 ], [ true, %10 ], [ true, %9 ]
  %46 = phi i32 [ 0, %43 ], [ 0, %42 ], [ 0, %41 ], [ 0, %40 ], [ 0, %39 ], [ 0, %38 ], [ 0, %37 ], [ 0, %36 ], [ 0, %35 ], [ 0, %34 ], [ 0, %33 ], [ 0, %32 ], [ 920, %31 ], [ 920, %30 ], [ 0, %29 ], [ 0, %28 ], [ 0, %27 ], [ 0, %26 ], [ 0, %25 ], [ 0, %24 ], [ 0, %23 ], [ 0, %22 ], [ 0, %21 ], [ 0, %20 ], [ 0, %19 ], [ 0, %18 ], [ 0, %17 ], [ 0, %16 ], [ 0, %15 ], [ 0, %14 ], [ 0, %13 ], [ 0, %12 ], [ 0, %11 ], [ 0, %10 ], [ 0, %9 ]
  %47 = phi i1 [ true, %43 ], [ true, %42 ], [ true, %41 ], [ true, %40 ], [ true, %39 ], [ true, %38 ], [ true, %37 ], [ false, %36 ], [ true, %35 ], [ true, %34 ], [ true, %33 ], [ true, %32 ], [ true, %31 ], [ true, %30 ], [ true, %29 ], [ true, %28 ], [ true, %27 ], [ true, %26 ], [ true, %25 ], [ false, %24 ], [ true, %23 ], [ true, %22 ], [ true, %21 ], [ true, %20 ], [ true, %19 ], [ true, %18 ], [ true, %17 ], [ true, %16 ], [ true, %15 ], [ true, %14 ], [ true, %13 ], [ true, %12 ], [ true, %11 ], [ true, %10 ], [ true, %9 ]
  %48 = phi i32 [ 0, %43 ], [ 0, %42 ], [ 0, %41 ], [ 0, %40 ], [ 0, %39 ], [ 0, %38 ], [ 0, %37 ], [ 896, %36 ], [ 0, %35 ], [ 0, %34 ], [ 0, %33 ], [ 0, %32 ], [ 0, %31 ], [ 0, %30 ], [ 0, %29 ], [ 0, %28 ], [ 0, %27 ], [ 0, %26 ], [ 0, %25 ], [ 896, %24 ], [ 0, %23 ], [ 0, %22 ], [ 0, %21 ], [ 0, %20 ], [ 0, %19 ], [ 0, %18 ], [ 0, %17 ], [ 0, %16 ], [ 0, %15 ], [ 0, %14 ], [ 0, %13 ], [ 0, %12 ], [ 0, %11 ], [ 0, %10 ], [ 0, %9 ]
  %49 = phi i32 [ 0, %43 ], [ 0, %42 ], [ 0, %41 ], [ 0, %40 ], [ 0, %39 ], [ 0, %38 ], [ 0, %37 ], [ 8192, %36 ], [ 0, %35 ], [ 4096, %34 ], [ 0, %33 ], [ 0, %32 ], [ 69632, %31 ], [ 65536, %30 ], [ 61440, %29 ], [ 57344, %28 ], [ 53248, %27 ], [ 49152, %26 ], [ 73728, %25 ], [ 12288, %24 ], [ 0, %23 ], [ 0, %22 ], [ 0, %21 ], [ 45056, %20 ], [ 40960, %19 ], [ 36864, %18 ], [ 32768, %17 ], [ 28672, %16 ], [ 24576, %15 ], [ 20480, %14 ], [ 16384, %13 ], [ 12288, %12 ], [ 8192, %11 ], [ 4096, %10 ], [ 0, %9 ]
  %50 = phi i32 [ 1, %43 ], [ 10, %42 ], [ 9, %41 ], [ 12, %40 ], [ 14, %39 ], [ 13, %38 ], [ 8, %37 ], [ 2, %36 ], [ 11, %35 ], [ %3, %34 ], [ 6, %33 ], [ 5, %32 ], [ 1, %31 ], [ 1, %30 ], [ 1, %29 ], [ 1, %28 ], [ 1, %27 ], [ 1, %26 ], [ 1, %25 ], [ 2, %24 ], [ 4, %23 ], [ 3, %22 ], [ 7, %21 ], [ 1, %20 ], [ 1, %19 ], [ 1, %18 ], [ 1, %17 ], [ 1, %16 ], [ 1, %15 ], [ %3, %14 ], [ 1, %13 ], [ 1, %12 ], [ 1, %11 ], [ 1, %10 ], [ 1, %9 ]
  switch i32 %50, label %851 [
    i32 1, label %51
    i32 2, label %115
    i32 3, label %269
    i32 4, label %307
    i32 5, label %345
    i32 6, label %498
    i32 7, label %651
    i32 8, label %686
    i32 9, label %687
    i32 10, label %688
    i32 11, label %689
    i32 12, label %814
    i32 13, label %849
    i32 14, label %850
  ]

51:                                               ; preds = %44
  %52 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %53)
  br i1 %45, label %81, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %0, align 8, !tbaa !34
  %56 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %55, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !67
  %58 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !66
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %54
  %62 = add i32 %59, 256
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 1048575)
  store i32 %63, ptr %58, align 8, !tbaa !66
  %64 = load ptr, ptr %55, align 8, !tbaa !68
  %65 = shl nuw nsw i32 %63, 2
  %66 = zext nneg i32 %65 to i64
  %67 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %64, i64 noundef %66, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %68 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %67, ptr %68, align 8, !tbaa !68
  br label %69

69:                                               ; preds = %61, %54
  %70 = load ptr, ptr %0, align 8, !tbaa !34
  %71 = load ptr, ptr %70, align 8, !tbaa !68
  %72 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %70, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !67
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %71, i64 %74
  store i32 %46, ptr %75, align 4, !tbaa !40
  %76 = load i32, ptr %72, align 8, !tbaa !67
  %77 = add i32 %76, 1
  store i32 %77, ptr %72, align 8, !tbaa !67
  %78 = icmp ugt i32 %77, 1048574
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %81

81:                                               ; preds = %79, %69, %51
  %82 = load ptr, ptr %0, align 8, !tbaa !34
  %83 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %82, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !67
  %85 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !66
  %87 = icmp ult i32 %84, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %81
  %89 = add i32 %86, 256
  %90 = tail call i32 @llvm.umin.i32(i32 %89, i32 1048575)
  store i32 %90, ptr %85, align 8, !tbaa !66
  %91 = load ptr, ptr %82, align 8, !tbaa !68
  %92 = shl nuw nsw i32 %90, 2
  %93 = zext nneg i32 %92 to i64
  %94 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %91, i64 noundef %93, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %95 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %94, ptr %95, align 8, !tbaa !68
  br label %96

96:                                               ; preds = %88, %81
  %97 = or disjoint i32 %49, 964
  %98 = load ptr, ptr %0, align 8, !tbaa !34
  %99 = load ptr, ptr %98, align 8, !tbaa !68
  %100 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %98, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !67
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, ptr %99, i64 %102
  store i32 %97, ptr %103, align 4, !tbaa !40
  %104 = load i32, ptr %100, align 8, !tbaa !67
  %105 = add i32 %104, 1
  store i32 %105, ptr %100, align 8, !tbaa !67
  %106 = icmp ugt i32 %105, 1048574
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %109

109:                                              ; preds = %96, %107
  %110 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !83
  %112 = icmp eq ptr %111, null
  br i1 %112, label %852, label %113

113:                                              ; preds = %109
  %114 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.19, ptr noundef %4)
  br label %852

115:                                              ; preds = %44
  %116 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !83
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.20, ptr noundef %4)
  br label %121

121:                                              ; preds = %119, %115
  %122 = load ptr, ptr %116, align 8, !tbaa !83
  %123 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %124)
  br i1 %47, label %152, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %0, align 8, !tbaa !34
  %127 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %126, i64 0, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !67
  %129 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !66
  %131 = icmp ult i32 %128, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %125
  %133 = add i32 %130, 256
  %134 = tail call i32 @llvm.umin.i32(i32 %133, i32 1048575)
  store i32 %134, ptr %129, align 8, !tbaa !66
  %135 = load ptr, ptr %126, align 8, !tbaa !68
  %136 = shl nuw nsw i32 %134, 2
  %137 = zext nneg i32 %136 to i64
  %138 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %135, i64 noundef %137, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %139 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %138, ptr %139, align 8, !tbaa !68
  br label %140

140:                                              ; preds = %132, %125
  %141 = load ptr, ptr %0, align 8, !tbaa !34
  %142 = load ptr, ptr %141, align 8, !tbaa !68
  %143 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %141, i64 0, i32 1
  %144 = load i32, ptr %143, align 8, !tbaa !67
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, ptr %142, i64 %145
  store i32 %48, ptr %146, align 4, !tbaa !40
  %147 = load i32, ptr %143, align 8, !tbaa !67
  %148 = add i32 %147, 1
  store i32 %148, ptr %143, align 8, !tbaa !67
  %149 = icmp ugt i32 %148, 1048574
  br i1 %149, label %150, label %152

150:                                              ; preds = %140
  %151 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %152

152:                                              ; preds = %150, %140, %121
  %153 = tail call noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr noundef nonnull align 8 dereferenceable(28) %0)
  %154 = load ptr, ptr %0, align 8, !tbaa !34
  %155 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %154, i64 0, i32 1
  %156 = load i32, ptr %155, align 8, !tbaa !67
  %157 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !66
  %159 = icmp ult i32 %156, %158
  br i1 %159, label %168, label %160

160:                                              ; preds = %152
  %161 = add i32 %158, 256
  %162 = tail call i32 @llvm.umin.i32(i32 %161, i32 1048575)
  store i32 %162, ptr %157, align 8, !tbaa !66
  %163 = load ptr, ptr %154, align 8, !tbaa !68
  %164 = shl nuw nsw i32 %162, 2
  %165 = zext nneg i32 %164 to i64
  %166 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %163, i64 noundef %165, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %167 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %166, ptr %167, align 8, !tbaa !68
  br label %168

168:                                              ; preds = %160, %152
  %169 = load ptr, ptr %0, align 8, !tbaa !34
  %170 = load ptr, ptr %169, align 8, !tbaa !68
  %171 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %169, i64 0, i32 1
  %172 = load i32, ptr %171, align 8, !tbaa !67
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, ptr %170, i64 %173
  store i32 325, ptr %174, align 4, !tbaa !40
  %175 = load i32, ptr %171, align 8, !tbaa !67
  %176 = add i32 %175, 1
  store i32 %176, ptr %171, align 8, !tbaa !67
  %177 = icmp ugt i32 %176, 1048574
  br i1 %177, label %178, label %180

178:                                              ; preds = %168
  %179 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %180

180:                                              ; preds = %168, %178
  %181 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %182)
  br i1 %45, label %209, label %183

183:                                              ; preds = %180
  %184 = load ptr, ptr %0, align 8, !tbaa !34
  %185 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %184, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !67
  %187 = load i32, ptr %157, align 8, !tbaa !66
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %197, label %189

189:                                              ; preds = %183
  %190 = add i32 %187, 256
  %191 = tail call i32 @llvm.umin.i32(i32 %190, i32 1048575)
  store i32 %191, ptr %157, align 8, !tbaa !66
  %192 = load ptr, ptr %184, align 8, !tbaa !68
  %193 = shl nuw nsw i32 %191, 2
  %194 = zext nneg i32 %193 to i64
  %195 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %192, i64 noundef %194, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %196 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %195, ptr %196, align 8, !tbaa !68
  br label %197

197:                                              ; preds = %189, %183
  %198 = load ptr, ptr %0, align 8, !tbaa !34
  %199 = load ptr, ptr %198, align 8, !tbaa !68
  %200 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %198, i64 0, i32 1
  %201 = load i32, ptr %200, align 8, !tbaa !67
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, ptr %199, i64 %202
  store i32 %46, ptr %203, align 4, !tbaa !40
  %204 = load i32, ptr %200, align 8, !tbaa !67
  %205 = add i32 %204, 1
  store i32 %205, ptr %200, align 8, !tbaa !67
  %206 = icmp ugt i32 %205, 1048574
  br i1 %206, label %207, label %209

207:                                              ; preds = %197
  %208 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %209

209:                                              ; preds = %207, %197, %180
  %210 = load ptr, ptr %0, align 8, !tbaa !34
  %211 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %210, i64 0, i32 1
  %212 = load i32, ptr %211, align 8, !tbaa !67
  %213 = load i32, ptr %157, align 8, !tbaa !66
  %214 = icmp ult i32 %212, %213
  br i1 %214, label %223, label %215

215:                                              ; preds = %209
  %216 = add i32 %213, 256
  %217 = tail call i32 @llvm.umin.i32(i32 %216, i32 1048575)
  store i32 %217, ptr %157, align 8, !tbaa !66
  %218 = load ptr, ptr %210, align 8, !tbaa !68
  %219 = shl nuw nsw i32 %217, 2
  %220 = zext nneg i32 %219 to i64
  %221 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %218, i64 noundef %220, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %222 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %221, ptr %222, align 8, !tbaa !68
  br label %223

223:                                              ; preds = %215, %209
  %224 = load ptr, ptr %0, align 8, !tbaa !34
  %225 = load ptr, ptr %224, align 8, !tbaa !68
  %226 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %224, i64 0, i32 1
  %227 = load i32, ptr %226, align 8, !tbaa !67
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i32, ptr %225, i64 %228
  store i32 361, ptr %229, align 4, !tbaa !40
  %230 = load i32, ptr %226, align 8, !tbaa !67
  %231 = add i32 %230, 1
  store i32 %231, ptr %226, align 8, !tbaa !67
  %232 = icmp ugt i32 %231, 1048574
  br i1 %232, label %233, label %235

233:                                              ; preds = %223
  %234 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %235

235:                                              ; preds = %223, %233
  tail call void @_ZN3pov6FNCode18compile_pop_resultEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %153)
  %236 = load ptr, ptr %116, align 8, !tbaa !83
  %237 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %236, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !83
  %239 = icmp eq ptr %238, null
  br i1 %239, label %242, label %240

240:                                              ; preds = %235
  %241 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.21, ptr noundef %4)
  br label %242

242:                                              ; preds = %240, %235
  %243 = load ptr, ptr %0, align 8, !tbaa !34
  %244 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %243, i64 0, i32 1
  %245 = load i32, ptr %244, align 8, !tbaa !67
  %246 = load i32, ptr %157, align 8, !tbaa !66
  %247 = icmp ult i32 %245, %246
  br i1 %247, label %256, label %248

248:                                              ; preds = %242
  %249 = add i32 %246, 256
  %250 = tail call i32 @llvm.umin.i32(i32 %249, i32 1048575)
  store i32 %250, ptr %157, align 8, !tbaa !66
  %251 = load ptr, ptr %243, align 8, !tbaa !68
  %252 = shl nuw nsw i32 %250, 2
  %253 = zext nneg i32 %252 to i64
  %254 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %251, i64 noundef %253, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %255 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %254, ptr %255, align 8, !tbaa !68
  br label %256

256:                                              ; preds = %248, %242
  %257 = or disjoint i32 %49, 965
  %258 = load ptr, ptr %0, align 8, !tbaa !34
  %259 = load ptr, ptr %258, align 8, !tbaa !68
  %260 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %258, i64 0, i32 1
  %261 = load i32, ptr %260, align 8, !tbaa !67
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i32, ptr %259, i64 %262
  store i32 %257, ptr %263, align 4, !tbaa !40
  %264 = load i32, ptr %260, align 8, !tbaa !67
  %265 = add i32 %264, 1
  store i32 %265, ptr %260, align 8, !tbaa !67
  %266 = icmp ugt i32 %265, 1048574
  br i1 %266, label %267, label %852

267:                                              ; preds = %256
  %268 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %852

269:                                              ; preds = %44
  %270 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %271)
  %272 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0x3F91DF46A2529D39)
  %273 = load ptr, ptr %0, align 8, !tbaa !34
  %274 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %273, i64 0, i32 1
  %275 = load i32, ptr %274, align 8, !tbaa !67
  %276 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %277 = load i32, ptr %276, align 8, !tbaa !66
  %278 = icmp ult i32 %275, %277
  br i1 %278, label %287, label %279

279:                                              ; preds = %269
  %280 = add i32 %277, 256
  %281 = tail call i32 @llvm.umin.i32(i32 %280, i32 1048575)
  store i32 %281, ptr %276, align 8, !tbaa !66
  %282 = load ptr, ptr %273, align 8, !tbaa !68
  %283 = shl nuw nsw i32 %281, 2
  %284 = zext nneg i32 %283 to i64
  %285 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %282, i64 noundef %284, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %286 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %285, ptr %286, align 8, !tbaa !68
  br label %287

287:                                              ; preds = %279, %269
  %288 = shl i32 %272, 12
  %289 = or disjoint i32 %288, 592
  %290 = load ptr, ptr %0, align 8, !tbaa !34
  %291 = load ptr, ptr %290, align 8, !tbaa !68
  %292 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %290, i64 0, i32 1
  %293 = load i32, ptr %292, align 8, !tbaa !67
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds i32, ptr %291, i64 %294
  store i32 %289, ptr %295, align 4, !tbaa !40
  %296 = load i32, ptr %292, align 8, !tbaa !67
  %297 = add i32 %296, 1
  store i32 %297, ptr %292, align 8, !tbaa !67
  %298 = icmp ugt i32 %297, 1048574
  br i1 %298, label %299, label %301

299:                                              ; preds = %287
  %300 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %301

301:                                              ; preds = %287, %299
  %302 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %303 = load ptr, ptr %302, align 8, !tbaa !83
  %304 = icmp eq ptr %303, null
  br i1 %304, label %852, label %305

305:                                              ; preds = %301
  %306 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.19, ptr noundef %4)
  br label %852

307:                                              ; preds = %44
  %308 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %309)
  %310 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0x404CA5DC1A63C1F8)
  %311 = load ptr, ptr %0, align 8, !tbaa !34
  %312 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %311, i64 0, i32 1
  %313 = load i32, ptr %312, align 8, !tbaa !67
  %314 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %315 = load i32, ptr %314, align 8, !tbaa !66
  %316 = icmp ult i32 %313, %315
  br i1 %316, label %325, label %317

317:                                              ; preds = %307
  %318 = add i32 %315, 256
  %319 = tail call i32 @llvm.umin.i32(i32 %318, i32 1048575)
  store i32 %319, ptr %314, align 8, !tbaa !66
  %320 = load ptr, ptr %311, align 8, !tbaa !68
  %321 = shl nuw nsw i32 %319, 2
  %322 = zext nneg i32 %321 to i64
  %323 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %320, i64 noundef %322, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %324 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %323, ptr %324, align 8, !tbaa !68
  br label %325

325:                                              ; preds = %317, %307
  %326 = shl i32 %310, 12
  %327 = or disjoint i32 %326, 592
  %328 = load ptr, ptr %0, align 8, !tbaa !34
  %329 = load ptr, ptr %328, align 8, !tbaa !68
  %330 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %328, i64 0, i32 1
  %331 = load i32, ptr %330, align 8, !tbaa !67
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i32, ptr %329, i64 %332
  store i32 %327, ptr %333, align 4, !tbaa !40
  %334 = load i32, ptr %330, align 8, !tbaa !67
  %335 = add i32 %334, 1
  store i32 %335, ptr %330, align 8, !tbaa !67
  %336 = icmp ugt i32 %335, 1048574
  br i1 %336, label %337, label %339

337:                                              ; preds = %325
  %338 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %339

339:                                              ; preds = %325, %337
  %340 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %341 = load ptr, ptr %340, align 8, !tbaa !83
  %342 = icmp eq ptr %341, null
  br i1 %342, label %852, label %343

343:                                              ; preds = %339
  %344 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.19, ptr noundef %4)
  br label %852

345:                                              ; preds = %44
  %346 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %347)
  %348 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %349 = load ptr, ptr %348, align 8, !tbaa !83
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %353

351:                                              ; preds = %345
  %352 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.22, ptr noundef %4)
  br label %353

353:                                              ; preds = %351, %345
  %354 = load ptr, ptr %348, align 8, !tbaa !83
  %355 = icmp eq ptr %354, null
  br i1 %355, label %852, label %356

356:                                              ; preds = %353
  %357 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  br label %358

358:                                              ; preds = %356, %494
  %359 = phi ptr [ %354, %356 ], [ %496, %494 ]
  %360 = tail call noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr noundef nonnull align 8 dereferenceable(28) %0)
  %361 = load ptr, ptr %0, align 8, !tbaa !34
  %362 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %361, i64 0, i32 1
  %363 = load i32, ptr %362, align 8, !tbaa !67
  %364 = load i32, ptr %357, align 8, !tbaa !66
  %365 = icmp ult i32 %363, %364
  br i1 %365, label %374, label %366

366:                                              ; preds = %358
  %367 = add i32 %364, 256
  %368 = tail call i32 @llvm.umin.i32(i32 %367, i32 1048575)
  store i32 %368, ptr %357, align 8, !tbaa !66
  %369 = load ptr, ptr %361, align 8, !tbaa !68
  %370 = shl nuw nsw i32 %368, 2
  %371 = zext nneg i32 %370 to i64
  %372 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %369, i64 noundef %371, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %373 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %372, ptr %373, align 8, !tbaa !68
  br label %374

374:                                              ; preds = %366, %358
  %375 = load ptr, ptr %0, align 8, !tbaa !34
  %376 = load ptr, ptr %375, align 8, !tbaa !68
  %377 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %375, i64 0, i32 1
  %378 = load i32, ptr %377, align 8, !tbaa !67
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds i32, ptr %376, i64 %379
  store i32 325, ptr %380, align 4, !tbaa !40
  %381 = load i32, ptr %377, align 8, !tbaa !67
  %382 = add i32 %381, 1
  store i32 %382, ptr %377, align 8, !tbaa !67
  %383 = icmp ugt i32 %382, 1048574
  br i1 %383, label %384, label %386

384:                                              ; preds = %374
  %385 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %386

386:                                              ; preds = %374, %384
  %387 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %359, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %388)
  %389 = load ptr, ptr %0, align 8, !tbaa !34
  %390 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %389, i64 0, i32 1
  %391 = load i32, ptr %390, align 8, !tbaa !67
  %392 = load i32, ptr %357, align 8, !tbaa !66
  %393 = icmp ult i32 %391, %392
  br i1 %393, label %402, label %394

394:                                              ; preds = %386
  %395 = add i32 %392, 256
  %396 = tail call i32 @llvm.umin.i32(i32 %395, i32 1048575)
  store i32 %396, ptr %357, align 8, !tbaa !66
  %397 = load ptr, ptr %389, align 8, !tbaa !68
  %398 = shl nuw nsw i32 %396, 2
  %399 = zext nneg i32 %398 to i64
  %400 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %397, i64 noundef %399, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %401 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %400, ptr %401, align 8, !tbaa !68
  br label %402

402:                                              ; preds = %394, %386
  %403 = load ptr, ptr %0, align 8, !tbaa !34
  %404 = load ptr, ptr %403, align 8, !tbaa !68
  %405 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %403, i64 0, i32 1
  %406 = load i32, ptr %405, align 8, !tbaa !67
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds i32, ptr %404, i64 %407
  store i32 361, ptr %408, align 4, !tbaa !40
  %409 = load i32, ptr %405, align 8, !tbaa !67
  %410 = add i32 %409, 1
  store i32 %410, ptr %405, align 8, !tbaa !67
  %411 = icmp ugt i32 %410, 1048574
  br i1 %411, label %412, label %414

412:                                              ; preds = %402
  %413 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %414

414:                                              ; preds = %402, %412
  tail call void @_ZN3pov6FNCode18compile_pop_resultEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %360)
  %415 = load ptr, ptr %0, align 8, !tbaa !34
  %416 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %415, i64 0, i32 1
  %417 = load i32, ptr %416, align 8, !tbaa !67
  %418 = load i32, ptr %357, align 8, !tbaa !66
  %419 = icmp ult i32 %417, %418
  br i1 %419, label %428, label %420

420:                                              ; preds = %414
  %421 = add i32 %418, 256
  %422 = tail call i32 @llvm.umin.i32(i32 %421, i32 1048575)
  store i32 %422, ptr %357, align 8, !tbaa !66
  %423 = load ptr, ptr %415, align 8, !tbaa !68
  %424 = shl nuw nsw i32 %422, 2
  %425 = zext nneg i32 %424 to i64
  %426 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %423, i64 noundef %425, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %427 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %426, ptr %427, align 8, !tbaa !68
  br label %428

428:                                              ; preds = %420, %414
  %429 = load ptr, ptr %0, align 8, !tbaa !34
  %430 = load ptr, ptr %429, align 8, !tbaa !68
  %431 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %429, i64 0, i32 1
  %432 = load i32, ptr %431, align 8, !tbaa !67
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds i32, ptr %430, i64 %433
  store i32 385, ptr %434, align 4, !tbaa !40
  %435 = load i32, ptr %431, align 8, !tbaa !67
  %436 = add i32 %435, 1
  store i32 %436, ptr %431, align 8, !tbaa !67
  %437 = icmp ugt i32 %436, 1048574
  br i1 %437, label %438, label %440

438:                                              ; preds = %428
  %439 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %440

440:                                              ; preds = %428, %438
  %441 = load ptr, ptr %0, align 8, !tbaa !34
  %442 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %441, i64 0, i32 1
  %443 = load i32, ptr %442, align 8, !tbaa !67
  %444 = load i32, ptr %357, align 8, !tbaa !66
  %445 = icmp ult i32 %443, %444
  br i1 %445, label %454, label %446

446:                                              ; preds = %440
  %447 = add i32 %444, 256
  %448 = tail call i32 @llvm.umin.i32(i32 %447, i32 1048575)
  store i32 %448, ptr %357, align 8, !tbaa !66
  %449 = load ptr, ptr %441, align 8, !tbaa !68
  %450 = shl nuw nsw i32 %448, 2
  %451 = zext nneg i32 %450 to i64
  %452 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %449, i64 noundef %451, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %453 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %452, ptr %453, align 8, !tbaa !68
  br label %454

454:                                              ; preds = %446, %440
  %455 = shl i32 %443, 12
  %456 = add i32 %455, 9056
  %457 = load ptr, ptr %0, align 8, !tbaa !34
  %458 = load ptr, ptr %457, align 8, !tbaa !68
  %459 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %457, i64 0, i32 1
  %460 = load i32, ptr %459, align 8, !tbaa !67
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds i32, ptr %458, i64 %461
  store i32 %456, ptr %462, align 4, !tbaa !40
  %463 = load i32, ptr %459, align 8, !tbaa !67
  %464 = add i32 %463, 1
  store i32 %464, ptr %459, align 8, !tbaa !67
  %465 = icmp ugt i32 %464, 1048574
  br i1 %465, label %466, label %468

466:                                              ; preds = %454
  %467 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %468

468:                                              ; preds = %454, %466
  %469 = load ptr, ptr %0, align 8, !tbaa !34
  %470 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %469, i64 0, i32 1
  %471 = load i32, ptr %470, align 8, !tbaa !67
  %472 = load i32, ptr %357, align 8, !tbaa !66
  %473 = icmp ult i32 %471, %472
  br i1 %473, label %482, label %474

474:                                              ; preds = %468
  %475 = add i32 %472, 256
  %476 = tail call i32 @llvm.umin.i32(i32 %475, i32 1048575)
  store i32 %476, ptr %357, align 8, !tbaa !66
  %477 = load ptr, ptr %469, align 8, !tbaa !68
  %478 = shl nuw nsw i32 %476, 2
  %479 = zext nneg i32 %478 to i64
  %480 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %477, i64 noundef %479, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %481 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %480, ptr %481, align 8, !tbaa !68
  br label %482

482:                                              ; preds = %474, %468
  %483 = load ptr, ptr %0, align 8, !tbaa !34
  %484 = load ptr, ptr %483, align 8, !tbaa !68
  %485 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %483, i64 0, i32 1
  %486 = load i32, ptr %485, align 8, !tbaa !67
  %487 = zext i32 %486 to i64
  %488 = getelementptr inbounds i32, ptr %484, i64 %487
  store i32 328, ptr %488, align 4, !tbaa !40
  %489 = load i32, ptr %485, align 8, !tbaa !67
  %490 = add i32 %489, 1
  store i32 %490, ptr %485, align 8, !tbaa !67
  %491 = icmp ugt i32 %490, 1048574
  br i1 %491, label %492, label %494

492:                                              ; preds = %482
  %493 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %494

494:                                              ; preds = %482, %492
  %495 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %359, i64 0, i32 3
  %496 = load ptr, ptr %495, align 8, !tbaa !83
  %497 = icmp eq ptr %496, null
  br i1 %497, label %852, label %358, !llvm.loop !95

498:                                              ; preds = %44
  %499 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %500)
  %501 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %502 = load ptr, ptr %501, align 8, !tbaa !83
  %503 = icmp eq ptr %502, null
  br i1 %503, label %504, label %506

504:                                              ; preds = %498
  %505 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.22, ptr noundef %4)
  br label %506

506:                                              ; preds = %504, %498
  %507 = load ptr, ptr %501, align 8, !tbaa !83
  %508 = icmp eq ptr %507, null
  br i1 %508, label %852, label %509

509:                                              ; preds = %506
  %510 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  br label %511

511:                                              ; preds = %509, %647
  %512 = phi ptr [ %507, %509 ], [ %649, %647 ]
  %513 = tail call noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr noundef nonnull align 8 dereferenceable(28) %0)
  %514 = load ptr, ptr %0, align 8, !tbaa !34
  %515 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %514, i64 0, i32 1
  %516 = load i32, ptr %515, align 8, !tbaa !67
  %517 = load i32, ptr %510, align 8, !tbaa !66
  %518 = icmp ult i32 %516, %517
  br i1 %518, label %527, label %519

519:                                              ; preds = %511
  %520 = add i32 %517, 256
  %521 = tail call i32 @llvm.umin.i32(i32 %520, i32 1048575)
  store i32 %521, ptr %510, align 8, !tbaa !66
  %522 = load ptr, ptr %514, align 8, !tbaa !68
  %523 = shl nuw nsw i32 %521, 2
  %524 = zext nneg i32 %523 to i64
  %525 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %522, i64 noundef %524, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %526 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %525, ptr %526, align 8, !tbaa !68
  br label %527

527:                                              ; preds = %519, %511
  %528 = load ptr, ptr %0, align 8, !tbaa !34
  %529 = load ptr, ptr %528, align 8, !tbaa !68
  %530 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %528, i64 0, i32 1
  %531 = load i32, ptr %530, align 8, !tbaa !67
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds i32, ptr %529, i64 %532
  store i32 325, ptr %533, align 4, !tbaa !40
  %534 = load i32, ptr %530, align 8, !tbaa !67
  %535 = add i32 %534, 1
  store i32 %535, ptr %530, align 8, !tbaa !67
  %536 = icmp ugt i32 %535, 1048574
  br i1 %536, label %537, label %539

537:                                              ; preds = %527
  %538 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %539

539:                                              ; preds = %527, %537
  %540 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %512, i64 0, i32 1
  %541 = load ptr, ptr %540, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %541)
  %542 = load ptr, ptr %0, align 8, !tbaa !34
  %543 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %542, i64 0, i32 1
  %544 = load i32, ptr %543, align 8, !tbaa !67
  %545 = load i32, ptr %510, align 8, !tbaa !66
  %546 = icmp ult i32 %544, %545
  br i1 %546, label %555, label %547

547:                                              ; preds = %539
  %548 = add i32 %545, 256
  %549 = tail call i32 @llvm.umin.i32(i32 %548, i32 1048575)
  store i32 %549, ptr %510, align 8, !tbaa !66
  %550 = load ptr, ptr %542, align 8, !tbaa !68
  %551 = shl nuw nsw i32 %549, 2
  %552 = zext nneg i32 %551 to i64
  %553 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %550, i64 noundef %552, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %554 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %553, ptr %554, align 8, !tbaa !68
  br label %555

555:                                              ; preds = %547, %539
  %556 = load ptr, ptr %0, align 8, !tbaa !34
  %557 = load ptr, ptr %556, align 8, !tbaa !68
  %558 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %556, i64 0, i32 1
  %559 = load i32, ptr %558, align 8, !tbaa !67
  %560 = zext i32 %559 to i64
  %561 = getelementptr inbounds i32, ptr %557, i64 %560
  store i32 361, ptr %561, align 4, !tbaa !40
  %562 = load i32, ptr %558, align 8, !tbaa !67
  %563 = add i32 %562, 1
  store i32 %563, ptr %558, align 8, !tbaa !67
  %564 = icmp ugt i32 %563, 1048574
  br i1 %564, label %565, label %567

565:                                              ; preds = %555
  %566 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %567

567:                                              ; preds = %555, %565
  tail call void @_ZN3pov6FNCode18compile_pop_resultEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %513)
  %568 = load ptr, ptr %0, align 8, !tbaa !34
  %569 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %568, i64 0, i32 1
  %570 = load i32, ptr %569, align 8, !tbaa !67
  %571 = load i32, ptr %510, align 8, !tbaa !66
  %572 = icmp ult i32 %570, %571
  br i1 %572, label %581, label %573

573:                                              ; preds = %567
  %574 = add i32 %571, 256
  %575 = tail call i32 @llvm.umin.i32(i32 %574, i32 1048575)
  store i32 %575, ptr %510, align 8, !tbaa !66
  %576 = load ptr, ptr %568, align 8, !tbaa !68
  %577 = shl nuw nsw i32 %575, 2
  %578 = zext nneg i32 %577 to i64
  %579 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %576, i64 noundef %578, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %580 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %579, ptr %580, align 8, !tbaa !68
  br label %581

581:                                              ; preds = %573, %567
  %582 = load ptr, ptr %0, align 8, !tbaa !34
  %583 = load ptr, ptr %582, align 8, !tbaa !68
  %584 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %582, i64 0, i32 1
  %585 = load i32, ptr %584, align 8, !tbaa !67
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds i32, ptr %583, i64 %586
  store i32 385, ptr %587, align 4, !tbaa !40
  %588 = load i32, ptr %584, align 8, !tbaa !67
  %589 = add i32 %588, 1
  store i32 %589, ptr %584, align 8, !tbaa !67
  %590 = icmp ugt i32 %589, 1048574
  br i1 %590, label %591, label %593

591:                                              ; preds = %581
  %592 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %593

593:                                              ; preds = %581, %591
  %594 = load ptr, ptr %0, align 8, !tbaa !34
  %595 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %594, i64 0, i32 1
  %596 = load i32, ptr %595, align 8, !tbaa !67
  %597 = load i32, ptr %510, align 8, !tbaa !66
  %598 = icmp ult i32 %596, %597
  br i1 %598, label %607, label %599

599:                                              ; preds = %593
  %600 = add i32 %597, 256
  %601 = tail call i32 @llvm.umin.i32(i32 %600, i32 1048575)
  store i32 %601, ptr %510, align 8, !tbaa !66
  %602 = load ptr, ptr %594, align 8, !tbaa !68
  %603 = shl nuw nsw i32 %601, 2
  %604 = zext nneg i32 %603 to i64
  %605 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %602, i64 noundef %604, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %606 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %605, ptr %606, align 8, !tbaa !68
  br label %607

607:                                              ; preds = %599, %593
  %608 = shl i32 %596, 12
  %609 = add i32 %608, 9040
  %610 = load ptr, ptr %0, align 8, !tbaa !34
  %611 = load ptr, ptr %610, align 8, !tbaa !68
  %612 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %610, i64 0, i32 1
  %613 = load i32, ptr %612, align 8, !tbaa !67
  %614 = zext i32 %613 to i64
  %615 = getelementptr inbounds i32, ptr %611, i64 %614
  store i32 %609, ptr %615, align 4, !tbaa !40
  %616 = load i32, ptr %612, align 8, !tbaa !67
  %617 = add i32 %616, 1
  store i32 %617, ptr %612, align 8, !tbaa !67
  %618 = icmp ugt i32 %617, 1048574
  br i1 %618, label %619, label %621

619:                                              ; preds = %607
  %620 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %621

621:                                              ; preds = %607, %619
  %622 = load ptr, ptr %0, align 8, !tbaa !34
  %623 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %622, i64 0, i32 1
  %624 = load i32, ptr %623, align 8, !tbaa !67
  %625 = load i32, ptr %510, align 8, !tbaa !66
  %626 = icmp ult i32 %624, %625
  br i1 %626, label %635, label %627

627:                                              ; preds = %621
  %628 = add i32 %625, 256
  %629 = tail call i32 @llvm.umin.i32(i32 %628, i32 1048575)
  store i32 %629, ptr %510, align 8, !tbaa !66
  %630 = load ptr, ptr %622, align 8, !tbaa !68
  %631 = shl nuw nsw i32 %629, 2
  %632 = zext nneg i32 %631 to i64
  %633 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %630, i64 noundef %632, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %634 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %633, ptr %634, align 8, !tbaa !68
  br label %635

635:                                              ; preds = %627, %621
  %636 = load ptr, ptr %0, align 8, !tbaa !34
  %637 = load ptr, ptr %636, align 8, !tbaa !68
  %638 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %636, i64 0, i32 1
  %639 = load i32, ptr %638, align 8, !tbaa !67
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds i32, ptr %637, i64 %640
  store i32 328, ptr %641, align 4, !tbaa !40
  %642 = load i32, ptr %638, align 8, !tbaa !67
  %643 = add i32 %642, 1
  store i32 %643, ptr %638, align 8, !tbaa !67
  %644 = icmp ugt i32 %643, 1048574
  br i1 %644, label %645, label %647

645:                                              ; preds = %635
  %646 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %647

647:                                              ; preds = %635, %645
  %648 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %512, i64 0, i32 3
  %649 = load ptr, ptr %648, align 8, !tbaa !83
  %650 = icmp eq ptr %649, null
  br i1 %650, label %852, label %511, !llvm.loop !96

651:                                              ; preds = %44
  %652 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %653 = load ptr, ptr %652, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %653)
  %654 = load ptr, ptr %0, align 8, !tbaa !34
  %655 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %654, i64 0, i32 1
  %656 = load i32, ptr %655, align 8, !tbaa !67
  %657 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %658 = load i32, ptr %657, align 8, !tbaa !66
  %659 = icmp ult i32 %656, %658
  br i1 %659, label %668, label %660

660:                                              ; preds = %651
  %661 = add i32 %658, 256
  %662 = tail call i32 @llvm.umin.i32(i32 %661, i32 1048575)
  store i32 %662, ptr %657, align 8, !tbaa !66
  %663 = load ptr, ptr %654, align 8, !tbaa !68
  %664 = shl nuw nsw i32 %662, 2
  %665 = zext nneg i32 %664 to i64
  %666 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %663, i64 noundef %665, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %667 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %666, ptr %667, align 8, !tbaa !68
  br label %668

668:                                              ; preds = %660, %651
  %669 = load ptr, ptr %0, align 8, !tbaa !34
  %670 = load ptr, ptr %669, align 8, !tbaa !68
  %671 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %669, i64 0, i32 1
  %672 = load i32, ptr %671, align 8, !tbaa !67
  %673 = zext i32 %672 to i64
  %674 = getelementptr inbounds i32, ptr %670, i64 %673
  store i32 512, ptr %674, align 4, !tbaa !40
  %675 = load i32, ptr %671, align 8, !tbaa !67
  %676 = add i32 %675, 1
  store i32 %676, ptr %671, align 8, !tbaa !67
  %677 = icmp ugt i32 %676, 1048574
  br i1 %677, label %678, label %680

678:                                              ; preds = %668
  %679 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %680

680:                                              ; preds = %668, %678
  %681 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %682 = load ptr, ptr %681, align 8, !tbaa !83
  %683 = icmp eq ptr %682, null
  br i1 %683, label %852, label %684

684:                                              ; preds = %680
  %685 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.19, ptr noundef %4)
  br label %852

686:                                              ; preds = %44
  tail call void @_ZN3pov6FNCode14compile_selectEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1)
  br label %852

687:                                              ; preds = %44
  tail call void @_ZN3pov6FNCode27compile_float_function_callEPNS_14ExprNodeStructEjPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  br label %852

688:                                              ; preds = %44
  tail call void @_ZN3pov6FNCode28compile_vector_function_callEPNS_14ExprNodeStructEjPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  br label %852

689:                                              ; preds = %44
  %690 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %691 = load ptr, ptr %690, align 8, !tbaa !83
  %692 = icmp eq ptr %691, null
  br i1 %692, label %693, label %695

693:                                              ; preds = %689
  %694 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.20, ptr noundef %4)
  br label %695

695:                                              ; preds = %693, %689
  %696 = load ptr, ptr %690, align 8, !tbaa !83
  %697 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %696, i64 0, i32 1
  %698 = load ptr, ptr %697, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %698)
  %699 = tail call noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr noundef nonnull align 8 dereferenceable(28) %0)
  %700 = load ptr, ptr %0, align 8, !tbaa !34
  %701 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %700, i64 0, i32 1
  %702 = load i32, ptr %701, align 8, !tbaa !67
  %703 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %704 = load i32, ptr %703, align 8, !tbaa !66
  %705 = icmp ult i32 %702, %704
  br i1 %705, label %714, label %706

706:                                              ; preds = %695
  %707 = add i32 %704, 256
  %708 = tail call i32 @llvm.umin.i32(i32 %707, i32 1048575)
  store i32 %708, ptr %703, align 8, !tbaa !66
  %709 = load ptr, ptr %700, align 8, !tbaa !68
  %710 = shl nuw nsw i32 %708, 2
  %711 = zext nneg i32 %710 to i64
  %712 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %709, i64 noundef %711, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %713 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %712, ptr %713, align 8, !tbaa !68
  br label %714

714:                                              ; preds = %706, %695
  %715 = load ptr, ptr %0, align 8, !tbaa !34
  %716 = load ptr, ptr %715, align 8, !tbaa !68
  %717 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %715, i64 0, i32 1
  %718 = load i32, ptr %717, align 8, !tbaa !67
  %719 = zext i32 %718 to i64
  %720 = getelementptr inbounds i32, ptr %716, i64 %719
  store i32 325, ptr %720, align 4, !tbaa !40
  %721 = load i32, ptr %717, align 8, !tbaa !67
  %722 = add i32 %721, 1
  store i32 %722, ptr %717, align 8, !tbaa !67
  %723 = icmp ugt i32 %722, 1048574
  br i1 %723, label %724, label %726

724:                                              ; preds = %714
  %725 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %726

726:                                              ; preds = %714, %724
  %727 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %728 = load ptr, ptr %727, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %728)
  %729 = load ptr, ptr %0, align 8, !tbaa !34
  %730 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %729, i64 0, i32 1
  %731 = load i32, ptr %730, align 8, !tbaa !67
  %732 = load i32, ptr %703, align 8, !tbaa !66
  %733 = icmp ult i32 %731, %732
  br i1 %733, label %742, label %734

734:                                              ; preds = %726
  %735 = add i32 %732, 256
  %736 = tail call i32 @llvm.umin.i32(i32 %735, i32 1048575)
  store i32 %736, ptr %703, align 8, !tbaa !66
  %737 = load ptr, ptr %729, align 8, !tbaa !68
  %738 = shl nuw nsw i32 %736, 2
  %739 = zext nneg i32 %738 to i64
  %740 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %737, i64 noundef %739, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %741 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %740, ptr %741, align 8, !tbaa !68
  br label %742

742:                                              ; preds = %734, %726
  %743 = load ptr, ptr %0, align 8, !tbaa !34
  %744 = load ptr, ptr %743, align 8, !tbaa !68
  %745 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %743, i64 0, i32 1
  %746 = load i32, ptr %745, align 8, !tbaa !67
  %747 = zext i32 %746 to i64
  %748 = getelementptr inbounds i32, ptr %744, i64 %747
  store i32 361, ptr %748, align 4, !tbaa !40
  %749 = load i32, ptr %745, align 8, !tbaa !67
  %750 = add i32 %749, 1
  store i32 %750, ptr %745, align 8, !tbaa !67
  %751 = icmp ugt i32 %750, 1048574
  br i1 %751, label %752, label %754

752:                                              ; preds = %742
  %753 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %754

754:                                              ; preds = %742, %752
  tail call void @_ZN3pov6FNCode18compile_pop_resultEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %699)
  %755 = load ptr, ptr %0, align 8, !tbaa !34
  %756 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %755, i64 0, i32 1
  %757 = load i32, ptr %756, align 8, !tbaa !67
  %758 = load i32, ptr %703, align 8, !tbaa !66
  %759 = icmp ult i32 %757, %758
  br i1 %759, label %768, label %760

760:                                              ; preds = %754
  %761 = add i32 %758, 256
  %762 = tail call i32 @llvm.umin.i32(i32 %761, i32 1048575)
  store i32 %762, ptr %703, align 8, !tbaa !66
  %763 = load ptr, ptr %755, align 8, !tbaa !68
  %764 = shl nuw nsw i32 %762, 2
  %765 = zext nneg i32 %764 to i64
  %766 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %763, i64 noundef %765, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %767 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %766, ptr %767, align 8, !tbaa !68
  br label %768

768:                                              ; preds = %760, %754
  %769 = load ptr, ptr %0, align 8, !tbaa !34
  %770 = load ptr, ptr %769, align 8, !tbaa !68
  %771 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %769, i64 0, i32 1
  %772 = load i32, ptr %771, align 8, !tbaa !67
  %773 = zext i32 %772 to i64
  %774 = getelementptr inbounds i32, ptr %770, i64 %773
  store i32 945, ptr %774, align 4, !tbaa !40
  %775 = load i32, ptr %771, align 8, !tbaa !67
  %776 = add i32 %775, 1
  store i32 %776, ptr %771, align 8, !tbaa !67
  %777 = icmp ugt i32 %776, 1048574
  br i1 %777, label %778, label %780

778:                                              ; preds = %768
  %779 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %780

780:                                              ; preds = %768, %778
  %781 = load ptr, ptr %690, align 8, !tbaa !83
  %782 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %781, i64 0, i32 3
  %783 = load ptr, ptr %782, align 8, !tbaa !83
  %784 = icmp eq ptr %783, null
  br i1 %784, label %787, label %785

785:                                              ; preds = %780
  %786 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.21, ptr noundef %4)
  br label %787

787:                                              ; preds = %785, %780
  %788 = load ptr, ptr %0, align 8, !tbaa !34
  %789 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %788, i64 0, i32 1
  %790 = load i32, ptr %789, align 8, !tbaa !67
  %791 = load i32, ptr %703, align 8, !tbaa !66
  %792 = icmp ult i32 %790, %791
  br i1 %792, label %801, label %793

793:                                              ; preds = %787
  %794 = add i32 %791, 256
  %795 = tail call i32 @llvm.umin.i32(i32 %794, i32 1048575)
  store i32 %795, ptr %703, align 8, !tbaa !66
  %796 = load ptr, ptr %788, align 8, !tbaa !68
  %797 = shl nuw nsw i32 %795, 2
  %798 = zext nneg i32 %797 to i64
  %799 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %796, i64 noundef %798, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %800 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %799, ptr %800, align 8, !tbaa !68
  br label %801

801:                                              ; preds = %793, %787
  %802 = or disjoint i32 %49, 965
  %803 = load ptr, ptr %0, align 8, !tbaa !34
  %804 = load ptr, ptr %803, align 8, !tbaa !68
  %805 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %803, i64 0, i32 1
  %806 = load i32, ptr %805, align 8, !tbaa !67
  %807 = zext i32 %806 to i64
  %808 = getelementptr inbounds i32, ptr %804, i64 %807
  store i32 %802, ptr %808, align 4, !tbaa !40
  %809 = load i32, ptr %805, align 8, !tbaa !67
  %810 = add i32 %809, 1
  store i32 %810, ptr %805, align 8, !tbaa !67
  %811 = icmp ugt i32 %810, 1048574
  br i1 %811, label %812, label %852

812:                                              ; preds = %801
  %813 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %852

814:                                              ; preds = %44
  %815 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %816 = load ptr, ptr %815, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %816)
  %817 = load ptr, ptr %0, align 8, !tbaa !34
  %818 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %817, i64 0, i32 1
  %819 = load i32, ptr %818, align 8, !tbaa !67
  %820 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %821 = load i32, ptr %820, align 8, !tbaa !66
  %822 = icmp ult i32 %819, %821
  br i1 %822, label %831, label %823

823:                                              ; preds = %814
  %824 = add i32 %821, 256
  %825 = tail call i32 @llvm.umin.i32(i32 %824, i32 1048575)
  store i32 %825, ptr %820, align 8, !tbaa !66
  %826 = load ptr, ptr %817, align 8, !tbaa !68
  %827 = shl nuw nsw i32 %825, 2
  %828 = zext nneg i32 %827 to i64
  %829 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %826, i64 noundef %828, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %830 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %829, ptr %830, align 8, !tbaa !68
  br label %831

831:                                              ; preds = %823, %814
  %832 = load ptr, ptr %0, align 8, !tbaa !34
  %833 = load ptr, ptr %832, align 8, !tbaa !68
  %834 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %832, i64 0, i32 1
  %835 = load i32, ptr %834, align 8, !tbaa !67
  %836 = zext i32 %835 to i64
  %837 = getelementptr inbounds i32, ptr %833, i64 %836
  store i32 128, ptr %837, align 4, !tbaa !40
  %838 = load i32, ptr %834, align 8, !tbaa !67
  %839 = add i32 %838, 1
  store i32 %839, ptr %834, align 8, !tbaa !67
  %840 = icmp ugt i32 %839, 1048574
  br i1 %840, label %841, label %843

841:                                              ; preds = %831
  %842 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %843

843:                                              ; preds = %831, %841
  %844 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %845 = load ptr, ptr %844, align 8, !tbaa !83
  %846 = icmp eq ptr %845, null
  br i1 %846, label %852, label %847

847:                                              ; preds = %843
  %848 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.19, ptr noundef %4)
  br label %852

849:                                              ; preds = %44
  tail call void @_ZN3pov6FNCode14compile_seq_opEPNS_14ExprNodeStructEjd(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef 0, double noundef 0.000000e+00)
  br label %852

850:                                              ; preds = %44
  tail call void @_ZN3pov6FNCode14compile_seq_opEPNS_14ExprNodeStructEjd(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef 128, double noundef 1.000000e+00)
  br label %852

851:                                              ; preds = %44
  unreachable

852:                                              ; preds = %647, %494, %506, %353, %812, %801, %267, %256, %843, %847, %680, %684, %339, %343, %301, %305, %109, %113, %850, %849, %688, %687, %686
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCode18compile_pop_resultEj(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !77
  switch i32 %4, label %56 [
    i32 2, label %6
    i32 3, label %31
  ]

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !66
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %6
  %14 = add i32 %11, 256
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 1048575)
  store i32 %15, ptr %10, align 8, !tbaa !66
  %16 = load ptr, ptr %7, align 8, !tbaa !68
  %17 = shl nuw nsw i32 %15, 2
  %18 = zext nneg i32 %17 to i64
  %19 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %16, i64 noundef %18, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %19, ptr %20, align 8, !tbaa !68
  br label %21

21:                                               ; preds = %13, %6
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %22, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !67
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %23, i64 %26
  store i32 373, ptr %27, align 4, !tbaa !40
  %28 = load i32, ptr %24, align 8, !tbaa !67
  %29 = add i32 %28, 1
  store i32 %29, ptr %24, align 8, !tbaa !67
  %30 = icmp ugt i32 %29, 1048574
  br i1 %30, label %85, label %87

31:                                               ; preds = %2
  %32 = load ptr, ptr %0, align 8, !tbaa !34
  %33 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !67
  %35 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !66
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %31
  %39 = add i32 %36, 256
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 1048575)
  store i32 %40, ptr %35, align 8, !tbaa !66
  %41 = load ptr, ptr %32, align 8, !tbaa !68
  %42 = shl nuw nsw i32 %40, 2
  %43 = zext nneg i32 %42 to i64
  %44 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %41, i64 noundef %43, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %44, ptr %45, align 8, !tbaa !68
  br label %46

46:                                               ; preds = %38, %31
  %47 = load ptr, ptr %0, align 8, !tbaa !34
  %48 = load ptr, ptr %47, align 8, !tbaa !68
  %49 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %47, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !67
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %48, i64 %51
  store i32 381, ptr %52, align 4, !tbaa !40
  %53 = load i32, ptr %49, align 8, !tbaa !67
  %54 = add i32 %53, 1
  store i32 %54, ptr %49, align 8, !tbaa !67
  %55 = icmp ugt i32 %54, 1048574
  br i1 %55, label %85, label %87

56:                                               ; preds = %2
  %57 = icmp sgt i32 %4, 3
  br i1 %57, label %58, label %87

58:                                               ; preds = %56
  %59 = load ptr, ptr %0, align 8, !tbaa !34
  %60 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %59, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !67
  %62 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !66
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %58
  %66 = add i32 %63, 256
  %67 = tail call i32 @llvm.umin.i32(i32 %66, i32 1048575)
  store i32 %67, ptr %62, align 8, !tbaa !66
  %68 = load ptr, ptr %59, align 8, !tbaa !68
  %69 = shl nuw nsw i32 %67, 2
  %70 = zext nneg i32 %69 to i64
  %71 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %68, i64 noundef %70, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %72 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %71, ptr %72, align 8, !tbaa !68
  br label %73

73:                                               ; preds = %65, %58
  %74 = shl i32 %1, 12
  %75 = or disjoint i32 %74, 717
  %76 = load ptr, ptr %0, align 8, !tbaa !34
  %77 = load ptr, ptr %76, align 8, !tbaa !68
  %78 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %76, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !67
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %77, i64 %80
  store i32 %75, ptr %81, align 4, !tbaa !40
  %82 = load i32, ptr %78, align 8, !tbaa !67
  %83 = add i32 %82, 1
  store i32 %83, ptr %78, align 8, !tbaa !67
  %84 = icmp ugt i32 %83, 1048574
  br i1 %84, label %85, label %87

85:                                               ; preds = %73, %46, %21
  %86 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %87

87:                                               ; preds = %85, %73, %46, %21, %56
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCode14compile_selectEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.23)
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %3, align 8, !tbaa !83
  %10 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.23)
  br label %15

15:                                               ; preds = %13, %8
  %16 = load ptr, ptr %3, align 8, !tbaa !83
  %17 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !83
  %19 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %20, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !83
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.24)
  br label %28

28:                                               ; preds = %22, %26, %15
  %29 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %30)
  %31 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0.000000e+00)
  %32 = load ptr, ptr %0, align 8, !tbaa !34
  %33 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !67
  %35 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !66
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %28
  %39 = add i32 %36, 256
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 1048575)
  store i32 %40, ptr %35, align 8, !tbaa !66
  %41 = load ptr, ptr %32, align 8, !tbaa !68
  %42 = shl nuw nsw i32 %40, 2
  %43 = zext nneg i32 %42 to i64
  %44 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %41, i64 noundef %43, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %44, ptr %45, align 8, !tbaa !68
  br label %46

46:                                               ; preds = %38, %28
  %47 = shl i32 %31, 12
  %48 = or disjoint i32 %47, 624
  %49 = load ptr, ptr %0, align 8, !tbaa !34
  %50 = load ptr, ptr %49, align 8, !tbaa !68
  %51 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %49, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !67
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, ptr %50, i64 %53
  store i32 %48, ptr %54, align 4, !tbaa !40
  %55 = load i32, ptr %51, align 8, !tbaa !67
  %56 = add i32 %55, 1
  store i32 %56, ptr %51, align 8, !tbaa !67
  %57 = icmp ugt i32 %56, 1048574
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %60

60:                                               ; preds = %46, %58
  %61 = load ptr, ptr %0, align 8, !tbaa !34
  %62 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %61, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !67
  %64 = load i32, ptr %35, align 8, !tbaa !66
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = add i32 %64, 256
  %68 = tail call i32 @llvm.umin.i32(i32 %67, i32 1048575)
  store i32 %68, ptr %35, align 8, !tbaa !66
  %69 = load ptr, ptr %61, align 8, !tbaa !68
  %70 = shl nuw nsw i32 %68, 2
  %71 = zext nneg i32 %70 to i64
  %72 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %69, i64 noundef %71, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %73 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %72, ptr %73, align 8, !tbaa !68
  br label %74

74:                                               ; preds = %66, %60
  %75 = load ptr, ptr %0, align 8, !tbaa !34
  %76 = load ptr, ptr %75, align 8, !tbaa !68
  %77 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %75, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !67
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %76, i64 %79
  store i32 991, ptr %80, align 4, !tbaa !40
  %81 = load i32, ptr %77, align 8, !tbaa !67
  %82 = add i32 %81, 1
  store i32 %82, ptr %77, align 8, !tbaa !67
  %83 = icmp ugt i32 %82, 1048574
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %86

86:                                               ; preds = %74, %84
  %87 = load ptr, ptr %0, align 8, !tbaa !34
  %88 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %87, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !67
  %90 = add i32 %89, -1
  br i1 %21, label %119, label %91

91:                                               ; preds = %86
  %92 = load i32, ptr %35, align 8, !tbaa !66
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %102, label %94

94:                                               ; preds = %91
  %95 = add i32 %92, 256
  %96 = tail call i32 @llvm.umin.i32(i32 %95, i32 1048575)
  store i32 %96, ptr %35, align 8, !tbaa !66
  %97 = load ptr, ptr %87, align 8, !tbaa !68
  %98 = shl nuw nsw i32 %96, 2
  %99 = zext nneg i32 %98 to i64
  %100 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %97, i64 noundef %99, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %101 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %100, ptr %101, align 8, !tbaa !68
  br label %102

102:                                              ; preds = %94, %91
  %103 = load ptr, ptr %0, align 8, !tbaa !34
  %104 = load ptr, ptr %103, align 8, !tbaa !68
  %105 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %103, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !67
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, ptr %104, i64 %107
  store i32 991, ptr %108, align 4, !tbaa !40
  %109 = load i32, ptr %105, align 8, !tbaa !67
  %110 = add i32 %109, 1
  store i32 %110, ptr %105, align 8, !tbaa !67
  %111 = icmp ugt i32 %110, 1048574
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %114

114:                                              ; preds = %102, %112
  %115 = load ptr, ptr %0, align 8, !tbaa !34
  %116 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %115, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !67
  %118 = add i32 %117, -1
  br label %119

119:                                              ; preds = %114, %86
  %120 = phi i32 [ %118, %114 ], [ undef, %86 ]
  %121 = load ptr, ptr %3, align 8, !tbaa !83
  %122 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %121, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !83
  %124 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %125)
  %126 = load ptr, ptr %0, align 8, !tbaa !34
  %127 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %126, i64 0, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !67
  %129 = load i32, ptr %35, align 8, !tbaa !66
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %139, label %131

131:                                              ; preds = %119
  %132 = add i32 %129, 256
  %133 = tail call i32 @llvm.umin.i32(i32 %132, i32 1048575)
  store i32 %133, ptr %35, align 8, !tbaa !66
  %134 = load ptr, ptr %126, align 8, !tbaa !68
  %135 = shl nuw nsw i32 %133, 2
  %136 = zext nneg i32 %135 to i64
  %137 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %134, i64 noundef %136, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %138 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %137, ptr %138, align 8, !tbaa !68
  br label %139

139:                                              ; preds = %131, %119
  %140 = load ptr, ptr %0, align 8, !tbaa !34
  %141 = load ptr, ptr %140, align 8, !tbaa !68
  %142 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %140, i64 0, i32 1
  %143 = load i32, ptr %142, align 8, !tbaa !67
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, ptr %141, i64 %144
  store i32 991, ptr %145, align 4, !tbaa !40
  %146 = load i32, ptr %142, align 8, !tbaa !67
  %147 = add i32 %146, 1
  store i32 %147, ptr %142, align 8, !tbaa !67
  %148 = icmp ugt i32 %147, 1048574
  br i1 %148, label %149, label %151

149:                                              ; preds = %139
  %150 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %151

151:                                              ; preds = %139, %149
  %152 = load ptr, ptr %0, align 8, !tbaa !34
  %153 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %152, i64 0, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !67
  %155 = add i32 %154, -1
  %156 = load ptr, ptr %3, align 8, !tbaa !83
  %157 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %158)
  br i1 %21, label %197, label %159

159:                                              ; preds = %151
  %160 = load ptr, ptr %0, align 8, !tbaa !34
  %161 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %160, i64 0, i32 1
  %162 = load i32, ptr %161, align 8, !tbaa !67
  %163 = load i32, ptr %35, align 8, !tbaa !66
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %173, label %165

165:                                              ; preds = %159
  %166 = add i32 %163, 256
  %167 = tail call i32 @llvm.umin.i32(i32 %166, i32 1048575)
  store i32 %167, ptr %35, align 8, !tbaa !66
  %168 = load ptr, ptr %160, align 8, !tbaa !68
  %169 = shl nuw nsw i32 %167, 2
  %170 = zext nneg i32 %169 to i64
  %171 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %168, i64 noundef %170, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %172 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %171, ptr %172, align 8, !tbaa !68
  br label %173

173:                                              ; preds = %165, %159
  %174 = load ptr, ptr %0, align 8, !tbaa !34
  %175 = load ptr, ptr %174, align 8, !tbaa !68
  %176 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %174, i64 0, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !67
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, ptr %175, i64 %178
  store i32 991, ptr %179, align 4, !tbaa !40
  %180 = load i32, ptr %176, align 8, !tbaa !67
  %181 = add i32 %180, 1
  store i32 %181, ptr %176, align 8, !tbaa !67
  %182 = icmp ugt i32 %181, 1048574
  br i1 %182, label %183, label %185

183:                                              ; preds = %173
  %184 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %185

185:                                              ; preds = %173, %183
  %186 = load ptr, ptr %0, align 8, !tbaa !34
  %187 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %186, i64 0, i32 1
  %188 = load i32, ptr %187, align 8, !tbaa !67
  %189 = add i32 %188, -1
  %190 = load ptr, ptr %3, align 8, !tbaa !83
  %191 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %190, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !83
  %193 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %192, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !83
  %195 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %194, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %196)
  br label %197

197:                                              ; preds = %185, %151
  %198 = phi i32 [ %189, %185 ], [ undef, %151 ]
  %199 = load ptr, ptr %0, align 8, !tbaa !34
  %200 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %199, i64 0, i32 1
  %201 = load i32, ptr %200, align 8, !tbaa !67
  %202 = icmp ugt i32 %201, %90
  br i1 %202, label %205, label %203

203:                                              ; preds = %197
  %204 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.38)
  br label %205

205:                                              ; preds = %197, %203
  %206 = shl i32 %155, 12
  %207 = add i32 %206, 4944
  %208 = load ptr, ptr %0, align 8, !tbaa !34
  %209 = load ptr, ptr %208, align 8, !tbaa !68
  %210 = zext i32 %90 to i64
  %211 = getelementptr inbounds i32, ptr %209, i64 %210
  store i32 %207, ptr %211, align 4, !tbaa !40
  %212 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %208, i64 0, i32 1
  %213 = load i32, ptr %212, align 8, !tbaa !67
  %214 = icmp ugt i32 %213, %155
  br i1 %214, label %217, label %215

215:                                              ; preds = %205
  %216 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.38)
  br label %217

217:                                              ; preds = %205, %215
  %218 = shl i32 %201, 12
  %219 = or disjoint i32 %218, 961
  %220 = load ptr, ptr %0, align 8, !tbaa !34
  %221 = load ptr, ptr %220, align 8, !tbaa !68
  %222 = zext i32 %155 to i64
  %223 = getelementptr inbounds i32, ptr %221, i64 %222
  store i32 %219, ptr %223, align 4, !tbaa !40
  br i1 %21, label %247, label %224

224:                                              ; preds = %217
  %225 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %220, i64 0, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !67
  %227 = icmp ugt i32 %226, %120
  br i1 %227, label %230, label %228

228:                                              ; preds = %224
  %229 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.38)
  br label %230

230:                                              ; preds = %224, %228
  %231 = shl i32 %198, 12
  %232 = add i32 %231, 4960
  %233 = load ptr, ptr %0, align 8, !tbaa !34
  %234 = load ptr, ptr %233, align 8, !tbaa !68
  %235 = zext i32 %120 to i64
  %236 = getelementptr inbounds i32, ptr %234, i64 %235
  store i32 %232, ptr %236, align 4, !tbaa !40
  %237 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %233, i64 0, i32 1
  %238 = load i32, ptr %237, align 8, !tbaa !67
  %239 = icmp ugt i32 %238, %198
  br i1 %239, label %242, label %240

240:                                              ; preds = %230
  %241 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.38)
  br label %242

242:                                              ; preds = %230, %240
  %243 = load ptr, ptr %0, align 8, !tbaa !34
  %244 = load ptr, ptr %243, align 8, !tbaa !68
  %245 = zext i32 %198 to i64
  %246 = getelementptr inbounds i32, ptr %244, i64 %245
  store i32 %219, ptr %246, align 4, !tbaa !40
  br label %247

247:                                              ; preds = %242, %217
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCode27compile_float_function_callEPNS_14ExprNodeStructEjPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 align 2 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = tail call noundef i32 (ptr, ...) @_ZN3pov13PossibleErrorEPKcz(ptr noundef nonnull @.str.29)
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  br label %15

13:                                               ; preds = %4
  %14 = tail call noundef ptr @_ZN3pov30POVFPU_GetFunctionAndReferenceEj(i32 noundef %2)
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi ptr [ %12, %10 ], [ %14, %13 ]
  %17 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !80
  %19 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !77
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 2)
  %22 = add i32 %21, %18
  %23 = add i32 %22, -2
  %24 = tail call i32 @llvm.smin.i32(i32 %20, i32 2)
  %25 = add nsw i32 %24, 1
  %26 = add i32 %25, %23
  %27 = load ptr, ptr %0, align 8, !tbaa !34
  %28 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !67
  %30 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !66
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %15
  %34 = add i32 %31, 256
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 1048575)
  store i32 %35, ptr %30, align 8, !tbaa !66
  %36 = load ptr, ptr %27, align 8, !tbaa !68
  %37 = shl nuw nsw i32 %35, 2
  %38 = zext nneg i32 %37 to i64
  %39 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %36, i64 noundef %38, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %40 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %39, ptr %40, align 8, !tbaa !68
  br label %41

41:                                               ; preds = %33, %15
  %42 = shl i32 %23, 12
  %43 = or disjoint i32 %42, 781
  %44 = load ptr, ptr %0, align 8, !tbaa !34
  %45 = load ptr, ptr %44, align 8, !tbaa !68
  %46 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %44, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !67
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %45, i64 %48
  store i32 %43, ptr %49, align 4, !tbaa !40
  %50 = load i32, ptr %46, align 8, !tbaa !67
  %51 = add i32 %50, 1
  store i32 %51, ptr %46, align 8, !tbaa !67
  %52 = icmp ugt i32 %51, 1048574
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %55

55:                                               ; preds = %41, %53
  %56 = load ptr, ptr %0, align 8, !tbaa !34
  %57 = load i32, ptr %19, align 8, !tbaa !77
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %55
  %60 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %56, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !67
  %62 = load i32, ptr %30, align 8, !tbaa !66
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %59
  %65 = add i32 %62, 256
  %66 = tail call i32 @llvm.umin.i32(i32 %65, i32 1048575)
  store i32 %66, ptr %30, align 8, !tbaa !66
  %67 = load ptr, ptr %56, align 8, !tbaa !68
  %68 = shl nuw nsw i32 %66, 2
  %69 = zext nneg i32 %68 to i64
  %70 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %67, i64 noundef %69, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %71 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %70, ptr %71, align 8, !tbaa !68
  br label %72

72:                                               ; preds = %64, %59
  %73 = shl i32 %23, 12
  %74 = add i32 %73, 4878
  %75 = load ptr, ptr %0, align 8, !tbaa !34
  %76 = load ptr, ptr %75, align 8, !tbaa !68
  %77 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %75, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !67
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %76, i64 %79
  store i32 %74, ptr %80, align 4, !tbaa !40
  %81 = load i32, ptr %77, align 8, !tbaa !67
  %82 = add i32 %81, 1
  store i32 %82, ptr %77, align 8, !tbaa !67
  %83 = icmp ugt i32 %82, 1048574
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %86

86:                                               ; preds = %84, %72, %55
  %87 = load i32, ptr %19, align 8, !tbaa !77
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %118

89:                                               ; preds = %86
  %90 = add i32 %21, %18
  %91 = load ptr, ptr %0, align 8, !tbaa !34
  %92 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %91, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !67
  %94 = load i32, ptr %30, align 8, !tbaa !66
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %89
  %97 = add i32 %94, 256
  %98 = tail call i32 @llvm.umin.i32(i32 %97, i32 1048575)
  store i32 %98, ptr %30, align 8, !tbaa !66
  %99 = load ptr, ptr %91, align 8, !tbaa !68
  %100 = shl nuw nsw i32 %98, 2
  %101 = zext nneg i32 %100 to i64
  %102 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %99, i64 noundef %101, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %103 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %102, ptr %103, align 8, !tbaa !68
  br label %104

104:                                              ; preds = %96, %89
  %105 = shl i32 %90, 12
  %106 = or disjoint i32 %105, 783
  %107 = load ptr, ptr %0, align 8, !tbaa !34
  %108 = load ptr, ptr %107, align 8, !tbaa !68
  %109 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %107, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !67
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %108, i64 %111
  store i32 %106, ptr %112, align 4, !tbaa !40
  %113 = load i32, ptr %109, align 8, !tbaa !67
  %114 = add i32 %113, 1
  store i32 %114, ptr %109, align 8, !tbaa !67
  %115 = icmp ugt i32 %114, 1048574
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %118

118:                                              ; preds = %116, %104, %86
  %119 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %16, i64 0, i32 3
  %120 = load i8, ptr %119, align 1, !tbaa !63
  %121 = zext i8 %120 to i32
  %122 = add i32 %26, %121
  %123 = load i32, ptr %19, align 8, !tbaa !77
  %124 = load i32, ptr %17, align 8, !tbaa !80
  %125 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 4
  %126 = load i32, ptr %125, align 4, !tbaa !78
  store i32 0, ptr %19, align 8, !tbaa !77
  store i32 %122, ptr %17, align 8, !tbaa !80
  store i32 %26, ptr %125, align 4, !tbaa !78
  %127 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !79
  %129 = tail call i32 @llvm.smax.i32(i32 %122, i32 %128)
  store i32 %129, ptr %127, align 4, !tbaa !79
  %130 = icmp eq ptr %1, null
  br i1 %130, label %169, label %131

131:                                              ; preds = %118, %164
  %132 = phi i32 [ %167, %164 ], [ 0, %118 ]
  %133 = phi ptr [ %166, %164 ], [ %1, %118 ]
  %134 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %135)
  %136 = add i32 %132, %26
  %137 = load ptr, ptr %0, align 8, !tbaa !34
  %138 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %137, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !67
  %140 = load i32, ptr %30, align 8, !tbaa !66
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %131
  %143 = add i32 %140, 256
  %144 = tail call i32 @llvm.umin.i32(i32 %143, i32 1048575)
  store i32 %144, ptr %30, align 8, !tbaa !66
  %145 = load ptr, ptr %137, align 8, !tbaa !68
  %146 = shl nuw nsw i32 %144, 2
  %147 = zext nneg i32 %146 to i64
  %148 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %145, i64 noundef %147, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %149 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %148, ptr %149, align 8, !tbaa !68
  br label %150

150:                                              ; preds = %142, %131
  %151 = shl i32 %136, 12
  %152 = or disjoint i32 %151, 776
  %153 = load ptr, ptr %0, align 8, !tbaa !34
  %154 = load ptr, ptr %153, align 8, !tbaa !68
  %155 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %153, i64 0, i32 1
  %156 = load i32, ptr %155, align 8, !tbaa !67
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, ptr %154, i64 %157
  store i32 %152, ptr %158, align 4, !tbaa !40
  %159 = load i32, ptr %155, align 8, !tbaa !67
  %160 = add i32 %159, 1
  store i32 %160, ptr %155, align 8, !tbaa !67
  %161 = icmp ugt i32 %160, 1048574
  br i1 %161, label %162, label %164

162:                                              ; preds = %150
  %163 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %164

164:                                              ; preds = %150, %162
  %165 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %133, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !83
  %167 = add i32 %132, 1
  %168 = icmp eq ptr %166, null
  br i1 %168, label %169, label %131, !llvm.loop !97

169:                                              ; preds = %164, %118
  %170 = phi i32 [ 0, %118 ], [ %167, %164 ]
  %171 = load i8, ptr %119, align 1, !tbaa !63
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %176, label %174

174:                                              ; preds = %169
  %175 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.30, i32 noundef %170, i32 noundef %172)
  br label %176

176:                                              ; preds = %174, %169
  store i32 %123, ptr %19, align 8, !tbaa !77
  store i32 %124, ptr %17, align 8, !tbaa !80
  store i32 %126, ptr %125, align 4, !tbaa !78
  %177 = load ptr, ptr %0, align 8, !tbaa !34
  %178 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %177, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !67
  %180 = load i32, ptr %30, align 8, !tbaa !66
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %190, label %182

182:                                              ; preds = %176
  %183 = add i32 %180, 256
  %184 = tail call i32 @llvm.umin.i32(i32 %183, i32 1048575)
  store i32 %184, ptr %30, align 8, !tbaa !66
  %185 = load ptr, ptr %177, align 8, !tbaa !68
  %186 = shl nuw nsw i32 %184, 2
  %187 = zext nneg i32 %186 to i64
  %188 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %185, i64 noundef %187, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %189 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %188, ptr %189, align 8, !tbaa !68
  br label %190

190:                                              ; preds = %182, %176
  %191 = shl i32 %26, 12
  %192 = or disjoint i32 %191, 969
  %193 = load ptr, ptr %0, align 8, !tbaa !34
  %194 = load ptr, ptr %193, align 8, !tbaa !68
  %195 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %193, i64 0, i32 1
  %196 = load i32, ptr %195, align 8, !tbaa !67
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, ptr %194, i64 %197
  store i32 %192, ptr %198, align 4, !tbaa !40
  %199 = load i32, ptr %195, align 8, !tbaa !67
  %200 = add i32 %199, 1
  store i32 %200, ptr %195, align 8, !tbaa !67
  %201 = icmp ugt i32 %200, 1048574
  br i1 %201, label %202, label %204

202:                                              ; preds = %190
  %203 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %204

204:                                              ; preds = %190, %202
  %205 = load ptr, ptr %0, align 8, !tbaa !34
  %206 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %205, i64 0, i32 1
  %207 = load i32, ptr %206, align 8, !tbaa !67
  %208 = load i32, ptr %30, align 8, !tbaa !66
  %209 = icmp ult i32 %207, %208
  br i1 %209, label %218, label %210

210:                                              ; preds = %204
  %211 = add i32 %208, 256
  %212 = tail call i32 @llvm.umin.i32(i32 %211, i32 1048575)
  store i32 %212, ptr %30, align 8, !tbaa !66
  %213 = load ptr, ptr %205, align 8, !tbaa !68
  %214 = shl nuw nsw i32 %212, 2
  %215 = zext nneg i32 %214 to i64
  %216 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %213, i64 noundef %215, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %217 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %216, ptr %217, align 8, !tbaa !68
  br label %218

218:                                              ; preds = %210, %204
  %219 = shl i32 %2, 12
  %220 = or disjoint i32 %219, 963
  %221 = load ptr, ptr %0, align 8, !tbaa !34
  %222 = load ptr, ptr %221, align 8, !tbaa !68
  %223 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %221, i64 0, i32 1
  %224 = load i32, ptr %223, align 8, !tbaa !67
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, ptr %222, i64 %225
  store i32 %220, ptr %226, align 4, !tbaa !40
  %227 = load i32, ptr %223, align 8, !tbaa !67
  %228 = add i32 %227, 1
  store i32 %228, ptr %223, align 8, !tbaa !67
  %229 = icmp ugt i32 %228, 1048574
  br i1 %229, label %230, label %232

230:                                              ; preds = %218
  %231 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %232

232:                                              ; preds = %218, %230
  %233 = load ptr, ptr %0, align 8, !tbaa !34
  %234 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %233, i64 0, i32 1
  %235 = load i32, ptr %234, align 8, !tbaa !67
  %236 = load i32, ptr %30, align 8, !tbaa !66
  %237 = icmp ult i32 %235, %236
  br i1 %237, label %246, label %238

238:                                              ; preds = %232
  %239 = add i32 %236, 256
  %240 = tail call i32 @llvm.umin.i32(i32 %239, i32 1048575)
  store i32 %240, ptr %30, align 8, !tbaa !66
  %241 = load ptr, ptr %233, align 8, !tbaa !68
  %242 = shl nuw nsw i32 %240, 2
  %243 = zext nneg i32 %242 to i64
  %244 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %241, i64 noundef %243, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %245 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %244, ptr %245, align 8, !tbaa !68
  br label %246

246:                                              ; preds = %238, %232
  %247 = or disjoint i32 %191, 970
  %248 = load ptr, ptr %0, align 8, !tbaa !34
  %249 = load ptr, ptr %248, align 8, !tbaa !68
  %250 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %248, i64 0, i32 1
  %251 = load i32, ptr %250, align 8, !tbaa !67
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, ptr %249, i64 %252
  store i32 %247, ptr %253, align 4, !tbaa !40
  %254 = load i32, ptr %250, align 8, !tbaa !67
  %255 = add i32 %254, 1
  store i32 %255, ptr %250, align 8, !tbaa !67
  %256 = icmp ugt i32 %255, 1048574
  br i1 %256, label %257, label %259

257:                                              ; preds = %246
  %258 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %259

259:                                              ; preds = %246, %257
  %260 = load ptr, ptr %0, align 8, !tbaa !34
  %261 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %260, i64 0, i32 1
  %262 = load i32, ptr %261, align 8, !tbaa !67
  %263 = load i32, ptr %30, align 8, !tbaa !66
  %264 = icmp ult i32 %262, %263
  br i1 %264, label %273, label %265

265:                                              ; preds = %259
  %266 = add i32 %263, 256
  %267 = tail call i32 @llvm.umin.i32(i32 %266, i32 1048575)
  store i32 %267, ptr %30, align 8, !tbaa !66
  %268 = load ptr, ptr %260, align 8, !tbaa !68
  %269 = shl nuw nsw i32 %267, 2
  %270 = zext nneg i32 %269 to i64
  %271 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %268, i64 noundef %270, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %272 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %271, ptr %272, align 8, !tbaa !68
  br label %273

273:                                              ; preds = %265, %259
  %274 = or disjoint i32 %42, 717
  %275 = load ptr, ptr %0, align 8, !tbaa !34
  %276 = load ptr, ptr %275, align 8, !tbaa !68
  %277 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %275, i64 0, i32 1
  %278 = load i32, ptr %277, align 8, !tbaa !67
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i32, ptr %276, i64 %279
  store i32 %274, ptr %280, align 4, !tbaa !40
  %281 = load i32, ptr %277, align 8, !tbaa !67
  %282 = add i32 %281, 1
  store i32 %282, ptr %277, align 8, !tbaa !67
  %283 = icmp ugt i32 %282, 1048574
  br i1 %283, label %284, label %286

284:                                              ; preds = %273
  %285 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %286

286:                                              ; preds = %273, %284
  %287 = load ptr, ptr %0, align 8, !tbaa !34
  %288 = load i32, ptr %19, align 8, !tbaa !77
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %317

290:                                              ; preds = %286
  %291 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %287, i64 0, i32 1
  %292 = load i32, ptr %291, align 8, !tbaa !67
  %293 = load i32, ptr %30, align 8, !tbaa !66
  %294 = icmp ult i32 %292, %293
  br i1 %294, label %303, label %295

295:                                              ; preds = %290
  %296 = add i32 %293, 256
  %297 = tail call i32 @llvm.umin.i32(i32 %296, i32 1048575)
  store i32 %297, ptr %30, align 8, !tbaa !66
  %298 = load ptr, ptr %287, align 8, !tbaa !68
  %299 = shl nuw nsw i32 %297, 2
  %300 = zext nneg i32 %299 to i64
  %301 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %298, i64 noundef %300, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %302 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %301, ptr %302, align 8, !tbaa !68
  br label %303

303:                                              ; preds = %295, %290
  %304 = shl i32 %23, 12
  %305 = add i32 %304, 4814
  %306 = load ptr, ptr %0, align 8, !tbaa !34
  %307 = load ptr, ptr %306, align 8, !tbaa !68
  %308 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %306, i64 0, i32 1
  %309 = load i32, ptr %308, align 8, !tbaa !67
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i32, ptr %307, i64 %310
  store i32 %305, ptr %311, align 4, !tbaa !40
  %312 = load i32, ptr %308, align 8, !tbaa !67
  %313 = add i32 %312, 1
  store i32 %313, ptr %308, align 8, !tbaa !67
  %314 = icmp ugt i32 %313, 1048574
  br i1 %314, label %315, label %317

315:                                              ; preds = %303
  %316 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %317

317:                                              ; preds = %315, %303, %286
  %318 = load i32, ptr %19, align 8, !tbaa !77
  %319 = icmp sgt i32 %318, 1
  br i1 %319, label %320, label %349

320:                                              ; preds = %317
  %321 = add i32 %21, %18
  %322 = load ptr, ptr %0, align 8, !tbaa !34
  %323 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %322, i64 0, i32 1
  %324 = load i32, ptr %323, align 8, !tbaa !67
  %325 = load i32, ptr %30, align 8, !tbaa !66
  %326 = icmp ult i32 %324, %325
  br i1 %326, label %335, label %327

327:                                              ; preds = %320
  %328 = add i32 %325, 256
  %329 = tail call i32 @llvm.umin.i32(i32 %328, i32 1048575)
  store i32 %329, ptr %30, align 8, !tbaa !66
  %330 = load ptr, ptr %322, align 8, !tbaa !68
  %331 = shl nuw nsw i32 %329, 2
  %332 = zext nneg i32 %331 to i64
  %333 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %330, i64 noundef %332, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %334 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %333, ptr %334, align 8, !tbaa !68
  br label %335

335:                                              ; preds = %327, %320
  %336 = shl i32 %321, 12
  %337 = or disjoint i32 %336, 719
  %338 = load ptr, ptr %0, align 8, !tbaa !34
  %339 = load ptr, ptr %338, align 8, !tbaa !68
  %340 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %338, i64 0, i32 1
  %341 = load i32, ptr %340, align 8, !tbaa !67
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds i32, ptr %339, i64 %342
  store i32 %337, ptr %343, align 4, !tbaa !40
  %344 = load i32, ptr %340, align 8, !tbaa !67
  %345 = add i32 %344, 1
  store i32 %345, ptr %340, align 8, !tbaa !67
  %346 = icmp ugt i32 %345, 1048574
  br i1 %346, label %347, label %349

347:                                              ; preds = %335
  %348 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %349

349:                                              ; preds = %347, %335, %317
  tail call void @_ZN3pov6FNCode18compile_parametersEv(ptr noundef nonnull align 8 dereferenceable(28) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCode28compile_vector_function_callEPNS_14ExprNodeStructEjPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 align 2 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = tail call noundef i32 (ptr, ...) @_ZN3pov13PossibleErrorEPKcz(ptr noundef nonnull @.str.29)
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  br label %15

13:                                               ; preds = %4
  %14 = tail call noundef ptr @_ZN3pov30POVFPU_GetFunctionAndReferenceEj(i32 noundef %2)
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi ptr [ %12, %10 ], [ %14, %13 ]
  %17 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !80
  %19 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !77
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 2)
  %22 = add i32 %21, %18
  %23 = add i32 %22, -2
  %24 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %16, i64 0, i32 2
  %25 = load i8, ptr %24, align 4, !tbaa !71
  %26 = zext i8 %25 to i32
  %27 = tail call i32 @llvm.smin.i32(i32 %20, i32 2)
  %28 = add nsw i32 %27, 1
  %29 = add nsw i32 %28, %26
  %30 = add i32 %29, %23
  %31 = load ptr, ptr %0, align 8, !tbaa !34
  %32 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !67
  %34 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !66
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %15
  %38 = add i32 %35, 256
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 1048575)
  store i32 %39, ptr %34, align 8, !tbaa !66
  %40 = load ptr, ptr %31, align 8, !tbaa !68
  %41 = shl nuw nsw i32 %39, 2
  %42 = zext nneg i32 %41 to i64
  %43 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %40, i64 noundef %42, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %44 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %43, ptr %44, align 8, !tbaa !68
  br label %45

45:                                               ; preds = %37, %15
  %46 = shl i32 %23, 12
  %47 = or disjoint i32 %46, 781
  %48 = load ptr, ptr %0, align 8, !tbaa !34
  %49 = load ptr, ptr %48, align 8, !tbaa !68
  %50 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %48, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !67
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %49, i64 %52
  store i32 %47, ptr %53, align 4, !tbaa !40
  %54 = load i32, ptr %50, align 8, !tbaa !67
  %55 = add i32 %54, 1
  store i32 %55, ptr %50, align 8, !tbaa !67
  %56 = icmp ugt i32 %55, 1048574
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %59

59:                                               ; preds = %45, %57
  %60 = load ptr, ptr %0, align 8, !tbaa !34
  %61 = load i32, ptr %19, align 8, !tbaa !77
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %60, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !67
  %66 = load i32, ptr %34, align 8, !tbaa !66
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = add i32 %66, 256
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 1048575)
  store i32 %70, ptr %34, align 8, !tbaa !66
  %71 = load ptr, ptr %60, align 8, !tbaa !68
  %72 = shl nuw nsw i32 %70, 2
  %73 = zext nneg i32 %72 to i64
  %74 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %71, i64 noundef %73, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %75 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %74, ptr %75, align 8, !tbaa !68
  br label %76

76:                                               ; preds = %68, %63
  %77 = shl i32 %23, 12
  %78 = add i32 %77, 4878
  %79 = load ptr, ptr %0, align 8, !tbaa !34
  %80 = load ptr, ptr %79, align 8, !tbaa !68
  %81 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %79, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !67
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %80, i64 %83
  store i32 %78, ptr %84, align 4, !tbaa !40
  %85 = load i32, ptr %81, align 8, !tbaa !67
  %86 = add i32 %85, 1
  store i32 %86, ptr %81, align 8, !tbaa !67
  %87 = icmp ugt i32 %86, 1048574
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %90

90:                                               ; preds = %88, %76, %59
  %91 = load i32, ptr %19, align 8, !tbaa !77
  %92 = icmp sgt i32 %91, 1
  br i1 %92, label %93, label %122

93:                                               ; preds = %90
  %94 = add i32 %21, %18
  %95 = load ptr, ptr %0, align 8, !tbaa !34
  %96 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %95, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !67
  %98 = load i32, ptr %34, align 8, !tbaa !66
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %93
  %101 = add i32 %98, 256
  %102 = tail call i32 @llvm.umin.i32(i32 %101, i32 1048575)
  store i32 %102, ptr %34, align 8, !tbaa !66
  %103 = load ptr, ptr %95, align 8, !tbaa !68
  %104 = shl nuw nsw i32 %102, 2
  %105 = zext nneg i32 %104 to i64
  %106 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %103, i64 noundef %105, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %107 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %106, ptr %107, align 8, !tbaa !68
  br label %108

108:                                              ; preds = %100, %93
  %109 = shl i32 %94, 12
  %110 = or disjoint i32 %109, 783
  %111 = load ptr, ptr %0, align 8, !tbaa !34
  %112 = load ptr, ptr %111, align 8, !tbaa !68
  %113 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %111, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !67
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %112, i64 %115
  store i32 %110, ptr %116, align 4, !tbaa !40
  %117 = load i32, ptr %113, align 8, !tbaa !67
  %118 = add i32 %117, 1
  store i32 %118, ptr %113, align 8, !tbaa !67
  %119 = icmp ugt i32 %118, 1048574
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %122

122:                                              ; preds = %120, %108, %90
  %123 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %16, i64 0, i32 3
  %124 = load i8, ptr %123, align 1, !tbaa !63
  %125 = zext i8 %124 to i32
  %126 = add i32 %30, %125
  %127 = load i32, ptr %19, align 8, !tbaa !77
  %128 = load i32, ptr %17, align 8, !tbaa !80
  %129 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 4
  %130 = load i32, ptr %129, align 4, !tbaa !78
  store i32 0, ptr %19, align 8, !tbaa !77
  store i32 %126, ptr %17, align 8, !tbaa !80
  store i32 %30, ptr %129, align 4, !tbaa !78
  %131 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 2
  %132 = load i32, ptr %131, align 4, !tbaa !79
  %133 = tail call i32 @llvm.smax.i32(i32 %126, i32 %132)
  store i32 %133, ptr %131, align 4, !tbaa !79
  %134 = icmp eq ptr %1, null
  br i1 %134, label %173, label %135

135:                                              ; preds = %122, %168
  %136 = phi i32 [ %171, %168 ], [ 0, %122 ]
  %137 = phi ptr [ %170, %168 ], [ %1, %122 ]
  %138 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %139)
  %140 = add i32 %136, %30
  %141 = load ptr, ptr %0, align 8, !tbaa !34
  %142 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %141, i64 0, i32 1
  %143 = load i32, ptr %142, align 8, !tbaa !67
  %144 = load i32, ptr %34, align 8, !tbaa !66
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %154, label %146

146:                                              ; preds = %135
  %147 = add i32 %144, 256
  %148 = tail call i32 @llvm.umin.i32(i32 %147, i32 1048575)
  store i32 %148, ptr %34, align 8, !tbaa !66
  %149 = load ptr, ptr %141, align 8, !tbaa !68
  %150 = shl nuw nsw i32 %148, 2
  %151 = zext nneg i32 %150 to i64
  %152 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %149, i64 noundef %151, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %153 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %152, ptr %153, align 8, !tbaa !68
  br label %154

154:                                              ; preds = %146, %135
  %155 = shl i32 %140, 12
  %156 = or disjoint i32 %155, 776
  %157 = load ptr, ptr %0, align 8, !tbaa !34
  %158 = load ptr, ptr %157, align 8, !tbaa !68
  %159 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %157, i64 0, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !67
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, ptr %158, i64 %161
  store i32 %156, ptr %162, align 4, !tbaa !40
  %163 = load i32, ptr %159, align 8, !tbaa !67
  %164 = add i32 %163, 1
  store i32 %164, ptr %159, align 8, !tbaa !67
  %165 = icmp ugt i32 %164, 1048574
  br i1 %165, label %166, label %168

166:                                              ; preds = %154
  %167 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %168

168:                                              ; preds = %154, %166
  %169 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %137, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !83
  %171 = add i32 %136, 1
  %172 = icmp eq ptr %170, null
  br i1 %172, label %173, label %135, !llvm.loop !98

173:                                              ; preds = %168, %122
  %174 = phi i32 [ 0, %122 ], [ %171, %168 ]
  %175 = load i8, ptr %123, align 1, !tbaa !63
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %180, label %178

178:                                              ; preds = %173
  %179 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.30, i32 noundef %174, i32 noundef %176)
  br label %180

180:                                              ; preds = %178, %173
  store i32 %127, ptr %19, align 8, !tbaa !77
  store i32 %128, ptr %17, align 8, !tbaa !80
  store i32 %130, ptr %129, align 4, !tbaa !78
  %181 = load i8, ptr %24, align 4, !tbaa !71
  %182 = zext i8 %181 to i32
  %183 = sub i32 %30, %182
  %184 = load ptr, ptr %0, align 8, !tbaa !34
  %185 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %184, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !67
  %187 = load i32, ptr %34, align 8, !tbaa !66
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %197, label %189

189:                                              ; preds = %180
  %190 = add i32 %187, 256
  %191 = tail call i32 @llvm.umin.i32(i32 %190, i32 1048575)
  store i32 %191, ptr %34, align 8, !tbaa !66
  %192 = load ptr, ptr %184, align 8, !tbaa !68
  %193 = shl nuw nsw i32 %191, 2
  %194 = zext nneg i32 %193 to i64
  %195 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %192, i64 noundef %194, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %196 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %195, ptr %196, align 8, !tbaa !68
  br label %197

197:                                              ; preds = %189, %180
  %198 = shl i32 %183, 12
  %199 = or disjoint i32 %198, 969
  %200 = load ptr, ptr %0, align 8, !tbaa !34
  %201 = load ptr, ptr %200, align 8, !tbaa !68
  %202 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %200, i64 0, i32 1
  %203 = load i32, ptr %202, align 8, !tbaa !67
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, ptr %201, i64 %204
  store i32 %199, ptr %205, align 4, !tbaa !40
  %206 = load i32, ptr %202, align 8, !tbaa !67
  %207 = add i32 %206, 1
  store i32 %207, ptr %202, align 8, !tbaa !67
  %208 = icmp ugt i32 %207, 1048574
  br i1 %208, label %209, label %211

209:                                              ; preds = %197
  %210 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %211

211:                                              ; preds = %197, %209
  %212 = load ptr, ptr %0, align 8, !tbaa !34
  %213 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %212, i64 0, i32 1
  %214 = load i32, ptr %213, align 8, !tbaa !67
  %215 = load i32, ptr %34, align 8, !tbaa !66
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %225, label %217

217:                                              ; preds = %211
  %218 = add i32 %215, 256
  %219 = tail call i32 @llvm.umin.i32(i32 %218, i32 1048575)
  store i32 %219, ptr %34, align 8, !tbaa !66
  %220 = load ptr, ptr %212, align 8, !tbaa !68
  %221 = shl nuw nsw i32 %219, 2
  %222 = zext nneg i32 %221 to i64
  %223 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %220, i64 noundef %222, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %224 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %223, ptr %224, align 8, !tbaa !68
  br label %225

225:                                              ; preds = %217, %211
  %226 = shl i32 %2, 12
  %227 = or disjoint i32 %226, 963
  %228 = load ptr, ptr %0, align 8, !tbaa !34
  %229 = load ptr, ptr %228, align 8, !tbaa !68
  %230 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %228, i64 0, i32 1
  %231 = load i32, ptr %230, align 8, !tbaa !67
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32, ptr %229, i64 %232
  store i32 %227, ptr %233, align 4, !tbaa !40
  %234 = load i32, ptr %230, align 8, !tbaa !67
  %235 = add i32 %234, 1
  store i32 %235, ptr %230, align 8, !tbaa !67
  %236 = icmp ugt i32 %235, 1048574
  br i1 %236, label %237, label %239

237:                                              ; preds = %225
  %238 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %239

239:                                              ; preds = %225, %237
  %240 = load ptr, ptr %0, align 8, !tbaa !34
  %241 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %240, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !67
  %243 = load i8, ptr %24, align 4, !tbaa !71
  %244 = zext i8 %243 to i32
  %245 = sub i32 %30, %244
  %246 = load i32, ptr %34, align 8, !tbaa !66
  %247 = icmp ult i32 %242, %246
  br i1 %247, label %256, label %248

248:                                              ; preds = %239
  %249 = add i32 %246, 256
  %250 = tail call i32 @llvm.umin.i32(i32 %249, i32 1048575)
  store i32 %250, ptr %34, align 8, !tbaa !66
  %251 = load ptr, ptr %240, align 8, !tbaa !68
  %252 = shl nuw nsw i32 %250, 2
  %253 = zext nneg i32 %252 to i64
  %254 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %251, i64 noundef %253, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %255 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %254, ptr %255, align 8, !tbaa !68
  br label %256

256:                                              ; preds = %248, %239
  %257 = shl i32 %245, 12
  %258 = or disjoint i32 %257, 970
  %259 = load ptr, ptr %0, align 8, !tbaa !34
  %260 = load ptr, ptr %259, align 8, !tbaa !68
  %261 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %259, i64 0, i32 1
  %262 = load i32, ptr %261, align 8, !tbaa !67
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i32, ptr %260, i64 %263
  store i32 %258, ptr %264, align 4, !tbaa !40
  %265 = load i32, ptr %261, align 8, !tbaa !67
  %266 = add i32 %265, 1
  store i32 %266, ptr %261, align 8, !tbaa !67
  %267 = icmp ugt i32 %266, 1048574
  br i1 %267, label %268, label %270

268:                                              ; preds = %256
  %269 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %270

270:                                              ; preds = %256, %268
  %271 = load ptr, ptr %0, align 8, !tbaa !34
  %272 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %271, i64 0, i32 1
  %273 = load i32, ptr %272, align 8, !tbaa !67
  %274 = load i32, ptr %34, align 8, !tbaa !66
  %275 = icmp ult i32 %273, %274
  br i1 %275, label %284, label %276

276:                                              ; preds = %270
  %277 = add i32 %274, 256
  %278 = tail call i32 @llvm.umin.i32(i32 %277, i32 1048575)
  store i32 %278, ptr %34, align 8, !tbaa !66
  %279 = load ptr, ptr %271, align 8, !tbaa !68
  %280 = shl nuw nsw i32 %278, 2
  %281 = zext nneg i32 %280 to i64
  %282 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %279, i64 noundef %281, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %283 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %282, ptr %283, align 8, !tbaa !68
  br label %284

284:                                              ; preds = %276, %270
  %285 = or disjoint i32 %46, 717
  %286 = load ptr, ptr %0, align 8, !tbaa !34
  %287 = load ptr, ptr %286, align 8, !tbaa !68
  %288 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %286, i64 0, i32 1
  %289 = load i32, ptr %288, align 8, !tbaa !67
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i32, ptr %287, i64 %290
  store i32 %285, ptr %291, align 4, !tbaa !40
  %292 = load i32, ptr %288, align 8, !tbaa !67
  %293 = add i32 %292, 1
  store i32 %293, ptr %288, align 8, !tbaa !67
  %294 = icmp ugt i32 %293, 1048574
  br i1 %294, label %295, label %297

295:                                              ; preds = %284
  %296 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %297

297:                                              ; preds = %284, %295
  %298 = load ptr, ptr %0, align 8, !tbaa !34
  %299 = load i32, ptr %19, align 8, !tbaa !77
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %328

301:                                              ; preds = %297
  %302 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %298, i64 0, i32 1
  %303 = load i32, ptr %302, align 8, !tbaa !67
  %304 = load i32, ptr %34, align 8, !tbaa !66
  %305 = icmp ult i32 %303, %304
  br i1 %305, label %314, label %306

306:                                              ; preds = %301
  %307 = add i32 %304, 256
  %308 = tail call i32 @llvm.umin.i32(i32 %307, i32 1048575)
  store i32 %308, ptr %34, align 8, !tbaa !66
  %309 = load ptr, ptr %298, align 8, !tbaa !68
  %310 = shl nuw nsw i32 %308, 2
  %311 = zext nneg i32 %310 to i64
  %312 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %309, i64 noundef %311, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %313 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %312, ptr %313, align 8, !tbaa !68
  br label %314

314:                                              ; preds = %306, %301
  %315 = shl i32 %23, 12
  %316 = add i32 %315, 4814
  %317 = load ptr, ptr %0, align 8, !tbaa !34
  %318 = load ptr, ptr %317, align 8, !tbaa !68
  %319 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %317, i64 0, i32 1
  %320 = load i32, ptr %319, align 8, !tbaa !67
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i32, ptr %318, i64 %321
  store i32 %316, ptr %322, align 4, !tbaa !40
  %323 = load i32, ptr %319, align 8, !tbaa !67
  %324 = add i32 %323, 1
  store i32 %324, ptr %319, align 8, !tbaa !67
  %325 = icmp ugt i32 %324, 1048574
  br i1 %325, label %326, label %328

326:                                              ; preds = %314
  %327 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %328

328:                                              ; preds = %326, %314, %297
  %329 = load i32, ptr %19, align 8, !tbaa !77
  %330 = icmp sgt i32 %329, 1
  br i1 %330, label %331, label %360

331:                                              ; preds = %328
  %332 = add i32 %21, %18
  %333 = load ptr, ptr %0, align 8, !tbaa !34
  %334 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %333, i64 0, i32 1
  %335 = load i32, ptr %334, align 8, !tbaa !67
  %336 = load i32, ptr %34, align 8, !tbaa !66
  %337 = icmp ult i32 %335, %336
  br i1 %337, label %346, label %338

338:                                              ; preds = %331
  %339 = add i32 %336, 256
  %340 = tail call i32 @llvm.umin.i32(i32 %339, i32 1048575)
  store i32 %340, ptr %34, align 8, !tbaa !66
  %341 = load ptr, ptr %333, align 8, !tbaa !68
  %342 = shl nuw nsw i32 %340, 2
  %343 = zext nneg i32 %342 to i64
  %344 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %341, i64 noundef %343, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %345 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %344, ptr %345, align 8, !tbaa !68
  br label %346

346:                                              ; preds = %338, %331
  %347 = shl i32 %332, 12
  %348 = or disjoint i32 %347, 719
  %349 = load ptr, ptr %0, align 8, !tbaa !34
  %350 = load ptr, ptr %349, align 8, !tbaa !68
  %351 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %349, i64 0, i32 1
  %352 = load i32, ptr %351, align 8, !tbaa !67
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds i32, ptr %350, i64 %353
  store i32 %348, ptr %354, align 4, !tbaa !40
  %355 = load i32, ptr %351, align 8, !tbaa !67
  %356 = add i32 %355, 1
  store i32 %356, ptr %351, align 8, !tbaa !67
  %357 = icmp ugt i32 %356, 1048574
  br i1 %357, label %358, label %360

358:                                              ; preds = %346
  %359 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %360

360:                                              ; preds = %358, %346, %328
  tail call void @_ZN3pov6FNCode18compile_parametersEv(ptr noundef nonnull align 8 dereferenceable(28) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCode14compile_seq_opEPNS_14ExprNodeStructEjd(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1, i32 noundef %2, double noundef %3) local_unnamed_addr #0 align 2 {
  %5 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.25)
  br label %10

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr %5, align 8, !tbaa !83
  %12 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.25)
  br label %17

17:                                               ; preds = %15, %10
  %18 = load ptr, ptr %5, align 8, !tbaa !83
  %19 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !83
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.26)
  br label %30

30:                                               ; preds = %24, %28, %17
  %31 = load ptr, ptr %0, align 8, !tbaa !34
  %32 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %31, i64 0, i32 4
  %33 = load i8, ptr %32, align 2, !tbaa !86
  %34 = icmp ugt i8 %33, 55
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.27)
  br label %37

37:                                               ; preds = %35, %30
  %38 = tail call noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr noundef nonnull align 8 dereferenceable(28) %0)
  %39 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !77
  %41 = icmp sgt i32 %40, 2
  %42 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %40, -3
  %45 = select i1 %41, i32 %44, i32 0
  %46 = add i32 %43, %45
  %47 = add i32 %46, 3
  %48 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !79
  %50 = tail call i32 @llvm.smax.i32(i32 %47, i32 %49)
  store i32 %50, ptr %48, align 4, !tbaa !79
  %51 = add i32 %46, 1
  %52 = add i32 %45, 6
  store i32 %52, ptr %39, align 8, !tbaa !77
  %53 = load ptr, ptr %0, align 8, !tbaa !34
  %54 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %53, i64 0, i32 4
  %55 = load i8, ptr %54, align 2, !tbaa !86
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %53, i64 0, i32 5, i64 %56
  store i32 %51, ptr %57, align 4, !tbaa !40
  %58 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !82
  %60 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %59, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !72
  %62 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %53, i64 0, i32 6, i64 %56
  store ptr %61, ptr %62, align 8, !tbaa !41
  %63 = load ptr, ptr %58, align 8, !tbaa !82
  %64 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %63, i64 0, i32 5
  %65 = load i32, ptr %64, align 4, !tbaa !69
  %66 = icmp eq i32 %65, 19
  br i1 %66, label %69, label %67

67:                                               ; preds = %37
  %68 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.28)
  br label %69

69:                                               ; preds = %67, %37
  %70 = load ptr, ptr %0, align 8, !tbaa !34
  %71 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %70, i64 0, i32 4
  %72 = load i8, ptr %71, align 2, !tbaa !86
  %73 = add i8 %72, 1
  store i8 %73, ptr %71, align 2, !tbaa !86
  %74 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef %3)
  %75 = load ptr, ptr %0, align 8, !tbaa !34
  %76 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %75, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !67
  %78 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !66
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %69
  %82 = add i32 %79, 256
  %83 = tail call i32 @llvm.umin.i32(i32 %82, i32 1048575)
  store i32 %83, ptr %78, align 8, !tbaa !66
  %84 = load ptr, ptr %75, align 8, !tbaa !68
  %85 = shl nuw nsw i32 %83, 2
  %86 = zext nneg i32 %85 to i64
  %87 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %84, i64 noundef %86, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %88 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %87, ptr %88, align 8, !tbaa !68
  br label %89

89:                                               ; preds = %81, %69
  %90 = shl i32 %74, 12
  %91 = or disjoint i32 %90, 621
  %92 = load ptr, ptr %0, align 8, !tbaa !34
  %93 = load ptr, ptr %92, align 8, !tbaa !68
  %94 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %92, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !67
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %93, i64 %96
  store i32 %91, ptr %97, align 4, !tbaa !40
  %98 = load i32, ptr %94, align 8, !tbaa !67
  %99 = add i32 %98, 1
  store i32 %99, ptr %94, align 8, !tbaa !67
  %100 = icmp ugt i32 %99, 1048574
  br i1 %100, label %101, label %103

101:                                              ; preds = %89
  %102 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %103

103:                                              ; preds = %89, %101
  %104 = load ptr, ptr %0, align 8, !tbaa !34
  %105 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %104, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !67
  %107 = load i32, ptr %78, align 8, !tbaa !66
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %103
  %110 = add i32 %107, 256
  %111 = tail call i32 @llvm.umin.i32(i32 %110, i32 1048575)
  store i32 %111, ptr %78, align 8, !tbaa !66
  %112 = load ptr, ptr %104, align 8, !tbaa !68
  %113 = shl nuw nsw i32 %111, 2
  %114 = zext nneg i32 %113 to i64
  %115 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %112, i64 noundef %114, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %116 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %115, ptr %116, align 8, !tbaa !68
  br label %117

117:                                              ; preds = %109, %103
  %118 = shl i32 %46, 12
  %119 = or disjoint i32 %118, 781
  %120 = load ptr, ptr %0, align 8, !tbaa !34
  %121 = load ptr, ptr %120, align 8, !tbaa !68
  %122 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %120, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !67
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %121, i64 %124
  store i32 %119, ptr %125, align 4, !tbaa !40
  %126 = load i32, ptr %122, align 8, !tbaa !67
  %127 = add i32 %126, 1
  store i32 %127, ptr %122, align 8, !tbaa !67
  %128 = icmp ugt i32 %127, 1048574
  br i1 %128, label %129, label %131

129:                                              ; preds = %117
  %130 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %131

131:                                              ; preds = %117, %129
  %132 = load ptr, ptr %5, align 8, !tbaa !83
  %133 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %134)
  %135 = load ptr, ptr %0, align 8, !tbaa !34
  %136 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %135, i64 0, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !67
  %138 = load i32, ptr %78, align 8, !tbaa !66
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %148, label %140

140:                                              ; preds = %131
  %141 = add i32 %138, 256
  %142 = tail call i32 @llvm.umin.i32(i32 %141, i32 1048575)
  store i32 %142, ptr %78, align 8, !tbaa !66
  %143 = load ptr, ptr %135, align 8, !tbaa !68
  %144 = shl nuw nsw i32 %142, 2
  %145 = zext nneg i32 %144 to i64
  %146 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %143, i64 noundef %145, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %147 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %146, ptr %147, align 8, !tbaa !68
  br label %148

148:                                              ; preds = %140, %131
  %149 = shl i32 %51, 12
  %150 = or disjoint i32 %149, 776
  %151 = load ptr, ptr %0, align 8, !tbaa !34
  %152 = load ptr, ptr %151, align 8, !tbaa !68
  %153 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %151, i64 0, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !67
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %152, i64 %155
  store i32 %150, ptr %156, align 4, !tbaa !40
  %157 = load i32, ptr %153, align 8, !tbaa !67
  %158 = add i32 %157, 1
  store i32 %158, ptr %153, align 8, !tbaa !67
  %159 = icmp ugt i32 %158, 1048574
  br i1 %159, label %160, label %162

160:                                              ; preds = %148
  %161 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %162

162:                                              ; preds = %148, %160
  %163 = load ptr, ptr %5, align 8, !tbaa !83
  %164 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %163, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !83
  %166 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %167)
  %168 = load ptr, ptr %0, align 8, !tbaa !34
  %169 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !67
  %171 = load i32, ptr %78, align 8, !tbaa !66
  %172 = icmp ult i32 %170, %171
  br i1 %172, label %181, label %173

173:                                              ; preds = %162
  %174 = add i32 %171, 256
  %175 = tail call i32 @llvm.umin.i32(i32 %174, i32 1048575)
  store i32 %175, ptr %78, align 8, !tbaa !66
  %176 = load ptr, ptr %168, align 8, !tbaa !68
  %177 = shl nuw nsw i32 %175, 2
  %178 = zext nneg i32 %177 to i64
  %179 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %176, i64 noundef %178, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %180 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %179, ptr %180, align 8, !tbaa !68
  br label %181

181:                                              ; preds = %173, %162
  %182 = shl i32 %46, 12
  %183 = add i32 %182, 8192
  %184 = or disjoint i32 %183, 776
  %185 = load ptr, ptr %0, align 8, !tbaa !34
  %186 = load ptr, ptr %185, align 8, !tbaa !68
  %187 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %185, i64 0, i32 1
  %188 = load i32, ptr %187, align 8, !tbaa !67
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, ptr %186, i64 %189
  store i32 %184, ptr %190, align 4, !tbaa !40
  %191 = load i32, ptr %187, align 8, !tbaa !67
  %192 = add i32 %191, 1
  store i32 %192, ptr %187, align 8, !tbaa !67
  %193 = icmp ugt i32 %192, 1048574
  br i1 %193, label %194, label %196

194:                                              ; preds = %181
  %195 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %196

196:                                              ; preds = %181, %194
  %197 = load ptr, ptr %0, align 8, !tbaa !34
  %198 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %197, i64 0, i32 1
  %199 = load i32, ptr %198, align 8, !tbaa !67
  %200 = load i32, ptr %78, align 8, !tbaa !66
  %201 = icmp ult i32 %199, %200
  br i1 %201, label %210, label %202

202:                                              ; preds = %196
  %203 = add i32 %200, 256
  %204 = tail call i32 @llvm.umin.i32(i32 %203, i32 1048575)
  store i32 %204, ptr %78, align 8, !tbaa !66
  %205 = load ptr, ptr %197, align 8, !tbaa !68
  %206 = shl nuw nsw i32 %204, 2
  %207 = zext nneg i32 %206 to i64
  %208 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %205, i64 noundef %207, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %209 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %208, ptr %209, align 8, !tbaa !68
  br label %210

210:                                              ; preds = %202, %196
  %211 = or disjoint i32 %149, 717
  %212 = load ptr, ptr %0, align 8, !tbaa !34
  %213 = load ptr, ptr %212, align 8, !tbaa !68
  %214 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %212, i64 0, i32 1
  %215 = load i32, ptr %214, align 8, !tbaa !67
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, ptr %213, i64 %216
  store i32 %211, ptr %217, align 4, !tbaa !40
  %218 = load i32, ptr %214, align 8, !tbaa !67
  %219 = add i32 %218, 1
  store i32 %219, ptr %214, align 8, !tbaa !67
  %220 = icmp ugt i32 %219, 1048574
  br i1 %220, label %221, label %223

221:                                              ; preds = %210
  %222 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %223

223:                                              ; preds = %210, %221
  %224 = load ptr, ptr %0, align 8, !tbaa !34
  %225 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %224, i64 0, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !67
  %227 = load i32, ptr %78, align 8, !tbaa !66
  %228 = icmp ult i32 %226, %227
  br i1 %228, label %237, label %229

229:                                              ; preds = %223
  %230 = add i32 %227, 256
  %231 = tail call i32 @llvm.umin.i32(i32 %230, i32 1048575)
  store i32 %231, ptr %78, align 8, !tbaa !66
  %232 = load ptr, ptr %224, align 8, !tbaa !68
  %233 = shl nuw nsw i32 %231, 2
  %234 = zext nneg i32 %233 to i64
  %235 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %232, i64 noundef %234, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %236 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %235, ptr %236, align 8, !tbaa !68
  br label %237

237:                                              ; preds = %229, %223
  %238 = or disjoint i32 %183, 712
  %239 = load ptr, ptr %0, align 8, !tbaa !34
  %240 = load ptr, ptr %239, align 8, !tbaa !68
  %241 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %239, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !67
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i32, ptr %240, i64 %243
  store i32 %238, ptr %244, align 4, !tbaa !40
  %245 = load i32, ptr %241, align 8, !tbaa !67
  %246 = add i32 %245, 1
  store i32 %246, ptr %241, align 8, !tbaa !67
  %247 = icmp ugt i32 %246, 1048574
  br i1 %247, label %248, label %250

248:                                              ; preds = %237
  %249 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %250

250:                                              ; preds = %237, %248
  %251 = load ptr, ptr %0, align 8, !tbaa !34
  %252 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %251, i64 0, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !67
  %254 = load i32, ptr %78, align 8, !tbaa !66
  %255 = icmp ult i32 %253, %254
  br i1 %255, label %264, label %256

256:                                              ; preds = %250
  %257 = add i32 %254, 256
  %258 = tail call i32 @llvm.umin.i32(i32 %257, i32 1048575)
  store i32 %258, ptr %78, align 8, !tbaa !66
  %259 = load ptr, ptr %251, align 8, !tbaa !68
  %260 = shl nuw nsw i32 %258, 2
  %261 = zext nneg i32 %260 to i64
  %262 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %259, i64 noundef %261, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %263 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %262, ptr %263, align 8, !tbaa !68
  br label %264

264:                                              ; preds = %256, %250
  %265 = load ptr, ptr %0, align 8, !tbaa !34
  %266 = load ptr, ptr %265, align 8, !tbaa !68
  %267 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %265, i64 0, i32 1
  %268 = load i32, ptr %267, align 8, !tbaa !67
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i32, ptr %266, i64 %269
  store i32 389, ptr %270, align 4, !tbaa !40
  %271 = load i32, ptr %267, align 8, !tbaa !67
  %272 = add i32 %271, 1
  store i32 %272, ptr %267, align 8, !tbaa !67
  %273 = icmp ugt i32 %272, 1048574
  br i1 %273, label %274, label %276

274:                                              ; preds = %264
  %275 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %276

276:                                              ; preds = %264, %274
  %277 = load ptr, ptr %0, align 8, !tbaa !34
  %278 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %277, i64 0, i32 1
  %279 = load i32, ptr %278, align 8, !tbaa !67
  %280 = load i32, ptr %78, align 8, !tbaa !66
  %281 = icmp ult i32 %279, %280
  br i1 %281, label %290, label %282

282:                                              ; preds = %276
  %283 = add i32 %280, 256
  %284 = tail call i32 @llvm.umin.i32(i32 %283, i32 1048575)
  store i32 %284, ptr %78, align 8, !tbaa !66
  %285 = load ptr, ptr %277, align 8, !tbaa !68
  %286 = shl nuw nsw i32 %284, 2
  %287 = zext nneg i32 %286 to i64
  %288 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %285, i64 noundef %287, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %289 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %288, ptr %289, align 8, !tbaa !68
  br label %290

290:                                              ; preds = %282, %276
  %291 = load ptr, ptr %0, align 8, !tbaa !34
  %292 = load ptr, ptr %291, align 8, !tbaa !68
  %293 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %291, i64 0, i32 1
  %294 = load i32, ptr %293, align 8, !tbaa !67
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds i32, ptr %292, i64 %295
  store i32 991, ptr %296, align 4, !tbaa !40
  %297 = load i32, ptr %293, align 8, !tbaa !67
  %298 = add i32 %297, 1
  store i32 %298, ptr %293, align 8, !tbaa !67
  %299 = icmp ugt i32 %298, 1048574
  br i1 %299, label %300, label %302

300:                                              ; preds = %290
  %301 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %302

302:                                              ; preds = %290, %300
  %303 = load ptr, ptr %0, align 8, !tbaa !34
  %304 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %303, i64 0, i32 1
  %305 = load i32, ptr %304, align 8, !tbaa !67
  %306 = add i32 %305, -1
  %307 = load ptr, ptr %5, align 8, !tbaa !83
  %308 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %307, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8, !tbaa !83
  %310 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %309, i64 0, i32 3
  %311 = load ptr, ptr %310, align 8, !tbaa !83
  %312 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %311, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !82
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %313)
  %314 = load ptr, ptr %0, align 8, !tbaa !34
  %315 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %314, i64 0, i32 1
  %316 = load i32, ptr %315, align 8, !tbaa !67
  %317 = load i32, ptr %78, align 8, !tbaa !66
  %318 = icmp ult i32 %316, %317
  br i1 %318, label %327, label %319

319:                                              ; preds = %302
  %320 = add i32 %317, 256
  %321 = tail call i32 @llvm.umin.i32(i32 %320, i32 1048575)
  store i32 %321, ptr %78, align 8, !tbaa !66
  %322 = load ptr, ptr %314, align 8, !tbaa !68
  %323 = shl nuw nsw i32 %321, 2
  %324 = zext nneg i32 %323 to i64
  %325 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %322, i64 noundef %324, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %326 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %325, ptr %326, align 8, !tbaa !68
  br label %327

327:                                              ; preds = %319, %302
  %328 = or disjoint i32 %118, 717
  %329 = load ptr, ptr %0, align 8, !tbaa !34
  %330 = load ptr, ptr %329, align 8, !tbaa !68
  %331 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %329, i64 0, i32 1
  %332 = load i32, ptr %331, align 8, !tbaa !67
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i32, ptr %330, i64 %333
  store i32 %328, ptr %334, align 4, !tbaa !40
  %335 = load i32, ptr %331, align 8, !tbaa !67
  %336 = add i32 %335, 1
  store i32 %336, ptr %331, align 8, !tbaa !67
  %337 = icmp ugt i32 %336, 1048574
  br i1 %337, label %338, label %340

338:                                              ; preds = %327
  %339 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %340

340:                                              ; preds = %327, %338
  %341 = load ptr, ptr %0, align 8, !tbaa !34
  %342 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %341, i64 0, i32 1
  %343 = load i32, ptr %342, align 8, !tbaa !67
  %344 = load i32, ptr %78, align 8, !tbaa !66
  %345 = icmp ult i32 %343, %344
  br i1 %345, label %354, label %346

346:                                              ; preds = %340
  %347 = add i32 %344, 256
  %348 = tail call i32 @llvm.umin.i32(i32 %347, i32 1048575)
  store i32 %348, ptr %78, align 8, !tbaa !66
  %349 = load ptr, ptr %341, align 8, !tbaa !68
  %350 = shl nuw nsw i32 %348, 2
  %351 = zext nneg i32 %350 to i64
  %352 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %349, i64 noundef %351, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %353 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %352, ptr %353, align 8, !tbaa !68
  br label %354

354:                                              ; preds = %346, %340
  %355 = and i32 %2, 4090
  %356 = or disjoint i32 %355, %118
  %357 = or disjoint i32 %356, 5
  %358 = load ptr, ptr %0, align 8, !tbaa !34
  %359 = load ptr, ptr %358, align 8, !tbaa !68
  %360 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %358, i64 0, i32 1
  %361 = load i32, ptr %360, align 8, !tbaa !67
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds i32, ptr %359, i64 %362
  store i32 %357, ptr %363, align 4, !tbaa !40
  %364 = load i32, ptr %360, align 8, !tbaa !67
  %365 = add i32 %364, 1
  store i32 %365, ptr %360, align 8, !tbaa !67
  %366 = icmp ugt i32 %365, 1048574
  br i1 %366, label %367, label %369

367:                                              ; preds = %354
  %368 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %369

369:                                              ; preds = %354, %367
  %370 = load ptr, ptr %0, align 8, !tbaa !34
  %371 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %370, i64 0, i32 1
  %372 = load i32, ptr %371, align 8, !tbaa !67
  %373 = load i32, ptr %78, align 8, !tbaa !66
  %374 = icmp ult i32 %372, %373
  br i1 %374, label %383, label %375

375:                                              ; preds = %369
  %376 = add i32 %373, 256
  %377 = tail call i32 @llvm.umin.i32(i32 %376, i32 1048575)
  store i32 %377, ptr %78, align 8, !tbaa !66
  %378 = load ptr, ptr %370, align 8, !tbaa !68
  %379 = shl nuw nsw i32 %377, 2
  %380 = zext nneg i32 %379 to i64
  %381 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %378, i64 noundef %380, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %382 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %381, ptr %382, align 8, !tbaa !68
  br label %383

383:                                              ; preds = %375, %369
  %384 = load ptr, ptr %0, align 8, !tbaa !34
  %385 = load ptr, ptr %384, align 8, !tbaa !68
  %386 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %384, i64 0, i32 1
  %387 = load i32, ptr %386, align 8, !tbaa !67
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds i32, ptr %385, i64 %388
  store i32 %119, ptr %389, align 4, !tbaa !40
  %390 = load i32, ptr %386, align 8, !tbaa !67
  %391 = add i32 %390, 1
  store i32 %391, ptr %386, align 8, !tbaa !67
  %392 = icmp ugt i32 %391, 1048574
  br i1 %392, label %393, label %395

393:                                              ; preds = %383
  %394 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %395

395:                                              ; preds = %383, %393
  %396 = load ptr, ptr %0, align 8, !tbaa !34
  %397 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %396, i64 0, i32 1
  %398 = load i32, ptr %397, align 8, !tbaa !67
  %399 = load i32, ptr %78, align 8, !tbaa !66
  %400 = icmp ult i32 %398, %399
  br i1 %400, label %409, label %401

401:                                              ; preds = %395
  %402 = add i32 %399, 256
  %403 = tail call i32 @llvm.umin.i32(i32 %402, i32 1048575)
  store i32 %403, ptr %78, align 8, !tbaa !66
  %404 = load ptr, ptr %396, align 8, !tbaa !68
  %405 = shl nuw nsw i32 %403, 2
  %406 = zext nneg i32 %405 to i64
  %407 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %404, i64 noundef %406, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %408 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %407, ptr %408, align 8, !tbaa !68
  br label %409

409:                                              ; preds = %401, %395
  %410 = load ptr, ptr %0, align 8, !tbaa !34
  %411 = load ptr, ptr %410, align 8, !tbaa !68
  %412 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %410, i64 0, i32 1
  %413 = load i32, ptr %412, align 8, !tbaa !67
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds i32, ptr %411, i64 %414
  store i32 %211, ptr %415, align 4, !tbaa !40
  %416 = load i32, ptr %412, align 8, !tbaa !67
  %417 = add i32 %416, 1
  store i32 %417, ptr %412, align 8, !tbaa !67
  %418 = icmp ugt i32 %417, 1048574
  br i1 %418, label %419, label %421

419:                                              ; preds = %409
  %420 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %421

421:                                              ; preds = %409, %419
  %422 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 1.000000e+00)
  %423 = load ptr, ptr %0, align 8, !tbaa !34
  %424 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %423, i64 0, i32 1
  %425 = load i32, ptr %424, align 8, !tbaa !67
  %426 = load i32, ptr %78, align 8, !tbaa !66
  %427 = icmp ult i32 %425, %426
  br i1 %427, label %436, label %428

428:                                              ; preds = %421
  %429 = add i32 %426, 256
  %430 = tail call i32 @llvm.umin.i32(i32 %429, i32 1048575)
  store i32 %430, ptr %78, align 8, !tbaa !66
  %431 = load ptr, ptr %423, align 8, !tbaa !68
  %432 = shl nuw nsw i32 %430, 2
  %433 = zext nneg i32 %432 to i64
  %434 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %431, i64 noundef %433, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %435 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %434, ptr %435, align 8, !tbaa !68
  br label %436

436:                                              ; preds = %428, %421
  %437 = shl i32 %422, 12
  %438 = or disjoint i32 %437, 581
  %439 = load ptr, ptr %0, align 8, !tbaa !34
  %440 = load ptr, ptr %439, align 8, !tbaa !68
  %441 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %439, i64 0, i32 1
  %442 = load i32, ptr %441, align 8, !tbaa !67
  %443 = zext i32 %442 to i64
  %444 = getelementptr inbounds i32, ptr %440, i64 %443
  store i32 %438, ptr %444, align 4, !tbaa !40
  %445 = load i32, ptr %441, align 8, !tbaa !67
  %446 = add i32 %445, 1
  store i32 %446, ptr %441, align 8, !tbaa !67
  %447 = icmp ugt i32 %446, 1048574
  br i1 %447, label %448, label %450

448:                                              ; preds = %436
  %449 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %450

450:                                              ; preds = %436, %448
  %451 = load ptr, ptr %0, align 8, !tbaa !34
  %452 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %451, i64 0, i32 1
  %453 = load i32, ptr %452, align 8, !tbaa !67
  %454 = load i32, ptr %78, align 8, !tbaa !66
  %455 = icmp ult i32 %453, %454
  br i1 %455, label %464, label %456

456:                                              ; preds = %450
  %457 = add i32 %454, 256
  %458 = tail call i32 @llvm.umin.i32(i32 %457, i32 1048575)
  store i32 %458, ptr %78, align 8, !tbaa !66
  %459 = load ptr, ptr %451, align 8, !tbaa !68
  %460 = shl nuw nsw i32 %458, 2
  %461 = zext nneg i32 %460 to i64
  %462 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %459, i64 noundef %461, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %463 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %462, ptr %463, align 8, !tbaa !68
  br label %464

464:                                              ; preds = %456, %450
  %465 = or disjoint i32 %149, 781
  %466 = load ptr, ptr %0, align 8, !tbaa !34
  %467 = load ptr, ptr %466, align 8, !tbaa !68
  %468 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %466, i64 0, i32 1
  %469 = load i32, ptr %468, align 8, !tbaa !67
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds i32, ptr %467, i64 %470
  store i32 %465, ptr %471, align 4, !tbaa !40
  %472 = load i32, ptr %468, align 8, !tbaa !67
  %473 = add i32 %472, 1
  store i32 %473, ptr %468, align 8, !tbaa !67
  %474 = icmp ugt i32 %473, 1048574
  br i1 %474, label %475, label %477

475:                                              ; preds = %464
  %476 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %477

477:                                              ; preds = %464, %475
  %478 = load ptr, ptr %0, align 8, !tbaa !34
  %479 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %478, i64 0, i32 1
  %480 = load i32, ptr %479, align 8, !tbaa !67
  %481 = load i32, ptr %78, align 8, !tbaa !66
  %482 = icmp ult i32 %480, %481
  br i1 %482, label %491, label %483

483:                                              ; preds = %477
  %484 = add i32 %481, 256
  %485 = tail call i32 @llvm.umin.i32(i32 %484, i32 1048575)
  store i32 %485, ptr %78, align 8, !tbaa !66
  %486 = load ptr, ptr %478, align 8, !tbaa !68
  %487 = shl nuw nsw i32 %485, 2
  %488 = zext nneg i32 %487 to i64
  %489 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %486, i64 noundef %488, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %490 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %489, ptr %490, align 8, !tbaa !68
  br label %491

491:                                              ; preds = %483, %477
  %492 = shl i32 %199, 12
  %493 = or disjoint i32 %492, 961
  %494 = load ptr, ptr %0, align 8, !tbaa !34
  %495 = load ptr, ptr %494, align 8, !tbaa !68
  %496 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %494, i64 0, i32 1
  %497 = load i32, ptr %496, align 8, !tbaa !67
  %498 = zext i32 %497 to i64
  %499 = getelementptr inbounds i32, ptr %495, i64 %498
  store i32 %493, ptr %499, align 4, !tbaa !40
  %500 = load i32, ptr %496, align 8, !tbaa !67
  %501 = add i32 %500, 1
  store i32 %501, ptr %496, align 8, !tbaa !67
  %502 = icmp ugt i32 %501, 1048574
  br i1 %502, label %503, label %505

503:                                              ; preds = %491
  %504 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %505

505:                                              ; preds = %491, %503
  %506 = load ptr, ptr %0, align 8, !tbaa !34
  %507 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %506, i64 0, i32 1
  %508 = load i32, ptr %507, align 8, !tbaa !67
  %509 = icmp ugt i32 %508, %306
  br i1 %509, label %512, label %510

510:                                              ; preds = %505
  %511 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.38)
  br label %512

512:                                              ; preds = %505, %510
  %513 = shl i32 %508, 12
  %514 = or disjoint i32 %513, 864
  %515 = load ptr, ptr %0, align 8, !tbaa !34
  %516 = load ptr, ptr %515, align 8, !tbaa !68
  %517 = zext i32 %306 to i64
  %518 = getelementptr inbounds i32, ptr %516, i64 %517
  store i32 %514, ptr %518, align 4, !tbaa !40
  %519 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %515, i64 0, i32 1
  %520 = load i32, ptr %519, align 8, !tbaa !67
  %521 = load i32, ptr %78, align 8, !tbaa !66
  %522 = icmp ult i32 %520, %521
  br i1 %522, label %530, label %523

523:                                              ; preds = %512
  %524 = add i32 %521, 256
  %525 = tail call i32 @llvm.umin.i32(i32 %524, i32 1048575)
  store i32 %525, ptr %78, align 8, !tbaa !66
  %526 = shl nuw nsw i32 %525, 2
  %527 = zext nneg i32 %526 to i64
  %528 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %516, i64 noundef %527, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %529 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %528, ptr %529, align 8, !tbaa !68
  br label %530

530:                                              ; preds = %523, %512
  %531 = or disjoint i32 %118, 712
  %532 = load ptr, ptr %0, align 8, !tbaa !34
  %533 = load ptr, ptr %532, align 8, !tbaa !68
  %534 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %532, i64 0, i32 1
  %535 = load i32, ptr %534, align 8, !tbaa !67
  %536 = zext i32 %535 to i64
  %537 = getelementptr inbounds i32, ptr %533, i64 %536
  store i32 %531, ptr %537, align 4, !tbaa !40
  %538 = load i32, ptr %534, align 8, !tbaa !67
  %539 = add i32 %538, 1
  store i32 %539, ptr %534, align 8, !tbaa !67
  %540 = icmp ugt i32 %539, 1048574
  br i1 %540, label %541, label %543

541:                                              ; preds = %530
  %542 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %543

543:                                              ; preds = %530, %541
  %544 = load ptr, ptr %0, align 8, !tbaa !34
  %545 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %544, i64 0, i32 4
  %546 = load i8, ptr %545, align 2, !tbaa !86
  %547 = add i8 %546, -1
  store i8 %547, ptr %545, align 2, !tbaa !86
  %548 = zext i8 %547 to i64
  %549 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %544, i64 0, i32 5, i64 %548
  store i32 0, ptr %549, align 4, !tbaa !40
  %550 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %544, i64 0, i32 6, i64 %548
  store ptr null, ptr %550, align 8, !tbaa !41
  store i32 %40, ptr %39, align 8, !tbaa !77
  tail call void @_ZN3pov6FNCode18compile_pop_resultEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %38)
  ret void
}

declare noundef i32 @_ZN3pov13PossibleErrorEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare noundef ptr @_ZN3pov30POVFPU_GetFunctionAndReferenceEj(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov6FNCode14compile_inlineEPNS_12FunctionCodeE(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = add i32 %5, -1
  %7 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !67
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %86, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  br label %13

13:                                               ; preds = %10, %80
  %14 = phi i64 [ 0, %10 ], [ %81, %80 ]
  %15 = load ptr, ptr %1, align 8, !tbaa !68
  %16 = getelementptr inbounds i32, ptr %15, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !40
  %18 = and i32 %17, 4095
  %19 = add nsw i32 %18, -832
  %20 = icmp ult i32 %19, 41
  %21 = icmp eq i32 %18, 961
  %22 = or i1 %21, %20
  br i1 %22, label %23, label %51

23:                                               ; preds = %13
  %24 = lshr i32 %17, 12
  %25 = add i32 %6, %24
  %26 = and i32 %25, -4096
  %27 = load ptr, ptr %0, align 8, !tbaa !34
  %28 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !67
  %30 = load i32, ptr %12, align 8, !tbaa !66
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %23
  %33 = add i32 %30, 256
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 1048575)
  store i32 %34, ptr %12, align 8, !tbaa !66
  %35 = load ptr, ptr %27, align 8, !tbaa !68
  %36 = shl nuw nsw i32 %34, 2
  %37 = zext nneg i32 %36 to i64
  %38 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %35, i64 noundef %37, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %39 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %38, ptr %39, align 8, !tbaa !68
  br label %40

40:                                               ; preds = %32, %23
  %41 = or disjoint i32 %26, %18
  %42 = load ptr, ptr %0, align 8, !tbaa !34
  %43 = load ptr, ptr %42, align 8, !tbaa !68
  %44 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %42, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !67
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %43, i64 %46
  store i32 %41, ptr %47, align 4, !tbaa !40
  %48 = load i32, ptr %44, align 8, !tbaa !67
  %49 = add i32 %48, 1
  store i32 %49, ptr %44, align 8, !tbaa !67
  %50 = icmp ugt i32 %49, 1048574
  br i1 %50, label %78, label %80

51:                                               ; preds = %13
  %52 = load ptr, ptr %0, align 8, !tbaa !34
  %53 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !67
  %55 = load i32, ptr %11, align 8, !tbaa !66
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = add i32 %55, 256
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 1048575)
  store i32 %59, ptr %11, align 8, !tbaa !66
  %60 = load ptr, ptr %52, align 8, !tbaa !68
  %61 = shl nuw nsw i32 %59, 2
  %62 = zext nneg i32 %61 to i64
  %63 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %60, i64 noundef %62, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4)
  %64 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %63, ptr %64, align 8, !tbaa !68
  br label %65

65:                                               ; preds = %57, %51
  %66 = lshr i32 %17, 12
  %67 = and i32 %66, 1044480
  %68 = or disjoint i32 %67, %18
  %69 = load ptr, ptr %0, align 8, !tbaa !34
  %70 = load ptr, ptr %69, align 8, !tbaa !68
  %71 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %69, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !67
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, ptr %70, i64 %73
  store i32 %68, ptr %74, align 4, !tbaa !40
  %75 = load i32, ptr %71, align 8, !tbaa !67
  %76 = add i32 %75, 1
  store i32 %76, ptr %71, align 8, !tbaa !67
  %77 = icmp ugt i32 %76, 1048574
  br i1 %77, label %78, label %80

78:                                               ; preds = %65, %40
  %79 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37)
  br label %80

80:                                               ; preds = %78, %65, %40
  %81 = add nuw nsw i64 %14, 1
  %82 = load i32, ptr %7, align 8, !tbaa !67
  %83 = add i32 %82, -1
  %84 = zext i32 %83 to i64
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %13, label %86, !llvm.loop !99

86:                                               ; preds = %80, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 42930506}
!8 = !{!"MaxCount", i64 10485760}
!9 = !{!"MaxInternalCount", i64 10485760}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 10485760, i32 1}
!18 = !{i32 100000, i64 10485760, i32 1}
!19 = !{i32 200000, i64 10485760, i32 1}
!20 = !{i32 300000, i64 5242880, i32 7}
!21 = !{i32 400000, i64 5242880, i32 7}
!22 = !{i32 500000, i64 5242880, i32 7}
!23 = !{i32 600000, i64 5242880, i32 7}
!24 = !{i32 700000, i64 5242880, i32 7}
!25 = !{i32 800000, i64 5242880, i32 7}
!26 = !{i32 900000, i64 5242880, i32 7}
!27 = !{i32 950000, i64 5242880, i32 7}
!28 = !{i32 990000, i64 655360, i32 8}
!29 = !{i32 999000, i64 81920, i32 12}
!30 = !{i32 999900, i64 4096, i32 13}
!31 = !{i32 999990, i64 4096, i32 13}
!32 = !{i32 999999, i64 20, i32 16}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSN3pov6FNCodeE", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!36, !36, i64 0}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!46, !36, i64 1136}
!46 = !{!"_ZTSN3pov12FunctionCodeE", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 16, !37, i64 240, !37, i64 688, !36, i64 1136, !36, i64 1144, !47, i64 1152, !39, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192}
!47 = !{!"_ZTSN8pov_base11ITextStream7FilePosE", !48, i64 0, !39, i64 8}
!48 = !{!"long", !37, i64 0}
!49 = !{!50, !36, i64 56}
!50 = !{!"_ZTSN3pov12Token_StructE", !39, i64 0, !39, i64 4, !47, i64 8, !39, i64 24, !39, i64 28, !36, i64 32, !51, i64 40, !39, i64 48, !39, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !52, i64 88}
!51 = !{!"double", !37, i64 0}
!52 = !{!"bool", !37, i64 0}
!53 = !{!54, !36, i64 560}
!54 = !{!"_ZTSN8pov_base11ITextStreamE", !36, i64 8, !37, i64 16, !48, i64 528, !48, i64 536, !48, i64 544, !48, i64 552, !36, i64 560, !39, i64 568, !39, i64 572}
!55 = !{!46, !36, i64 1144}
!56 = !{i64 0, i64 8, !57, i64 8, i64 4, !40}
!57 = !{!48, !48, i64 0}
!58 = !{i64 0, i64 4, !40}
!59 = !{!46, !39, i64 1160}
!60 = !{!46, !48, i64 1152}
!61 = !{!46, !39, i64 1168}
!62 = !{!50, !39, i64 0}
!63 = !{!46, !37, i64 13}
!64 = !{!50, !36, i64 32}
!65 = distinct !{!65, !43, !44}
!66 = !{!35, !39, i64 8}
!67 = !{!46, !39, i64 8}
!68 = !{!46, !36, i64 0}
!69 = !{!70, !39, i64 36}
!70 = !{!"_ZTSN3pov14ExprNodeStructE", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36, !37, i64 40}
!71 = !{!46, !37, i64 12}
!72 = !{!37, !37, i64 0}
!73 = !{!74, !39, i64 8}
!74 = !{!"_ZTSN3pov5TrapSE", !36, i64 0, !39, i64 8}
!75 = !{!76, !39, i64 8}
!76 = !{!"_ZTSN3pov4TrapE", !36, i64 0, !39, i64 8}
!77 = !{!35, !39, i64 24}
!78 = !{!35, !39, i64 20}
!79 = !{!35, !39, i64 12}
!80 = !{!35, !39, i64 16}
!81 = distinct !{!81, !43, !44}
!82 = !{!70, !36, i64 8}
!83 = !{!70, !36, i64 24}
!84 = distinct !{!84, !43, !44}
!85 = distinct !{!85, !43, !44}
!86 = !{!46, !37, i64 14}
!87 = distinct !{!87, !43, !44}
!88 = !{!46, !36, i64 1176}
!89 = !{!46, !36, i64 1184}
!90 = !{!46, !36, i64 1192}
!91 = distinct !{!91, !43, !44}
!92 = distinct !{!92, !43, !44}
!93 = distinct !{!93, !43, !44}
!94 = distinct !{!94, !43, !44}
!95 = distinct !{!95, !43, !44}
!96 = distinct !{!96, !43, !44}
!97 = distinct !{!97, !43, !44}
!98 = distinct !{!98, !43, !44}
!99 = distinct !{!99, !43, !44}
