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

$_ZN8pov_base11ITextStream4nameEv = comdat any

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_ZSt3minIiERKT_S2_S2_ = comdat any

$_ZSt3minIjERKT_S2_S2_ = comdat any

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

; Function Attrs: mustprogress noinline optsize uwtable
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
  %18 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef nonnull %17) #8
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  %20 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %19, i64 0, i32 8
  store ptr %18, ptr %20, align 8, !tbaa !44
  %21 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 9), align 8, !tbaa !48
  %22 = tail call noundef ptr @_ZN8pov_base11ITextStream4nameEv(ptr noundef nonnull align 8 dereferenceable(576) %21) #8
  %23 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef %22) #8
  %24 = load ptr, ptr %0, align 8, !tbaa !34
  %25 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %24, i64 0, i32 9
  store ptr %23, ptr %25, align 8, !tbaa !52
  %26 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 9), align 8, !tbaa !48
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %15
  %29 = tail call { i64, i32 } @_ZN8pov_base11ITextStream5tellgEv(ptr noundef nonnull align 8 dereferenceable(576) %26) #8
  %30 = extractvalue { i64, i32 } %29, 0
  %31 = extractvalue { i64, i32 } %29, 1
  %32 = load ptr, ptr %0, align 8, !tbaa !34
  %33 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %32, i64 0, i32 10
  store i64 %30, ptr %33, align 8, !tbaa.struct !53
  %34 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %32, i64 0, i32 10, i32 1
  store i32 %31, ptr %34, align 8, !tbaa.struct !55
  %35 = load ptr, ptr %0, align 8, !tbaa !34
  br label %39

36:                                               ; preds = %15
  %37 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %24, i64 0, i32 10, i32 1
  store i32 0, ptr %37, align 8, !tbaa !56
  %38 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %24, i64 0, i32 10
  store i64 0, ptr %38, align 8, !tbaa !57
  br label %39

39:                                               ; preds = %36, %28
  %40 = phi ptr [ %24, %36 ], [ %35, %28 ]
  %41 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %40, i64 0, i32 11
  store i32 0, ptr %41, align 8, !tbaa !58
  %42 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %40, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  br i1 %2, label %43, label %44

43:                                               ; preds = %39
  store i32 2, ptr %41, align 8, !tbaa !58
  br label %44

44:                                               ; preds = %43, %39
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN8pov_base11ITextStream4nameEv(ptr noundef nonnull align 8 dereferenceable(576) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = getelementptr inbounds %"class.pov_base::ITextStream", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: optsize
declare { i64, i32 } @_ZN8pov_base11ITextStream5tellgEv(ptr noundef nonnull align 8 dereferenceable(576)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov6FNCode9ParameterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %0) local_unnamed_addr #0 align 2 {
  tail call void @_ZN3pov9Get_TokenEv() #8
  %2 = load i32, ptr @_ZN3pov5TokenE, align 8, !tbaa !61
  %3 = icmp eq i32 %2, 173
  br i1 %3, label %4, label %38

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %5, i64 0, i32 3
  store i8 0, ptr %6, align 1, !tbaa !62
  br label %7

7:                                                ; preds = %18, %4
  %8 = phi i8 [ %29, %18 ], [ 0, %4 ]
  %9 = phi i32 [ %30, %18 ], [ 173, %4 ]
  %10 = icmp eq i32 %9, 219
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = icmp eq i8 %8, 0
  br i1 %12, label %15, label %31

13:                                               ; preds = %7
  %14 = icmp ult i8 %8, 56
  br i1 %14, label %15, label %31

15:                                               ; preds = %11, %13
  tail call void @_ZN3pov9Get_TokenEv() #8
  %16 = load i32, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 1), align 4
  switch i32 %16, label %17 [
    i32 401, label %18
    i32 400, label %18
    i32 161, label %18
    i32 73, label %18
    i32 72, label %18
    i32 71, label %18
  ]

17:                                               ; preds = %15
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef nonnull @.str.1) #8
  br label %18

18:                                               ; preds = %15, %15, %15, %15, %15, %15, %17
  %19 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 5), align 8, !tbaa !63
  %20 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef %19) #8
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %21, i64 0, i32 3
  %23 = load i8, ptr %22, align 1, !tbaa !62
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %21, i64 0, i32 7, i64 %24
  store ptr %20, ptr %25, align 8, !tbaa !41
  tail call void @_ZN3pov11Parse_CommaEv() #8
  %26 = load ptr, ptr %0, align 8, !tbaa !34
  %27 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %26, i64 0, i32 3
  %28 = load i8, ptr %27, align 1, !tbaa !62
  %29 = add i8 %28, 1
  store i8 %29, ptr %27, align 1, !tbaa !62
  %30 = load i32, ptr @_ZN3pov5TokenE, align 8, !tbaa !61
  br label %7, !llvm.loop !64

31:                                               ; preds = %11, %13
  tail call void @_ZN3pov9Get_TokenEv() #8
  %32 = load ptr, ptr %0, align 8, !tbaa !34
  %33 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %32, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !62
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.2) #8
  br label %39

38:                                               ; preds = %1
  tail call void @_ZN3pov11Unget_TokenEv() #8
  br label %39

39:                                               ; preds = %31, %36, %38
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov9Get_TokenEv() local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov11Parse_CommaEv() local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov11Unget_TokenEv() local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov6FNCode7CompileEPNS_14ExprNodeStructE(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  store i32 256, ptr %3, align 8, !tbaa !65
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !66
  %6 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 1024, ptr noundef nonnull @.str.3, i32 noundef 258, ptr noundef nonnull @.str.4) #8
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %6, ptr %7, align 8, !tbaa !67
  %8 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !68
  %10 = icmp eq i32 %9, 23
  br i1 %10, label %11, label %49

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %7, i64 0, i32 2
  %13 = load i8, ptr %12, align 4, !tbaa !70
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !71
  br i1 %14, label %33, label %17

17:                                               ; preds = %11
  %18 = load i32, ptr @_ZN3pov21POVFPU_TrapSTableSizeE, align 4, !tbaa !40
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.5, i32 noundef %16) #8
  %22 = load i32, ptr %15, align 8, !tbaa !71
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %22, %20 ], [ %16, %17 ]
  %25 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 967, i32 noundef 0, i32 noundef 0, i32 noundef %24) #8
  %26 = load i32, ptr %15, align 8, !tbaa !71
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [0 x %"struct.pov::TrapS"], ptr @_ZN3pov17POVFPU_TrapSTableE, i64 0, i64 %27, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !72
  %30 = trunc i32 %29 to i8
  %31 = load ptr, ptr %0, align 8, !tbaa !34
  %32 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %31, i64 0, i32 3
  store i8 %30, ptr %32, align 1, !tbaa !62
  br label %61

33:                                               ; preds = %11
  %34 = load i32, ptr @_ZN3pov20POVFPU_TrapTableSizeE, align 4, !tbaa !40
  %35 = icmp ult i32 %16, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.5, i32 noundef %16) #8
  %38 = load i32, ptr %15, align 8, !tbaa !71
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32 [ %38, %36 ], [ %16, %33 ]
  %41 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 966, i32 noundef 0, i32 noundef 0, i32 noundef %40) #8
  %42 = load i32, ptr %15, align 8, !tbaa !71
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [0 x %"struct.pov::Trap"], ptr @_ZN3pov16POVFPU_TrapTableE, i64 0, i64 %43, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !74
  %46 = trunc i32 %45 to i8
  %47 = load ptr, ptr %0, align 8, !tbaa !34
  %48 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %47, i64 0, i32 3
  store i8 %46, ptr %48, align 1, !tbaa !62
  br label %61

49:                                               ; preds = %2
  %50 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 991, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  tail call void @_ZN3pov6FNCode18compile_parametersEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #8
  %51 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  store i32 0, ptr %51, align 8, !tbaa !76
  %52 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 4
  store i32 0, ptr %52, align 4, !tbaa !77
  %53 = load ptr, ptr %0, align 8, !tbaa !34
  %54 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %53, i64 0, i32 3
  %55 = load i8, ptr %54, align 1, !tbaa !62
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 2
  store i32 %56, ptr %57, align 4, !tbaa !78
  %58 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 3
  store i32 %56, ptr %58, align 8, !tbaa !79
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %1) #8
  %59 = load i32, ptr %57, align 4, !tbaa !78
  %60 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %50, i32 noundef 968, i32 noundef 0, i32 noundef 0, i32 noundef %59) #8
  br label %61

61:                                               ; preds = %23, %39, %49
  %62 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 962, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %63 = load ptr, ptr %0, align 8, !tbaa !34
  %64 = load ptr, ptr %63, align 8, !tbaa !67
  %65 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %63, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !66
  %67 = zext i32 %66 to i64
  %68 = shl nuw nsw i64 %67, 2
  %69 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %64, i64 noundef %68, ptr noundef nonnull @.str.3, i32 noundef 338, ptr noundef nonnull @.str.4) #8
  %70 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %69, ptr %70, align 8, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !65
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load ptr, ptr %8, align 8, !tbaa !67
  br label %28

16:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 1048575, ptr %6, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %17 = add i32 %12, 256
  store i32 %17, ptr %7, align 4, !tbaa !40
  %18 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIjERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) #8
  %19 = load i32, ptr %18, align 4, !tbaa !40
  store i32 %19, ptr %11, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = zext i32 %19 to i64
  %23 = shl nuw nsw i64 %22, 2
  %24 = call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %21, i64 noundef %23, ptr noundef nonnull @.str.3, i32 noundef 2059, ptr noundef nonnull @.str.4) #8
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %24, ptr %25, align 8, !tbaa !67
  %26 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !66
  br label %28

28:                                               ; preds = %14, %16
  %29 = phi i32 [ %27, %16 ], [ %10, %14 ]
  %30 = phi ptr [ %24, %16 ], [ %15, %14 ]
  %31 = phi ptr [ %25, %16 ], [ %8, %14 ]
  %32 = shl i32 %4, 12
  %33 = shl i32 %2, 3
  %34 = or i32 %33, %1
  %35 = or i32 %34, %3
  %36 = and i32 %35, 4095
  %37 = or disjoint i32 %36, %32
  %38 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %31, i64 0, i32 1
  %39 = zext i32 %29 to i64
  %40 = getelementptr inbounds i32, ptr %30, i64 %39
  store i32 %37, ptr %40, align 4, !tbaa !40
  %41 = load i32, ptr %38, align 8, !tbaa !66
  %42 = add i32 %41, 1
  store i32 %42, ptr %38, align 8, !tbaa !66
  %43 = icmp ugt i32 %42, 1048574
  br i1 %43, label %44, label %50

44:                                               ; preds = %28
  %45 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.37) #8
  %46 = load ptr, ptr %0, align 8, !tbaa !34
  %47 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !66
  %49 = add i32 %48, -1
  br label %50

50:                                               ; preds = %44, %28
  %51 = phi i32 [ %49, %44 ], [ %41, %28 ]
  ret i32 %51
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov6FNCode18compile_parametersEv(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #0 align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %2, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !62
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  store i8 3, ptr %3, align 1, !tbaa !62
  %7 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef nonnull @.str.32) #8
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %8, i64 0, i32 7
  store ptr %7, ptr %9, align 8, !tbaa !41
  %10 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef nonnull @.str.33) #8
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %11, i64 0, i32 7, i64 1
  store ptr %10, ptr %12, align 8, !tbaa !41
  %13 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef nonnull @.str.34) #8
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %14, i64 0, i32 7, i64 2
  store ptr %13, ptr %15, align 8, !tbaa !41
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %16, i64 0, i32 3
  %18 = load i8, ptr %17, align 1, !tbaa !62
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %68, label %20

20:                                               ; preds = %1, %6
  %21 = phi ptr [ %16, %6 ], [ %2, %1 ]
  br label %22

22:                                               ; preds = %20, %51
  %23 = phi i64 [ %55, %51 ], [ 0, %20 ]
  %24 = phi ptr [ %56, %51 ], [ %21, %20 ]
  %25 = phi i8 [ %54, %51 ], [ 0, %20 ]
  %26 = phi i8 [ %53, %51 ], [ 0, %20 ]
  %27 = phi i8 [ %52, %51 ], [ 0, %20 ]
  %28 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %24, i64 0, i32 7, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(2) @.str.32) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %22
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(2) @.str.35) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(2) @.str.33) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(2) @.str.36) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(2) @.str.34) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41, %35, %38, %22, %32
  %45 = phi i32 [ 2, %32 ], [ 2, %22 ], [ 3, %38 ], [ 3, %35 ], [ 4, %41 ]
  %46 = phi i8 [ 1, %32 ], [ 1, %22 ], [ %27, %38 ], [ %27, %35 ], [ %27, %41 ]
  %47 = phi i8 [ %26, %32 ], [ %26, %22 ], [ 1, %38 ], [ 1, %35 ], [ %26, %41 ]
  %48 = phi i8 [ %25, %32 ], [ %25, %22 ], [ %25, %38 ], [ %25, %35 ], [ 1, %41 ]
  %49 = trunc i64 %23 to i32
  %50 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef %45, i32 noundef %49) #8
  br label %51

51:                                               ; preds = %44, %41
  %52 = phi i8 [ %27, %41 ], [ %46, %44 ]
  %53 = phi i8 [ %26, %41 ], [ %47, %44 ]
  %54 = phi i8 [ %25, %41 ], [ %48, %44 ]
  %55 = add nuw nsw i64 %23, 1
  %56 = load ptr, ptr %0, align 8, !tbaa !34
  %57 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %56, i64 0, i32 3
  %58 = load i8, ptr %57, align 1, !tbaa !62
  %59 = zext i8 %58 to i64
  %60 = icmp ult i64 %55, %59
  br i1 %60, label %22, label %61, !llvm.loop !80

61:                                               ; preds = %51
  %62 = and i8 %52, 1
  %63 = icmp eq i8 %62, 0
  %64 = and i8 %53, 1
  %65 = icmp eq i8 %64, 0
  %66 = and i8 %54, 1
  %67 = icmp eq i8 %66, 0
  br i1 %63, label %68, label %73

68:                                               ; preds = %6, %61
  %69 = phi i1 [ %67, %61 ], [ true, %6 ]
  %70 = phi i1 [ %65, %61 ], [ true, %6 ]
  %71 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0.000000e+00) #8
  %72 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 616, i32 noundef 0, i32 noundef 2, i32 noundef %71) #8
  br i1 %70, label %74, label %78

73:                                               ; preds = %61
  br i1 %65, label %74, label %78

74:                                               ; preds = %68, %73
  %75 = phi i1 [ %69, %68 ], [ %67, %73 ]
  %76 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0.000000e+00) #8
  %77 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 616, i32 noundef 0, i32 noundef 3, i32 noundef %76) #8
  br i1 %75, label %80, label %83

78:                                               ; preds = %68, %73
  %79 = phi i1 [ %69, %68 ], [ %67, %73 ]
  br i1 %79, label %80, label %83

80:                                               ; preds = %74, %78
  %81 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0.000000e+00) #8
  %82 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 616, i32 noundef 0, i32 noundef 4, i32 noundef %81) #8
  br label %83

83:                                               ; preds = %74, %80, %78
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !68
  %5 = icmp slt i32 %4, 17
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #8
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  %10 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 6
  br label %14

11:                                               ; preds = %180
  %12 = load i32, ptr %3, align 4, !tbaa !68
  %13 = icmp slt i32 %12, 17
  br i1 %13, label %184, label %186

14:                                               ; preds = %8, %180
  %15 = phi ptr [ %1, %8 ], [ %182, %180 ]
  %16 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = icmp eq ptr %17, null
  br i1 %18, label %115, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !68
  %22 = icmp eq i32 %21, 18
  %23 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %15, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !68
  br i1 %22, label %25, label %112

25:                                               ; preds = %19
  switch i32 %24, label %114 [
    i32 7, label %26
    i32 8, label %33
    i32 10, label %40
    i32 11, label %47
    i32 13, label %59
    i32 22, label %115
  ]

26:                                               ; preds = %25
  %27 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 6
  %28 = load double, ptr %27, align 8, !tbaa !71
  %29 = fcmp une double %28, 0.000000e+00
  br i1 %29, label %30, label %180

30:                                               ; preds = %26
  %31 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef %28) #8
  %32 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 576, i32 noundef 0, i32 noundef 5, i32 noundef %31) #8
  br label %180

33:                                               ; preds = %25
  %34 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 6
  %35 = load double, ptr %34, align 8, !tbaa !71
  %36 = fcmp une double %35, 0.000000e+00
  br i1 %36, label %37, label %180

37:                                               ; preds = %33
  %38 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef %35) #8
  %39 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 584, i32 noundef 0, i32 noundef 5, i32 noundef %38) #8
  br label %180

40:                                               ; preds = %25
  %41 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 6
  %42 = load double, ptr %41, align 8, !tbaa !71
  %43 = fcmp une double %42, 1.000000e+00
  br i1 %43, label %44, label %180

44:                                               ; preds = %40
  %45 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef %42) #8
  %46 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 592, i32 noundef 0, i32 noundef 5, i32 noundef %45) #8
  br label %180

47:                                               ; preds = %25
  %48 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 6
  %49 = load double, ptr %48, align 8, !tbaa !71
  %50 = fcmp oeq double %49, 0.000000e+00
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.6) #8
  br label %180

53:                                               ; preds = %47
  %54 = fcmp une double %49, 1.000000e+00
  br i1 %54, label %55, label %180

55:                                               ; preds = %53
  %56 = fdiv double 1.000000e+00, %49
  %57 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef %56) #8
  %58 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 592, i32 noundef 0, i32 noundef 5, i32 noundef %57) #8
  br label %180

59:                                               ; preds = %25
  %60 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 6
  %61 = load double, ptr %60, align 8, !tbaa !71
  %62 = fcmp oeq double %61, 0.000000e+00
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 1.000000e+00) #8
  %65 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 616, i32 noundef 0, i32 noundef 5, i32 noundef %64) #8
  %66 = tail call noundef i32 (i32, ptr, ...) @_ZN3pov7WarningEjPKcz(i32 noundef 0, ptr noundef nonnull @.str.7) #8
  br label %180

67:                                               ; preds = %59
  %68 = fcmp oeq double %61, 2.000000e+00
  br i1 %68, label %69, label %71

69:                                               ; preds = %67
  %70 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 5, i32 noundef 5, i32 noundef 0) #8
  br label %180

71:                                               ; preds = %67
  %72 = fcmp oeq double %61, 3.000000e+00
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  %74 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 5, i32 noundef 0, i32 noundef 0) #8
  %75 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %76 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

77:                                               ; preds = %71
  %78 = fcmp oeq double %61, 4.000000e+00
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 5, i32 noundef 5, i32 noundef 0) #8
  %81 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 5, i32 noundef 5, i32 noundef 0) #8
  br label %180

82:                                               ; preds = %77
  %83 = fcmp oeq double %61, 5.000000e+00
  br i1 %83, label %84, label %89

84:                                               ; preds = %82
  %85 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 5, i32 noundef 0, i32 noundef 0) #8
  %86 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 5, i32 noundef 5, i32 noundef 0) #8
  %87 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 5, i32 noundef 5, i32 noundef 0) #8
  %88 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

89:                                               ; preds = %82
  %90 = fcmp oeq double %61, 6.000000e+00
  br i1 %90, label %91, label %97

91:                                               ; preds = %89
  %92 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 5, i32 noundef 0, i32 noundef 0) #8
  %93 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 5, i32 noundef 5, i32 noundef 0) #8
  %94 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 5, i32 noundef 5, i32 noundef 0) #8
  %95 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %96 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

97:                                               ; preds = %89
  %98 = fcmp oeq double %61, 7.000000e+00
  br i1 %98, label %99, label %106

99:                                               ; preds = %97
  %100 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 5, i32 noundef 0, i32 noundef 0) #8
  %101 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 5, i32 noundef 5, i32 noundef 0) #8
  %102 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 5, i32 noundef 5, i32 noundef 0) #8
  %103 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %104 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %105 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

106:                                              ; preds = %97
  %107 = fcmp oeq double %61, 8.000000e+00
  br i1 %107, label %108, label %114

108:                                              ; preds = %106
  %109 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 5, i32 noundef 5, i32 noundef 0) #8
  %110 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 5, i32 noundef 5, i32 noundef 0) #8
  %111 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 5, i32 noundef 5, i32 noundef 0) #8
  br label %180

112:                                              ; preds = %19
  %113 = icmp eq i32 %24, 22
  br i1 %113, label %115, label %114

114:                                              ; preds = %25, %106, %112
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %17) #8
  br label %115

115:                                              ; preds = %25, %112, %114, %14
  %116 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %15, i64 0, i32 5
  %117 = load i32, ptr %116, align 4, !tbaa !68
  switch i32 %117, label %180 [
    i32 18, label %118
    i32 19, label %122
    i32 16, label %178
    i32 21, label %124
    i32 22, label %126
    i32 1, label %134
    i32 2, label %137
    i32 3, label %140
    i32 4, label %143
    i32 5, label %146
    i32 6, label %149
    i32 7, label %152
    i32 8, label %154
    i32 9, label %156
    i32 10, label %161
    i32 11, label %163
    i32 12, label %166
    i32 13, label %170
    i32 14, label %176
  ]

118:                                              ; preds = %115
  %119 = load double, ptr %10, align 8, !tbaa !71
  %120 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef %119) #8
  %121 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 616, i32 noundef 0, i32 noundef 0, i32 noundef %120) #8
  br label %180

122:                                              ; preds = %115
  %123 = load ptr, ptr %10, align 8, !tbaa !71
  tail call void @_ZN3pov6FNCode16compile_variableEPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %123) #8
  br label %180

124:                                              ; preds = %115
  %125 = load ptr, ptr %10, align 8, !tbaa !71
  tail call void @_ZN3pov6FNCode14compile_memberEPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %125) #8
  br label %180

126:                                              ; preds = %115
  %127 = load ptr, ptr %16, align 8, !tbaa !81
  %128 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %15, i64 0, i32 6
  %129 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %15, i64 0, i32 6, i32 0, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !71
  %131 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %15, i64 0, i32 6, i32 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !71
  %133 = load ptr, ptr %128, align 8, !tbaa !71
  tail call void @_ZN3pov6FNCode12compile_callEPNS_14ExprNodeStructEjiPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %127, i32 noundef %130, i32 noundef %132, ptr noundef %133) #8
  br label %180

134:                                              ; preds = %115
  %135 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 384, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %136 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 640, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

137:                                              ; preds = %115
  %138 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 384, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %139 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 648, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

140:                                              ; preds = %115
  %141 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 384, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %142 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 656, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

143:                                              ; preds = %115
  %144 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 384, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %145 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 664, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

146:                                              ; preds = %115
  %147 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 384, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %148 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 672, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

149:                                              ; preds = %115
  %150 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 384, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %151 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 680, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

152:                                              ; preds = %115
  %153 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 0, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

154:                                              ; preds = %115
  %155 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 64, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

156:                                              ; preds = %115
  %157 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 696, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %158 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 696, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %159 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 0, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %160 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 696, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

161:                                              ; preds = %115
  %162 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

163:                                              ; preds = %115
  %164 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 896, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %165 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 192, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

166:                                              ; preds = %115
  %167 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 696, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %168 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 696, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %169 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

170:                                              ; preds = %115
  %171 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 944, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %172 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 0, i32 noundef 1, i32 noundef 0) #8
  %173 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 5, i32 noundef 0, i32 noundef 0) #8
  %174 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 965, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %175 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

176:                                              ; preds = %115
  %177 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 448, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

178:                                              ; preds = %115
  %179 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %180

180:                                              ; preds = %118, %122, %124, %126, %134, %137, %140, %143, %146, %149, %152, %154, %156, %161, %163, %166, %170, %176, %178, %115, %51, %55, %53, %40, %44, %33, %37, %26, %30, %108, %99, %91, %84, %79, %73, %69, %63
  %181 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %15, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !82
  %183 = icmp eq ptr %182, null
  br i1 %183, label %11, label %14, !llvm.loop !83

184:                                              ; preds = %11
  %185 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 5, i32 noundef 0, i32 noundef 0) #8
  tail call void @_ZN3pov6FNCode18compile_pop_resultEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %9) #8
  br label %186

186:                                              ; preds = %184, %11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %0, i32 noundef returned %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.38) #8
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi ptr [ %13, %11 ], [ %7, %6 ]
  %16 = shl i32 %5, 12
  %17 = shl i32 %3, 3
  %18 = or i32 %17, %2
  %19 = or i32 %18, %4
  %20 = and i32 %19, 4095
  %21 = or disjoint i32 %20, %16
  %22 = load ptr, ptr %15, align 8, !tbaa !67
  %23 = zext i32 %1 to i64
  %24 = getelementptr inbounds i32, ptr %22, i64 %23
  store i32 %21, ptr %24, align 4, !tbaa !40
  ret i32 %1
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov11FNCode_CopyEPNS_12FunctionCodeES1_(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  store ptr null, ptr %1, align 8, !tbaa !67
  %3 = load ptr, ptr %0, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %9, ptr noundef nonnull @.str.3, i32 noundef 400, ptr noundef nonnull @.str.4) #8
  store ptr %10, ptr %1, align 8, !tbaa !67
  %11 = load ptr, ptr %0, align 8, !tbaa !67
  %12 = load i32, ptr %6, align 8, !tbaa !66
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %11, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %5, %2
  %16 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 8
  store ptr null, ptr %16, align 8, !tbaa !44
  %17 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef nonnull %18) #8
  store ptr %21, ptr %16, align 8, !tbaa !44
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 9
  store ptr null, ptr %23, align 8, !tbaa !52
  %24 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef nonnull %25) #8
  store ptr %28, ptr %23, align 8, !tbaa !52
  br label %29

29:                                               ; preds = %27, %22
  %30 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !66
  %32 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 1
  store i32 %31, ptr %32, align 8, !tbaa !66
  %33 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 2
  %34 = load i8, ptr %33, align 4, !tbaa !70
  %35 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 2
  store i8 %34, ptr %35, align 4, !tbaa !70
  %36 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 3
  %37 = load i8, ptr %36, align 1, !tbaa !62
  %38 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 3
  store i8 %37, ptr %38, align 1, !tbaa !62
  %39 = icmp eq i8 %37, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %29, %40
  %41 = phi i64 [ %46, %40 ], [ 0, %29 ]
  %42 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 7, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !41
  %44 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef %43) #8
  %45 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 7, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !41
  %46 = add nuw nsw i64 %41, 1
  %47 = load i8, ptr %38, align 1, !tbaa !62
  %48 = zext i8 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %40, label %50, !llvm.loop !84

50:                                               ; preds = %40, %29
  %51 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 4
  %52 = load i8, ptr %51, align 2, !tbaa !85
  %53 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 4
  store i8 %52, ptr %53, align 2, !tbaa !85
  %54 = icmp eq i8 %52, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50, %55
  %56 = phi i64 [ %61, %55 ], [ 0, %50 ]
  %57 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 6, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !41
  %59 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef %58) #8
  %60 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 6, i64 %56
  store ptr %59, ptr %60, align 8, !tbaa !41
  %61 = add nuw nsw i64 %56, 1
  %62 = load i8, ptr %53, align 2, !tbaa !85
  %63 = zext i8 %62 to i64
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %55, label %65, !llvm.loop !86

65:                                               ; preds = %55, %50
  %66 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 10
  %67 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 10, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !56
  %69 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 10
  %70 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 10, i32 1
  store i32 %68, ptr %70, align 8, !tbaa !56
  %71 = load i64, ptr %66, align 8, !tbaa !57
  store i64 %71, ptr %69, align 8, !tbaa !57
  %72 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 11
  %73 = load i32, ptr %72, align 8, !tbaa !58
  %74 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 11
  store i32 %73, ptr %74, align 8, !tbaa !58
  %75 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 12
  %76 = load ptr, ptr %75, align 8, !tbaa !87
  %77 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 12
  store ptr %76, ptr %77, align 8, !tbaa !87
  %78 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 13
  %79 = load ptr, ptr %78, align 8, !tbaa !88
  %80 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 13
  store ptr %79, ptr %80, align 8, !tbaa !88
  %81 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 14
  store ptr null, ptr %81, align 8, !tbaa !89
  %82 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 14
  %83 = load ptr, ptr %82, align 8, !tbaa !89
  %84 = icmp eq ptr %83, null
  %85 = icmp eq ptr %76, null
  %86 = select i1 %84, i1 true, i1 %85
  br i1 %86, label %89, label %87

87:                                               ; preds = %65
  %88 = tail call noundef ptr %76(ptr noundef nonnull %83) #8
  store ptr %88, ptr %81, align 8, !tbaa !89
  br label %89

89:                                               ; preds = %87, %65
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov13FNCode_DeleteEPNS_12FunctionCodeE(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !67
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %2, ptr noundef nonnull @.str.3, i32 noundef 475) #8
  store ptr null, ptr %0, align 8, !tbaa !67
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, i32 noundef 481) #8
  store ptr null, ptr %6, align 8, !tbaa !44
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %12, ptr noundef nonnull @.str.3, i32 noundef 487) #8
  store ptr null, ptr %11, align 8, !tbaa !52
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 3
  %17 = load i8, ptr %16, align 1, !tbaa !62
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %15, %27
  %20 = phi i8 [ %28, %27 ], [ %17, %15 ]
  %21 = phi i64 [ %29, %27 ], [ 0, %15 ]
  %22 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 7, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %23, ptr noundef nonnull @.str.3, i32 noundef 495) #8
  store ptr null, ptr %22, align 8, !tbaa !41
  %26 = load i8, ptr %16, align 1, !tbaa !62
  br label %27

27:                                               ; preds = %19, %25
  %28 = phi i8 [ %20, %19 ], [ %26, %25 ]
  %29 = add nuw nsw i64 %21, 1
  %30 = zext i8 %28 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %19, label %32, !llvm.loop !90

32:                                               ; preds = %27, %15
  store i8 0, ptr %16, align 1, !tbaa !62
  %33 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 4
  %34 = load i8, ptr %33, align 2, !tbaa !85
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %32, %44
  %37 = phi i8 [ %45, %44 ], [ %34, %32 ]
  %38 = phi i64 [ %46, %44 ], [ 0, %32 ]
  %39 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 6, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %40, ptr noundef nonnull @.str.3, i32 noundef 505) #8
  store ptr null, ptr %39, align 8, !tbaa !41
  %43 = load i8, ptr %33, align 2, !tbaa !85
  br label %44

44:                                               ; preds = %36, %42
  %45 = phi i8 [ %37, %36 ], [ %43, %42 ]
  %46 = add nuw nsw i64 %38, 1
  %47 = zext i8 %45 to i64
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %36, label %49, !llvm.loop !91

49:                                               ; preds = %44, %32
  store i8 0, ptr %33, align 2, !tbaa !85
  %50 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 14
  %51 = load ptr, ptr %50, align 8, !tbaa !89
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 13
  %55 = load ptr, ptr %54, align 8, !tbaa !88
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void %55(ptr noundef nonnull %51) #8
  br label %59

58:                                               ; preds = %53
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %51, ptr noundef nonnull @.str.3, i32 noundef 516) #8
  br label %59

59:                                               ; preds = %58, %57
  store ptr null, ptr %50, align 8, !tbaa !89
  br label %60

60:                                               ; preds = %59, %49
  %61 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 1
  store i32 0, ptr %61, align 8, !tbaa !66
  %62 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %0, i64 0, i32 2
  store i8 0, ptr %62, align 4, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN3pov6FNCode7SetFlagEjPc(ptr nocapture noundef nonnull readnone align 8 dereferenceable(28) %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #5 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #0 align 2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %6 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !76
  %10 = add i32 %7, -2
  %11 = add i32 %10, %9
  store i32 %11, ptr %2, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %12 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !78
  store i32 %13, ptr %3, align 4, !tbaa !40
  %14 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #8
  %15 = load i32, ptr %14, align 4, !tbaa !40
  store i32 %15, ptr %12, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %16 = load i32, ptr %8, align 8, !tbaa !76
  switch i32 %16, label %21 [
    i32 1, label %17
    i32 2, label %19
  ]

17:                                               ; preds = %1
  %18 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 5, i32 noundef 6, i32 noundef 0) #8
  br label %28

19:                                               ; preds = %1
  %20 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 5, i32 noundef 7, i32 noundef 0) #8
  br label %28

21:                                               ; preds = %1
  %22 = icmp sgt i32 %16, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = load i32, ptr %6, align 8, !tbaa !79
  %25 = add nsw i32 %16, -3
  %26 = add i32 %25, %24
  %27 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 5, i32 noundef %26) #8
  br label %28

28:                                               ; preds = %19, %23, %21, %17
  %29 = load i32, ptr %8, align 8, !tbaa !76
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %8, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %31 = load i32, ptr %6, align 8, !tbaa !79
  %32 = add i32 %29, -3
  %33 = add i32 %32, %31
  store i32 %33, ptr %4, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !tbaa !40
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #8
  %35 = load i32, ptr %34, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %35
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov7WarningEjPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov6FNCode16compile_variableEPc(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds i8, ptr %1, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !71
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !71
  switch i8 %7, label %14 [
    i8 120, label %8
    i8 117, label %8
    i8 121, label %10
    i8 118, label %10
    i8 122, label %12
  ]

8:                                                ; preds = %6, %6
  %9 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 2, i32 noundef 0, i32 noundef 0) #8
  br label %59

10:                                               ; preds = %6, %6
  %11 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 3, i32 noundef 0, i32 noundef 0) #8
  br label %59

12:                                               ; preds = %6
  %13 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 4, i32 noundef 0, i32 noundef 0) #8
  br label %59

14:                                               ; preds = %6, %2
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  %16 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %15, i64 0, i32 4
  %17 = load i8, ptr %16, align 2, !tbaa !85
  %18 = zext i8 %17 to i32
  %19 = icmp eq i8 %17, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %14
  %21 = zext i8 %17 to i64
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %31, %22 ]
  %24 = phi i32 [ 1048575, %20 ], [ %30, %22 ]
  %25 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %15, i64 0, i32 6, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %26) #10
  %28 = icmp eq i32 %27, 0
  %29 = trunc i64 %23 to i32
  %30 = select i1 %28, i32 %29, i32 %24
  %31 = add nuw nsw i64 %23, 1
  %32 = icmp eq i64 %31, %21
  br i1 %32, label %33, label %22, !llvm.loop !92

33:                                               ; preds = %22
  %34 = icmp ult i32 %30, %18
  br i1 %34, label %41, label %35

35:                                               ; preds = %14, %33
  %36 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %15, i64 0, i32 3
  %37 = load i8, ptr %36, align 1, !tbaa !62
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = zext i8 %37 to i64
  br label %46

41:                                               ; preds = %33
  %42 = zext nneg i32 %30 to i64
  %43 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %15, i64 0, i32 5, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !40
  %45 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 0, i32 noundef %44) #8
  br label %59

46:                                               ; preds = %39, %55
  %47 = phi i64 [ 0, %39 ], [ %56, %55 ]
  %48 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %15, i64 0, i32 7, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !41
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %49) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = trunc i64 %47 to i32
  %54 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 0, i32 noundef %53) #8
  br label %59

55:                                               ; preds = %46
  %56 = add nuw nsw i64 %47, 1
  %57 = icmp eq i64 %56, %40
  br i1 %57, label %58, label %46, !llvm.loop !93

58:                                               ; preds = %55, %35
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef nonnull @.str.31) #8
  br label %59

59:                                               ; preds = %58, %52, %41, %12, %10, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov6FNCode14compile_memberEPc(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 align 2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %9 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !76
  %11 = add nsw i32 %10, -2
  store i32 %11, ptr %3, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !tbaa !40
  %12 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #8
  %13 = load i32, ptr %12, align 4, !tbaa !40
  %14 = add nsw i32 %13, %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %15 = load i32, ptr %9, align 8, !tbaa !76
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %5, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 3, ptr %6, align 4, !tbaa !40
  %17 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #8
  %18 = load i32, ptr %17, align 4, !tbaa !40
  %19 = add nsw i32 %14, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %20 = getelementptr inbounds i8, ptr %1, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !71
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load i8, ptr %1, align 1, !tbaa !71
  switch i8 %24, label %36 [
    i8 120, label %25
    i8 117, label %25
    i8 121, label %27
    i8 118, label %27
    i8 122, label %30
    i8 116, label %33
  ]

25:                                               ; preds = %23, %23
  %26 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %19) #8
  br label %101

27:                                               ; preds = %23, %23
  %28 = add i32 %19, 1
  %29 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %28) #8
  br label %101

30:                                               ; preds = %23
  %31 = add i32 %19, 2
  %32 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %31) #8
  br label %101

33:                                               ; preds = %23
  %34 = add i32 %19, 3
  %35 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %34) #8
  br label %101

36:                                               ; preds = %23, %2
  %37 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.8) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %19) #8
  br label %101

41:                                               ; preds = %36
  %42 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.9) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = add i32 %19, 1
  %46 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %45) #8
  br label %101

47:                                               ; preds = %41
  %48 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.10) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = add i32 %19, 2
  %52 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %51) #8
  br label %101

53:                                               ; preds = %47
  %54 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.11) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = add i32 %19, 3
  %58 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %57) #8
  br label %101

59:                                               ; preds = %53
  %60 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.12) #10
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = add i32 %19, 4
  %64 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %63) #8
  br label %101

65:                                               ; preds = %59
  %66 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.13) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.14) #10
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %68, %65
  %72 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %19) #8
  %73 = call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 2.970000e-01) #8
  %74 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 592, i32 noundef 0, i32 noundef 5, i32 noundef %73) #8
  %75 = add i32 %19, 1
  %76 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 0, i32 noundef %75) #8
  %77 = call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 5.890000e-01) #8
  %78 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 592, i32 noundef 0, i32 noundef 0, i32 noundef %77) #8
  %79 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 0, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %80 = add i32 %19, 2
  %81 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 0, i32 noundef %80) #8
  %82 = call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 1.140000e-01) #8
  %83 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 592, i32 noundef 0, i32 noundef 0, i32 noundef %82) #8
  %84 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 0, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  br label %101

85:                                               ; preds = %68
  %86 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.15) #10
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %19) #8
  %90 = add i32 %19, 1
  %91 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 0, i32 noundef %90) #8
  %92 = call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0x3F70101010101010) #8
  %93 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 592, i32 noundef 0, i32 noundef 0, i32 noundef %92) #8
  %94 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 0, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %95 = call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 9.960930e-01) #8
  %96 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 592, i32 noundef 0, i32 noundef 5, i32 noundef %95) #8
  %97 = load i32, ptr @_ZN3pov17Experimental_FlagE, align 4, !tbaa !40
  %98 = or i32 %97, 4
  store i32 %98, ptr @_ZN3pov17Experimental_FlagE, align 4, !tbaa !40
  br label %101

99:                                               ; preds = %85
  %100 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.16) #8
  br label %101

101:                                              ; preds = %39, %50, %62, %88, %99, %71, %56, %44, %33, %30, %27, %25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov6FNCode12compile_callEPNS_14ExprNodeStructEjiPc(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.17) #8
  br label %9

9:                                                ; preds = %7, %5
  switch i32 %3, label %29 [
    i32 31, label %30
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
    i32 0, label %155
    i32 29, label %77
    i32 7, label %87
    i32 8, label %47
    i32 21, label %21
    i32 12, label %22
    i32 3, label %23
    i32 32, label %24
    i32 9, label %25
    i32 22, label %34
    i32 23, label %26
    i32 25, label %97
    i32 24, label %126
    i32 2, label %27
    i32 28, label %167
    i32 26, label %28
    i32 30, label %164
    i32 62, label %201
    i32 63, label %202
    i32 364, label %192
    i32 487, label %165
    i32 488, label %166
  ]

10:                                               ; preds = %9
  br label %30

11:                                               ; preds = %9
  br label %30

12:                                               ; preds = %9
  br label %30

13:                                               ; preds = %9
  br label %30

14:                                               ; preds = %9
  br label %30

15:                                               ; preds = %9
  br label %30

16:                                               ; preds = %9
  br label %30

17:                                               ; preds = %9
  br label %30

18:                                               ; preds = %9
  br label %30

19:                                               ; preds = %9
  br label %30

20:                                               ; preds = %9
  br label %30

21:                                               ; preds = %9
  br label %30

22:                                               ; preds = %9
  br label %30

23:                                               ; preds = %9
  br label %30

24:                                               ; preds = %9
  br label %30

25:                                               ; preds = %9
  br label %30

26:                                               ; preds = %9
  br label %34

27:                                               ; preds = %9
  br label %47

28:                                               ; preds = %9
  br label %47

29:                                               ; preds = %9
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef nonnull @.str.18) #8
  br label %30

30:                                               ; preds = %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %29
  %31 = phi i32 [ 0, %29 ], [ 15, %25 ], [ 14, %24 ], [ 13, %23 ], [ 12, %22 ], [ 18, %21 ], [ 11, %20 ], [ 10, %19 ], [ 9, %18 ], [ 8, %17 ], [ 7, %16 ], [ 6, %15 ], [ 5, %14 ], [ 4, %13 ], [ 3, %12 ], [ 2, %11 ], [ 1, %10 ], [ 0, %9 ]
  %32 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %33) #8
  br label %39

34:                                               ; preds = %9, %26
  %35 = phi i32 [ 17, %26 ], [ 16, %9 ]
  %36 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %37) #8
  %38 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 920, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %39

39:                                               ; preds = %30, %34
  %40 = phi i32 [ %31, %30 ], [ %35, %34 ]
  %41 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 964, i32 noundef 0, i32 noundef 0, i32 noundef %40) #8
  %42 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !82
  %44 = icmp eq ptr %43, null
  br i1 %44, label %203, label %45

45:                                               ; preds = %39
  %46 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.19, ptr noundef %4) #8
  br label %203

47:                                               ; preds = %9, %28, %27
  %48 = phi i1 [ true, %27 ], [ false, %28 ], [ false, %9 ]
  %49 = phi i32 [ 0, %27 ], [ 896, %28 ], [ 896, %9 ]
  %50 = phi i32 [ 1, %27 ], [ 2, %28 ], [ 3, %9 ]
  %51 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !82
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.20, ptr noundef %4) #8
  %56 = load ptr, ptr %51, align 8, !tbaa !82
  br label %57

57:                                               ; preds = %54, %47
  %58 = phi ptr [ %56, %54 ], [ %52, %47 ]
  %59 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %60) #8
  br i1 %48, label %63, label %61

61:                                               ; preds = %57
  %62 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %63

63:                                               ; preds = %57, %61
  %64 = tail call noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #8
  %65 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %66 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %67) #8
  %68 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 5, i32 noundef 1, i32 noundef 0) #8
  tail call void @_ZN3pov6FNCode18compile_pop_resultEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %64) #8
  %69 = load ptr, ptr %51, align 8, !tbaa !82
  %70 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !82
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %63
  %74 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.21, ptr noundef %4) #8
  br label %75

75:                                               ; preds = %73, %63
  %76 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 965, i32 noundef 0, i32 noundef 0, i32 noundef %50) #8
  br label %203

77:                                               ; preds = %9
  %78 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %79) #8
  %80 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0x3F91DF46A2529D39) #8
  %81 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 592, i32 noundef 0, i32 noundef 0, i32 noundef %80) #8
  %82 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !82
  %84 = icmp eq ptr %83, null
  br i1 %84, label %203, label %85

85:                                               ; preds = %77
  %86 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.19, ptr noundef %4) #8
  br label %203

87:                                               ; preds = %9
  %88 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %89) #8
  %90 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0x404CA5DC1A63C1F8) #8
  %91 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 592, i32 noundef 0, i32 noundef 0, i32 noundef %90) #8
  %92 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !82
  %94 = icmp eq ptr %93, null
  br i1 %94, label %203, label %95

95:                                               ; preds = %87
  %96 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.19, ptr noundef %4) #8
  br label %203

97:                                               ; preds = %9
  %98 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %99) #8
  %100 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !82
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.22, ptr noundef %4) #8
  %105 = load ptr, ptr %100, align 8, !tbaa !82
  %106 = icmp eq ptr %105, null
  br i1 %106, label %203, label %107

107:                                              ; preds = %97, %103
  %108 = phi ptr [ %101, %97 ], [ %105, %103 ]
  br label %109

109:                                              ; preds = %107, %109
  %110 = phi ptr [ %124, %109 ], [ %108, %107 ]
  %111 = tail call noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #8
  %112 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %113 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %110, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %114) #8
  %115 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 5, i32 noundef 1, i32 noundef 0) #8
  tail call void @_ZN3pov6FNCode18compile_pop_resultEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %111) #8
  %116 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 384, i32 noundef 0, i32 noundef 1, i32 noundef 0) #8
  %117 = load ptr, ptr %0, align 8, !tbaa !34
  %118 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %117, i64 0, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !66
  %120 = add i32 %119, 2
  %121 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 864, i32 noundef 0, i32 noundef 0, i32 noundef %120) #8
  %122 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %123 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %110, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !82
  %125 = icmp eq ptr %124, null
  br i1 %125, label %203, label %109, !llvm.loop !94

126:                                              ; preds = %9
  %127 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %128) #8
  %129 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !82
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.22, ptr noundef %4) #8
  %134 = load ptr, ptr %129, align 8, !tbaa !82
  %135 = icmp eq ptr %134, null
  br i1 %135, label %203, label %136

136:                                              ; preds = %126, %132
  %137 = phi ptr [ %130, %126 ], [ %134, %132 ]
  br label %138

138:                                              ; preds = %136, %138
  %139 = phi ptr [ %153, %138 ], [ %137, %136 ]
  %140 = tail call noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #8
  %141 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %142 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %139, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %143) #8
  %144 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 5, i32 noundef 1, i32 noundef 0) #8
  tail call void @_ZN3pov6FNCode18compile_pop_resultEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %140) #8
  %145 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 384, i32 noundef 0, i32 noundef 1, i32 noundef 0) #8
  %146 = load ptr, ptr %0, align 8, !tbaa !34
  %147 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %146, i64 0, i32 1
  %148 = load i32, ptr %147, align 8, !tbaa !66
  %149 = add i32 %148, 2
  %150 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 848, i32 noundef 0, i32 noundef 0, i32 noundef %149) #8
  %151 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %152 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %139, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !82
  %154 = icmp eq ptr %153, null
  br i1 %154, label %203, label %138, !llvm.loop !95

155:                                              ; preds = %9
  %156 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %157) #8
  %158 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 512, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %159 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !82
  %161 = icmp eq ptr %160, null
  br i1 %161, label %203, label %162

162:                                              ; preds = %155
  %163 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.19, ptr noundef %4) #8
  br label %203

164:                                              ; preds = %9
  tail call void @_ZN3pov6FNCode14compile_selectEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) #8
  br label %203

165:                                              ; preds = %9
  tail call void @_ZN3pov6FNCode27compile_float_function_callEPNS_14ExprNodeStructEjPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #8
  br label %203

166:                                              ; preds = %9
  tail call void @_ZN3pov6FNCode28compile_vector_function_callEPNS_14ExprNodeStructEjPc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #8
  br label %203

167:                                              ; preds = %9
  %168 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !82
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.20, ptr noundef %4) #8
  %173 = load ptr, ptr %168, align 8, !tbaa !82
  br label %174

174:                                              ; preds = %171, %167
  %175 = phi ptr [ %173, %171 ], [ %169, %167 ]
  %176 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %177) #8
  %178 = tail call noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #8
  %179 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %180 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %181) #8
  %182 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 5, i32 noundef 1, i32 noundef 0) #8
  tail call void @_ZN3pov6FNCode18compile_pop_resultEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %178) #8
  %183 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 944, i32 noundef 0, i32 noundef 1, i32 noundef 0) #8
  %184 = load ptr, ptr %168, align 8, !tbaa !82
  %185 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %184, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !82
  %187 = icmp eq ptr %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %174
  %189 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.21, ptr noundef %4) #8
  br label %190

190:                                              ; preds = %188, %174
  %191 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 965, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %203

192:                                              ; preds = %9
  %193 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %194) #8
  %195 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %196 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !82
  %198 = icmp eq ptr %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %192
  %200 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.19, ptr noundef %4) #8
  br label %203

201:                                              ; preds = %9
  tail call void @_ZN3pov6FNCode14compile_seq_opEPNS_14ExprNodeStructEjd(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef 0, double noundef 0.000000e+00) #8
  br label %203

202:                                              ; preds = %9
  tail call void @_ZN3pov6FNCode14compile_seq_opEPNS_14ExprNodeStructEjd(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef 128, double noundef 1.000000e+00) #8
  br label %203

203:                                              ; preds = %138, %109, %132, %103, %192, %199, %155, %162, %87, %95, %77, %85, %39, %45, %202, %201, %190, %166, %165, %164, %75
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov6FNCode18compile_pop_resultEj(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !76
  switch i32 %4, label %10 [
    i32 2, label %6
    i32 3, label %8
  ]

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 6, i32 noundef 5, i32 noundef 0) #8
  br label %14

8:                                                ; preds = %2
  %9 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 320, i32 noundef 7, i32 noundef 5, i32 noundef 0) #8
  br label %14

10:                                               ; preds = %2
  %11 = icmp sgt i32 %4, 3
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %1) #8
  br label %14

14:                                               ; preds = %8, %12, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat {
  %3 = load i32, ptr %0, align 4, !tbaa !40
  %4 = load i32, ptr %1, align 4, !tbaa !40
  %5 = icmp slt i32 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat {
  %3 = load i32, ptr %1, align 4, !tbaa !40
  %4 = load i32, ptr %0, align 4, !tbaa !40
  %5 = icmp slt i32 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov6FNCode14compile_selectEPNS_14ExprNodeStructE(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.23) #8
  %8 = load ptr, ptr %3, align 8, !tbaa !82
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.23) #8
  %16 = load ptr, ptr %3, align 8, !tbaa !82
  %17 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi ptr [ %18, %14 ], [ %12, %9 ]
  %21 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.24) #8
  br label %30

30:                                               ; preds = %24, %28, %19
  %31 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %32) #8
  %33 = tail call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 0.000000e+00) #8
  %34 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 624, i32 noundef 0, i32 noundef 0, i32 noundef %33) #8
  %35 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 991, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br i1 %23, label %38, label %36

36:                                               ; preds = %30
  %37 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 991, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i32 [ %37, %36 ], [ undef, %30 ]
  %40 = load ptr, ptr %3, align 8, !tbaa !82
  %41 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !82
  %43 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %44) #8
  %45 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 991, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %46 = load ptr, ptr %3, align 8, !tbaa !82
  %47 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %48) #8
  br i1 %23, label %58, label %49

49:                                               ; preds = %38
  %50 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 991, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %51 = load ptr, ptr %3, align 8, !tbaa !82
  %52 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !82
  %54 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !82
  %56 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !81
  tail call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %57) #8
  br label %58

58:                                               ; preds = %49, %38
  %59 = phi i32 [ %50, %49 ], [ undef, %38 ]
  %60 = load ptr, ptr %0, align 8, !tbaa !34
  %61 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !66
  %63 = add i32 %45, 1
  %64 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %35, i32 noundef 848, i32 noundef 0, i32 noundef 0, i32 noundef %63) #8
  %65 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %45, i32 noundef 961, i32 noundef 0, i32 noundef 0, i32 noundef %62) #8
  br i1 %23, label %70, label %66

66:                                               ; preds = %58
  %67 = add i32 %59, 1
  %68 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %39, i32 noundef 864, i32 noundef 0, i32 noundef 0, i32 noundef %67) #8
  %69 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %59, i32 noundef 961, i32 noundef 0, i32 noundef 0, i32 noundef %62) #8
  br label %70

70:                                               ; preds = %66, %58
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov6FNCode27compile_float_function_callEPNS_14ExprNodeStructEjPc(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 align 2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %13) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = tail call noundef i32 (ptr, ...) @_ZN3pov13PossibleErrorEPKcz(ptr noundef nonnull @.str.29) #8
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  br label %21

19:                                               ; preds = %4
  %20 = tail call noundef ptr @_ZN3pov30POVFPU_GetFunctionAndReferenceEj(i32 noundef %2) #8
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi ptr [ %18, %16 ], [ %20, %19 ]
  %23 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %25 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !76
  %27 = add nsw i32 %26, -2
  store i32 %27, ptr %5, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !tbaa !40
  %28 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #8
  %29 = load i32, ptr %28, align 4, !tbaa !40
  %30 = add nsw i32 %29, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %31 = load i32, ptr %25, align 8, !tbaa !76
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %7, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 3, ptr %8, align 4, !tbaa !40
  %33 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) #8
  %34 = load i32, ptr %33, align 4, !tbaa !40
  %35 = add i32 %34, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %36 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 5, i32 noundef %30) #8
  %37 = load i32, ptr %25, align 8, !tbaa !76
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %21
  %40 = add i32 %30, 1
  %41 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 6, i32 noundef %40) #8
  %42 = load i32, ptr %25, align 8, !tbaa !76
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = add i32 %30, 2
  %46 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 7, i32 noundef %45) #8
  %47 = load i32, ptr %25, align 8, !tbaa !76
  br label %48

48:                                               ; preds = %21, %44, %39
  %49 = phi i32 [ %37, %21 ], [ %47, %44 ], [ %42, %39 ]
  %50 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %22, i64 0, i32 3
  %51 = load i8, ptr %50, align 1, !tbaa !62
  %52 = zext i8 %51 to i32
  %53 = add i32 %35, %52
  %54 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 4
  %55 = load <2 x i32>, ptr %23, align 8, !tbaa !40
  store i32 0, ptr %25, align 8, !tbaa !76
  store i32 %53, ptr %23, align 8, !tbaa !79
  store i32 %35, ptr %54, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 %53, ptr %9, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  %56 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !78
  store i32 %57, ptr %10, align 4, !tbaa !40
  %58 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) #8
  %59 = load i32, ptr %58, align 4, !tbaa !40
  store i32 %59, ptr %56, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  %60 = icmp eq ptr %1, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %48, %61
  %62 = phi i32 [ %70, %61 ], [ 0, %48 ]
  %63 = phi ptr [ %69, %61 ], [ %1, %48 ]
  %64 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !81
  call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %65) #8
  %66 = add i32 %62, %35
  %67 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 0, i32 noundef %66) #8
  %68 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %63, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !82
  %70 = add i32 %62, 1
  %71 = icmp eq ptr %69, null
  br i1 %71, label %72, label %61, !llvm.loop !96

72:                                               ; preds = %61, %48
  %73 = phi i32 [ 0, %48 ], [ %70, %61 ]
  %74 = load i8, ptr %50, align 1, !tbaa !62
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.30, i32 noundef %73, i32 noundef %75) #8
  br label %79

79:                                               ; preds = %77, %72
  store i32 %49, ptr %25, align 8, !tbaa !76
  store <2 x i32> %55, ptr %23, align 8, !tbaa !40
  %80 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 969, i32 noundef 0, i32 noundef 0, i32 noundef %35) #8
  %81 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 963, i32 noundef 0, i32 noundef 0, i32 noundef %2) #8
  %82 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 970, i32 noundef 0, i32 noundef 0, i32 noundef %35) #8
  %83 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %30) #8
  %84 = load i32, ptr %25, align 8, !tbaa !76
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = add i32 %30, 1
  %88 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 6, i32 noundef %87) #8
  %89 = load i32, ptr %25, align 8, !tbaa !76
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = add i32 %30, 2
  %93 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 7, i32 noundef %92) #8
  br label %94

94:                                               ; preds = %79, %91, %86
  call void @_ZN3pov6FNCode18compile_parametersEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov6FNCode28compile_vector_function_callEPNS_14ExprNodeStructEjPc(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 align 2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %13) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = tail call noundef i32 (ptr, ...) @_ZN3pov13PossibleErrorEPKcz(ptr noundef nonnull @.str.29) #8
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  br label %21

19:                                               ; preds = %4
  %20 = tail call noundef ptr @_ZN3pov30POVFPU_GetFunctionAndReferenceEj(i32 noundef %2) #8
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi ptr [ %18, %16 ], [ %20, %19 ]
  %23 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %25 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !76
  %27 = add nsw i32 %26, -2
  store i32 %27, ptr %5, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !tbaa !40
  %28 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #8
  %29 = load i32, ptr %28, align 4, !tbaa !40
  %30 = add nsw i32 %29, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %31 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %22, i64 0, i32 2
  %32 = load i8, ptr %31, align 4, !tbaa !70
  %33 = zext i8 %32 to i32
  %34 = add i32 %30, %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %35 = load i32, ptr %25, align 8, !tbaa !76
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %7, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 3, ptr %8, align 4, !tbaa !40
  %37 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) #8
  %38 = load i32, ptr %37, align 4, !tbaa !40
  %39 = add i32 %34, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %40 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 5, i32 noundef %30) #8
  %41 = load i32, ptr %25, align 8, !tbaa !76
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %21
  %44 = add i32 %30, 1
  %45 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 6, i32 noundef %44) #8
  %46 = load i32, ptr %25, align 8, !tbaa !76
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = add i32 %30, 2
  %50 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 7, i32 noundef %49) #8
  %51 = load i32, ptr %25, align 8, !tbaa !76
  br label %52

52:                                               ; preds = %21, %48, %43
  %53 = phi i32 [ %41, %21 ], [ %51, %48 ], [ %46, %43 ]
  %54 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %22, i64 0, i32 3
  %55 = load i8, ptr %54, align 1, !tbaa !62
  %56 = zext i8 %55 to i32
  %57 = add i32 %39, %56
  %58 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 4
  %59 = load <2 x i32>, ptr %23, align 8, !tbaa !40
  store i32 0, ptr %25, align 8, !tbaa !76
  store i32 %57, ptr %23, align 8, !tbaa !79
  store i32 %39, ptr %58, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 %57, ptr %9, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  %60 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !78
  store i32 %61, ptr %10, align 4, !tbaa !40
  %62 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) #8
  %63 = load i32, ptr %62, align 4, !tbaa !40
  store i32 %63, ptr %60, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  %64 = icmp eq ptr %1, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %52, %65
  %66 = phi i32 [ %74, %65 ], [ 0, %52 ]
  %67 = phi ptr [ %73, %65 ], [ %1, %52 ]
  %68 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !81
  call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %69) #8
  %70 = add i32 %66, %39
  %71 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 0, i32 noundef %70) #8
  %72 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %67, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !82
  %74 = add i32 %66, 1
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %65, !llvm.loop !97

76:                                               ; preds = %65, %52
  %77 = phi i32 [ 0, %52 ], [ %74, %65 ]
  %78 = load i8, ptr %54, align 1, !tbaa !62
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.30, i32 noundef %77, i32 noundef %79) #8
  br label %83

83:                                               ; preds = %81, %76
  store i32 %53, ptr %25, align 8, !tbaa !76
  store <2 x i32> %59, ptr %23, align 8, !tbaa !40
  %84 = load i8, ptr %31, align 4, !tbaa !70
  %85 = zext i8 %84 to i32
  %86 = sub i32 %39, %85
  %87 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 969, i32 noundef 0, i32 noundef 0, i32 noundef %86) #8
  %88 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 963, i32 noundef 0, i32 noundef 0, i32 noundef %2) #8
  %89 = load i8, ptr %31, align 4, !tbaa !70
  %90 = zext i8 %89 to i32
  %91 = sub i32 %39, %90
  %92 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 970, i32 noundef 0, i32 noundef 0, i32 noundef %91) #8
  %93 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %30) #8
  %94 = load i32, ptr %25, align 8, !tbaa !76
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %83
  %97 = add i32 %30, 1
  %98 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 6, i32 noundef %97) #8
  %99 = load i32, ptr %25, align 8, !tbaa !76
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = add i32 %30, 2
  %103 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 7, i32 noundef %102) #8
  br label %104

104:                                              ; preds = %83, %101, %96
  call void @_ZN3pov6FNCode18compile_parametersEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov6FNCode14compile_seq_opEPNS_14ExprNodeStructEjd(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1, i32 noundef %2, double noundef %3) local_unnamed_addr #0 align 2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.25) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !82
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ %12, %10 ], [ %8, %4 ]
  %15 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.25) #8
  %20 = load ptr, ptr %7, align 8, !tbaa !82
  %21 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi ptr [ %22, %18 ], [ %16, %13 ]
  %25 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %26, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.26) #8
  br label %34

34:                                               ; preds = %28, %32, %23
  %35 = load ptr, ptr %0, align 8, !tbaa !34
  %36 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %35, i64 0, i32 4
  %37 = load i8, ptr %36, align 2, !tbaa !85
  %38 = icmp ugt i8 %37, 55
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.27) #8
  br label %41

41:                                               ; preds = %39, %34
  %42 = tail call noundef i32 @_ZN3pov6FNCode19compile_push_resultEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #8
  %43 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !76
  %45 = icmp sgt i32 %44, 2
  %46 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 3
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %44, -3
  %49 = select i1 %45, i32 %48, i32 0
  %50 = add i32 %47, %49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %51 = add i32 %50, 3
  store i32 %51, ptr %5, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %52 = getelementptr inbounds %"class.pov::FNCode", ptr %0, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !78
  store i32 %53, ptr %6, align 4, !tbaa !40
  %54 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #8
  %55 = load i32, ptr %54, align 4, !tbaa !40
  store i32 %55, ptr %52, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %56 = load i32, ptr %43, align 8, !tbaa !76
  %57 = add i32 %50, 1
  %58 = load i32, ptr %46, align 8, !tbaa !79
  %59 = add i32 %50, 6
  %60 = sub i32 %59, %58
  store i32 %60, ptr %43, align 8, !tbaa !76
  %61 = load ptr, ptr %0, align 8, !tbaa !34
  %62 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %61, i64 0, i32 4
  %63 = load i8, ptr %62, align 2, !tbaa !85
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %61, i64 0, i32 5, i64 %64
  store i32 %57, ptr %65, align 4, !tbaa !40
  %66 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !81
  %68 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %67, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !71
  %70 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %61, i64 0, i32 6, i64 %64
  store ptr %69, ptr %70, align 8, !tbaa !41
  %71 = load ptr, ptr %66, align 8, !tbaa !81
  %72 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %71, i64 0, i32 5
  %73 = load i32, ptr %72, align 4, !tbaa !68
  %74 = icmp eq i32 %73, 19
  br i1 %74, label %77, label %75

75:                                               ; preds = %41
  %76 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.28) #8
  br label %77

77:                                               ; preds = %75, %41
  %78 = add i32 %50, 2
  %79 = load ptr, ptr %0, align 8, !tbaa !34
  %80 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %79, i64 0, i32 4
  %81 = load i8, ptr %80, align 2, !tbaa !85
  %82 = add i8 %81, 1
  store i8 %82, ptr %80, align 2, !tbaa !85
  %83 = call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef %3) #8
  %84 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 616, i32 noundef 1, i32 noundef 5, i32 noundef %83) #8
  %85 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 5, i32 noundef %50) #8
  %86 = load ptr, ptr %7, align 8, !tbaa !82
  %87 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !81
  call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %88) #8
  %89 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 0, i32 noundef %57) #8
  %90 = load ptr, ptr %7, align 8, !tbaa !82
  %91 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !82
  %93 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !81
  call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %94) #8
  %95 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 0, i32 noundef %78) #8
  %96 = load ptr, ptr %0, align 8, !tbaa !34
  %97 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %96, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !66
  %99 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %57) #8
  %100 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 0, i32 noundef %78) #8
  %101 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 384, i32 noundef 0, i32 noundef 5, i32 noundef 0) #8
  %102 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 991, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %103 = load ptr, ptr %7, align 8, !tbaa !82
  %104 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %103, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !82
  %106 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !82
  %108 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !81
  call void @_ZN3pov6FNCode17compile_recursiveEPNS_14ExprNodeStructE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %109) #8
  %110 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %50) #8
  %111 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %2, i32 noundef 0, i32 noundef 5, i32 noundef %50) #8
  %112 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 5, i32 noundef %50) #8
  %113 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 5, i32 noundef %57) #8
  %114 = call noundef i32 @_ZN3pov18POVFPU_AddConstantEd(double noundef 1.000000e+00) #8
  %115 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 576, i32 noundef 0, i32 noundef 5, i32 noundef %114) #8
  %116 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 768, i32 noundef 1, i32 noundef 5, i32 noundef %57) #8
  %117 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 961, i32 noundef 0, i32 noundef 0, i32 noundef %98) #8
  %118 = load ptr, ptr %0, align 8, !tbaa !34
  %119 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %118, i64 0, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !66
  %121 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %102, i32 noundef 864, i32 noundef 0, i32 noundef 0, i32 noundef %120) #8
  %122 = call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef 704, i32 noundef 1, i32 noundef 0, i32 noundef %50) #8
  %123 = load ptr, ptr %0, align 8, !tbaa !34
  %124 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %123, i64 0, i32 4
  %125 = load i8, ptr %124, align 2, !tbaa !85
  %126 = add i8 %125, -1
  store i8 %126, ptr %124, align 2, !tbaa !85
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %123, i64 0, i32 5, i64 %127
  store i32 0, ptr %128, align 4, !tbaa !40
  %129 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %123, i64 0, i32 6, i64 %127
  store ptr null, ptr %129, align 8, !tbaa !41
  store i32 %56, ptr %43, align 8, !tbaa !76
  call void @_ZN3pov6FNCode18compile_pop_resultEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %42) #8
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov13PossibleErrorEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN3pov30POVFPU_GetFunctionAndReferenceEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov6FNCode14compile_inlineEPNS_12FunctionCodeE(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !66
  %6 = add i32 %5, -1
  %7 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !66
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %31, label %10

10:                                               ; preds = %2, %10
  %11 = phi i64 [ %26, %10 ], [ 0, %2 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !67
  %13 = getelementptr inbounds i32, ptr %12, i64 %11
  %14 = load i32, ptr %13, align 4, !tbaa !40
  %15 = and i32 %14, 4095
  %16 = add nsw i32 %15, -832
  %17 = icmp ult i32 %16, 41
  %18 = icmp eq i32 %15, 961
  %19 = or i1 %18, %17
  %20 = lshr i32 %14, 12
  %21 = add i32 %6, %20
  %22 = lshr i32 %21, 12
  %23 = lshr i32 %14, 24
  %24 = select i1 %19, i32 %22, i32 %23
  %25 = tail call noundef i32 @_ZN3pov6FNCode19compile_instructionEjjjj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %15, i32 noundef 0, i32 noundef 0, i32 noundef %24) #8
  %26 = add nuw nsw i64 %11, 1
  %27 = load i32, ptr %7, align 8, !tbaa !66
  %28 = add i32 %27, -1
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %10, label %31, !llvm.loop !98

31:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIjERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat {
  %3 = load i32, ptr %1, align 4, !tbaa !40
  %4 = load i32, ptr %0, align 4, !tbaa !40
  %5 = icmp ult i32 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 37113910}
!4 = !{!"MaxCount", i64 10485760}
!5 = !{!"MaxInternalCount", i64 10485760}
!6 = !{!"MaxFunctionCount", i64 163840}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 10485760, i32 3}
!14 = !{i32 100000, i64 10485760, i32 3}
!15 = !{i32 200000, i64 10485760, i32 3}
!16 = !{i32 300000, i64 10485760, i32 3}
!17 = !{i32 400000, i64 10485760, i32 3}
!18 = !{i32 500000, i64 10485760, i32 3}
!19 = !{i32 600000, i64 10485760, i32 3}
!20 = !{i32 700000, i64 10485760, i32 3}
!21 = !{i32 800000, i64 10485760, i32 3}
!22 = !{i32 900000, i64 5242880, i32 4}
!23 = !{i32 950000, i64 5242880, i32 4}
!24 = !{i32 990000, i64 163840, i32 6}
!25 = !{i32 999000, i64 81920, i32 7}
!26 = !{i32 999900, i64 4096, i32 8}
!27 = !{i32 999990, i64 4096, i32 8}
!28 = !{i32 999999, i64 21, i32 9}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSN3pov6FNCodeE", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!36, !36, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!45, !36, i64 1136}
!45 = !{!"_ZTSN3pov12FunctionCodeE", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 16, !37, i64 240, !37, i64 688, !36, i64 1136, !36, i64 1144, !46, i64 1152, !39, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192}
!46 = !{!"_ZTSN8pov_base11ITextStream7FilePosE", !47, i64 0, !39, i64 8}
!47 = !{!"long", !37, i64 0}
!48 = !{!49, !36, i64 56}
!49 = !{!"_ZTSN3pov12Token_StructE", !39, i64 0, !39, i64 4, !46, i64 8, !39, i64 24, !39, i64 28, !36, i64 32, !50, i64 40, !39, i64 48, !39, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !51, i64 88}
!50 = !{!"double", !37, i64 0}
!51 = !{!"bool", !37, i64 0}
!52 = !{!45, !36, i64 1144}
!53 = !{i64 0, i64 8, !54, i64 8, i64 4, !40}
!54 = !{!47, !47, i64 0}
!55 = !{i64 0, i64 4, !40}
!56 = !{!45, !39, i64 1160}
!57 = !{!45, !47, i64 1152}
!58 = !{!45, !39, i64 1168}
!59 = !{!60, !36, i64 560}
!60 = !{!"_ZTSN8pov_base11ITextStreamE", !36, i64 8, !37, i64 16, !47, i64 528, !47, i64 536, !47, i64 544, !47, i64 552, !36, i64 560, !39, i64 568, !39, i64 572}
!61 = !{!49, !39, i64 0}
!62 = !{!45, !37, i64 13}
!63 = !{!49, !36, i64 32}
!64 = distinct !{!64, !43}
!65 = !{!35, !39, i64 8}
!66 = !{!45, !39, i64 8}
!67 = !{!45, !36, i64 0}
!68 = !{!69, !39, i64 36}
!69 = !{!"_ZTSN3pov14ExprNodeStructE", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36, !37, i64 40}
!70 = !{!45, !37, i64 12}
!71 = !{!37, !37, i64 0}
!72 = !{!73, !39, i64 8}
!73 = !{!"_ZTSN3pov5TrapSE", !36, i64 0, !39, i64 8}
!74 = !{!75, !39, i64 8}
!75 = !{!"_ZTSN3pov4TrapE", !36, i64 0, !39, i64 8}
!76 = !{!35, !39, i64 24}
!77 = !{!35, !39, i64 20}
!78 = !{!35, !39, i64 12}
!79 = !{!35, !39, i64 16}
!80 = distinct !{!80, !43}
!81 = !{!69, !36, i64 8}
!82 = !{!69, !36, i64 24}
!83 = distinct !{!83, !43}
!84 = distinct !{!84, !43}
!85 = !{!45, !37, i64 14}
!86 = distinct !{!86, !43}
!87 = !{!45, !36, i64 1176}
!88 = !{!45, !36, i64 1184}
!89 = !{!45, !36, i64 1192}
!90 = distinct !{!90, !43}
!91 = distinct !{!91, !43}
!92 = distinct !{!92, !43}
!93 = distinct !{!93, !43}
!94 = distinct !{!94, !43}
!95 = distinct !{!95, !43}
!96 = distinct !{!96, !43}
!97 = distinct !{!97, !43}
!98 = distinct !{!98, !43}
