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

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov24FNSyntax_ParseExpressionEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10parse_exprEv()
  tail call void @_ZN3pov13optimise_exprEPNS_14ExprNodeStructE(ptr noundef %1)
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov10parse_exprEv() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  store ptr null, ptr %1, align 8, !tbaa !34
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1)
  %3 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %2, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i32 17, ptr %3, align 4, !tbaa !38
  store ptr %2, ptr %1, align 8, !tbaa !34
  br label %4

4:                                                ; preds = %47, %0
  %5 = phi i32 [ %48, %47 ], [ 18, %0 ]
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %6, i32 1
  br label %8

8:                                                ; preds = %4, %31
  %9 = call noundef i32 @_ZN3pov14expr_get_tokenEv(), !range !41
  %10 = load i32, ptr %7, align 4, !tbaa !42
  %11 = icmp eq i32 %10, %9
  br i1 %11, label %22, label %17

12:                                               ; preds = %17
  %13 = add i64 %18, 1
  %14 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %13, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !42
  %16 = icmp eq i32 %15, %9
  br i1 %16, label %22, label %17, !llvm.loop !44

17:                                               ; preds = %8, %12
  %18 = phi i64 [ %13, %12 ], [ %6, %8 ]
  %19 = lshr i64 137774661632, %18
  %20 = and i64 %19, 1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %12, label %22

22:                                               ; preds = %17, %12, %8
  %23 = phi i64 [ %6, %8 ], [ %18, %17 ], [ %13, %12 ]
  %24 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %23
  %25 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %23, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = load i32, ptr %24, align 8, !tbaa !48
  %28 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %23, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !49
  %30 = call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %27, i32 noundef %29)
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = lshr i64 137102168063, %23
  %33 = and i64 %32, 1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %8, label %35, !llvm.loop !50

35:                                               ; preds = %31
  %36 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %23, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !51
  %38 = icmp slt i32 %37, %27
  %39 = select i1 %38, i32 0, i32 %5
  %40 = sext i32 %39 to i64
  br label %41

41:                                               ; preds = %41, %35
  %42 = phi i64 [ %46, %41 ], [ %40, %35 ]
  %43 = getelementptr inbounds [38 x %"struct.pov::ExprParserTableEntry"], ptr @_ZN3povL17expr_parser_tableE, i64 0, i64 %42
  %44 = load i32, ptr %43, align 8, !tbaa !48
  %45 = icmp eq i32 %44, %37
  %46 = add i64 %42, 1
  br i1 %45, label %47, label %41, !llvm.loop !52

47:                                               ; preds = %41
  %48 = trunc i64 %42 to i32
  br label %4, !llvm.loop !50

49:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov13optimise_exprEPNS_14ExprNodeStructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %294, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !38
  %6 = icmp eq i32 %5, 22
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6, i32 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !53
  %10 = icmp eq i32 %9, 28
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6
  store i32 17, ptr %4, align 4, !tbaa !38
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 980)
  store ptr null, ptr %12, align 8, !tbaa !53
  %14 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %15, i64 0, i32 5
  store i32 16, ptr %18, align 4, !tbaa !38
  %19 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %15, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %20, i64 0, i32 5
  store i32 13, ptr %23, align 4, !tbaa !38
  %24 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %20, i64 0, i32 2
  store ptr %15, ptr %24, align 8, !tbaa !56
  br label %25

25:                                               ; preds = %7, %17, %22, %11, %3
  %26 = load i32, ptr %4, align 4, !tbaa !38
  %27 = icmp slt i32 %26, 17
  br i1 %27, label %28, label %274

28:                                               ; preds = %25
  %29 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = icmp eq ptr %30, null
  br i1 %31, label %79, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %30, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !38
  %35 = icmp eq i32 %34, 14
  br i1 %35, label %36, label %79

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %30, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %55

40:                                               ; preds = %45
  %41 = add nuw nsw i32 %47, 1
  %42 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %49, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !54
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %51, !llvm.loop !57

45:                                               ; preds = %36, %40
  %46 = phi ptr [ %49, %40 ], [ %30, %36 ]
  %47 = phi i32 [ %41, %40 ], [ 0, %36 ]
  %48 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %46, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %40, !llvm.loop !57

51:                                               ; preds = %40, %45
  %52 = phi i32 [ %47, %45 ], [ %41, %40 ]
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br label %55

55:                                               ; preds = %51, %36
  %56 = phi i1 [ true, %36 ], [ %54, %51 ]
  %57 = phi ptr [ %30, %36 ], [ %49, %51 ]
  %58 = phi i1 [ false, %36 ], [ %50, %51 ]
  br i1 %58, label %79, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %57, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !54
  tail call void @_ZN3pov13optimise_exprEPNS_14ExprNodeStructE(ptr noundef %61)
  %62 = load ptr, ptr %60, align 8, !tbaa !54
  %63 = icmp eq ptr %62, null
  br i1 %63, label %79, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %62, i64 0, i32 5
  %66 = load i32, ptr %65, align 4, !tbaa !38
  %67 = icmp eq i32 %66, 18
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  store ptr null, ptr %60, align 8, !tbaa !54
  %69 = load ptr, ptr %29, align 8, !tbaa !55
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @_ZN3pov25FNSyntax_DeleteExpressionEPNS_14ExprNodeStructE(ptr noundef nonnull %69)
  br label %72

72:                                               ; preds = %68, %71
  %73 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %62, i64 0, i32 6
  %74 = load double, ptr %73, align 8, !tbaa !53
  %75 = fneg double %74
  %76 = select i1 %56, double %75, double %74
  %77 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6
  store double %76, ptr %77, align 8, !tbaa !53
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %62, ptr noundef nonnull @.str, i32 noundef 1029)
  store i32 18, ptr %4, align 4, !tbaa !38
  %78 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %78, i8 0, i64 24, i1 false)
  br label %294

79:                                               ; preds = %32, %59, %64, %55, %28
  %80 = phi ptr [ %62, %64 ], [ undef, %59 ], [ undef, %55 ], [ undef, %32 ], [ undef, %28 ]
  %81 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !54
  tail call void @_ZN3pov13optimise_exprEPNS_14ExprNodeStructE(ptr noundef %82)
  %83 = load ptr, ptr %29, align 8, !tbaa !55
  %84 = icmp eq ptr %83, null
  br i1 %84, label %252, label %85

85:                                               ; preds = %79, %246
  %86 = phi ptr [ %250, %246 ], [ %83, %79 ]
  %87 = phi double [ %248, %246 ], [ undef, %79 ]
  %88 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %86, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !56
  %90 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !54
  %92 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %86, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !54
  %94 = icmp ne ptr %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %85
  %96 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %86, i64 0, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !38
  %98 = icmp eq i32 %97, 8
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 5
  %101 = load i32, ptr %100, align 4, !tbaa !38
  %102 = icmp eq i32 %101, 18
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  store i32 7, ptr %96, align 4, !tbaa !38
  %104 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %105 = load double, ptr %104, align 8, !tbaa !53
  %106 = fneg double %105
  store double %106, ptr %104, align 8, !tbaa !53
  br label %107

107:                                              ; preds = %99, %103, %95, %85
  tail call void @_ZN3pov13optimise_exprEPNS_14ExprNodeStructE(ptr noundef %93)
  %108 = icmp ne ptr %91, null
  %109 = and i1 %108, %94
  br i1 %109, label %110, label %246

110:                                              ; preds = %107
  %111 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %86, i64 0, i32 5
  %112 = load i32, ptr %111, align 4, !tbaa !38
  %113 = and i32 %112, -2
  %114 = icmp eq i32 %113, 10
  br i1 %114, label %115, label %130

115:                                              ; preds = %110, %126
  %116 = phi ptr [ %128, %126 ], [ %86, %110 ]
  %117 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %116, i64 0, i32 5
  %118 = load i32, ptr %117, align 4, !tbaa !38
  %119 = icmp eq i32 %118, 19
  br i1 %119, label %246, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %116, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !54
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = tail call noundef zeroext i1 @_ZN3pov31right_subtree_has_variable_exprEPNS_14ExprNodeStructE(ptr noundef nonnull %122)
  br i1 %125, label %246, label %126

126:                                              ; preds = %124, %120
  %127 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %116, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !56
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %115, !llvm.loop !58

130:                                              ; preds = %126, %110
  %131 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 5
  %132 = load i32, ptr %131, align 4, !tbaa !38
  %133 = icmp eq i32 %132, 18
  br i1 %133, label %134, label %246

134:                                              ; preds = %130
  %135 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 5
  %136 = load i32, ptr %135, align 4, !tbaa !38
  %137 = icmp eq i32 %136, 18
  br i1 %137, label %138, label %246

138:                                              ; preds = %134
  switch i32 %112, label %230 [
    i32 1, label %139
    i32 2, label %146
    i32 3, label %153
    i32 4, label %160
    i32 5, label %167
    i32 6, label %174
    i32 7, label %181
    i32 8, label %187
    i32 9, label %193
    i32 10, label %202
    i32 11, label %208
    i32 12, label %214
    i32 13, label %224
  ]

139:                                              ; preds = %138
  %140 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  %141 = load double, ptr %140, align 8, !tbaa !53
  %142 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %143 = load double, ptr %142, align 8, !tbaa !53
  %144 = fcmp oeq double %141, %143
  %145 = uitofp i1 %144 to double
  br label %230

146:                                              ; preds = %138
  %147 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  %148 = load double, ptr %147, align 8, !tbaa !53
  %149 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %150 = load double, ptr %149, align 8, !tbaa !53
  %151 = fcmp une double %148, %150
  %152 = uitofp i1 %151 to double
  br label %230

153:                                              ; preds = %138
  %154 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  %155 = load double, ptr %154, align 8, !tbaa !53
  %156 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %157 = load double, ptr %156, align 8, !tbaa !53
  %158 = fcmp olt double %155, %157
  %159 = uitofp i1 %158 to double
  br label %230

160:                                              ; preds = %138
  %161 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  %162 = load double, ptr %161, align 8, !tbaa !53
  %163 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %164 = load double, ptr %163, align 8, !tbaa !53
  %165 = fcmp ole double %162, %164
  %166 = uitofp i1 %165 to double
  br label %230

167:                                              ; preds = %138
  %168 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  %169 = load double, ptr %168, align 8, !tbaa !53
  %170 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %171 = load double, ptr %170, align 8, !tbaa !53
  %172 = fcmp ogt double %169, %171
  %173 = uitofp i1 %172 to double
  br label %230

174:                                              ; preds = %138
  %175 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  %176 = load double, ptr %175, align 8, !tbaa !53
  %177 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %178 = load double, ptr %177, align 8, !tbaa !53
  %179 = fcmp oge double %176, %178
  %180 = uitofp i1 %179 to double
  br label %230

181:                                              ; preds = %138
  %182 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  %183 = load double, ptr %182, align 8, !tbaa !53
  %184 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %185 = load double, ptr %184, align 8, !tbaa !53
  %186 = fadd double %183, %185
  br label %230

187:                                              ; preds = %138
  %188 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  %189 = load double, ptr %188, align 8, !tbaa !53
  %190 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %191 = load double, ptr %190, align 8, !tbaa !53
  %192 = fsub double %189, %191
  br label %230

193:                                              ; preds = %138
  %194 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  %195 = load double, ptr %194, align 8, !tbaa !53
  %196 = fcmp une double %195, 0.000000e+00
  %197 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %198 = load double, ptr %197, align 8, !tbaa !53
  %199 = fcmp une double %198, 0.000000e+00
  %200 = or i1 %196, %199
  %201 = uitofp i1 %200 to double
  br label %230

202:                                              ; preds = %138
  %203 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  %204 = load double, ptr %203, align 8, !tbaa !53
  %205 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %206 = load double, ptr %205, align 8, !tbaa !53
  %207 = fmul double %204, %206
  br label %230

208:                                              ; preds = %138
  %209 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  %210 = load double, ptr %209, align 8, !tbaa !53
  %211 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %212 = load double, ptr %211, align 8, !tbaa !53
  %213 = fdiv double %210, %212
  br label %230

214:                                              ; preds = %138
  %215 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  %216 = load double, ptr %215, align 8, !tbaa !53
  %217 = fcmp une double %216, 0.000000e+00
  %218 = uitofp i1 %217 to double
  %219 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %220 = load double, ptr %219, align 8, !tbaa !53
  %221 = fcmp une double %220, 0.000000e+00
  %222 = uitofp i1 %221 to double
  %223 = fmul double %218, %222
  br label %230

224:                                              ; preds = %138
  %225 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  %226 = load double, ptr %225, align 8, !tbaa !53
  %227 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %93, i64 0, i32 6
  %228 = load double, ptr %227, align 8, !tbaa !53
  %229 = tail call double @pow(double noundef %226, double noundef %228) #11
  br label %230

230:                                              ; preds = %138, %224, %214, %208, %202, %193, %187, %181, %174, %167, %160, %153, %146, %139
  %231 = phi double [ %229, %224 ], [ %223, %214 ], [ %213, %208 ], [ %207, %202 ], [ %201, %193 ], [ %192, %187 ], [ %186, %181 ], [ %180, %174 ], [ %173, %167 ], [ %166, %160 ], [ %159, %153 ], [ %152, %146 ], [ %145, %139 ], [ %87, %138 ]
  %232 = phi i1 [ true, %224 ], [ true, %214 ], [ true, %208 ], [ true, %202 ], [ true, %193 ], [ true, %187 ], [ true, %181 ], [ true, %174 ], [ true, %167 ], [ true, %160 ], [ true, %153 ], [ true, %146 ], [ true, %139 ], [ false, %138 ]
  br i1 %232, label %233, label %246

233:                                              ; preds = %230
  %234 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %86, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !55
  %236 = load ptr, ptr %88, align 8, !tbaa !56
  %237 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %236, i64 0, i32 3
  store ptr %235, ptr %237, align 8, !tbaa !55
  %238 = load ptr, ptr %234, align 8, !tbaa !55
  %239 = icmp eq ptr %238, null
  br i1 %239, label %242, label %240

240:                                              ; preds = %233
  %241 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %238, i64 0, i32 2
  store ptr %236, ptr %241, align 8, !tbaa !56
  br label %242

242:                                              ; preds = %240, %233
  %243 = load ptr, ptr %88, align 8, !tbaa !56
  %244 = load ptr, ptr %92, align 8, !tbaa !54
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %244, ptr noundef nonnull @.str, i32 noundef 1119)
  store ptr null, ptr %92, align 8, !tbaa !54
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %86, ptr noundef nonnull @.str, i32 noundef 1120)
  %245 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %91, i64 0, i32 6
  store double %231, ptr %245, align 8, !tbaa !53
  br label %246

246:                                              ; preds = %124, %115, %107, %230, %242, %134, %130
  %247 = phi ptr [ %243, %242 ], [ %86, %230 ], [ %86, %134 ], [ %86, %130 ], [ %86, %107 ], [ %86, %115 ], [ %86, %124 ]
  %248 = phi double [ %231, %242 ], [ %231, %230 ], [ %87, %134 ], [ %87, %130 ], [ %87, %107 ], [ %87, %115 ], [ %87, %124 ]
  %249 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %247, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !55
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %85, !llvm.loop !59

252:                                              ; preds = %246, %79
  %253 = phi ptr [ %80, %79 ], [ %91, %246 ]
  %254 = load ptr, ptr %29, align 8, !tbaa !55
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %294

256:                                              ; preds = %252
  %257 = load ptr, ptr %81, align 8, !tbaa !54
  %258 = icmp eq ptr %257, null
  br i1 %258, label %294, label %259

259:                                              ; preds = %256
  %260 = load i32, ptr %4, align 4, !tbaa !38
  %261 = icmp slt i32 %260, 17
  br i1 %261, label %262, label %294

262:                                              ; preds = %259
  %263 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %257, i64 0, i32 5
  %264 = load i32, ptr %263, align 4, !tbaa !38
  %265 = icmp eq i32 %264, 18
  br i1 %265, label %266, label %294

266:                                              ; preds = %262
  %267 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %257, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !55
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %294

270:                                              ; preds = %266
  %271 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %253, i64 0, i32 6
  %272 = load double, ptr %271, align 8, !tbaa !53
  %273 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6
  store double %272, ptr %273, align 8, !tbaa !53
  store i32 18, ptr %4, align 4, !tbaa !38
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %257, ptr noundef nonnull @.str, i32 noundef 1132)
  store ptr null, ptr %81, align 8, !tbaa !54
  br label %294

274:                                              ; preds = %25
  %275 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !54
  tail call void @_ZN3pov13optimise_exprEPNS_14ExprNodeStructE(ptr noundef %276)
  tail call void @_ZN3pov13optimise_callEPNS_14ExprNodeStructE(ptr noundef nonnull %0)
  %277 = load ptr, ptr %275, align 8, !tbaa !54
  %278 = icmp eq ptr %277, null
  br i1 %278, label %294, label %279

279:                                              ; preds = %274
  %280 = load i32, ptr %4, align 4, !tbaa !38
  %281 = icmp slt i32 %280, 17
  br i1 %281, label %282, label %294

282:                                              ; preds = %279
  %283 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %277, i64 0, i32 5
  %284 = load i32, ptr %283, align 4, !tbaa !38
  %285 = icmp eq i32 %284, 18
  br i1 %285, label %286, label %294

286:                                              ; preds = %282
  %287 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %277, i64 0, i32 3
  %288 = load ptr, ptr %287, align 8, !tbaa !55
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %294

290:                                              ; preds = %286
  %291 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %277, i64 0, i32 6
  %292 = load double, ptr %291, align 8, !tbaa !53
  %293 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6
  store double %292, ptr %293, align 8, !tbaa !53
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %277, ptr noundef nonnull @.str, i32 noundef 1148)
  store ptr null, ptr %275, align 8, !tbaa !54
  store i32 18, ptr %4, align 4, !tbaa !38
  br label %294

294:                                              ; preds = %262, %266, %270, %259, %256, %252, %282, %286, %290, %279, %274, %1, %72
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov26FNSyntax_GetTrapExpressionEj(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1)
  %3 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %2, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i32 23, ptr %3, align 4, !tbaa !38
  %4 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %2, i64 0, i32 6
  store i32 %0, ptr %4, align 8, !tbaa !53
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov13new_expr_nodeEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1)
  %4 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %3, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i32 %0, ptr %4, align 8, !tbaa !60
  %5 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %3, i64 0, i32 5
  store i32 %1, ptr %5, align 4, !tbaa !38
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov25FNSyntax_DeleteExpressionEPNS_14ExprNodeStructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %28, %1
  %4 = phi ptr [ null, %1 ], [ %7, %28 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %32

6:                                                ; preds = %1, %28
  %7 = phi ptr [ %30, %28 ], [ %0, %1 ]
  %8 = phi ptr [ %7, %28 ], [ null, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %8, ptr noundef nonnull @.str, i32 noundef 286)
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  tail call void @_ZN3pov25FNSyntax_DeleteExpressionEPNS_14ExprNodeStructE(ptr noundef %13)
  %14 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !38
  switch i32 %15, label %28 [
    i32 19, label %24
    i32 21, label %24
    i32 22, label %16
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6, i32 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !53
  %19 = add i32 %18, -487
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6, i32 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !53
  tail call void @_ZN3pov21POVFPU_RemoveFunctionEj(i32 noundef %23)
  br label %24

24:                                               ; preds = %11, %11, %21, %16
  %25 = phi i32 [ 299, %16 ], [ 299, %21 ], [ 293, %11 ], [ 293, %11 ]
  %26 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %27, ptr noundef nonnull @.str, i32 noundef %25)
  store ptr null, ptr %26, align 8, !tbaa !53
  br label %28

28:                                               ; preds = %24, %11
  %29 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = icmp eq ptr %30, null
  br i1 %31, label %3, label %6, !llvm.loop !61

32:                                               ; preds = %3
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 307)
  br label %33

33:                                               ; preds = %32, %3
  ret void
}

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN3pov21POVFPU_RemoveFunctionEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN3pov14expr_get_tokenEv() local_unnamed_addr #0 {
  tail call void @_ZN3pov9Get_TokenEv()
  %1 = load i32, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 1), align 4, !tbaa !62
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
  %3 = load double, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 35, i32 1), align 8, !tbaa !68
  store double %3, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 6), align 8, !tbaa !75
  br label %20

4:                                                ; preds = %0
  store double 0x400921FB54442D18, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 6), align 8, !tbaa !75
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
  %13 = load i32, ptr @_ZN3pov5TokenE, align 8, !tbaa !76
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  switch i32 %1, label %19 [
    i32 11, label %20
    i32 10, label %16
  ]

16:                                               ; preds = %15
  %17 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 10), align 8, !tbaa !77
  %18 = load double, ptr %17, align 8, !tbaa !78
  store double %18, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 6), align 8, !tbaa !75
  br label %20

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %12, %15, %0, %0, %0, %0, %0, %0, %19, %16, %11, %10, %9, %8, %7, %6, %5, %4, %2
  %21 = phi i32 [ 11, %2 ], [ 11, %4 ], [ %1, %5 ], [ %1, %6 ], [ %1, %7 ], [ %1, %8 ], [ %1, %9 ], [ %1, %10 ], [ %1, %11 ], [ 11, %16 ], [ 487, %19 ], [ 10, %0 ], [ 10, %0 ], [ 10, %0 ], [ 10, %0 ], [ 10, %0 ], [ 10, %0 ], [ %1, %15 ], [ %13, %12 ]
  ret i32 %21
}

declare void @_ZN3pov9Get_TokenEv() local_unnamed_addr #2

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN3pov9expr_noopERPNS_14ExprNodeStructEii(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2) #3 {
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3pov9expr_growERPNS_14ExprNodeStructEii(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %87

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !60
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %10, %21
  %13 = phi ptr [ %11, %10 ], [ %15, %21 ]
  %14 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %15, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !60
  %20 = icmp sgt i32 %19, %1
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  store ptr %15, ptr %0, align 8, !tbaa !34
  %22 = icmp eq i32 %19, %1
  br i1 %22, label %35, label %12, !llvm.loop !79

23:                                               ; preds = %6
  %24 = icmp sgt i32 %8, %1
  br i1 %24, label %25, label %35

25:                                               ; preds = %23
  %26 = load ptr, ptr %0, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %25, %31
  %28 = phi ptr [ %26, %25 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !80
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  store ptr %29, ptr %0, align 8, !tbaa !34
  %32 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %29, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !60
  %34 = icmp sgt i32 %33, %1
  br i1 %34, label %27, label %35, !llvm.loop !81

35:                                               ; preds = %31, %27, %12, %17, %21, %23
  %36 = load ptr, ptr %0, align 8, !tbaa !34
  %37 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %36, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !60
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load ptr, ptr %0, align 8, !tbaa !34
  %42 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40, %45
  %46 = phi ptr [ %48, %45 ], [ %43, %40 ]
  store ptr %46, ptr %0, align 8, !tbaa !34
  %47 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !55
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %45, !llvm.loop !82

50:                                               ; preds = %45, %40
  %51 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1)
  %52 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %51, i64 0, i32 2
  %53 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %51, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %51, i8 0, i64 32, i1 false)
  store i32 %1, ptr %53, align 8, !tbaa !60
  %54 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %51, i64 0, i32 5
  store i32 %2, ptr %54, align 4, !tbaa !38
  %55 = load ptr, ptr %0, align 8, !tbaa !34
  %56 = load ptr, ptr %55, align 8, !tbaa !80
  store ptr %56, ptr %51, align 8, !tbaa !80
  %57 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %57, ptr %52, align 8, !tbaa !56
  %58 = load ptr, ptr %0, align 8, !tbaa !34
  %59 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %58, i64 0, i32 3
  store ptr %51, ptr %59, align 8, !tbaa !55
  store ptr %51, ptr %0, align 8, !tbaa !34
  br label %87

60:                                               ; preds = %35
  %61 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1)
  %62 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %61, i64 0, i32 1
  %63 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %61, i64 0, i32 3
  %64 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %61, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %61, i8 0, i64 32, i1 false)
  store i32 %1, ptr %64, align 8, !tbaa !60
  %65 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %61, i64 0, i32 5
  store i32 16, ptr %65, align 4, !tbaa !38
  %66 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %66, ptr %61, align 8, !tbaa !80
  %67 = load ptr, ptr %0, align 8, !tbaa !34
  %68 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  store ptr %69, ptr %62, align 8, !tbaa !54
  %70 = load ptr, ptr %0, align 8, !tbaa !34
  %71 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %70, i64 0, i32 1
  store ptr %61, ptr %71, align 8, !tbaa !54
  %72 = load ptr, ptr %62, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %82, %60
  %75 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1)
  %76 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %75, i64 0, i32 2
  %77 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %75, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %75, i8 0, i64 32, i1 false)
  store i32 %1, ptr %77, align 8, !tbaa !60
  %78 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %75, i64 0, i32 5
  store i32 %2, ptr %78, align 4, !tbaa !38
  store ptr %75, ptr %0, align 8, !tbaa !34
  store ptr %61, ptr %76, align 8, !tbaa !56
  %79 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %79, ptr %63, align 8, !tbaa !55
  %80 = load ptr, ptr %61, align 8, !tbaa !80
  %81 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %80, ptr %81, align 8, !tbaa !80
  br label %87

82:                                               ; preds = %60, %82
  %83 = phi ptr [ %85, %82 ], [ %72, %60 ]
  store ptr %61, ptr %83, align 8, !tbaa !80
  %84 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %83, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !34
  %86 = icmp eq ptr %85, null
  br i1 %86, label %74, label %82, !llvm.loop !83

87:                                               ; preds = %50, %74, %3
  ret i1 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3pov9expr_callERPNS_14ExprNodeStructEii(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %57

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1)
  %8 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  store i32 %1, ptr %8, align 8, !tbaa !60
  %9 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 5
  store i32 %2, ptr %9, align 4, !tbaa !38
  %10 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 10), align 8, !tbaa !77
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = load i32, ptr %10, align 4, !tbaa !84
  %14 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6, i32 0, i32 2
  store i32 %13, ptr %14, align 4, !tbaa !53
  %15 = tail call noundef ptr @_ZN3pov30POVFPU_GetFunctionAndReferenceEj(i32 noundef %13)
  br label %18

16:                                               ; preds = %6
  %17 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6, i32 0, i32 2
  store i32 0, ptr %17, align 4, !tbaa !53
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 1), align 4, !tbaa !62
  %20 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %21 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6, i32 0, i32 1
  store i32 %19, ptr %21, align 8, !tbaa !53
  %22 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 5), align 8, !tbaa !85
  %23 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef %22)
  store ptr %23, ptr %20, align 8, !tbaa !53
  %24 = load ptr, ptr %0, align 8, !tbaa !34
  %25 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %18, %28
  %29 = phi ptr [ %31, %28 ], [ %26, %18 ]
  store ptr %29, ptr %0, align 8, !tbaa !34
  %30 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %28, !llvm.loop !86

33:                                               ; preds = %28, %18
  %34 = phi ptr [ %24, %18 ], [ %29, %28 ]
  %35 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %34, i64 0, i32 1
  store ptr %7, ptr %35, align 8, !tbaa !54
  %36 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %36, ptr %7, align 8, !tbaa !80
  store ptr %7, ptr %0, align 8, !tbaa !34
  %37 = tail call noundef i32 @_ZN3pov14expr_get_tokenEv(), !range !41
  %38 = icmp eq i32 %37, 173
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef nonnull @.str.2)
  br label %40

40:                                               ; preds = %39, %33
  %41 = tail call noundef ptr @_ZN3pov10parse_exprEv()
  %42 = load ptr, ptr %0, align 8, !tbaa !34
  %43 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %42, i64 0, i32 1
  store ptr %41, ptr %43, align 8, !tbaa !54
  %44 = tail call noundef i32 @_ZN3pov14expr_get_tokenEv(), !range !41
  %45 = icmp eq i32 %44, 126
  br i1 %45, label %46, label %53

46:                                               ; preds = %40, %46
  %47 = phi ptr [ %48, %46 ], [ %41, %40 ]
  %48 = tail call noundef ptr @_ZN3pov10parse_exprEv()
  %49 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %47, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !55
  %50 = load ptr, ptr %47, align 8, !tbaa !80
  store ptr %50, ptr %48, align 8, !tbaa !80
  %51 = tail call noundef i32 @_ZN3pov14expr_get_tokenEv(), !range !41
  %52 = icmp eq i32 %51, 126
  br i1 %52, label %46, label %53, !llvm.loop !87

53:                                               ; preds = %46, %40
  %54 = load i32, ptr @_ZN3pov5TokenE, align 8, !tbaa !76
  %55 = icmp eq i32 %54, 219
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef nonnull @.str.3)
  br label %57

57:                                               ; preds = %53, %56, %3
  ret i1 %5
}

declare noundef ptr @_ZN3pov30POVFPU_GetFunctionAndReferenceEj(i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef) local_unnamed_addr #2

declare void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3pov8expr_putERPNS_14ExprNodeStructEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1)
  %8 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  store i32 %1, ptr %8, align 8, !tbaa !60
  %9 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 5
  store i32 %2, ptr %9, align 4, !tbaa !38
  %10 = icmp eq i32 %2, 18
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load double, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 6), align 8, !tbaa !75
  %13 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  store double %12, ptr %13, align 8, !tbaa !53
  br label %18

14:                                               ; preds = %6
  %15 = load ptr, ptr getelementptr inbounds (%"struct.pov::Token_Struct", ptr @_ZN3pov5TokenE, i64 0, i32 5), align 8, !tbaa !85
  %16 = tail call noundef ptr @_ZN3pov10pov_strdupEPKc(ptr noundef %15)
  %17 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  store ptr %16, ptr %17, align 8, !tbaa !53
  br label %18

18:                                               ; preds = %14, %11
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  %20 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  store ptr %7, ptr %20, align 8, !tbaa !54
  %24 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %24, ptr %7, align 8, !tbaa !80
  br label %25

25:                                               ; preds = %18, %3, %23
  %26 = phi i1 [ true, %23 ], [ false, %3 ], [ false, %18 ]
  ret i1 %26
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3pov8expr_newERPNS_14ExprNodeStructEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, i32 %1, i32 %2) #0 {
  %4 = tail call noundef ptr @_ZN3pov10parse_exprEv()
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !54
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %9, ptr %4, align 8, !tbaa !80
  %10 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %4, i64 0, i32 4
  store i32 10000, ptr %10, align 8, !tbaa !60
  br label %11

11:                                               ; preds = %3, %6
  ret i1 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3pov8expr_retERPNS_14ExprNodeStructEii(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2) #0 {
  tail call void @_ZN3pov11Unget_TokenEv()
  ret i1 false
}

declare void @_ZN3pov11Unget_TokenEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3pov8expr_errERPNS_14ExprNodeStructEii(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1, i32 %2) #0 {
  %4 = icmp eq i32 %1, 35
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call noundef i32 (ptr, ...) @_ZN3pov13PossibleErrorEPKcz(ptr noundef nonnull @.str.4)
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
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef %14)
  br label %15

15:                                               ; preds = %8, %12
  %16 = add nuw nsw i64 %9, 1
  %17 = getelementptr inbounds [7 x %"struct.pov::ExprParserErrorEntry"], ptr @_ZN3povL23expr_parser_error_tableE, i64 0, i64 %16
  %18 = load i32, ptr %17, align 16, !tbaa !90
  %19 = icmp eq i64 %16, 6
  br i1 %19, label %20, label %8, !llvm.loop !91

20:                                               ; preds = %15
  tail call void @_ZN3pov17Expectation_ErrorEPKc(ptr noundef nonnull @.str.5)
  ret i1 false
}

declare noundef i32 @_ZN3pov13PossibleErrorEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN3pov30left_subtree_has_variable_exprEPNS_14ExprNodeStructE(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !38
  %6 = icmp eq i32 %5, 19
  br i1 %6, label %23, label %11

7:                                                ; preds = %19
  %8 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %21, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !38
  %10 = icmp eq i32 %9, 19
  br i1 %10, label %23, label %11, !llvm.loop !58

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %21, %7 ], [ %0, %3 ]
  %13 = phi i1 [ %22, %7 ], [ true, %3 ]
  %14 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call noundef zeroext i1 @_ZN3pov31right_subtree_has_variable_exprEPNS_14ExprNodeStructE(ptr noundef nonnull %15)
  br i1 %18, label %23, label %19

19:                                               ; preds = %11, %17
  %20 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %12, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = icmp ne ptr %21, null
  br i1 %22, label %7, label %23, !llvm.loop !58

23:                                               ; preds = %17, %7, %19, %3, %1
  %24 = phi i1 [ false, %1 ], [ true, %3 ], [ %22, %19 ], [ %22, %7 ], [ %13, %17 ]
  ret i1 %24
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov13optimise_callEPNS_14ExprNodeStructE(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !38
  %4 = icmp eq i32 %3, 22
  br i1 %4, label %5, label %122

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %122, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !38
  %12 = icmp eq i32 %11, 18
  br i1 %12, label %13, label %122

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 6, i32 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !53
  switch i32 %16, label %116 [
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
  %19 = load double, ptr %18, align 8, !tbaa !53
  %20 = tail call double @sin(double noundef %19) #11
  br label %116

21:                                               ; preds = %13
  %22 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %23 = load double, ptr %22, align 8, !tbaa !53
  %24 = tail call double @cos(double noundef %23) #11
  br label %116

25:                                               ; preds = %13
  %26 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %27 = load double, ptr %26, align 8, !tbaa !53
  %28 = tail call double @tan(double noundef %27) #11
  br label %116

29:                                               ; preds = %13
  %30 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %31 = load double, ptr %30, align 8, !tbaa !53
  %32 = tail call double @asin(double noundef %31) #11
  br label %116

33:                                               ; preds = %13
  %34 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %35 = load double, ptr %34, align 8, !tbaa !53
  %36 = tail call double @acos(double noundef %35) #11
  br label %116

37:                                               ; preds = %13
  %38 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %39 = load double, ptr %38, align 8, !tbaa !53
  %40 = tail call double @atan(double noundef %39) #11
  br label %116

41:                                               ; preds = %13
  %42 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %43 = load double, ptr %42, align 8, !tbaa !53
  %44 = tail call double @sinh(double noundef %43) #11
  br label %116

45:                                               ; preds = %13
  %46 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %47 = load double, ptr %46, align 8, !tbaa !53
  %48 = tail call double @cosh(double noundef %47) #11
  br label %116

49:                                               ; preds = %13
  %50 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %51 = load double, ptr %50, align 8, !tbaa !53
  %52 = tail call double @tanh(double noundef %51) #11
  br label %116

53:                                               ; preds = %13
  %54 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %55 = load double, ptr %54, align 8, !tbaa !53
  %56 = tail call double @asinh(double noundef %55) #11
  br label %116

57:                                               ; preds = %13
  %58 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %59 = load double, ptr %58, align 8, !tbaa !53
  %60 = tail call double @acosh(double noundef %59) #11
  br label %116

61:                                               ; preds = %13
  %62 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %63 = load double, ptr %62, align 8, !tbaa !53
  %64 = tail call double @atanh(double noundef %63) #11
  br label %116

65:                                               ; preds = %13
  %66 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %67 = load double, ptr %66, align 8, !tbaa !53
  %68 = tail call double @llvm.fabs.f64(double %67)
  br label %116

69:                                               ; preds = %13
  %70 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %71 = load double, ptr %70, align 8, !tbaa !53
  %72 = fmul double %71, 0x400921FB54442D18
  %73 = fdiv double %72, 1.800000e+02
  br label %116

74:                                               ; preds = %13
  %75 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %76 = load double, ptr %75, align 8, !tbaa !53
  %77 = fmul double %76, 1.800000e+02
  %78 = fdiv double %77, 0x400921FB54442D18
  br label %116

79:                                               ; preds = %13
  %80 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %81 = load double, ptr %80, align 8, !tbaa !53
  %82 = tail call double @llvm.floor.f64(double %81)
  br label %116

83:                                               ; preds = %13
  %84 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %85 = load double, ptr %84, align 8, !tbaa !53
  %86 = fptosi double %85 to i32
  %87 = sitofp i32 %86 to double
  br label %116

88:                                               ; preds = %13
  %89 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %90 = load double, ptr %89, align 8, !tbaa !53
  %91 = tail call double @llvm.ceil.f64(double %90)
  br label %116

92:                                               ; preds = %13
  %93 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %94 = load double, ptr %93, align 8, !tbaa !53
  %95 = tail call double @sqrt(double noundef %94) #11
  br label %116

96:                                               ; preds = %13
  %97 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %98 = load double, ptr %97, align 8, !tbaa !53
  %99 = tail call double @exp(double noundef %98) #11
  br label %116

100:                                              ; preds = %13
  %101 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %102 = load double, ptr %101, align 8, !tbaa !53
  %103 = fcmp ogt double %102, 0.000000e+00
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = tail call double @log(double noundef %102) #11
  br label %116

106:                                              ; preds = %100
  %107 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.6)
  br label %116

108:                                              ; preds = %13
  %109 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %7, i64 0, i32 6
  %110 = load double, ptr %109, align 8, !tbaa !53
  %111 = fcmp ogt double %110, 0.000000e+00
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = tail call double @log10(double noundef %110) #11
  br label %116

114:                                              ; preds = %108
  %115 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.7)
  br label %116

116:                                              ; preds = %13, %112, %114, %104, %106, %96, %92, %88, %83, %79, %74, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17
  %117 = phi double [ %113, %112 ], [ 0.000000e+00, %114 ], [ %105, %104 ], [ 0.000000e+00, %106 ], [ %99, %96 ], [ %95, %92 ], [ %91, %88 ], [ %87, %83 ], [ %82, %79 ], [ %78, %74 ], [ %73, %69 ], [ %68, %65 ], [ %64, %61 ], [ %60, %57 ], [ %56, %53 ], [ %52, %49 ], [ %48, %45 ], [ %44, %41 ], [ %40, %37 ], [ %36, %33 ], [ %32, %29 ], [ %28, %25 ], [ %24, %21 ], [ %20, %17 ], [ 0.000000e+00, %13 ]
  %118 = phi i1 [ true, %112 ], [ true, %114 ], [ true, %104 ], [ true, %106 ], [ true, %96 ], [ true, %92 ], [ true, %88 ], [ true, %83 ], [ true, %79 ], [ true, %74 ], [ true, %69 ], [ true, %65 ], [ true, %61 ], [ true, %57 ], [ true, %53 ], [ true, %49 ], [ true, %45 ], [ true, %41 ], [ true, %37 ], [ true, %33 ], [ true, %29 ], [ true, %25 ], [ true, %21 ], [ true, %17 ], [ false, %13 ]
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load ptr, ptr %14, align 8, !tbaa !53
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %120, ptr noundef nonnull @.str, i32 noundef 1302)
  store ptr null, ptr %14, align 8, !tbaa !53
  store double %117, ptr %14, align 8, !tbaa !53
  store i32 18, ptr %2, align 4, !tbaa !38
  %121 = load ptr, ptr %6, align 8, !tbaa !54
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %121, ptr noundef nonnull @.str, i32 noundef 1305)
  store ptr null, ptr %6, align 8, !tbaa !54
  br label %122

122:                                              ; preds = %116, %119, %9, %5, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sinh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cosh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tanh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @asinh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acosh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atanh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #5

declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN3pov31right_subtree_has_variable_exprEPNS_14ExprNodeStructE(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !38
  %6 = icmp eq i32 %5, 19
  br i1 %6, label %23, label %11

7:                                                ; preds = %19
  %8 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %21, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !38
  %10 = icmp eq i32 %9, 19
  br i1 %10, label %23, label %11, !llvm.loop !92

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %21, %7 ], [ %0, %3 ]
  %13 = phi i1 [ %22, %7 ], [ true, %3 ]
  %14 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call noundef zeroext i1 @_ZN3pov31right_subtree_has_variable_exprEPNS_14ExprNodeStructE(ptr noundef nonnull %15)
  br i1 %18, label %23, label %19

19:                                               ; preds = %11, %17
  %20 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %12, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = icmp ne ptr %21, null
  br i1 %22, label %7, label %23, !llvm.loop !92

23:                                               ; preds = %17, %7, %19, %3, %1
  %24 = phi i1 [ false, %1 ], [ true, %3 ], [ %22, %19 ], [ %22, %7 ], [ %13, %17 ]
  ret i1 %24
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN3pov9dump_exprEP8_IO_FILEPNS_14ExprNodeStructE(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !38
  %5 = icmp eq i32 %4, 17
  %6 = select i1 %5, i32 91, i32 40
  %7 = tail call i32 @fputc(i32 %6, ptr %0)
  %8 = tail call i32 @fflush(ptr noundef %0)
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %76, %2
  %11 = load i32, ptr %3, align 4, !tbaa !38
  %12 = icmp eq i32 %11, 17
  %13 = select i1 %12, i32 93, i32 41
  %14 = tail call i32 @fputc(i32 %13, ptr %0)
  %15 = tail call i32 @fflush(ptr noundef %0)
  ret void

16:                                               ; preds = %2, %76
  %17 = phi ptr [ %78, %76 ], [ %1, %2 ]
  %18 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !38
  switch i32 %19, label %70 [
    i32 18, label %20
    i32 19, label %26
    i32 20, label %30
    i32 21, label %32
    i32 22, label %36
    i32 1, label %40
    i32 2, label %42
    i32 3, label %44
    i32 4, label %46
    i32 5, label %48
    i32 6, label %50
    i32 7, label %52
    i32 8, label %54
    i32 9, label %56
    i32 10, label %58
    i32 11, label %60
    i32 12, label %62
    i32 13, label %64
    i32 14, label %66
    i32 15, label %68
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 6
  %22 = load double, ptr %21, align 8, !tbaa !53
  %23 = fptrunc double %22 to float
  %24 = fpext float %23 to double
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, double noundef %24)
  br label %70

26:                                               ; preds = %16
  %27 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = tail call i32 @fputs(ptr %28, ptr %0)
  br label %70

30:                                               ; preds = %16
  %31 = tail call i32 @fputc(i32 46, ptr %0)
  br label %70

32:                                               ; preds = %16
  %33 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  %35 = tail call i32 @fputs(ptr %34, ptr %0)
  br label %70

36:                                               ; preds = %16
  %37 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 6, i32 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !53
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %38)
  br label %70

40:                                               ; preds = %16
  %41 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr %0)
  br label %70

42:                                               ; preds = %16
  %43 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 4, i64 1, ptr %0)
  br label %70

44:                                               ; preds = %16
  %45 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 3, i64 1, ptr %0)
  br label %70

46:                                               ; preds = %16
  %47 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 4, i64 1, ptr %0)
  br label %70

48:                                               ; preds = %16
  %49 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr %0)
  br label %70

50:                                               ; preds = %16
  %51 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 4, i64 1, ptr %0)
  br label %70

52:                                               ; preds = %16
  %53 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 3, i64 1, ptr %0)
  br label %70

54:                                               ; preds = %16
  %55 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 3, i64 1, ptr %0)
  br label %70

56:                                               ; preds = %16
  %57 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %0)
  br label %70

58:                                               ; preds = %16
  %59 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 3, i64 1, ptr %0)
  br label %70

60:                                               ; preds = %16
  %61 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 3, i64 1, ptr %0)
  br label %70

62:                                               ; preds = %16
  %63 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 3, i64 1, ptr %0)
  br label %70

64:                                               ; preds = %16
  %65 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 3, i64 1, ptr %0)
  br label %70

66:                                               ; preds = %16
  %67 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 2, i64 1, ptr %0)
  br label %70

68:                                               ; preds = %16
  %69 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 2, i64 1, ptr %0)
  br label %70

70:                                               ; preds = %16, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %36, %32, %30, %26, %20
  %71 = tail call i32 @fflush(ptr noundef %0)
  %72 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !54
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  tail call void @_ZN3pov9dump_exprEP8_IO_FILEPNS_14ExprNodeStructE(ptr noundef %0, ptr noundef nonnull %73)
  br label %76

76:                                               ; preds = %70, %75
  %77 = getelementptr inbounds %"struct.pov::ExprNodeStruct", ptr %17, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !55
  %79 = icmp eq ptr %78, null
  br i1 %79, label %10, label %16, !llvm.loop !93
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !40, i64 36}
!39 = !{!"_ZTSN3pov14ExprNodeStructE", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !36, i64 40}
!40 = !{!"int", !36, i64 0}
!41 = !{i32 65, i32 64}
!42 = !{!43, !40, i64 4}
!43 = !{!"_ZTSN3pov20ExprParserTableEntryE", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16, !40, i64 20}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!43, !35, i64 8}
!48 = !{!43, !40, i64 0}
!49 = !{!43, !40, i64 20}
!50 = distinct !{!50, !45, !46}
!51 = !{!43, !40, i64 16}
!52 = distinct !{!52, !45, !46}
!53 = !{!36, !36, i64 0}
!54 = !{!39, !35, i64 8}
!55 = !{!39, !35, i64 24}
!56 = !{!39, !35, i64 16}
!57 = distinct !{!57, !45, !46}
!58 = distinct !{!58, !45, !46}
!59 = distinct !{!59, !45, !46}
!60 = !{!39, !40, i64 32}
!61 = distinct !{!61, !45, !46}
!62 = !{!63, !40, i64 4}
!63 = !{!"_ZTSN3pov12Token_StructE", !40, i64 0, !40, i64 4, !64, i64 8, !40, i64 24, !40, i64 28, !35, i64 32, !66, i64 40, !40, i64 48, !40, i64 52, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !67, i64 88}
!64 = !{!"_ZTSN8pov_base11ITextStream7FilePosE", !65, i64 0, !40, i64 8}
!65 = !{!"long", !36, i64 0}
!66 = !{!"double", !36, i64 0}
!67 = !{!"bool", !36, i64 0}
!68 = !{!69, !66, i64 20840}
!69 = !{!"_ZTSN3pov14OPTIONS_STRUCTE", !40, i64 0, !36, i64 4, !36, i64 5, !36, i64 6, !40, i64 8, !40, i64 12, !36, i64 16, !36, i64 4112, !36, i64 8208, !36, i64 12304, !36, i64 16400, !70, i64 20496, !70, i64 20500, !40, i64 20504, !40, i64 20508, !66, i64 20512, !67, i64 20520, !66, i64 20528, !40, i64 20536, !36, i64 20544, !40, i64 20744, !40, i64 20748, !40, i64 20752, !66, i64 20760, !66, i64 20768, !40, i64 20776, !40, i64 20780, !66, i64 20784, !66, i64 20792, !40, i64 20800, !67, i64 20804, !65, i64 20808, !40, i64 20816, !40, i64 20820, !40, i64 20824, !71, i64 20832, !66, i64 20920, !65, i64 20928, !66, i64 20936, !66, i64 20944, !66, i64 20952, !66, i64 20960, !66, i64 20968, !65, i64 20976, !40, i64 20984, !65, i64 20992, !40, i64 21000, !40, i64 21004, !40, i64 21008, !40, i64 21012, !40, i64 21016, !40, i64 21020, !66, i64 21024, !66, i64 21032, !66, i64 21040, !40, i64 21048, !40, i64 21052, !35, i64 21056, !35, i64 21064, !40, i64 21072, !67, i64 21076, !66, i64 21080, !66, i64 21088, !40, i64 21096, !40, i64 21100, !67, i64 21104, !73, i64 21108, !40, i64 21112, !36, i64 21116, !36, i64 25212, !36, i64 26772, !36, i64 30868, !40, i64 34964, !40, i64 34968, !65, i64 34976, !40, i64 34984, !40, i64 34988, !40, i64 34992, !74, i64 35000}
!70 = !{!"float", !36, i64 0}
!71 = !{!"_ZTSN3pov8FRAMESEQE", !72, i64 0, !66, i64 8, !40, i64 16, !40, i64 20, !66, i64 24, !40, i64 32, !40, i64 36, !66, i64 40, !40, i64 48, !66, i64 56, !40, i64 64, !66, i64 72, !67, i64 80, !67, i64 81}
!72 = !{!"_ZTSN3pov9FRAMETYPEE", !36, i64 0}
!73 = !{!"_ZTSN3pov15Histogram_TypesE", !36, i64 0}
!74 = !{!"_ZTS9POVMSData", !40, i64 0, !40, i64 4, !36, i64 8}
!75 = !{!63, !66, i64 40}
!76 = !{!63, !40, i64 0}
!77 = !{!63, !35, i64 64}
!78 = !{!66, !66, i64 0}
!79 = distinct !{!79, !45, !46}
!80 = !{!39, !35, i64 0}
!81 = distinct !{!81, !45, !46}
!82 = distinct !{!82, !45, !46}
!83 = distinct !{!83, !45, !46}
!84 = !{!40, !40, i64 0}
!85 = !{!63, !35, i64 32}
!86 = distinct !{!86, !45, !46}
!87 = distinct !{!87, !45, !46}
!88 = !{!89, !35, i64 8}
!89 = !{!"_ZTSN3pov20ExprParserErrorEntryE", !40, i64 0, !35, i64 8}
!90 = !{!89, !40, i64 0}
!91 = distinct !{!91, !45, !46}
!92 = distinct !{!92, !45, !46}
!93 = distinct !{!93, !45, !46}
