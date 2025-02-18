; ModuleID = 'blender/source/blender/editors/interface/interface_utils.c'
source_filename = "blender/source/blender/editors/interface/interface_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.uiButStore = type { ptr, ptr, ptr, %struct.ListBase }
%struct.uiBlock = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, [128 x i8], [4 x [4 x float]], %struct.rctf, float, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, [7 x i8], double, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.rctf, %struct.ListBase, ptr, ptr, ptr, ptr, [3 x float], i8, [64 x i8], %struct.PieMenuData }
%struct.rctf = type { float, float, float, float }
%struct.PieMenuData = type { [2 x float], [2 x float], [2 x float], [2 x float], double, i32, i32, float }
%struct.uiButStoreElem = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"%d items\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@uiFloatPrecisionCalc.pow10_neg = internal unnamed_addr constant [8 x double] [double 1.000000e+00, double 1.000000e-01, double 1.000000e-02, double 1.000000e-03, double 1.000000e-04, double 1.000000e-05, double 0x3EB0C6F7A0B5ED8D, double 0x3E7AD7F29ABCAF48], align 16
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.UI_butstore_create = private unnamed_addr constant [19 x i8] c"UI_butstore_create\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.UI_butstore_register = private unnamed_addr constant [21 x i8] c"UI_butstore_register\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @uiDefAutoButR(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca %struct.PointerRNA, align 8
  %12 = alloca [256 x i8], align 16
  %13 = tail call i32 @RNA_property_type(ptr noundef %2) #12
  switch i32 %13, label %121 [
    i32 0, label %14
    i32 1, label %37
    i32 2, label %37
    i32 4, label %65
    i32 3, label %83
    i32 5, label %101
    i32 6, label %115
  ]

14:                                               ; preds = %10
  %15 = tail call i32 @RNA_property_array_length(ptr noundef %1, ptr noundef %2) #12
  %16 = icmp eq i32 %15, 0
  %17 = icmp ne i32 %3, -1
  %18 = or i1 %17, %16
  br i1 %18, label %19, label %121

19:                                               ; preds = %14
  %20 = icmp ne i32 %5, 0
  %21 = icmp ne ptr %4, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i8, ptr %4, align 1, !tbaa !34
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = trunc i32 %8 to i16
  %28 = trunc i32 %9 to i16
  %29 = tail call ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %27, i16 noundef signext %28, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #12
  br label %121

30:                                               ; preds = %23, %19
  %31 = trunc i32 %8 to i16
  %32 = trunc i32 %9 to i16
  br i1 %20, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call ptr @uiDefIconTextButR_prop(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef %5, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %31, i16 noundef signext %32, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #12
  br label %121

35:                                               ; preds = %30
  %36 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 19456, i32 noundef 0, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %31, i16 noundef signext %32, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #12
  br label %121

37:                                               ; preds = %10, %10
  %38 = tail call i32 @RNA_property_array_length(ptr noundef %1, ptr noundef %2) #12
  %39 = icmp ne i32 %38, 0
  %40 = icmp eq i32 %3, -1
  %41 = and i1 %40, %39
  %42 = tail call i32 @RNA_property_subtype(ptr noundef %2) #12
  br i1 %41, label %43, label %52

43:                                               ; preds = %37
  %44 = icmp eq i32 %42, 20
  br i1 %44, label %48, label %45

45:                                               ; preds = %43
  %46 = tail call i32 @RNA_property_subtype(ptr noundef %2) #12
  %47 = icmp eq i32 %46, 30
  br i1 %47, label %48, label %121

48:                                               ; preds = %45, %43
  %49 = trunc i32 %8 to i16
  %50 = trunc i32 %9 to i16
  %51 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 7680, i32 noundef 0, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %49, i16 noundef signext %50, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #12
  br label %121

52:                                               ; preds = %37
  %53 = icmp eq i32 %42, 14
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  %55 = tail call i32 @RNA_property_subtype(ptr noundef %2) #12
  %56 = icmp eq i32 %55, 15
  br i1 %56, label %57, label %61

57:                                               ; preds = %54, %52
  %58 = trunc i32 %8 to i16
  %59 = trunc i32 %9 to i16
  %60 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 7168, i32 noundef 0, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %58, i16 noundef signext %59, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #12
  br label %121

61:                                               ; preds = %54
  %62 = trunc i32 %8 to i16
  %63 = trunc i32 %9 to i16
  %64 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 2560, i32 noundef 0, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %62, i16 noundef signext %63, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #12
  br label %121

65:                                               ; preds = %10
  %66 = icmp ne i32 %5, 0
  %67 = icmp ne ptr %4, null
  %68 = and i1 %67, %66
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i8, ptr %4, align 1, !tbaa !34
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = trunc i32 %8 to i16
  %74 = trunc i32 %9 to i16
  %75 = tail call ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef 5632, i32 noundef 0, i32 noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %73, i16 noundef signext %74, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #12
  br label %121

76:                                               ; preds = %69, %65
  %77 = trunc i32 %8 to i16
  %78 = trunc i32 %9 to i16
  br i1 %66, label %79, label %81

79:                                               ; preds = %76
  %80 = tail call ptr @uiDefIconTextButR_prop(ptr noundef %0, i32 noundef 5632, i32 noundef 0, i32 noundef %5, ptr noundef null, i32 noundef %6, i32 noundef %7, i16 noundef signext %77, i16 noundef signext %78, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #12
  br label %121

81:                                               ; preds = %76
  %82 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 5632, i32 noundef 0, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %77, i16 noundef signext %78, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #12
  br label %121

83:                                               ; preds = %10
  %84 = icmp ne i32 %5, 0
  %85 = icmp ne ptr %4, null
  %86 = and i1 %85, %84
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i8, ptr %4, align 1, !tbaa !34
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = trunc i32 %8 to i16
  %92 = trunc i32 %9 to i16
  %93 = tail call ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef 3072, i32 noundef 0, i32 noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %91, i16 noundef signext %92, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #12
  br label %121

94:                                               ; preds = %87, %83
  %95 = trunc i32 %8 to i16
  %96 = trunc i32 %9 to i16
  br i1 %84, label %97, label %99

97:                                               ; preds = %94
  %98 = tail call ptr @uiDefIconTextButR_prop(ptr noundef %0, i32 noundef 3072, i32 noundef 0, i32 noundef %5, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %95, i16 noundef signext %96, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #12
  br label %121

99:                                               ; preds = %94
  %100 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 3072, i32 noundef 0, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %95, i16 noundef signext %96, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #12
  br label %121

101:                                              ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #12
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %11, ptr noundef %1, ptr noundef %2) #12
  %102 = getelementptr inbounds i8, ptr %11, i64 8
  %103 = load ptr, ptr %102, align 8, !tbaa.struct !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #12
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call ptr @RNA_property_pointer_type(ptr noundef %1, ptr noundef %2) #12
  br label %107

107:                                              ; preds = %105, %101
  %108 = phi ptr [ %103, %101 ], [ %106, %105 ]
  %109 = call i32 @RNA_struct_ui_icon(ptr noundef %108) #12
  %110 = icmp eq i32 %109, 17
  %111 = select i1 %110, i32 0, i32 %109
  %112 = trunc i32 %8 to i16
  %113 = trunc i32 %9 to i16
  %114 = call ptr @uiDefIconTextButR_prop(ptr noundef %0, i32 noundef 20992, i32 noundef 0, i32 noundef %111, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %112, i16 noundef signext %113, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #12
  br label %121

115:                                              ; preds = %10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %12) #12
  %116 = tail call i32 @RNA_property_collection_length(ptr noundef %1, ptr noundef %2) #12
  %117 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %12, i64 noundef 256, ptr noundef nonnull @.str, i32 noundef %116) #12
  %118 = trunc i32 %8 to i16
  %119 = trunc i32 %9 to i16
  %120 = call ptr @uiDefBut(ptr noundef %0, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %7, i16 noundef signext %118, i16 noundef signext %119, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #12
  call void @uiButSetFlag(ptr noundef %120, i32 noundef 2048) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %12) #12
  br label %121

121:                                              ; preds = %14, %33, %35, %26, %107, %115, %79, %81, %72, %97, %99, %90, %57, %61, %45, %48, %10
  %122 = phi ptr [ %120, %115 ], [ %114, %107 ], [ %93, %90 ], [ %98, %97 ], [ %100, %99 ], [ %75, %72 ], [ %80, %79 ], [ %82, %81 ], [ %51, %48 ], [ null, %45 ], [ %60, %57 ], [ %64, %61 ], [ null, %10 ], [ null, %14 ], [ %29, %26 ], [ %34, %33 ], [ %36, %35 ]
  ret ptr %122
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefIconButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefIconTextButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButR_prop(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare ptr @RNA_property_pointer_type(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @RNA_property_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @uiDefAutoButsRNA(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = tail call ptr @RNA_struct_iterator_property(ptr noundef %7) #12
  call void @RNA_property_collection_begin(ptr noundef %1, ptr noundef %8, ptr noundef nonnull %5) #12
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %59, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6, i32 2
  %14 = icmp eq ptr %2, null
  %15 = icmp eq i8 %3, 0
  %16 = icmp eq i8 %3, 86
  br label %17

17:                                               ; preds = %12, %55
  %18 = phi i32 [ 0, %12 ], [ %56, %55 ]
  %19 = load ptr, ptr %13, align 8, !tbaa !46
  %20 = call i32 @RNA_property_flag(ptr noundef %19) #12
  %21 = and i32 %20, 524288
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %17
  br i1 %14, label %27, label %24

24:                                               ; preds = %23
  %25 = call zeroext i8 %2(ptr noundef %1, ptr noundef %19) #12
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %24, %23
  br i1 %15, label %51, label %28

28:                                               ; preds = %27
  %29 = call i32 @RNA_property_type(ptr noundef %19) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call zeroext i8 @RNA_property_array_check(ptr noundef %19) #12
  %33 = icmp eq i8 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  %36 = call ptr @RNA_property_ui_name(ptr noundef %19) #12
  br i1 %16, label %37, label %40

37:                                               ; preds = %34
  %38 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #12
  br i1 %35, label %45, label %39

39:                                               ; preds = %37
  call void @uiItemL(ptr noundef %38, ptr noundef %36, i32 noundef 0) #12
  br label %45

40:                                               ; preds = %34
  %41 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 5.000000e-01, i32 noundef 0) #12
  %42 = call ptr @uiLayoutColumn(ptr noundef %41, i32 noundef 0) #12
  %43 = select i1 %35, ptr @.str.1, ptr %36
  call void @uiItemL(ptr noundef %42, ptr noundef %43, i32 noundef 0) #12
  %44 = call ptr @uiLayoutColumn(ptr noundef %41, i32 noundef 0) #12
  br label %45

45:                                               ; preds = %37, %39, %40
  %46 = phi ptr [ %38, %37 ], [ %38, %39 ], [ %44, %40 ]
  %47 = and i32 %20, 2097152
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %48, i1 true, i1 %35
  %50 = select i1 %49, ptr null, ptr @.str.1
  br label %51

51:                                               ; preds = %27, %45
  %52 = phi ptr [ %50, %45 ], [ null, %27 ]
  %53 = phi ptr [ %46, %45 ], [ %0, %27 ]
  call void @uiItemFullR(ptr noundef %53, ptr noundef %1, ptr noundef %19, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef %52, i32 noundef 0) #12
  %54 = add nsw i32 %18, 1
  br label %55

55:                                               ; preds = %17, %24, %51
  %56 = phi i32 [ %54, %51 ], [ %18, %24 ], [ %18, %17 ]
  call void @RNA_property_collection_next(ptr noundef nonnull %5) #12
  %57 = load i32, ptr %9, align 8, !tbaa !43
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %17, !llvm.loop !47

59:                                               ; preds = %55, %4
  %60 = phi i32 [ 0, %4 ], [ %56, %55 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #12
  ret i32 %60
}

declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #2

declare ptr @RNA_property_ui_name(ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemFullR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @uiIconFromID(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %6 = load i16, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i16 %6, 16975
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !52
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = tail call i32 @uiIconFromID(ptr noundef %14)
  br label %22

16:                                               ; preds = %4
  call void @RNA_id_pointer_create(ptr noundef nonnull %0, ptr noundef nonnull %2) #12
  %17 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = call i32 @RNA_struct_ui_icon(ptr noundef nonnull %18) #12
  br label %22

22:                                               ; preds = %20, %16, %8, %1, %12
  %23 = phi i32 [ %15, %12 ], [ 0, %1 ], [ 189, %8 ], [ %21, %20 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  ret i32 %23
}

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @uiIconFromReportType(i32 noundef %0) local_unnamed_addr #4 {
  %2 = and i32 %0, 496
  %3 = icmp eq i32 %2, 0
  %4 = and i32 %0, 2
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 0, i32 110
  %7 = select i1 %3, i32 %6, i32 2
  ret i32 %7
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @uiFloatPrecisionCalc(i32 noundef %0, double noundef %1) local_unnamed_addr #5 {
  %3 = fcmp olt double %1, 0.000000e+00
  %4 = fneg double %1
  %5 = select i1 %3, double %4, double %1
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [8 x double], ptr @uiFloatPrecisionCalc.pow10_neg, i64 0, i64 %6
  %8 = load double, ptr %7, align 8, !tbaa !60
  %9 = fcmp olt double %5, %8
  %10 = fcmp ogt double %5, 0x3E7AD7F29ABCAF48
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = tail call double @llvm.fmuladd.f64(double %5, double 1.000000e+07, double 5.000000e-01)
  %14 = fptosi double %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %12, %16
  %17 = phi i32 [ %28, %16 ], [ 7, %12 ]
  %18 = phi i32 [ %26, %16 ], [ 0, %12 ]
  %19 = phi i32 [ %24, %16 ], [ -1, %12 ]
  %20 = phi i32 [ %27, %16 ], [ %14, %12 ]
  %21 = srem i32 %20, 10
  %22 = icmp eq i32 %21, 0
  %23 = shl nuw i32 1, %17
  %24 = select i1 %22, i32 %19, i32 %17
  %25 = select i1 %22, i32 0, i32 %23
  %26 = or i32 %25, %18
  %27 = sdiv i32 %20, 10
  %28 = add nsw i32 %17, -1
  %29 = icmp ne i32 %28, 0
  %30 = add i32 %20, -10
  %31 = icmp ult i32 %30, -19
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %16, label %33, !llvm.loop !62

33:                                               ; preds = %16
  %34 = add nsw i32 %24, 1
  %35 = ashr i32 %26, %34
  %36 = and i32 %35, 7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33, %38
  %39 = phi i32 [ %42, %38 ], [ %36, %33 ]
  %40 = phi i32 [ %41, %38 ], [ %24, %33 ]
  %41 = add nsw i32 %40, 1
  %42 = lshr i32 %39, 1
  %43 = icmp ult i32 %39, 2
  br i1 %43, label %44, label %38, !llvm.loop !63

44:                                               ; preds = %38, %33
  %45 = phi i32 [ %24, %33 ], [ %41, %38 ]
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 %0)
  br label %47

47:                                               ; preds = %12, %44, %2
  %48 = phi i32 [ %0, %2 ], [ %46, %44 ], [ %0, %12 ]
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 7)
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  ret i32 %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @UI_butstore_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %3 = tail call ptr %2(i64 noundef 40, ptr noundef nonnull @__func__.UI_butstore_create) #12
  %4 = getelementptr inbounds %struct.uiButStore, ptr %3, i64 0, i32 2
  store ptr %0, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 5
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %3) #12
  ret ptr %3
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UI_butstore_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiButStore, ptr %1, i64 0, i32 3
  tail call void @BLI_freelistN(ptr noundef nonnull %3) #12
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 5
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %1) #12
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %5(ptr noundef %1) #12
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @UI_butstore_is_valid(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiButStore, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @UI_butstore_is_registered(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %9

6:                                                ; preds = %12
  %7 = load ptr, ptr %10, align 8, !tbaa !38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9, !llvm.loop !66

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.uiButStore, ptr %10, i64 0, i32 3
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %11, %9 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.uiButStoreElem, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %12, !llvm.loop !69

21:                                               ; preds = %6, %16, %2
  %22 = phi i8 [ 0, %2 ], [ 1, %16 ], [ 0, %6 ]
  ret i8 %22
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_butstore_register(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @__func__.UI_butstore_register) #12
  %5 = getelementptr inbounds %struct.uiButStoreElem, ptr %4, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.uiButStore, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %4) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_butstore_unregister(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiButStore, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %8, %14 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = getelementptr inbounds %struct.uiButStoreElem, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %7) #12
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %13(ptr noundef nonnull %7) #12
  br label %14

14:                                               ; preds = %6, %12
  %15 = icmp eq ptr %8, null
  br i1 %15, label %16, label %6, !llvm.loop !72

16:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_butstore_clear(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %8

5:                                                ; preds = %14, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8, !llvm.loop !73

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.uiButStore, ptr %9, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.uiButStore, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %5, label %14

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %18, %14 ], [ %12, %8 ]
  %16 = getelementptr inbounds %struct.uiButStoreElem, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  store ptr null, ptr %17, align 8, !tbaa !38
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = icmp eq ptr %18, null
  br i1 %19, label %5, label %14, !llvm.loop !74

20:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_butstore_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %11

11:                                               ; preds = %5, %9, %1
  %12 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %11, %37
  %16 = phi ptr [ %38, %37 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.uiButStore, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = load ptr, ptr %2, align 8, !tbaa !75
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  store ptr %0, ptr %17, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.uiButStore, ptr %16, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %21, %34
  %26 = phi ptr [ %35, %34 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.uiButStoreElem, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !67
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = tail call ptr @ui_but_find_new(ptr noundef %0, ptr noundef nonnull %29) #12
  %33 = load ptr, ptr %27, align 8, !tbaa !67
  store ptr %32, ptr %33, align 8, !tbaa !38
  br label %34

34:                                               ; preds = %25, %31
  %35 = load ptr, ptr %26, align 8, !tbaa !38
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %25, !llvm.loop !80

37:                                               ; preds = %34, %21, %15
  %38 = load ptr, ptr %16, align 8, !tbaa !81
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %15, !llvm.loop !82

40:                                               ; preds = %37, %11
  ret void
}

declare ptr @ui_but_find_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{i64 0, i64 8, !38, i64 8, i64 8, !38}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !35, i64 0}
!40 = !{!41, !39, i64 8}
!41 = !{!"PointerRNA", !42, i64 0, !39, i64 8, !39, i64 16}
!42 = !{!"", !39, i64 0}
!43 = !{!44, !45, i64 128}
!44 = !{!"CollectionPropertyIterator", !41, i64 0, !41, i64 24, !39, i64 48, !35, i64 56, !45, i64 96, !45, i64 100, !41, i64 104, !45, i64 128}
!45 = !{!"int", !35, i64 0}
!46 = !{!44, !39, i64 120}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !35, i64 0}
!52 = !{!53, !51, i64 136}
!53 = !{!"Object", !54, i64 0, !39, i64 120, !39, i64 128, !51, i64 136, !51, i64 138, !45, i64 140, !45, i64 144, !45, i64 148, !35, i64 152, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !55, i64 312, !39, i64 360, !56, i64 368, !56, i64 384, !56, i64 400, !56, i64 416, !45, i64 432, !45, i64 436, !39, i64 440, !39, i64 448, !45, i64 456, !45, i64 460, !35, i64 464, !35, i64 476, !35, i64 488, !35, i64 500, !35, i64 512, !35, i64 524, !35, i64 536, !35, i64 548, !35, i64 560, !35, i64 576, !35, i64 592, !35, i64 604, !57, i64 616, !57, i64 620, !35, i64 624, !35, i64 688, !35, i64 752, !35, i64 816, !35, i64 880, !45, i64 944, !51, i64 948, !51, i64 950, !51, i64 952, !51, i64 954, !51, i64 956, !51, i64 958, !51, i64 960, !51, i64 962, !51, i64 964, !35, i64 966, !35, i64 967, !45, i64 968, !45, i64 972, !45, i64 976, !45, i64 980, !45, i64 984, !57, i64 988, !57, i64 992, !57, i64 996, !57, i64 1000, !57, i64 1004, !57, i64 1008, !57, i64 1012, !57, i64 1016, !57, i64 1020, !57, i64 1024, !57, i64 1028, !57, i64 1032, !51, i64 1036, !51, i64 1038, !51, i64 1040, !35, i64 1042, !35, i64 1043, !51, i64 1044, !35, i64 1046, !35, i64 1047, !57, i64 1048, !57, i64 1052, !56, i64 1056, !56, i64 1072, !56, i64 1088, !56, i64 1104, !57, i64 1120, !51, i64 1124, !51, i64 1126, !35, i64 1128, !45, i64 1144, !45, i64 1148, !39, i64 1152, !35, i64 1160, !35, i64 1161, !51, i64 1162, !35, i64 1164, !56, i64 1176, !56, i64 1192, !56, i64 1208, !56, i64 1224, !39, i64 1240, !39, i64 1248, !39, i64 1256, !35, i64 1264, !35, i64 1265, !51, i64 1266, !57, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !58, i64 1304, !58, i64 1312, !45, i64 1320, !45, i64 1324, !56, i64 1328, !56, i64 1344, !39, i64 1360, !39, i64 1368, !39, i64 1376, !35, i64 1384, !39, i64 1392, !56, i64 1400, !39, i64 1416}
!54 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !35, i64 32, !51, i64 98, !45, i64 100, !45, i64 104, !45, i64 108, !39, i64 112}
!55 = !{!"bAnimVizSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !51, i64 16, !51, i64 18, !51, i64 20, !51, i64 22, !51, i64 24, !51, i64 26, !51, i64 28, !51, i64 30, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44}
!56 = !{!"ListBase", !39, i64 0, !39, i64 8}
!57 = !{!"float", !35, i64 0}
!58 = !{!"long", !35, i64 0}
!59 = !{!53, !39, i64 296}
!60 = !{!61, !61, i64 0}
!61 = !{!"double", !35, i64 0}
!62 = distinct !{!62, !48, !49}
!63 = distinct !{!63, !48, !49}
!64 = !{!65, !39, i64 16}
!65 = !{!"uiButStore", !39, i64 0, !39, i64 8, !39, i64 16, !56, i64 24}
!66 = distinct !{!66, !48, !49}
!67 = !{!68, !39, i64 16}
!68 = !{!"uiButStoreElem", !39, i64 0, !39, i64 8, !39, i64 16}
!69 = distinct !{!69, !48, !49}
!70 = !{!65, !39, i64 24}
!71 = !{!68, !39, i64 0}
!72 = distinct !{!72, !48, !49}
!73 = distinct !{!73, !48, !49}
!74 = distinct !{!74, !48, !49}
!75 = !{!76, !39, i64 40}
!76 = !{!"uiBlock", !39, i64 0, !39, i64 8, !56, i64 16, !39, i64 32, !39, i64 40, !56, i64 48, !56, i64 64, !39, i64 80, !56, i64 88, !35, i64 104, !35, i64 232, !77, i64 296, !57, i64 312, !45, i64 316, !39, i64 320, !39, i64 328, !39, i64 336, !39, i64 344, !39, i64 352, !39, i64 360, !39, i64 368, !39, i64 376, !39, i64 384, !39, i64 392, !39, i64 400, !39, i64 408, !39, i64 416, !45, i64 424, !51, i64 428, !35, i64 430, !35, i64 431, !35, i64 432, !35, i64 433, !61, i64 440, !39, i64 448, !35, i64 456, !35, i64 457, !35, i64 458, !35, i64 459, !45, i64 460, !45, i64 464, !45, i64 468, !45, i64 472, !45, i64 476, !77, i64 480, !56, i64 496, !39, i64 512, !39, i64 520, !39, i64 528, !39, i64 536, !35, i64 544, !35, i64 556, !35, i64 557, !78, i64 624}
!77 = !{!"rctf", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12}
!78 = !{!"PieMenuData", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !61, i64 32, !45, i64 40, !45, i64 44, !57, i64 48}
!79 = !{!76, !39, i64 48}
!80 = distinct !{!80, !48, !49}
!81 = !{!65, !39, i64 0}
!82 = distinct !{!82, !48, !49}
