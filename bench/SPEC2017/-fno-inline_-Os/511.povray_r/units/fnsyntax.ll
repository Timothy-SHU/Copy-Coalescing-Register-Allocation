; ModuleID = 'fnsyntax.cpp'
source_filename = "fnsyntax.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::ExprParserTableEntry" = type { i32, i32, ptr, i32, i32 }
%"struct.pov::Token_Struct" = type { i32, i32, %"struct.pov_base::ITextStream::FilePos", i32, i32, ptr, double, i32, i32, ptr, ptr, ptr, ptr, i8 }
%"struct.pov_base::ITextStream::FilePos" = type { i64, i32 }
%"struct.pov::OPTIONS_STRUCT" = type { i32, i8, i8, i8, i32, i32, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], float, float, i32, i32, double, i8, double, i32, [25 x ptr], i32, i32, i32, double, double, i32, i32, double, double, i32, i8, i64, i32, i32, i32, %"struct.pov::FRAMESEQ", double, i64, double, double, double, double, double, i64, i32, i64, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32, ptr, ptr, i32, i8, double, double, i32, i32, i8, i32, i32, [4096 x i8], [6 x %"struct.pov::shelldata"], [4096 x i8], [4096 x i8], i32, i32, i64, i32, i32, i32, %struct.POVMSData }
%"struct.pov::FRAMESEQ" = type { i32, double, i32, i32, double, i32, i32, double, i32, double, i32, double, i8, i8 }
%"struct.pov::shelldata" = type { i32, i32, [250 x i8] }
%struct.POVMSData = type { i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%"struct.pov::ExprParserErrorEntry" = type { i32, ptr }
%"struct.pov::ExprNodeStruct" = type { ptr, ptr, ptr, ptr, i32, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"fnsyntax.cpp\00", align 1
@_ZN3povL17expr_parser_tableE = internal unnamed_addr constant [38 x %"struct.pov::ExprParserTableEntry"] [%"struct.pov::ExprParserTableEntry" { i32 5, i32 106, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 40, i32 9 }, %"struct.pov::ExprParserTableEntry" { i32 10, i32 101, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 40, i32 12 }, %"struct.pov::ExprParserTableEntry" { i32 15, i32 144, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 40, i32 1 }, %"struct.pov::ExprParserTableEntry" { i32 15, i32 286, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 40, i32 2 }, %"struct.pov::ExprParserTableEntry" { i32 15, i32 171, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 40, i32 3 }, %"struct.pov::ExprParserTableEntry" { i32 15, i32 285, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 40, i32 4 }, %"struct.pov::ExprParserTableEntry" { i32 15, i32 217, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 40, i32 5 }, %"struct.pov::ExprParserTableEntry" { i32 15, i32 284, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 40, i32 6 }, %"struct.pov::ExprParserTableEntry" { i32 20, i32 203, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 40, i32 7 }, %"struct.pov::ExprParserTableEntry" { i32 20, i32 133, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 40, i32 8 }, %"struct.pov::ExprParserTableEntry" { i32 25, i32 236, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 40, i32 10 }, %"struct.pov::ExprParserTableEntry" { i32 25, i32 229, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 40, i32 11 }, %"struct.pov::ExprParserTableEntry" { i32 35, i32 219, ptr @_ZN3pov8expr_retERPNS_14ExprNodeStructEii, i32 -1, i32 0 }, %"struct.pov::ExprParserTableEntry" { i32 35, i32 218, ptr @_ZN3pov8expr_retERPNS_14ExprNodeStructEii, i32 -1, i32 0 }, %"struct.pov::ExprParserTableEntry" { i32 35, i32 126, ptr @_ZN3pov8expr_retERPNS_14ExprNodeStructEii, i32 -1, i32 0 }, %"struct.pov::ExprParserTableEntry" { i32 35, i32 535, ptr @_ZN3pov8expr_errERPNS_14ExprNodeStructEii, i32 -1, i32 0 }, %"struct.pov::ExprParserTableEntry" { i32 45, i32 396, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 60, i32 20 }, %"struct.pov::ExprParserTableEntry" { i32 45, i32 535, ptr @_ZN3pov8expr_errERPNS_14ExprNodeStructEii, i32 -1, i32 0 }, %"struct.pov::ExprParserTableEntry" { i32 40, i32 203, ptr @_ZN3pov9expr_noopERPNS_14ExprNodeStructEii, i32 50, i32 0 }, %"struct.pov::ExprParserTableEntry" { i32 40, i32 133, ptr @_ZN3pov9expr_growERPNS_14ExprNodeStructEii, i32 50, i32 14 }, %"struct.pov::ExprParserTableEntry" { i32 40, i32 145, ptr @_ZN3pov8expr_errERPNS_14ExprNodeStructEii, i32 -1, i32 15 }, %"struct.pov::ExprParserTableEntry" { i32 50, i32 11, ptr @_ZN3pov8expr_putERPNS_14ExprNodeStructEii, i32 5, i32 18 }, %"struct.pov::ExprParserTableEntry" { i32 50, i32 10, ptr @_ZN3pov8expr_putERPNS_14ExprNodeStructEii, i32 5, i32 19 }, %"struct.pov::ExprParserTableEntry" { i32 50, i32 487, ptr @_ZN3pov9expr_callERPNS_14ExprNodeStructEii, i32 5, i32 22 }, %"struct.pov::ExprParserTableEntry" { i32 50, i32 488, ptr @_ZN3pov9expr_callERPNS_14ExprNodeStructEii, i32 45, i32 22 }, %"struct.pov::ExprParserTableEntry" { i32 50, i32 173, ptr @_ZN3pov8expr_newERPNS_14ExprNodeStructEii, i32 55, i32 17 }, %"struct.pov::ExprParserTableEntry" { i32 50, i32 535, ptr @_ZN3pov8expr_errERPNS_14ExprNodeStructEii, i32 -1, i32 0 }, %"struct.pov::ExprParserTableEntry" { i32 55, i32 219, ptr @_ZN3pov9expr_noopERPNS_14ExprNodeStructEii, i32 5, i32 0 }, %"struct.pov::ExprParserTableEntry" { i32 55, i32 535, ptr @_ZN3pov8expr_errERPNS_14ExprNodeStructEii, i32 -1, i32 0 }, %"struct.pov::ExprParserTableEntry" { i32 60, i32 10, ptr @_ZN3pov8expr_putERPNS_14ExprNodeStructEii, i32 5, i32 21 }, %"struct.pov::ExprParserTableEntry" { i32 60, i32 408, ptr @_ZN3pov8expr_putERPNS_14ExprNodeStructEii, i32 5, i32 21 }, %"struct.pov::ExprParserTableEntry" { i32 60, i32 84, ptr @_ZN3pov8expr_putERPNS_14ExprNodeStructEii, i32 5, i32 21 }, %"struct.pov::ExprParserTableEntry" { i32 60, i32 83, ptr @_ZN3pov8expr_putERPNS_14ExprNodeStructEii, i32 5, i32 21 }, %"struct.pov::ExprParserTableEntry" { i32 60, i32 79, ptr @_ZN3pov8expr_putERPNS_14ExprNodeStructEii, i32 5, i32 21 }, %"struct.pov::ExprParserTableEntry" { i32 60, i32 80, ptr @_ZN3pov8expr_putERPNS_14ExprNodeStructEii, i32 5, i32 21 }, %"struct.pov::ExprParserTableEntry" { i32 60, i32 81, ptr @_ZN3pov8expr_putERPNS_14ExprNodeStructEii, i32 5, i32 21 }, %"struct.pov::ExprParserTableEntry" { i32 60, i32 82, ptr @_ZN3pov8expr_putERPNS_14ExprNodeStructEii, i32 5, i32 21 }, %"struct.pov::ExprParserTableEntry" { i32 60, i32 535, ptr @_ZN3pov8expr_errERPNS_14ExprNodeStructEii, i32 -1, i32 0 }], align 16
@_ZN3pov5TokenE = external local_unnamed_addr global %"struct.pov::Token_Struct", align 8
@_ZN3pov4optsE = external local_unnamed_addr global %"struct.pov::OPTIONS_STRUCT", align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"ExprNode\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [201 x i8] c"Suspicious identifier found in function!\0AIf you want to call a function make sure the function you call has been declared.\0AIf you call an internal function, make sure you have included 'function.inc'.\00", align 1
@_ZN3povL23expr_parser_error_tableE = internal unnamed_addr constant [7 x %"struct.pov::ExprParserErrorEntry"] [%"struct.pov::ExprParserErrorEntry" { i32 35, ptr @.str.29 }, %"struct.pov::ExprParserErrorEntry" { i32 45, ptr @.str.11 }, %"struct.pov::ExprParserErrorEntry" { i32 40, ptr @.str.30 }, %"struct.pov::ExprParserErrorEntry" { i32 50, ptr @.str.31 }, %"struct.pov::ExprParserErrorEntry" { i32 55, ptr @.str.3 }, %"struct.pov::ExprParserErrorEntry" { i32 60, ptr @.str.32 }, %"struct.pov::ExprParserErrorEntry" { i32 -1, ptr null }], align 16
@.str.5 = private unnamed_addr constant [26 x i8] c"valid function expression\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Domain error in 'ln'.\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Domain error in 'log'.\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"fn%d\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" == \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" != \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" < \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" <= \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" > \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" >= \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c" / \00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c" & \00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c" ^ \00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c" !\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"sign or operand\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"operand\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"color or vector member\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov24FNSyntax_ParseExpressionEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10parse_exprEv() #11
  tail call void @_ZN3pov13optimise_exprEPNS_14ExprNodeStructE(ptr noundef %1) #11
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov10parse_exprEv() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #12
  %2 = tail call noundef ptr @_ZN3pov13new_expr_nodeEii(i32 noundef 0, i32 noundef 17) #11
  store ptr %2, ptr %1, align 8, !tbaa !34
  %3 = tail call noundef i32 @_ZN3pov14expr_get_tokenEv() #11, !range !38
  br label %4

4:                                                ; preds = %48, %0
  %5 = phi i32 [ %3, %0 ], [ %50, %48 ]
  %6 = phi i32 [ 18, %0 ], [ %49, %48 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %7, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !39
  %10 = icmp eq i32 %9, %5
  br i1 %10, label %21, label %16

11:                                               ; preds = %16
  %12 = add i64 %17, 1
  %13 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %12, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !39
  %15 = icmp eq i32 %14, %5
  br i1 %15, label %21, label %16, !llvm.loop !42

16:                                               ; preds = %4, %11
  %17 = phi i64 [ %12, %11 ], [ %7, %4 ]
  %18 = lshr i64 137774661632, %17
  %19 = and i64 %18, 1
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %11, label %21

21:                                               ; preds = %16, %11, %4
  %22 = phi i64 [ %7, %4 ], [ %12, %11 ], [ %17, %16 ]
  %23 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %22
  %24 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %22, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = load i32, ptr %23, align 8, !tbaa !45
  %27 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %22, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !46
  %29 = call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %26, i32 noundef %28) #11
  br i1 %29, label %30, label %51

30:                                               ; preds = %21
  %31 = lshr i64 137102168063, %22
  %32 = and i64 %31, 1
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %22, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !47
  %37 = icmp slt i32 %36, %26
  %38 = select i1 %37, i32 0, i32 %6
  %39 = sext i32 %38 to i64
  br label %40

40:                                               ; preds = %40, %34
  %41 = phi i64 [ %45, %40 ], [ %39, %34 ]
  %42 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %41
  %43 = load i32, ptr %42, align 8, !tbaa !45
  %44 = icmp eq i32 %43, %36
  %45 = add i64 %41, 1
  br i1 %44, label %46, label %40, !llvm.loop !48

46:                                               ; preds = %40
  %47 = trunc i64 %41 to i32
  br label %48

48:                                               ; preds = %46, %30
  %49 = phi i32 [ %6, %30 ], [ %47, %46 ]
  %50 = call noundef i32 @_ZN3pov14expr_get_tokenEv() #11, !range !38
  br label %4, !llvm.loop !49

51:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov13optimise_exprEPNS_14ExprNodeStructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %267, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !50
  %6 = icmp eq i32 %5, 22
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6, i32 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !52
  %10 = icmp eq i32 %9, 28
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6
  store i32 17, ptr %4, align 4, !tbaa !50
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 980) #11
  store ptr null, ptr %12, align 8, !tbaa !52
  %14 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %15, i64 0, i32 5
  store i32 16, ptr %18, align 4, !tbaa !50
  %19 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %15, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %20, i64 0, i32 5
  store i32 13, ptr %23, align 4, !tbaa !50
  %24 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %20, i64 0, i32 2
  store ptr %15, ptr %24, align 8, !tbaa !55
  br label %25

25:                                               ; preds = %11, %22, %17, %7
  %26 = load i32, ptr %4, align 4, !tbaa !50
  br label %27

27:                                               ; preds = %25, %3
  %28 = phi i32 [ %26, %25 ], [ %5, %3 ]
  %29 = icmp slt i32 %28, 17
  br i1 %29, label %30, label %247

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = icmp eq ptr %32, null
  br i1 %33, label %70, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %32, i64 0, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = icmp eq i32 %36, 14
  br i1 %37, label %38, label %70

38:                                               ; preds = %34, %44
  %39 = phi i32 [ %45, %44 ], [ 0, %34 ]
  %40 = phi ptr [ %47, %44 ], [ %32, %34 ]
  %41 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !53
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = add nuw nsw i32 %39, 1
  %46 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %40, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !54
  %48 = icmp eq ptr %47, null
  br i1 %48, label %70, label %38, !llvm.loop !56

49:                                               ; preds = %38
  %50 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %40, i64 0, i32 1
  tail call void @_ZN3pov13optimise_exprEPNS_14ExprNodeStructE(ptr noundef nonnull %42) #11
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = icmp eq ptr %51, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %51, i64 0, i32 5
  %55 = load i32, ptr %54, align 4, !tbaa !50
  %56 = icmp eq i32 %55, 18
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  store ptr null, ptr %50, align 8, !tbaa !53
  %58 = load ptr, ptr %31, align 8, !tbaa !54
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @_ZN3pov25FNSyntax_DeleteExpressionEPNS_14ExprNodeStructE(ptr noundef nonnull %58) #11
  br label %61

61:                                               ; preds = %57, %60
  %62 = and i32 %39, 1
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %51, i64 0, i32 6
  %65 = load double, ptr %64, align 8, !tbaa !52
  %66 = fneg double %65
  %67 = select i1 %63, double %66, double %65
  %68 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6
  store double %67, ptr %68, align 8
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %51, ptr noundef nonnull @.str, i32 noundef 1029) #11
  store i32 18, ptr %4, align 4, !tbaa !50
  %69 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, i8 0, i64 24, i1 false)
  br label %267

70:                                               ; preds = %44, %34, %49, %53, %30
  %71 = phi ptr [ %51, %53 ], [ undef, %49 ], [ undef, %34 ], [ undef, %30 ], [ undef, %44 ]
  %72 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !53
  tail call void @_ZN3pov13optimise_exprEPNS_14ExprNodeStructE(ptr noundef %73) #11
  %74 = load ptr, ptr %31, align 8, !tbaa !54
  %75 = icmp eq ptr %74, null
  br i1 %75, label %228, label %76

76:                                               ; preds = %70, %220
  %77 = phi ptr [ %223, %220 ], [ %74, %70 ]
  %78 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !55
  %80 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !53
  %82 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %77, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !53
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  tail call void @_ZN3pov13optimise_exprEPNS_14ExprNodeStructE(ptr noundef null) #11
  br label %220

86:                                               ; preds = %76
  %87 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %77, i64 0, i32 5
  %88 = load i32, ptr %87, align 4, !tbaa !50
  %89 = icmp eq i32 %88, 8
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 5
  %92 = load i32, ptr %91, align 4, !tbaa !50
  %93 = icmp eq i32 %92, 18
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  store i32 7, ptr %87, align 4, !tbaa !50
  %95 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %96 = load double, ptr %95, align 8, !tbaa !52
  %97 = fneg double %96
  store double %97, ptr %95, align 8, !tbaa !52
  br label %98

98:                                               ; preds = %90, %94, %86
  tail call void @_ZN3pov13optimise_exprEPNS_14ExprNodeStructE(ptr noundef nonnull %83) #11
  %99 = icmp eq ptr %81, null
  br i1 %99, label %220, label %100

100:                                              ; preds = %98
  %101 = load i32, ptr %87, align 4, !tbaa !50
  %102 = and i32 %101, -2
  %103 = icmp eq i32 %102, 10
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = tail call noundef zeroext i1 @_ZN3pov30left_subtree_has_variable_exprEPNS_14ExprNodeStructE(ptr noundef nonnull %77) #11
  br i1 %105, label %220, label %106

106:                                              ; preds = %100, %104
  %107 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !50
  %109 = icmp eq i32 %108, 18
  br i1 %109, label %110, label %220

110:                                              ; preds = %106
  %111 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 5
  %112 = load i32, ptr %111, align 4, !tbaa !50
  %113 = icmp eq i32 %112, 18
  br i1 %113, label %114, label %220

114:                                              ; preds = %110
  switch i32 %101, label %220 [
    i32 1, label %115
    i32 2, label %122
    i32 3, label %129
    i32 4, label %136
    i32 5, label %143
    i32 6, label %150
    i32 7, label %157
    i32 8, label %163
    i32 9, label %169
    i32 10, label %178
    i32 11, label %184
    i32 12, label %190
    i32 13, label %200
  ]

115:                                              ; preds = %114
  %116 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  %117 = load double, ptr %116, align 8, !tbaa !52
  %118 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %119 = load double, ptr %118, align 8, !tbaa !52
  %120 = fcmp oeq double %117, %119
  %121 = uitofp i1 %120 to double
  br label %206

122:                                              ; preds = %114
  %123 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  %124 = load double, ptr %123, align 8, !tbaa !52
  %125 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %126 = load double, ptr %125, align 8, !tbaa !52
  %127 = fcmp une double %124, %126
  %128 = uitofp i1 %127 to double
  br label %206

129:                                              ; preds = %114
  %130 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  %131 = load double, ptr %130, align 8, !tbaa !52
  %132 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %133 = load double, ptr %132, align 8, !tbaa !52
  %134 = fcmp olt double %131, %133
  %135 = uitofp i1 %134 to double
  br label %206

136:                                              ; preds = %114
  %137 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  %138 = load double, ptr %137, align 8, !tbaa !52
  %139 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %140 = load double, ptr %139, align 8, !tbaa !52
  %141 = fcmp ole double %138, %140
  %142 = uitofp i1 %141 to double
  br label %206

143:                                              ; preds = %114
  %144 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  %145 = load double, ptr %144, align 8, !tbaa !52
  %146 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %147 = load double, ptr %146, align 8, !tbaa !52
  %148 = fcmp ogt double %145, %147
  %149 = uitofp i1 %148 to double
  br label %206

150:                                              ; preds = %114
  %151 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  %152 = load double, ptr %151, align 8, !tbaa !52
  %153 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %154 = load double, ptr %153, align 8, !tbaa !52
  %155 = fcmp oge double %152, %154
  %156 = uitofp i1 %155 to double
  br label %206

157:                                              ; preds = %114
  %158 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  %159 = load double, ptr %158, align 8, !tbaa !52
  %160 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %161 = load double, ptr %160, align 8, !tbaa !52
  %162 = fadd double %159, %161
  br label %206

163:                                              ; preds = %114
  %164 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  %165 = load double, ptr %164, align 8, !tbaa !52
  %166 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %167 = load double, ptr %166, align 8, !tbaa !52
  %168 = fsub double %165, %167
  br label %206

169:                                              ; preds = %114
  %170 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  %171 = load double, ptr %170, align 8, !tbaa !52
  %172 = fcmp une double %171, 0.000000e+00
  %173 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %174 = load double, ptr %173, align 8, !tbaa !52
  %175 = fcmp une double %174, 0.000000e+00
  %176 = or i1 %172, %175
  %177 = uitofp i1 %176 to double
  br label %206

178:                                              ; preds = %114
  %179 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  %180 = load double, ptr %179, align 8, !tbaa !52
  %181 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %182 = load double, ptr %181, align 8, !tbaa !52
  %183 = fmul double %180, %182
  br label %206

184:                                              ; preds = %114
  %185 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  %186 = load double, ptr %185, align 8, !tbaa !52
  %187 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %188 = load double, ptr %187, align 8, !tbaa !52
  %189 = fdiv double %186, %188
  br label %206

190:                                              ; preds = %114
  %191 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  %192 = load double, ptr %191, align 8, !tbaa !52
  %193 = fcmp une double %192, 0.000000e+00
  %194 = uitofp i1 %193 to double
  %195 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %196 = load double, ptr %195, align 8, !tbaa !52
  %197 = fcmp une double %196, 0.000000e+00
  %198 = uitofp i1 %197 to double
  %199 = fmul double %194, %198
  br label %206

200:                                              ; preds = %114
  %201 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  %202 = load double, ptr %201, align 8, !tbaa !52
  %203 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 6
  %204 = load double, ptr %203, align 8, !tbaa !52
  %205 = tail call double @pow(double noundef %202, double noundef %204) #13
  br label %206

206:                                              ; preds = %200, %190, %184, %178, %169, %163, %157, %150, %143, %136, %129, %122, %115
  %207 = phi double [ %121, %115 ], [ %128, %122 ], [ %135, %129 ], [ %142, %136 ], [ %149, %143 ], [ %156, %150 ], [ %162, %157 ], [ %168, %163 ], [ %177, %169 ], [ %183, %178 ], [ %189, %184 ], [ %199, %190 ], [ %205, %200 ]
  %208 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %77, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !54
  %210 = load ptr, ptr %78, align 8, !tbaa !55
  %211 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %210, i64 0, i32 3
  store ptr %209, ptr %211, align 8, !tbaa !54
  %212 = icmp eq ptr %209, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %206
  %214 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %209, i64 0, i32 2
  store ptr %210, ptr %214, align 8, !tbaa !55
  %215 = load ptr, ptr %78, align 8, !tbaa !55
  br label %216

216:                                              ; preds = %213, %206
  %217 = phi ptr [ %215, %213 ], [ %210, %206 ]
  %218 = load ptr, ptr %82, align 8, !tbaa !53
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %218, ptr noundef nonnull @.str, i32 noundef 1119) #11
  store ptr null, ptr %82, align 8, !tbaa !53
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %77, ptr noundef nonnull @.str, i32 noundef 1120) #11
  %219 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %81, i64 0, i32 6
  store double %207, ptr %219, align 8, !tbaa !52
  br label %220

220:                                              ; preds = %114, %85, %98, %104, %216, %110, %106
  %221 = phi ptr [ %217, %216 ], [ %77, %110 ], [ %77, %106 ], [ %77, %104 ], [ %77, %98 ], [ %77, %85 ], [ %77, %114 ]
  %222 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %221, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !54
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %76, !llvm.loop !57

225:                                              ; preds = %220
  %226 = load ptr, ptr %31, align 8, !tbaa !54
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %267

228:                                              ; preds = %70, %225
  %229 = phi ptr [ %81, %225 ], [ %71, %70 ]
  %230 = load ptr, ptr %72, align 8, !tbaa !53
  %231 = icmp eq ptr %230, null
  br i1 %231, label %267, label %232

232:                                              ; preds = %228
  %233 = load i32, ptr %4, align 4, !tbaa !50
  %234 = icmp slt i32 %233, 17
  br i1 %234, label %235, label %267

235:                                              ; preds = %232
  %236 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %230, i64 0, i32 5
  %237 = load i32, ptr %236, align 4, !tbaa !50
  %238 = icmp eq i32 %237, 18
  br i1 %238, label %239, label %267

239:                                              ; preds = %235
  %240 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %230, i64 0, i32 3
  %241 = load ptr, ptr %240, align 8, !tbaa !54
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %267

243:                                              ; preds = %239
  %244 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %229, i64 0, i32 6
  %245 = load double, ptr %244, align 8, !tbaa !52
  %246 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6
  store double %245, ptr %246, align 8, !tbaa !52
  store i32 18, ptr %4, align 4, !tbaa !50
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %230, ptr noundef nonnull @.str, i32 noundef 1132) #11
  store ptr null, ptr %72, align 8, !tbaa !53
  br label %267

247:                                              ; preds = %27
  %248 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !53
  tail call void @_ZN3pov13optimise_exprEPNS_14ExprNodeStructE(ptr noundef %249) #11
  tail call void @_ZN3pov13optimise_callEPNS_14ExprNodeStructE(ptr noundef nonnull %0) #11
  %250 = load ptr, ptr %248, align 8, !tbaa !53
  %251 = icmp eq ptr %250, null
  br i1 %251, label %267, label %252

252:                                              ; preds = %247
  %253 = load i32, ptr %4, align 4, !tbaa !50
  %254 = icmp slt i32 %253, 17
  br i1 %254, label %255, label %267

255:                                              ; preds = %252
  %256 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %250, i64 0, i32 5
  %257 = load i32, ptr %256, align 4, !tbaa !50
  %258 = icmp eq i32 %257, 18
  br i1 %258, label %259, label %267

259:                                              ; preds = %255
  %260 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %250, i64 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !54
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %250, i64 0, i32 6
  %265 = load double, ptr %264, align 8, !tbaa !52
  %266 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6
  store double %265, ptr %266, align 8, !tbaa !52
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %250, ptr noundef nonnull @.str, i32 noundef 1148) #11
  store ptr null, ptr %248, align 8, !tbaa !53
  store i32 18, ptr %4, align 4, !tbaa !50
  br label %267

267:                                              ; preds = %235, %239, %243, %232, %228, %225, %255, %259, %263, %252, %247, %1, %61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov26FNSyntax_GetTrapExpressionEj(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN3pov13new_expr_nodeEii(i32 noundef 0, i32 noundef 23) #11
  %3 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %2, i64 0, i32 6
  store i32 %0, ptr %3, align 8, !tbaa !52
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov13new_expr_nodeEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1) #11
  %4 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %3, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i32 %0, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %3, i64 0, i32 5
  store i32 %1, ptr %5, align 4, !tbaa !50
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov25FNSyntax_DeleteExpressionEPNS_14ExprNodeStructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1, %25
  %4 = phi ptr [ %27, %25 ], [ %0, %1 ]
  %5 = phi ptr [ %4, %25 ], [ null, %1 ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 286) #11
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  tail call void @_ZN3pov25FNSyntax_DeleteExpressionEPNS_14ExprNodeStructE(ptr noundef %10) #11
  %11 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !50
  switch i32 %12, label %25 [
    i32 19, label %21
    i32 21, label %21
    i32 22, label %13
  ]

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 6, i32 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !52
  %16 = add i32 %15, -487
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 6, i32 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !52
  tail call void @_ZN3pov21POVFPU_RemoveFunctionEj(i32 noundef %20) #11
  br label %21

21:                                               ; preds = %8, %8, %18, %13
  %22 = phi i32 [ 299, %13 ], [ 299, %18 ], [ 293, %8 ], [ 293, %8 ]
  %23 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef %22) #11
  store ptr null, ptr %23, align 8, !tbaa !52
  br label %25

25:                                               ; preds = %21, %8
  %26 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %3, !llvm.loop !59

29:                                               ; preds = %25
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 307) #11
  br label %30

30:                                               ; preds = %1, %29
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov21POVFPU_RemoveFunctionEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN3pov14expr_get_tokenEv() local_unnamed_addr #0 {
  tail call void @_ZN3pov9Get_TokenEv() #11
  %1 = load i32, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 1), align 4, !tbaa !60
  switch i32 %1, label %12 [
    i32 71, label %20
    i32 72, label %20
    i32 73, label %20
    i32 400, label %20
    i32 401, label %20
    i32 161, label %20
    i32 5, label %2
    i32 27, label %4
    i32 84, label %5
    i32 83, label %6
    i32 79, label %7
    i32 80, label %8
    i32 81, label %9
    i32 408, label %10
    i32 82, label %11
  ]

2:                                                ; preds = %0
  %3 = load double, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 35, i32 1), align 8, !tbaa !66
  store double %3, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 6), align 8, !tbaa !73
  br label %20

4:                                                ; preds = %0
  store double 0x400921FB54442D18, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 6), align 8, !tbaa !73
  br label %20

5:                                                ; preds = %0
  br label %20

6:                                                ; preds = %0
  br label %20

7:                                                ; preds = %0
  br label %20

8:                                                ; preds = %0
  br label %20

9:                                                ; preds = %0
  br label %20

10:                                               ; preds = %0
  br label %20

11:                                               ; preds = %0
  br label %20

12:                                               ; preds = %0
  %13 = load i32, ptr @_ZN3pov5TokenE, align 8, !tbaa !74
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  switch i32 %1, label %19 [
    i32 11, label %20
    i32 10, label %16
  ]

16:                                               ; preds = %15
  %17 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 10), align 8, !tbaa !75
  %18 = load double, ptr %17, align 8, !tbaa !76
  store double %18, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 6), align 8, !tbaa !73
  br label %20

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %12, %15, %0, %0, %0, %0, %0, %0, %19, %16, %11, %10, %9, %8, %7, %6, %5, %4, %2
  %21 = phi i32 [ 11, %2 ], [ 11, %4 ], [ %1, %5 ], [ %1, %6 ], [ %1, %7 ], [ %1, %8 ], [ %1, %9 ], [ %1, %10 ], [ %1, %11 ], [ 11, %16 ], [ 487, %19 ], [ 10, %0 ], [ 10, %0 ], [ 10, %0 ], [ 10, %0 ], [ 10, %0 ], [ 10, %0 ], [ %1, %15 ], [ %13, %12 ]
  ret i32 %21
}

; Function Attrs: optsize
declare void @_ZN3pov9Get_TokenEv() local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN3pov9expr_noopERPNS_14ExprNodeStructEii(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2) #3 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN3pov9expr_growERPNS_14ExprNodeStructEii(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %73

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !58
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %10, label %21

10:                                               ; preds = %6, %19
  %11 = phi ptr [ %13, %19 ], [ %4, %6 ]
  %12 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %13, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !58
  %18 = icmp sgt i32 %17, %1
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  store ptr %13, ptr %0, align 8, !tbaa !34
  %20 = icmp eq i32 %17, %1
  br i1 %20, label %31, label %10, !llvm.loop !77

21:                                               ; preds = %6
  %22 = icmp sgt i32 %8, %1
  br i1 %22, label %23, label %31

23:                                               ; preds = %21, %27
  %24 = phi ptr [ %25, %27 ], [ %4, %21 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !78
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  store ptr %25, ptr %0, align 8, !tbaa !34
  %28 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %25, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !58
  %30 = icmp sgt i32 %29, %1
  br i1 %30, label %23, label %31, !llvm.loop !79

31:                                               ; preds = %27, %23, %10, %15, %19, %21
  %32 = phi ptr [ %4, %21 ], [ %11, %10 ], [ %11, %15 ], [ %13, %19 ], [ %25, %27 ], [ %24, %23 ]
  %33 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %32, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !58
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %32, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %43, %40 ], [ %38, %36 ]
  store ptr %41, ptr %0, align 8, !tbaa !34
  %42 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !54
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %40, !llvm.loop !80

45:                                               ; preds = %40, %36
  %46 = tail call noundef ptr @_ZN3pov13new_expr_nodeEii(i32 noundef %1, i32 noundef %2) #11
  %47 = load ptr, ptr %0, align 8, !tbaa !34
  %48 = load ptr, ptr %47, align 8, !tbaa !78
  store ptr %48, ptr %46, align 8, !tbaa !78
  %49 = load ptr, ptr %0, align 8, !tbaa !34
  %50 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %46, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !55
  %51 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %49, i64 0, i32 3
  store ptr %46, ptr %51, align 8, !tbaa !54
  store ptr %46, ptr %0, align 8, !tbaa !34
  br label %73

52:                                               ; preds = %31
  %53 = tail call noundef ptr @_ZN3pov13new_expr_nodeEii(i32 noundef %1, i32 noundef 16) #11
  %54 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %54, ptr %53, align 8, !tbaa !78
  %55 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !53
  %57 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %53, i64 0, i32 1
  store ptr %56, ptr %57, align 8, !tbaa !53
  %58 = load ptr, ptr %0, align 8, !tbaa !34
  %59 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %58, i64 0, i32 1
  store ptr %53, ptr %59, align 8, !tbaa !53
  %60 = load ptr, ptr %57, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %68, %52
  %63 = tail call noundef ptr @_ZN3pov13new_expr_nodeEii(i32 noundef %1, i32 noundef %2) #11
  store ptr %63, ptr %0, align 8, !tbaa !34
  %64 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %63, i64 0, i32 2
  store ptr %53, ptr %64, align 8, !tbaa !55
  %65 = load ptr, ptr %0, align 8, !tbaa !34
  %66 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %53, i64 0, i32 3
  store ptr %65, ptr %66, align 8, !tbaa !54
  %67 = load ptr, ptr %53, align 8, !tbaa !78
  store ptr %67, ptr %65, align 8, !tbaa !78
  br label %73

68:                                               ; preds = %52, %68
  %69 = phi ptr [ %71, %68 ], [ %60, %52 ]
  store ptr %53, ptr %69, align 8, !tbaa !78
  %70 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  %72 = icmp eq ptr %71, null
  br i1 %72, label %62, label %68, !llvm.loop !81

73:                                               ; preds = %45, %62, %3
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN3pov9expr_callERPNS_14ExprNodeStructEii(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %55

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZN3pov13new_expr_nodeEii(i32 noundef %1, i32 noundef %2) #11
  %8 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 10), align 8, !tbaa !75
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 4, !tbaa !82
  %12 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6, i32 0, i32 2
  store i32 %11, ptr %12, align 4, !tbaa !52
  %13 = tail call noundef ptr @_ZN3pov30POVFPU_GetFunctionAndReferenceEj(i32 noundef %11) #11
  br label %16

14:                                               ; preds = %6
  %15 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6, i32 0, i32 2
  store i32 0, ptr %15, align 4, !tbaa !52
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 1), align 4, !tbaa !60
  %18 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %19 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6, i32 0, i32 1
  store i32 %17, ptr %19, align 8, !tbaa !52
  %20 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 5), align 8, !tbaa !83
  %21 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef %20) #11
  store ptr %21, ptr %18, align 8, !tbaa !52
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %16, %26
  %27 = phi ptr [ %29, %26 ], [ %24, %16 ]
  store ptr %27, ptr %0, align 8, !tbaa !34
  %28 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !53
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !llvm.loop !84

31:                                               ; preds = %26, %16
  %32 = phi ptr [ %22, %16 ], [ %27, %26 ]
  %33 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %32, i64 0, i32 1
  store ptr %7, ptr %33, align 8, !tbaa !53
  %34 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %34, ptr %7, align 8, !tbaa !78
  store ptr %7, ptr %0, align 8, !tbaa !34
  %35 = tail call noundef i32 @_ZN3pov14expr_get_tokenEv() #11, !range !38
  %36 = icmp eq i32 %35, 173
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef nonnull @.str.2) #11
  br label %38

38:                                               ; preds = %37, %31
  %39 = tail call noundef ptr @_ZN3pov10parse_exprEv() #11
  %40 = load ptr, ptr %0, align 8, !tbaa !34
  %41 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %40, i64 0, i32 1
  store ptr %39, ptr %41, align 8, !tbaa !53
  %42 = tail call noundef i32 @_ZN3pov14expr_get_tokenEv() #11, !range !38
  %43 = icmp eq i32 %42, 126
  br i1 %43, label %44, label %51

44:                                               ; preds = %38, %44
  %45 = phi ptr [ %46, %44 ], [ %39, %38 ]
  %46 = tail call noundef ptr @_ZN3pov10parse_exprEv() #11
  %47 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %45, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !54
  %48 = load ptr, ptr %45, align 8, !tbaa !78
  store ptr %48, ptr %46, align 8, !tbaa !78
  %49 = tail call noundef i32 @_ZN3pov14expr_get_tokenEv() #11, !range !38
  %50 = icmp eq i32 %49, 126
  br i1 %50, label %44, label %51, !llvm.loop !85

51:                                               ; preds = %44, %38
  %52 = load i32, ptr @_ZN3pov5TokenE, align 8, !tbaa !74
  %53 = icmp eq i32 %52, 219
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef nonnull @.str.3) #11
  br label %55

55:                                               ; preds = %51, %54, %3
  ret i1 %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov30POVFPU_GetFunctionAndReferenceEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN3pov8expr_putERPNS_14ExprNodeStructEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZN3pov13new_expr_nodeEii(i32 noundef %1, i32 noundef %2) #11
  %8 = icmp eq i32 %2, 18
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load double, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 6), align 8, !tbaa !73
  %11 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  store double %10, ptr %11, align 8, !tbaa !52
  br label %16

12:                                               ; preds = %6
  %13 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 5), align 8, !tbaa !83
  %14 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef %13) #11
  %15 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  store ptr %14, ptr %15, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %12, %9
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  store ptr %7, ptr %18, align 8, !tbaa !53
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %22, ptr %7, align 8, !tbaa !78
  br label %23

23:                                               ; preds = %16, %3, %21
  %24 = phi i1 [ true, %21 ], [ false, %3 ], [ false, %16 ]
  ret i1 %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN3pov8expr_newERPNS_14ExprNodeStructEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, i32 %1, i32 %2) #0 {
  %4 = tail call noundef ptr @_ZN3pov10parse_exprEv() #11
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !53
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %9, ptr %4, align 8, !tbaa !78
  %10 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 4
  store i32 10000, ptr %10, align 8, !tbaa !58
  br label %11

11:                                               ; preds = %3, %6
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN3pov8expr_retERPNS_14ExprNodeStructEii(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2) #0 {
  tail call void @_ZN3pov11Unget_TokenEv() #11
  ret i1 false
}

; Function Attrs: optsize
declare void @_ZN3pov11Unget_TokenEv() local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN3pov8expr_errERPNS_14ExprNodeStructEii(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1, i32 %2) #0 {
  %4 = icmp eq i32 %1, 35
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call noundef i32 (ptr, ...) @_ZN3pov13PossibleErrorEPKcz(ptr noundef nonnull @.str.4) #11
  br label %7

7:                                                ; preds = %5, %3
  br label %8

8:                                                ; preds = %7, %15
  %9 = phi i64 [ %16, %15 ], [ 0, %7 ]
  %10 = phi i32 [ %18, %15 ], [ 35, %7 ]
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds [7 x %"struct.pov::ExprParserErrorEntry"], ptr @_ZN3povL23expr_parser_error_tableE, i64 0, i64 %9, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef %14) #11
  br label %15

15:                                               ; preds = %8, %12
  %16 = add nuw nsw i64 %9, 1
  %17 = getelementptr inbounds [7 x %"struct.pov::ExprParserErrorEntry"], ptr @_ZN3povL23expr_parser_error_tableE, i64 0, i64 %16
  %18 = load i32, ptr %17, align 16, !tbaa !88
  %19 = icmp eq i64 %16, 6
  br i1 %19, label %20, label %8, !llvm.loop !89

20:                                               ; preds = %15
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef nonnull @.str.5) #11
  ret i1 false
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov13PossibleErrorEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN3pov30left_subtree_has_variable_exprEPNS_14ExprNodeStructE(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1, %14
  %4 = phi ptr [ %16, %14 ], [ %0, %1 ]
  %5 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 19
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call noundef zeroext i1 @_ZN3pov31right_subtree_has_variable_exprEPNS_14ExprNodeStructE(ptr noundef nonnull %10) #11
  br i1 %13, label %18, label %14

14:                                               ; preds = %8, %12
  %15 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %3, !llvm.loop !90

18:                                               ; preds = %14, %3, %12, %1
  %19 = phi i1 [ false, %1 ], [ false, %14 ], [ true, %3 ], [ true, %12 ]
  ret i1 %19
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov13optimise_callEPNS_14ExprNodeStructE(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !50
  %4 = icmp eq i32 %3, 22
  br i1 %4, label %5, label %120

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %120, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = icmp eq i32 %11, 18
  br i1 %12, label %13, label %120

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6, i32 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !52
  switch i32 %16, label %120 [
    i32 31, label %17
    i32 6, label %21
    i32 44, label %25
    i32 43, label %29
    i32 42, label %33
    i32 1, label %37
    i32 57, label %41
    i32 56, label %45
    i32 58, label %49
    i32 61, label %53
    i32 60, label %57
    i32 59, label %61
    i32 0, label %65
    i32 29, label %69
    i32 7, label %74
    i32 12, label %79
    i32 21, label %83
    i32 3, label %88
    i32 32, label %92
    i32 9, label %96
    i32 22, label %100
    i32 23, label %108
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %19 = load double, ptr %18, align 8, !tbaa !52
  %20 = tail call double @sin(double noundef %19) #13
  br label %116

21:                                               ; preds = %13
  %22 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %23 = load double, ptr %22, align 8, !tbaa !52
  %24 = tail call double @cos(double noundef %23) #13
  br label %116

25:                                               ; preds = %13
  %26 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %27 = load double, ptr %26, align 8, !tbaa !52
  %28 = tail call double @tan(double noundef %27) #13
  br label %116

29:                                               ; preds = %13
  %30 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %31 = load double, ptr %30, align 8, !tbaa !52
  %32 = tail call double @asin(double noundef %31) #13
  br label %116

33:                                               ; preds = %13
  %34 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %35 = load double, ptr %34, align 8, !tbaa !52
  %36 = tail call double @acos(double noundef %35) #13
  br label %116

37:                                               ; preds = %13
  %38 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %39 = load double, ptr %38, align 8, !tbaa !52
  %40 = tail call double @atan(double noundef %39) #13
  br label %116

41:                                               ; preds = %13
  %42 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %43 = load double, ptr %42, align 8, !tbaa !52
  %44 = tail call double @sinh(double noundef %43) #13
  br label %116

45:                                               ; preds = %13
  %46 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %47 = load double, ptr %46, align 8, !tbaa !52
  %48 = tail call double @cosh(double noundef %47) #13
  br label %116

49:                                               ; preds = %13
  %50 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %51 = load double, ptr %50, align 8, !tbaa !52
  %52 = tail call double @tanh(double noundef %51) #13
  br label %116

53:                                               ; preds = %13
  %54 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %55 = load double, ptr %54, align 8, !tbaa !52
  %56 = tail call double @asinh(double noundef %55) #13
  br label %116

57:                                               ; preds = %13
  %58 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %59 = load double, ptr %58, align 8, !tbaa !52
  %60 = tail call double @acosh(double noundef %59) #13
  br label %116

61:                                               ; preds = %13
  %62 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %63 = load double, ptr %62, align 8, !tbaa !52
  %64 = tail call double @atanh(double noundef %63) #13
  br label %116

65:                                               ; preds = %13
  %66 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %67 = load double, ptr %66, align 8, !tbaa !52
  %68 = tail call double @llvm.fabs.f64(double %67)
  br label %116

69:                                               ; preds = %13
  %70 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %71 = load double, ptr %70, align 8, !tbaa !52
  %72 = fmul double %71, 0x400921FB54442D18
  %73 = fdiv double %72, 1.800000e+02
  br label %116

74:                                               ; preds = %13
  %75 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %76 = load double, ptr %75, align 8, !tbaa !52
  %77 = fmul double %76, 1.800000e+02
  %78 = fdiv double %77, 0x400921FB54442D18
  br label %116

79:                                               ; preds = %13
  %80 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %81 = load double, ptr %80, align 8, !tbaa !52
  %82 = tail call double @llvm.floor.f64(double %81)
  br label %116

83:                                               ; preds = %13
  %84 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %85 = load double, ptr %84, align 8, !tbaa !52
  %86 = fptosi double %85 to i32
  %87 = sitofp i32 %86 to double
  br label %116

88:                                               ; preds = %13
  %89 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %90 = load double, ptr %89, align 8, !tbaa !52
  %91 = tail call double @llvm.ceil.f64(double %90)
  br label %116

92:                                               ; preds = %13
  %93 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %94 = load double, ptr %93, align 8, !tbaa !52
  %95 = tail call double @sqrt(double noundef %94) #13
  br label %116

96:                                               ; preds = %13
  %97 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %98 = load double, ptr %97, align 8, !tbaa !52
  %99 = tail call double @exp(double noundef %98) #13
  br label %116

100:                                              ; preds = %13
  %101 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %102 = load double, ptr %101, align 8, !tbaa !52
  %103 = fcmp ogt double %102, 0.000000e+00
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = tail call double @log(double noundef %102) #13
  br label %116

106:                                              ; preds = %100
  %107 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.6) #11
  br label %116

108:                                              ; preds = %13
  %109 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %110 = load double, ptr %109, align 8, !tbaa !52
  %111 = fcmp ogt double %110, 0.000000e+00
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = tail call double @log10(double noundef %110) #13
  br label %116

114:                                              ; preds = %108
  %115 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.7) #11
  br label %116

116:                                              ; preds = %112, %114, %104, %106, %96, %92, %88, %83, %79, %74, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17
  %117 = phi double [ %20, %17 ], [ %24, %21 ], [ %28, %25 ], [ %32, %29 ], [ %36, %33 ], [ %40, %37 ], [ %44, %41 ], [ %48, %45 ], [ %52, %49 ], [ %56, %53 ], [ %60, %57 ], [ %64, %61 ], [ %68, %65 ], [ %73, %69 ], [ %78, %74 ], [ %82, %79 ], [ %87, %83 ], [ %91, %88 ], [ %95, %92 ], [ %99, %96 ], [ 0.000000e+00, %106 ], [ %105, %104 ], [ 0.000000e+00, %114 ], [ %113, %112 ]
  %118 = load ptr, ptr %14, align 8, !tbaa !52
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %118, ptr noundef nonnull @.str, i32 noundef 1302) #11
  store double %117, ptr %14, align 8, !tbaa !52
  store i32 18, ptr %2, align 4, !tbaa !50
  %119 = load ptr, ptr %6, align 8, !tbaa !53
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %119, ptr noundef nonnull @.str, i32 noundef 1305) #11
  store ptr null, ptr %6, align 8, !tbaa !53
  br label %120

120:                                              ; preds = %13, %116, %9, %5, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sinh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cosh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tanh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @asinh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acosh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atanh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN3pov31right_subtree_has_variable_exprEPNS_14ExprNodeStructE(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1, %14
  %4 = phi ptr [ %16, %14 ], [ %0, %1 ]
  %5 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 19
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call noundef zeroext i1 @_ZN3pov31right_subtree_has_variable_exprEPNS_14ExprNodeStructE(ptr noundef nonnull %10) #11
  br i1 %13, label %18, label %14

14:                                               ; preds = %8, %12
  %15 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %3, !llvm.loop !91

18:                                               ; preds = %14, %3, %12, %1
  %19 = phi i1 [ false, %1 ], [ false, %14 ], [ true, %3 ], [ true, %12 ]
  ret i1 %19
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local void @_ZN3pov9dump_exprEP8_IO_FILEPNS_14ExprNodeStructE(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = icmp eq i32 %4, 17
  %6 = select i1 %5, i32 91, i32 40
  %7 = tail call i32 @fputc(i32 %6, ptr %0)
  %8 = tail call i32 @fflush(ptr noundef %0) #11
  br label %15

9:                                                ; preds = %75
  %10 = load i32, ptr %3, align 4, !tbaa !50
  %11 = icmp eq i32 %10, 17
  %12 = select i1 %11, i32 93, i32 41
  %13 = tail call i32 @fputc(i32 %12, ptr %0)
  %14 = tail call i32 @fflush(ptr noundef %0) #11
  ret void

15:                                               ; preds = %2, %75
  %16 = phi ptr [ %77, %75 ], [ %1, %2 ]
  %17 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !50
  switch i32 %18, label %69 [
    i32 18, label %19
    i32 19, label %25
    i32 20, label %29
    i32 21, label %31
    i32 22, label %35
    i32 1, label %39
    i32 2, label %41
    i32 3, label %43
    i32 4, label %45
    i32 5, label %47
    i32 6, label %49
    i32 7, label %51
    i32 8, label %53
    i32 9, label %55
    i32 10, label %57
    i32 11, label %59
    i32 12, label %61
    i32 13, label %63
    i32 14, label %65
    i32 15, label %67
  ]

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %16, i64 0, i32 6
  %21 = load double, ptr %20, align 8, !tbaa !52
  %22 = fptrunc double %21 to float
  %23 = fpext float %22 to double
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, double noundef %23) #11
  br label %69

25:                                               ; preds = %15
  %26 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %16, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = tail call i32 @fputs(ptr %27, ptr %0)
  br label %69

29:                                               ; preds = %15
  %30 = tail call i32 @fputc(i32 46, ptr %0)
  br label %69

31:                                               ; preds = %15
  %32 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %16, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = tail call i32 @fputs(ptr %33, ptr %0)
  br label %69

35:                                               ; preds = %15
  %36 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %16, i64 0, i32 6, i32 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !52
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %37) #11
  br label %69

39:                                               ; preds = %15
  %40 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr %0)
  br label %69

41:                                               ; preds = %15
  %42 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 4, i64 1, ptr %0)
  br label %69

43:                                               ; preds = %15
  %44 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 3, i64 1, ptr %0)
  br label %69

45:                                               ; preds = %15
  %46 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 4, i64 1, ptr %0)
  br label %69

47:                                               ; preds = %15
  %48 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr %0)
  br label %69

49:                                               ; preds = %15
  %50 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 4, i64 1, ptr %0)
  br label %69

51:                                               ; preds = %15
  %52 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 3, i64 1, ptr %0)
  br label %69

53:                                               ; preds = %15
  %54 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 3, i64 1, ptr %0)
  br label %69

55:                                               ; preds = %15
  %56 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %0)
  br label %69

57:                                               ; preds = %15
  %58 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 3, i64 1, ptr %0)
  br label %69

59:                                               ; preds = %15
  %60 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 3, i64 1, ptr %0)
  br label %69

61:                                               ; preds = %15
  %62 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 3, i64 1, ptr %0)
  br label %69

63:                                               ; preds = %15
  %64 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 3, i64 1, ptr %0)
  br label %69

65:                                               ; preds = %15
  %66 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 2, i64 1, ptr %0)
  br label %69

67:                                               ; preds = %15
  %68 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 2, i64 1, ptr %0)
  br label %69

69:                                               ; preds = %15, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %35, %31, %29, %25, %19
  %70 = tail call i32 @fflush(ptr noundef %0) #11
  %71 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %16, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !53
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  tail call void @_ZN3pov9dump_exprEP8_IO_FILEPNS_14ExprNodeStructE(ptr noundef %0, ptr noundef nonnull %72) #11
  br label %75

75:                                               ; preds = %69, %74
  %76 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %16, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !54
  %78 = icmp eq ptr %77, null
  br i1 %78, label %9, label %15, !llvm.loop !92
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{i32 65, i32 64}
!39 = !{!40, !41, i64 4}
!40 = !{!"_ZTSN3pov20ExprParserTableEntryE", !41, i64 0, !41, i64 4, !35, i64 8, !41, i64 16, !41, i64 20}
!41 = !{!"int", !36, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!40, !35, i64 8}
!45 = !{!40, !41, i64 0}
!46 = !{!40, !41, i64 20}
!47 = !{!40, !41, i64 16}
!48 = distinct !{!48, !43}
!49 = distinct !{!49, !43}
!50 = !{!51, !41, i64 36}
!51 = !{!"_ZTSN3pov14ExprNodeStructE", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !41, i64 32, !41, i64 36, !36, i64 40}
!52 = !{!36, !36, i64 0}
!53 = !{!51, !35, i64 8}
!54 = !{!51, !35, i64 24}
!55 = !{!51, !35, i64 16}
!56 = distinct !{!56, !43}
!57 = distinct !{!57, !43}
!58 = !{!51, !41, i64 32}
!59 = distinct !{!59, !43}
!60 = !{!61, !41, i64 4}
!61 = !{!"_ZTSN3pov12Token_StructE", !41, i64 0, !41, i64 4, !62, i64 8, !41, i64 24, !41, i64 28, !35, i64 32, !64, i64 40, !41, i64 48, !41, i64 52, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !65, i64 88}
!62 = !{!"_ZTSN8pov_base11ITextStream7FilePosE", !63, i64 0, !41, i64 8}
!63 = !{!"long", !36, i64 0}
!64 = !{!"double", !36, i64 0}
!65 = !{!"bool", !36, i64 0}
!66 = !{!67, !64, i64 20840}
!67 = !{!"_ZTSN3pov14OPTIONS_STRUCTE", !41, i64 0, !36, i64 4, !36, i64 5, !36, i64 6, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 4112, !36, i64 8208, !36, i64 12304, !36, i64 16400, !68, i64 20496, !68, i64 20500, !41, i64 20504, !41, i64 20508, !64, i64 20512, !65, i64 20520, !64, i64 20528, !41, i64 20536, !36, i64 20544, !41, i64 20744, !41, i64 20748, !41, i64 20752, !64, i64 20760, !64, i64 20768, !41, i64 20776, !41, i64 20780, !64, i64 20784, !64, i64 20792, !41, i64 20800, !65, i64 20804, !63, i64 20808, !41, i64 20816, !41, i64 20820, !41, i64 20824, !69, i64 20832, !64, i64 20920, !63, i64 20928, !64, i64 20936, !64, i64 20944, !64, i64 20952, !64, i64 20960, !64, i64 20968, !63, i64 20976, !41, i64 20984, !63, i64 20992, !41, i64 21000, !41, i64 21004, !41, i64 21008, !41, i64 21012, !41, i64 21016, !41, i64 21020, !64, i64 21024, !64, i64 21032, !64, i64 21040, !41, i64 21048, !41, i64 21052, !35, i64 21056, !35, i64 21064, !41, i64 21072, !65, i64 21076, !64, i64 21080, !64, i64 21088, !41, i64 21096, !41, i64 21100, !65, i64 21104, !71, i64 21108, !41, i64 21112, !36, i64 21116, !36, i64 25212, !36, i64 26772, !36, i64 30868, !41, i64 34964, !41, i64 34968, !63, i64 34976, !41, i64 34984, !41, i64 34988, !41, i64 34992, !72, i64 35000}
!68 = !{!"float", !36, i64 0}
!69 = !{!"_ZTSN3pov8FRAMESEQE", !70, i64 0, !64, i64 8, !41, i64 16, !41, i64 20, !64, i64 24, !41, i64 32, !41, i64 36, !64, i64 40, !41, i64 48, !64, i64 56, !41, i64 64, !64, i64 72, !65, i64 80, !65, i64 81}
!70 = !{!"_ZTSN3pov9FRAMETYPEE", !36, i64 0}
!71 = !{!"_ZTSN3pov15Histogram_TypesE", !36, i64 0}
!72 = !{!"_ZTS9POVMSData", !41, i64 0, !41, i64 4, !36, i64 8}
!73 = !{!61, !64, i64 40}
!74 = !{!61, !41, i64 0}
!75 = !{!61, !35, i64 64}
!76 = !{!64, !64, i64 0}
!77 = distinct !{!77, !43}
!78 = !{!51, !35, i64 0}
!79 = distinct !{!79, !43}
!80 = distinct !{!80, !43}
!81 = distinct !{!81, !43}
!82 = !{!41, !41, i64 0}
!83 = !{!61, !35, i64 32}
!84 = distinct !{!84, !43}
!85 = distinct !{!85, !43}
!86 = !{!87, !35, i64 8}
!87 = !{!"_ZTSN3pov20ExprParserErrorEntryE", !41, i64 0, !35, i64 8}
!88 = !{!87, !41, i64 0}
!89 = distinct !{!89, !43}
!90 = distinct !{!90, !43}
!91 = distinct !{!91, !43}
!92 = distinct !{!92, !43}
