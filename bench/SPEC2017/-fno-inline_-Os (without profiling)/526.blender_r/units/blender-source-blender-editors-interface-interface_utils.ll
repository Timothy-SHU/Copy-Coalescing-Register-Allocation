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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiDefAutoButR(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca %struct.PointerRNA, align 8
  %12 = alloca [256 x i8], align 16
  %13 = tail call i32 @RNA_property_type(ptr noundef %2) #13
  switch i32 %13, label %127 [
    i32 0, label %14
    i32 1, label %39
    i32 2, label %39
    i32 4, label %67
    i32 3, label %87
    i32 5, label %107
    i32 6, label %121
  ]

14:                                               ; preds = %10
  %15 = tail call i32 @RNA_property_array_length(ptr noundef %1, ptr noundef %2) #13
  %16 = icmp eq i32 %15, 0
  %17 = icmp ne i32 %3, -1
  %18 = or i1 %17, %16
  br i1 %18, label %19, label %127

19:                                               ; preds = %14
  %20 = icmp ne i32 %5, 0
  %21 = icmp ne ptr %4, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i8, ptr %4, align 1, !tbaa !5
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = trunc i32 %8 to i16
  %28 = trunc i32 %9 to i16
  %29 = tail call ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %27, i16 noundef signext %28, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #13
  br label %127

30:                                               ; preds = %19
  br i1 %20, label %31, label %35

31:                                               ; preds = %23, %30
  %32 = trunc i32 %8 to i16
  %33 = trunc i32 %9 to i16
  %34 = tail call ptr @uiDefIconTextButR_prop(ptr noundef %0, i32 noundef 6656, i32 noundef 0, i32 noundef %5, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %32, i16 noundef signext %33, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #13
  br label %127

35:                                               ; preds = %30
  %36 = trunc i32 %8 to i16
  %37 = trunc i32 %9 to i16
  %38 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 19456, i32 noundef 0, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %36, i16 noundef signext %37, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #13
  br label %127

39:                                               ; preds = %10, %10
  %40 = tail call i32 @RNA_property_array_length(ptr noundef %1, ptr noundef %2) #13
  %41 = icmp ne i32 %40, 0
  %42 = icmp eq i32 %3, -1
  %43 = and i1 %42, %41
  %44 = tail call i32 @RNA_property_subtype(ptr noundef %2) #13
  br i1 %43, label %45, label %54

45:                                               ; preds = %39
  %46 = icmp eq i32 %44, 20
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = tail call i32 @RNA_property_subtype(ptr noundef %2) #13
  %49 = icmp eq i32 %48, 30
  br i1 %49, label %50, label %127

50:                                               ; preds = %47, %45
  %51 = trunc i32 %8 to i16
  %52 = trunc i32 %9 to i16
  %53 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 7680, i32 noundef 0, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %51, i16 noundef signext %52, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #13
  br label %127

54:                                               ; preds = %39
  %55 = icmp eq i32 %44, 14
  br i1 %55, label %59, label %56

56:                                               ; preds = %54
  %57 = tail call i32 @RNA_property_subtype(ptr noundef %2) #13
  %58 = icmp eq i32 %57, 15
  br i1 %58, label %59, label %63

59:                                               ; preds = %56, %54
  %60 = trunc i32 %8 to i16
  %61 = trunc i32 %9 to i16
  %62 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 7168, i32 noundef 0, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %60, i16 noundef signext %61, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #13
  br label %127

63:                                               ; preds = %56
  %64 = trunc i32 %8 to i16
  %65 = trunc i32 %9 to i16
  %66 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 2560, i32 noundef 0, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %64, i16 noundef signext %65, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #13
  br label %127

67:                                               ; preds = %10
  %68 = icmp ne i32 %5, 0
  %69 = icmp ne ptr %4, null
  %70 = and i1 %69, %68
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i8, ptr %4, align 1, !tbaa !5
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = trunc i32 %8 to i16
  %76 = trunc i32 %9 to i16
  %77 = tail call ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef 5632, i32 noundef 0, i32 noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %75, i16 noundef signext %76, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #13
  br label %127

78:                                               ; preds = %67
  br i1 %68, label %79, label %83

79:                                               ; preds = %71, %78
  %80 = trunc i32 %8 to i16
  %81 = trunc i32 %9 to i16
  %82 = tail call ptr @uiDefIconTextButR_prop(ptr noundef %0, i32 noundef 5632, i32 noundef 0, i32 noundef %5, ptr noundef null, i32 noundef %6, i32 noundef %7, i16 noundef signext %80, i16 noundef signext %81, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #13
  br label %127

83:                                               ; preds = %78
  %84 = trunc i32 %8 to i16
  %85 = trunc i32 %9 to i16
  %86 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 5632, i32 noundef 0, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %84, i16 noundef signext %85, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #13
  br label %127

87:                                               ; preds = %10
  %88 = icmp ne i32 %5, 0
  %89 = icmp ne ptr %4, null
  %90 = and i1 %89, %88
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i8, ptr %4, align 1, !tbaa !5
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = trunc i32 %8 to i16
  %96 = trunc i32 %9 to i16
  %97 = tail call ptr @uiDefIconButR_prop(ptr noundef %0, i32 noundef 3072, i32 noundef 0, i32 noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %95, i16 noundef signext %96, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #13
  br label %127

98:                                               ; preds = %87
  br i1 %88, label %99, label %103

99:                                               ; preds = %91, %98
  %100 = trunc i32 %8 to i16
  %101 = trunc i32 %9 to i16
  %102 = tail call ptr @uiDefIconTextButR_prop(ptr noundef %0, i32 noundef 3072, i32 noundef 0, i32 noundef %5, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %100, i16 noundef signext %101, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #13
  br label %127

103:                                              ; preds = %98
  %104 = trunc i32 %8 to i16
  %105 = trunc i32 %9 to i16
  %106 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 3072, i32 noundef 0, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %104, i16 noundef signext %105, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #13
  br label %127

107:                                              ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #14
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %11, ptr noundef %1, ptr noundef %2) #13
  %108 = getelementptr inbounds i8, ptr %11, i64 8
  %109 = load ptr, ptr %108, align 8, !tbaa.struct !8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #14
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = call ptr @RNA_property_pointer_type(ptr noundef %1, ptr noundef %2) #13
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi ptr [ %109, %107 ], [ %112, %111 ]
  %115 = call i32 @RNA_struct_ui_icon(ptr noundef %114) #13
  %116 = icmp eq i32 %115, 17
  %117 = select i1 %116, i32 0, i32 %115
  %118 = trunc i32 %8 to i16
  %119 = trunc i32 %9 to i16
  %120 = call ptr @uiDefIconTextButR_prop(ptr noundef %0, i32 noundef 20992, i32 noundef 0, i32 noundef %117, ptr noundef %4, i32 noundef %6, i32 noundef %7, i16 noundef signext %118, i16 noundef signext %119, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #13
  br label %127

121:                                              ; preds = %10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %12) #14
  %122 = tail call i32 @RNA_property_collection_length(ptr noundef %1, ptr noundef %2) #13
  %123 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %12, i64 noundef 256, ptr noundef nonnull @.str, i32 noundef %122) #13
  %124 = trunc i32 %8 to i16
  %125 = trunc i32 %9 to i16
  %126 = call ptr @uiDefBut(ptr noundef %0, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %7, i16 noundef signext %124, i16 noundef signext %125, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #13
  call void @uiButSetFlag(ptr noundef %126, i32 noundef 2048) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %12) #14
  br label %127

127:                                              ; preds = %14, %31, %35, %26, %113, %121, %79, %83, %74, %99, %103, %94, %59, %63, %47, %50, %10
  %128 = phi ptr [ %126, %121 ], [ %120, %113 ], [ %97, %94 ], [ %102, %99 ], [ %106, %103 ], [ %77, %74 ], [ %82, %79 ], [ %86, %83 ], [ %53, %50 ], [ null, %47 ], [ %62, %59 ], [ %66, %63 ], [ null, %10 ], [ null, %14 ], [ %29, %26 ], [ %34, %31 ], [ %38, %35 ]
  ret ptr %128
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconTextButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButR_prop(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare ptr @RNA_property_pointer_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @uiDefAutoButsRNA(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = tail call ptr @RNA_struct_iterator_property(ptr noundef %7) #13
  call void @RNA_property_collection_begin(ptr noundef %1, ptr noundef %8, ptr noundef nonnull %5) #13
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !14
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
  %19 = load ptr, ptr %13, align 8, !tbaa !17
  %20 = call i32 @RNA_property_flag(ptr noundef %19) #13
  %21 = and i32 %20, 524288
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %17
  br i1 %14, label %27, label %24

24:                                               ; preds = %23
  %25 = call zeroext i8 %2(ptr noundef %1, ptr noundef %19) #13
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %24, %23
  br i1 %15, label %51, label %28

28:                                               ; preds = %27
  %29 = call i32 @RNA_property_type(ptr noundef %19) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call zeroext i8 @RNA_property_array_check(ptr noundef %19) #13
  %33 = icmp eq i8 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  %36 = call ptr @RNA_property_ui_name(ptr noundef %19) #13
  br i1 %16, label %37, label %40

37:                                               ; preds = %34
  %38 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #13
  br i1 %35, label %45, label %39

39:                                               ; preds = %37
  call void @uiItemL(ptr noundef %38, ptr noundef %36, i32 noundef 0) #13
  br label %45

40:                                               ; preds = %34
  %41 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 5.000000e-01, i32 noundef 0) #13
  %42 = call ptr @uiLayoutColumn(ptr noundef %41, i32 noundef 0) #13
  %43 = select i1 %35, ptr @.str.1, ptr %36
  call void @uiItemL(ptr noundef %42, ptr noundef %43, i32 noundef 0) #13
  %44 = call ptr @uiLayoutColumn(ptr noundef %41, i32 noundef 0) #13
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
  call void @uiItemFullR(ptr noundef %53, ptr noundef %1, ptr noundef %19, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef %52, i32 noundef 0) #13
  %54 = add nsw i32 %18, 1
  br label %55

55:                                               ; preds = %17, %24, %51
  %56 = phi i32 [ %54, %51 ], [ %18, %24 ], [ %18, %17 ]
  call void @RNA_property_collection_next(ptr noundef nonnull %5) #13
  %57 = load i32, ptr %9, align 8, !tbaa !14
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %17, !llvm.loop !18

59:                                               ; preds = %55, %4
  %60 = phi i32 [ 0, %4 ], [ %56, %55 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #14
  ret i32 %60
}

; Function Attrs: optsize
declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_property_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemFullR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @uiIconFromID(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %6 = load i16, ptr %5, align 8, !tbaa !20
  %7 = icmp eq i16 %6, 16975
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !22
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !29
  %15 = tail call i32 @uiIconFromID(ptr noundef %14) #15
  br label %22

16:                                               ; preds = %4
  call void @RNA_id_pointer_create(ptr noundef nonnull %0, ptr noundef nonnull %2) #13
  %17 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = call i32 @RNA_struct_ui_icon(ptr noundef nonnull %18) #13
  br label %22

22:                                               ; preds = %20, %16, %8, %1, %12
  %23 = phi i32 [ %15, %12 ], [ 0, %1 ], [ 189, %8 ], [ %21, %20 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret i32 %23
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @uiIconFromReportType(i32 noundef %0) local_unnamed_addr #4 {
  %2 = and i32 %0, 496
  %3 = icmp eq i32 %2, 0
  %4 = and i32 %0, 2
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 0, i32 110
  %7 = select i1 %3, i32 %6, i32 2
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i32 @uiFloatPrecisionCalc(i32 noundef %0, double noundef %1) local_unnamed_addr #5 {
  %3 = fcmp olt double %1, 0.000000e+00
  %4 = fneg double %1
  %5 = select i1 %3, double %4, double %1
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [8 x double], ptr @uiFloatPrecisionCalc.pow10_neg, i64 0, i64 %6
  %8 = load double, ptr %7, align 8, !tbaa !30
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
  br i1 %32, label %16, label %33, !llvm.loop !32

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
  br i1 %43, label %44, label %38, !llvm.loop !33

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @UI_butstore_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !9
  %3 = tail call ptr %2(i64 noundef 40, ptr noundef nonnull @__func__.UI_butstore_create) #13
  %4 = getelementptr inbounds %struct.uiButStore, ptr %3, i64 0, i32 2
  store ptr %0, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 5
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %3) #13
  ret ptr %3
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_butstore_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiButStore, ptr %1, i64 0, i32 3
  tail call void @BLI_freelistN(ptr noundef nonnull %3) #13
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 5
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %1) #13
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !9
  tail call void %5(ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @UI_butstore_is_valid(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiButStore, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @UI_butstore_is_registered(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %9

6:                                                ; preds = %12
  %7 = load ptr, ptr %10, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9, !llvm.loop !36

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.uiButStore, ptr %10, i64 0, i32 3
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %11, %9 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.uiButStoreElem, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %12, !llvm.loop !39

21:                                               ; preds = %6, %16, %2
  %22 = phi i8 [ 0, %2 ], [ 1, %16 ], [ 0, %6 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_butstore_register(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !9
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @__func__.UI_butstore_register) #13
  %5 = getelementptr inbounds %struct.uiButStoreElem, ptr %4, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.uiButStore, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_butstore_unregister(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiButStore, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %8, %14 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.uiButStoreElem, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %7) #13
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !9
  tail call void %13(ptr noundef nonnull %7) #13
  br label %14

14:                                               ; preds = %6, %12
  %15 = icmp eq ptr %8, null
  br i1 %15, label %16, label %6, !llvm.loop !42

16:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_butstore_clear(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %8

5:                                                ; preds = %14, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8, !llvm.loop !43

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.uiButStore, ptr %9, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.uiButStore, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %5, label %14

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %18, %14 ], [ %12, %8 ]
  %16 = getelementptr inbounds %struct.uiButStoreElem, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  store ptr null, ptr %17, align 8, !tbaa !9
  %18 = load ptr, ptr %15, align 8, !tbaa !9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %5, label %14, !llvm.loop !44

20:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_butstore_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !8
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %6) #15
  br label %11

11:                                               ; preds = %5, %9, %1
  %12 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %11, %37
  %16 = phi ptr [ %38, %37 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.uiButStore, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = load ptr, ptr %2, align 8, !tbaa !45
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  store ptr %0, ptr %17, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.uiButStore, ptr %16, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %21, %34
  %26 = phi ptr [ %35, %34 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.uiButStoreElem, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !37
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = tail call ptr @ui_but_find_new(ptr noundef %0, ptr noundef nonnull %29) #13
  %33 = load ptr, ptr %27, align 8, !tbaa !37
  store ptr %32, ptr %33, align 8, !tbaa !9
  br label %34

34:                                               ; preds = %25, %31
  %35 = load ptr, ptr %26, align 8, !tbaa !9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %25, !llvm.loop !50

37:                                               ; preds = %34, %21, %15
  %38 = load ptr, ptr %16, align 8, !tbaa !51
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %15, !llvm.loop !52

40:                                               ; preds = %37, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #10 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @ui_but_find_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{i64 0, i64 8, !9, i64 8, i64 8, !9}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !10, i64 8}
!12 = !{!"PointerRNA", !13, i64 0, !10, i64 8, !10, i64 16}
!13 = !{!"", !10, i64 0}
!14 = !{!15, !16, i64 128}
!15 = !{!"CollectionPropertyIterator", !12, i64 0, !12, i64 24, !10, i64 48, !6, i64 56, !16, i64 96, !16, i64 100, !12, i64 104, !16, i64 128}
!16 = !{!"int", !6, i64 0}
!17 = !{!15, !10, i64 120}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !6, i64 0}
!22 = !{!23, !21, i64 136}
!23 = !{!"Object", !24, i64 0, !10, i64 120, !10, i64 128, !21, i64 136, !21, i64 138, !16, i64 140, !16, i64 144, !16, i64 148, !6, i64 152, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !25, i64 312, !10, i64 360, !26, i64 368, !26, i64 384, !26, i64 400, !26, i64 416, !16, i64 432, !16, i64 436, !10, i64 440, !10, i64 448, !16, i64 456, !16, i64 460, !6, i64 464, !6, i64 476, !6, i64 488, !6, i64 500, !6, i64 512, !6, i64 524, !6, i64 536, !6, i64 548, !6, i64 560, !6, i64 576, !6, i64 592, !6, i64 604, !27, i64 616, !27, i64 620, !6, i64 624, !6, i64 688, !6, i64 752, !6, i64 816, !6, i64 880, !16, i64 944, !21, i64 948, !21, i64 950, !21, i64 952, !21, i64 954, !21, i64 956, !21, i64 958, !21, i64 960, !21, i64 962, !21, i64 964, !6, i64 966, !6, i64 967, !16, i64 968, !16, i64 972, !16, i64 976, !16, i64 980, !16, i64 984, !27, i64 988, !27, i64 992, !27, i64 996, !27, i64 1000, !27, i64 1004, !27, i64 1008, !27, i64 1012, !27, i64 1016, !27, i64 1020, !27, i64 1024, !27, i64 1028, !27, i64 1032, !21, i64 1036, !21, i64 1038, !21, i64 1040, !6, i64 1042, !6, i64 1043, !21, i64 1044, !6, i64 1046, !6, i64 1047, !27, i64 1048, !27, i64 1052, !26, i64 1056, !26, i64 1072, !26, i64 1088, !26, i64 1104, !27, i64 1120, !21, i64 1124, !21, i64 1126, !6, i64 1128, !16, i64 1144, !16, i64 1148, !10, i64 1152, !6, i64 1160, !6, i64 1161, !21, i64 1162, !6, i64 1164, !26, i64 1176, !26, i64 1192, !26, i64 1208, !26, i64 1224, !10, i64 1240, !10, i64 1248, !10, i64 1256, !6, i64 1264, !6, i64 1265, !21, i64 1266, !27, i64 1268, !10, i64 1272, !10, i64 1280, !10, i64 1288, !10, i64 1296, !28, i64 1304, !28, i64 1312, !16, i64 1320, !16, i64 1324, !26, i64 1328, !26, i64 1344, !10, i64 1360, !10, i64 1368, !10, i64 1376, !6, i64 1384, !10, i64 1392, !26, i64 1400, !10, i64 1416}
!24 = !{!"ID", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !21, i64 98, !16, i64 100, !16, i64 104, !16, i64 108, !10, i64 112}
!25 = !{!"bAnimVizSettings", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !21, i64 16, !21, i64 18, !21, i64 20, !21, i64 22, !21, i64 24, !21, i64 26, !21, i64 28, !21, i64 30, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44}
!26 = !{!"ListBase", !10, i64 0, !10, i64 8}
!27 = !{!"float", !6, i64 0}
!28 = !{!"long", !6, i64 0}
!29 = !{!23, !10, i64 296}
!30 = !{!31, !31, i64 0}
!31 = !{!"double", !6, i64 0}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = !{!35, !10, i64 16}
!35 = !{!"uiButStore", !10, i64 0, !10, i64 8, !10, i64 16, !26, i64 24}
!36 = distinct !{!36, !19}
!37 = !{!38, !10, i64 16}
!38 = !{!"uiButStoreElem", !10, i64 0, !10, i64 8, !10, i64 16}
!39 = distinct !{!39, !19}
!40 = !{!35, !10, i64 24}
!41 = !{!38, !10, i64 0}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
!45 = !{!46, !10, i64 40}
!46 = !{!"uiBlock", !10, i64 0, !10, i64 8, !26, i64 16, !10, i64 32, !10, i64 40, !26, i64 48, !26, i64 64, !10, i64 80, !26, i64 88, !6, i64 104, !6, i64 232, !47, i64 296, !27, i64 312, !16, i64 316, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !10, i64 376, !10, i64 384, !10, i64 392, !10, i64 400, !10, i64 408, !10, i64 416, !16, i64 424, !21, i64 428, !6, i64 430, !6, i64 431, !6, i64 432, !6, i64 433, !31, i64 440, !10, i64 448, !6, i64 456, !6, i64 457, !6, i64 458, !6, i64 459, !16, i64 460, !16, i64 464, !16, i64 468, !16, i64 472, !16, i64 476, !47, i64 480, !26, i64 496, !10, i64 512, !10, i64 520, !10, i64 528, !10, i64 536, !6, i64 544, !6, i64 556, !6, i64 557, !48, i64 624}
!47 = !{!"rctf", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12}
!48 = !{!"PieMenuData", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !31, i64 32, !16, i64 40, !16, i64 44, !27, i64 48}
!49 = !{!46, !10, i64 48}
!50 = distinct !{!50, !19}
!51 = !{!35, !10, i64 0}
!52 = distinct !{!52, !19}
