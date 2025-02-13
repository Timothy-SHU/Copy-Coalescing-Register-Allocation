; ModuleID = 'blender/source/blender/blenlib/intern/scanfill_utils.c'
source_filename = "blender/source/blender/blenlib/intern/scanfill_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ScanFillContext = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, i16, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.PolyInfo = type { ptr, ptr, ptr }
%struct.ScanFillEdge = type { ptr, ptr, ptr, ptr, i16, i8, %union.anon }
%union.anon = type { i8 }
%struct.ScanFillVert = type { ptr, ptr, %union.anon.0, [3 x float], [2 x float], i32, i16, i8, i8 }
%union.anon.0 = type { ptr }
%struct.ScanFillIsect = type { ptr, ptr, [3 x float], ptr }
%struct.LinkData = type { ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BLI_scanfill_calc_self_isect = private unnamed_addr constant [29 x i8] c"BLI_scanfill_calc_self_isect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.scanfill_preprocess_self_isect = private unnamed_addr constant [31 x i8] c"scanfill_preprocess_self_isect\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.edge_isect_ls_add = private unnamed_addr constant [18 x i8] c"edge_isect_ls_add\00", align 1
@__func__.edge_isect_ls_ensure = private unnamed_addr constant [21 x i8] c"edge_isect_ls_ensure\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BLI_scanfill_calc_self_isect(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i16 %5, -1
  br i1 %6, label %132, label %7

7:                                                ; preds = %3
  %8 = zext i16 %5 to i64
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %10 = mul nuw nsw i64 %8, 24
  %11 = add nuw nsw i64 %10, 24
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @__func__.BLI_scanfill_calc_self_isect) #9
  %13 = load i16, ptr %4, align 8, !tbaa !34
  %14 = icmp eq i16 %13, 0
  %15 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  br i1 %14, label %17, label %21

17:                                               ; preds = %7
  store ptr %16, ptr %12, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.PolyInfo, ptr %12, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !45
  br label %60

21:                                               ; preds = %7
  %22 = icmp eq ptr %16, null
  br i1 %22, label %60, label %23

23:                                               ; preds = %21, %57
  %24 = phi ptr [ %58, %57 ], [ %16, %21 ]
  %25 = phi i16 [ %41, %57 ], [ 0, %21 ]
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds %struct.PolyInfo, ptr %12, i64 %26, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ScanFillEdge, ptr %28, i64 0, i32 4
  %32 = load i16, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.ScanFillEdge, ptr %24, i64 0, i32 4
  %34 = load i16, ptr %33, align 8, !tbaa !46
  %35 = icmp ne i16 %32, %34
  %36 = zext i1 %35 to i16
  %37 = add i16 %25, %36
  %38 = zext i16 %37 to i64
  br label %39

39:                                               ; preds = %30, %23
  %40 = phi i64 [ %38, %30 ], [ %26, %23 ]
  %41 = phi i16 [ %37, %30 ], [ %25, %23 ]
  %42 = getelementptr inbounds %struct.PolyInfo, ptr %12, i64 %40
  %43 = load ptr, ptr %42, align 8, !tbaa !42
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  store ptr %24, ptr %42, align 8, !tbaa !42
  %46 = getelementptr inbounds %struct.PolyInfo, ptr %12, i64 %40, i32 1
  br label %55

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.PolyInfo, ptr %12, i64 %40, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  %50 = getelementptr inbounds %struct.ScanFillEdge, ptr %49, i64 0, i32 4
  %51 = load i16, ptr %50, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.ScanFillEdge, ptr %24, i64 0, i32 4
  %53 = load i16, ptr %52, align 8, !tbaa !46
  %54 = icmp eq i16 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47, %45
  %56 = phi ptr [ %46, %45 ], [ %48, %47 ]
  store ptr %24, ptr %56, align 8, !tbaa !45
  br label %57

57:                                               ; preds = %55, %47
  %58 = load ptr, ptr %24, align 8, !tbaa !41
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %23, !llvm.loop !49

60:                                               ; preds = %57, %21, %17
  br label %61

61:                                               ; preds = %60, %61
  %62 = phi i16 [ %66, %61 ], [ 0, %60 ]
  %63 = phi i8 [ %65, %61 ], [ 0, %60 ]
  %64 = tail call fastcc zeroext i8 @scanfill_preprocess_self_isect(ptr noundef %0, ptr noundef %12, i16 noundef zeroext %62, ptr noundef %2) #10, !range !51
  %65 = or i8 %64, %63
  %66 = add i16 %62, 1
  %67 = icmp ult i16 %5, %66
  br i1 %67, label %68, label %61, !llvm.loop !52

68:                                               ; preds = %61
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %69(ptr noundef %12) #9
  %70 = icmp eq i8 %65, 0
  br i1 %70, label %132, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !53
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %86, %71
  %76 = load ptr, ptr %0, align 8, !tbaa !41
  %77 = icmp eq ptr %76, null
  br i1 %77, label %88, label %91

78:                                               ; preds = %71, %86
  %79 = phi ptr [ %80, %86 ], [ %73, %71 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !54
  %81 = getelementptr inbounds %struct.ScanFillEdge, ptr %79, i64 0, i32 5
  %82 = load i8, ptr %81, align 2
  %83 = and i8 %82, 32
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  tail call void @BLI_remlink(ptr noundef nonnull %72, ptr noundef nonnull %79) #9
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef nonnull %79) #9
  br label %86

86:                                               ; preds = %78, %85
  %87 = icmp eq ptr %80, null
  br i1 %87, label %75, label %78, !llvm.loop !55

88:                                               ; preds = %91, %75
  %89 = load ptr, ptr %72, align 8, !tbaa !41
  %90 = icmp eq ptr %89, null
  br i1 %90, label %116, label %99

91:                                               ; preds = %75, %91
  %92 = phi ptr [ %97, %91 ], [ %76, %75 ]
  %93 = getelementptr inbounds %struct.ScanFillVert, ptr %92, i64 0, i32 8
  %94 = load i8, ptr %93, align 1
  %95 = and i8 %94, 15
  store i8 %95, ptr %93, align 1
  %96 = getelementptr inbounds %struct.ScanFillVert, ptr %92, i64 0, i32 6
  store i16 -1, ptr %96, align 8, !tbaa !56
  %97 = load ptr, ptr %92, align 8, !tbaa !41
  %98 = icmp eq ptr %97, null
  br i1 %98, label %88, label %91, !llvm.loop !58

99:                                               ; preds = %88, %99
  %100 = phi ptr [ %114, %99 ], [ %89, %88 ]
  %101 = getelementptr inbounds %struct.ScanFillEdge, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !59
  %103 = getelementptr inbounds %struct.ScanFillVert, ptr %102, i64 0, i32 8
  %104 = load i8, ptr %103, align 1
  %105 = and i8 %104, 15
  %106 = or disjoint i8 %105, 16
  store i8 %106, ptr %103, align 1
  %107 = getelementptr inbounds %struct.ScanFillEdge, ptr %100, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !60
  %109 = getelementptr inbounds %struct.ScanFillVert, ptr %108, i64 0, i32 8
  %110 = load i8, ptr %109, align 1
  %111 = and i8 %110, 15
  %112 = or disjoint i8 %111, 16
  store i8 %112, ptr %109, align 1
  %113 = getelementptr inbounds %struct.ScanFillEdge, ptr %100, i64 0, i32 4
  store i16 -1, ptr %113, align 8, !tbaa !46
  %114 = load ptr, ptr %100, align 8, !tbaa !41
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %99, !llvm.loop !61

116:                                              ; preds = %99, %88
  %117 = load ptr, ptr %0, align 8, !tbaa !62
  %118 = icmp eq ptr %117, null
  br i1 %118, label %131, label %119

119:                                              ; preds = %116, %129
  %120 = phi ptr [ %121, %129 ], [ %117, %116 ]
  %121 = load ptr, ptr %120, align 8, !tbaa !63
  %122 = getelementptr inbounds %struct.ScanFillVert, ptr %120, i64 0, i32 8
  %123 = load i8, ptr %122, align 1
  %124 = and i8 %123, -16
  %125 = icmp eq i8 %124, 16
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %120) #9
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %120) #9
  br label %129

127:                                              ; preds = %119
  %128 = and i8 %123, 15
  store i8 %128, ptr %122, align 1
  br label %129

129:                                              ; preds = %126, %127
  %130 = icmp eq ptr %121, null
  br i1 %130, label %131, label %119, !llvm.loop !64

131:                                              ; preds = %129, %116
  store i16 -1, ptr %4, align 8, !tbaa !34
  br label %132

132:                                              ; preds = %68, %3, %131
  %133 = phi i8 [ %65, %131 ], [ 0, %3 ], [ 0, %68 ]
  ret i8 %133
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @scanfill_preprocess_self_isect(ptr noundef %0, ptr nocapture noundef %1, i16 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !65 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca [2 x float], align 4
  %7 = zext i16 %2 to i64
  %8 = getelementptr inbounds %struct.PolyInfo, ptr %1, i64 %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %209, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PolyInfo, ptr %1, i64 %7, i32 1
  br label %13

13:                                               ; preds = %11, %83
  %14 = phi ptr [ null, %11 ], [ %81, %83 ]
  %15 = phi ptr [ %9, %11 ], [ %84, %83 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load ptr, ptr %12, align 8, !tbaa !45
  br label %79

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ScanFillEdge, ptr %15, i64 0, i32 2
  %22 = getelementptr inbounds %struct.ScanFillEdge, ptr %15, i64 0, i32 3
  br label %23

23:                                               ; preds = %20, %76
  %24 = phi ptr [ %14, %20 ], [ %73, %76 ]
  %25 = phi ptr [ %16, %20 ], [ %77, %76 ]
  %26 = load ptr, ptr %21, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.ScanFillEdge, ptr %25, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %72, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ScanFillEdge, ptr %25, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = icmp eq ptr %26, %32
  br i1 %33, label %72, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %22, align 8, !tbaa !60
  %36 = icmp eq ptr %35, %28
  %37 = icmp eq ptr %35, %32
  %38 = or i1 %36, %37
  %39 = icmp eq ptr %15, %25
  %40 = or i1 %39, %38
  br i1 %40, label %72, label %41

41:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %42 = getelementptr inbounds %struct.ScanFillVert, ptr %26, i64 0, i32 3
  %43 = getelementptr inbounds %struct.ScanFillVert, ptr %35, i64 0, i32 3
  %44 = getelementptr inbounds %struct.ScanFillVert, ptr %28, i64 0, i32 3
  %45 = getelementptr inbounds %struct.ScanFillVert, ptr %32, i64 0, i32 3
  %46 = call i32 @isect_seg_seg_v2_point(ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %44, ptr noundef nonnull %45, ptr noundef nonnull %6) #9
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %70

48:                                               ; preds = %41
  %49 = icmp eq ptr %24, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %48
  %51 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.scanfill_preprocess_self_isect) #9
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi ptr [ %51, %50 ], [ %24, %48 ]
  %54 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %55 = call ptr %54(i64 noundef 40, ptr noundef nonnull @__func__.scanfill_preprocess_self_isect) #9
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %55) #9
  %56 = getelementptr inbounds %struct.ScanFillIsect, ptr %55, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %56, ptr noundef nonnull %6) #10
  %57 = load ptr, ptr %21, align 8, !tbaa !59
  %58 = getelementptr inbounds %struct.ScanFillVert, ptr %57, i64 0, i32 3, i64 2
  %59 = load float, ptr %58, align 8, !tbaa !66
  %60 = getelementptr inbounds %struct.ScanFillIsect, ptr %55, i64 0, i32 2, i64 2
  store float %59, ptr %60, align 8, !tbaa !66
  %61 = call ptr @BLI_scanfill_vert_add(ptr noundef %0, ptr noundef nonnull %56) #9
  %62 = getelementptr inbounds %struct.ScanFillIsect, ptr %55, i64 0, i32 3
  store ptr %61, ptr %62, align 8, !tbaa !68
  %63 = load ptr, ptr %21, align 8, !tbaa !59
  %64 = getelementptr inbounds %struct.ScanFillVert, ptr %63, i64 0, i32 6
  %65 = load i16, ptr %64, align 8, !tbaa !56
  %66 = getelementptr inbounds %struct.ScanFillVert, ptr %61, i64 0, i32 6
  store i16 %65, ptr %66, align 8, !tbaa !56
  %67 = getelementptr inbounds %struct.ScanFillVert, ptr %61, i64 0, i32 8
  %68 = load i8, ptr %67, align 1
  %69 = or i8 %68, 16
  store i8 %69, ptr %67, align 1
  call fastcc void @edge_isect_ls_add(ptr noundef %53, ptr noundef nonnull %15, ptr noundef %55) #10
  call fastcc void @edge_isect_ls_add(ptr noundef %53, ptr noundef nonnull %25, ptr noundef %55) #10
  br label %70

70:                                               ; preds = %52, %41
  %71 = phi ptr [ %53, %52 ], [ %24, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %72

72:                                               ; preds = %23, %30, %34, %70
  %73 = phi ptr [ %24, %23 ], [ %24, %30 ], [ %24, %34 ], [ %71, %70 ]
  %74 = load ptr, ptr %12, align 8, !tbaa !45
  %75 = icmp eq ptr %25, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %25, align 8, !tbaa !54
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %23, !llvm.loop !70

79:                                               ; preds = %72, %76, %18
  %80 = phi ptr [ %19, %18 ], [ %74, %76 ], [ %74, %72 ]
  %81 = phi ptr [ %14, %18 ], [ %73, %76 ], [ %73, %72 ]
  %82 = icmp eq ptr %15, %80
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %15, align 8, !tbaa !54
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %13, !llvm.loop !71

86:                                               ; preds = %79, %83
  %87 = icmp eq ptr %81, null
  br i1 %87, label %209, label %88

88:                                               ; preds = %86
  %89 = load ptr, ptr %8, align 8, !tbaa !42
  %90 = icmp eq ptr %89, null
  br i1 %90, label %155, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.PolyInfo, ptr %1, i64 %7, i32 1
  %93 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  br label %94

94:                                               ; preds = %91, %152
  %95 = phi ptr [ %89, %91 ], [ %153, %152 ]
  %96 = getelementptr inbounds %struct.ScanFillEdge, ptr %95, i64 0, i32 5
  %97 = load i8, ptr %96, align 2
  %98 = and i8 %97, 16
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load ptr, ptr %92, align 8, !tbaa !45
  br label %148

102:                                              ; preds = %94
  %103 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %81, ptr noundef nonnull %95) #9
  %104 = icmp eq ptr %103, null
  %105 = load ptr, ptr %92, align 8, !tbaa !45
  br i1 %104, label %148, label %106

106:                                              ; preds = %102
  %107 = icmp eq ptr %105, %95
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  store ptr null, ptr %92, align 8, !tbaa !45
  br label %109

109:                                              ; preds = %108, %106
  %110 = call fastcc zeroext i8 @BLI_listbase_is_single(ptr noundef nonnull %103) #10, !range !51
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.ScanFillEdge, ptr %95, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !60
  %115 = getelementptr inbounds %struct.ScanFillVert, ptr %114, i64 0, i32 3
  call void @BLI_sortlist_r(ptr noundef nonnull %103, ptr noundef nonnull %115, ptr noundef nonnull @edge_isect_ls_sort_cb) #9
  br label %116

116:                                              ; preds = %112, %109
  %117 = getelementptr inbounds %struct.ScanFillEdge, ptr %95, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !59
  %119 = getelementptr inbounds %struct.ScanFillEdge, ptr %95, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !60
  %121 = call ptr @BLI_scanfill_edge_add(ptr noundef %0, ptr noundef %118, ptr noundef %120) #9
  call void @BLI_remlink(ptr noundef nonnull %93, ptr noundef %121) #9
  call void @BLI_insertlinkafter(ptr noundef nonnull %93, ptr noundef nonnull %95, ptr noundef %121) #9
  call void @BLI_remlink(ptr noundef nonnull %93, ptr noundef nonnull %95) #9
  call void @BLI_addtail(ptr noundef %3, ptr noundef nonnull %95) #9
  %122 = load ptr, ptr %8, align 8, !tbaa !42
  %123 = icmp eq ptr %122, %95
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store ptr %121, ptr %8, align 8, !tbaa !42
  br label %125

125:                                              ; preds = %124, %116
  %126 = load ptr, ptr %103, align 8, !tbaa !41
  %127 = icmp eq ptr %126, null
  br i1 %127, label %142, label %128

128:                                              ; preds = %125, %128
  %129 = phi ptr [ %140, %128 ], [ %126, %125 ]
  %130 = phi ptr [ %137, %128 ], [ %121, %125 ]
  %131 = getelementptr inbounds %struct.LinkData, ptr %129, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !72
  %133 = getelementptr inbounds %struct.ScanFillIsect, ptr %132, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !68
  %135 = getelementptr inbounds %struct.ScanFillEdge, ptr %130, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !60
  %137 = call ptr @BLI_scanfill_edge_add(ptr noundef %0, ptr noundef %134, ptr noundef %136) #9
  %138 = getelementptr inbounds %struct.ScanFillEdge, ptr %137, i64 0, i32 4
  store i16 %2, ptr %138, align 8, !tbaa !46
  %139 = load ptr, ptr %133, align 8, !tbaa !68
  store ptr %139, ptr %135, align 8, !tbaa !60
  call void @BLI_remlink(ptr noundef nonnull %93, ptr noundef %137) #9
  call void @BLI_insertlinkafter(ptr noundef nonnull %93, ptr noundef %130, ptr noundef %137) #9
  %140 = load ptr, ptr %129, align 8, !tbaa !41
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %128, !llvm.loop !74

142:                                              ; preds = %128, %125
  %143 = phi ptr [ %121, %125 ], [ %137, %128 ]
  call void @BLI_freelistN(ptr noundef nonnull %103) #9
  %144 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %144(ptr noundef nonnull %103) #9
  %145 = load ptr, ptr %92, align 8, !tbaa !45
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store ptr %143, ptr %92, align 8, !tbaa !45
  br label %155

148:                                              ; preds = %100, %102, %142
  %149 = phi ptr [ %101, %100 ], [ %105, %102 ], [ %145, %142 ]
  %150 = phi ptr [ %95, %100 ], [ %95, %102 ], [ %143, %142 ]
  %151 = icmp eq ptr %150, %149
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %150, align 8, !tbaa !54
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %94, !llvm.loop !75

155:                                              ; preds = %148, %152, %147, %88
  call void @BLI_freelistN(ptr noundef nonnull %5) #9
  call void @BLI_ghash_free(ptr noundef nonnull %81, ptr noundef null, ptr noundef null) #9
  %156 = getelementptr inbounds %struct.PolyInfo, ptr %1, i64 %7, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !45
  %158 = load ptr, ptr %8, align 8, !tbaa !42
  %159 = icmp eq ptr %158, null
  br i1 %159, label %178, label %160

160:                                              ; preds = %155, %174
  %161 = phi float [ %175, %174 ], [ 0x47EFFFFFE0000000, %155 ]
  %162 = phi ptr [ %163, %174 ], [ %157, %155 ]
  %163 = phi ptr [ %176, %174 ], [ %158, %155 ]
  %164 = phi ptr [ %172, %174 ], [ %158, %155 ]
  %165 = phi ptr [ %171, %174 ], [ %157, %155 ]
  %166 = getelementptr inbounds %struct.ScanFillEdge, ptr %163, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !60
  %168 = getelementptr inbounds %struct.ScanFillVert, ptr %167, i64 0, i32 3
  %169 = load float, ptr %168, align 8, !tbaa !66
  %170 = fcmp olt float %169, %161
  %171 = select i1 %170, ptr %162, ptr %165
  %172 = select i1 %170, ptr %163, ptr %164
  %173 = icmp eq ptr %163, %157
  br i1 %173, label %178, label %174

174:                                              ; preds = %160
  %175 = select i1 %170, float %169, float %161
  %176 = load ptr, ptr %163, align 8, !tbaa !54
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %160, !llvm.loop !76

178:                                              ; preds = %160, %174, %155
  %179 = phi ptr [ %157, %155 ], [ %171, %174 ], [ %171, %160 ]
  %180 = phi ptr [ null, %155 ], [ %172, %174 ], [ %172, %160 ]
  %181 = getelementptr inbounds %struct.ScanFillEdge, ptr %179, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !60
  br label %183

183:                                              ; preds = %200, %178
  %184 = phi ptr [ %180, %178 ], [ %207, %200 ]
  %185 = phi ptr [ %182, %178 ], [ %194, %200 ]
  %186 = phi i8 [ 0, %178 ], [ %206, %200 ]
  %187 = getelementptr inbounds %struct.ScanFillEdge, ptr %184, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !59
  %189 = icmp eq ptr %188, %185
  br i1 %189, label %190, label %193

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.ScanFillEdge, ptr %184, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !60
  br label %193

193:                                              ; preds = %183, %190
  %194 = phi ptr [ %192, %190 ], [ %188, %183 ]
  %195 = icmp eq i8 %186, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.ScanFillEdge, ptr %184, i64 0, i32 5
  %198 = load i8, ptr %197, align 2
  %199 = or i8 %198, 32
  store i8 %199, ptr %197, align 2
  br label %200

200:                                              ; preds = %196, %193
  %201 = getelementptr inbounds %struct.ScanFillVert, ptr %194, i64 0, i32 8
  %202 = load i8, ptr %201, align 1
  %203 = and i8 %202, 16
  %204 = icmp eq i8 %203, 0
  %205 = zext i1 %195 to i8
  %206 = select i1 %204, i8 %186, i8 %205
  %207 = call fastcc ptr @edge_step(ptr noundef %1, i16 noundef zeroext %2, ptr noundef %185, ptr noundef %194, ptr noundef nonnull %184) #10
  %208 = icmp eq ptr %184, %179
  br i1 %208, label %209, label %183, !llvm.loop !77

209:                                              ; preds = %200, %4, %86
  %210 = phi i8 [ 0, %86 ], [ 0, %4 ], [ 1, %200 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret i8 %210
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare i32 @isect_seg_seg_v2_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !78 {
  %3 = load float, ptr %1, align 4, !tbaa !66
  store float %3, ptr %0, align 4, !tbaa !66
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !66
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_scanfill_vert_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edge_isect_ls_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !79 {
  %4 = tail call fastcc ptr @edge_isect_ls_ensure(ptr noundef %0, ptr noundef %1) #10
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %6 = tail call ptr %5(i64 noundef 24, ptr noundef nonnull @__func__.edge_isect_ls_add) #9
  %7 = getelementptr inbounds %struct.LinkData, ptr %6, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.ScanFillEdge, ptr %1, i64 0, i32 5
  %9 = load i8, ptr %8, align 2
  %10 = or i8 %9, 16
  store i8 %10, ptr %8, align 2
  tail call void @BLI_addtail(ptr noundef %4, ptr noundef %6) #9
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_single(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !80 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = icmp eq ptr %2, %6
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: optsize
declare void @BLI_sortlist_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @edge_isect_ls_sort_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #6 !PGOFuncName !83 {
  %4 = getelementptr inbounds %struct.LinkData, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.LinkData, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.ScanFillIsect, ptr %5, i64 0, i32 2
  %9 = tail call fastcc float @len_squared_v2v2(ptr noundef %0, ptr noundef nonnull %8) #10
  %10 = getelementptr inbounds %struct.ScanFillIsect, ptr %7, i64 0, i32 2
  %11 = tail call fastcc float @len_squared_v2v2(ptr noundef %0, ptr noundef nonnull %10) #10
  %12 = fcmp ogt float %9, %11
  %13 = fcmp olt float %9, %11
  %14 = zext i1 %13 to i32
  %15 = select i1 %12, i32 -1, i32 %14
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @BLI_scanfill_edge_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @edge_step(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef readnone %2, ptr noundef readnone %3, ptr noundef readonly %4) unnamed_addr #7 !PGOFuncName !84 {
  %6 = load ptr, ptr %4, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  %8 = zext i16 %1 to i64
  br i1 %7, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PolyInfo, ptr %0, i64 %8, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %16

13:                                               ; preds = %5, %9
  %14 = getelementptr inbounds %struct.PolyInfo, ptr %0, i64 %8
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi ptr [ %15, %13 ], [ %6, %9 ]
  %18 = getelementptr inbounds %struct.ScanFillEdge, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, %3
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ScanFillEdge, ptr %17, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = icmp ne ptr %23, %3
  %25 = icmp eq ptr %19, %2
  %26 = or i1 %25, %24
  br i1 %26, label %35, label %32

27:                                               ; preds = %16
  %28 = icmp eq ptr %3, %2
  br i1 %28, label %35, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.ScanFillEdge, ptr %17, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  br label %32

32:                                               ; preds = %29, %21
  %33 = phi ptr [ %31, %29 ], [ %3, %21 ]
  %34 = icmp eq ptr %33, %2
  br i1 %34, label %35, label %67

35:                                               ; preds = %27, %32, %21
  %36 = getelementptr inbounds %struct.ScanFillEdge, ptr %4, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !85
  %38 = icmp eq ptr %37, null
  %39 = zext i16 %1 to i64
  br i1 %38, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.PolyInfo, ptr %0, i64 %39
  %42 = load ptr, ptr %41, align 8, !tbaa !42
  %43 = icmp eq ptr %42, %4
  br i1 %43, label %44, label %47

44:                                               ; preds = %35, %40
  %45 = getelementptr inbounds %struct.PolyInfo, ptr %0, i64 %39, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  br label %47

47:                                               ; preds = %40, %44
  %48 = phi ptr [ %46, %44 ], [ %37, %40 ]
  %49 = getelementptr inbounds %struct.ScanFillEdge, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = icmp eq ptr %50, %3
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ScanFillEdge, ptr %48, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !60
  %55 = icmp ne ptr %54, %3
  %56 = icmp eq ptr %50, %2
  %57 = or i1 %56, %55
  br i1 %57, label %66, label %63

58:                                               ; preds = %47
  %59 = icmp eq ptr %3, %2
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.ScanFillEdge, ptr %48, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !60
  br label %63

63:                                               ; preds = %60, %52
  %64 = phi ptr [ %62, %60 ], [ %3, %52 ]
  %65 = icmp eq ptr %64, %2
  br i1 %65, label %66, label %67

66:                                               ; preds = %58, %63, %52
  br label %67

67:                                               ; preds = %63, %32, %66
  %68 = phi ptr [ null, %66 ], [ %17, %32 ], [ %48, %63 ]
  ret ptr %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edge_isect_ls_ensure(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !86 {
  %3 = tail call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %7 = tail call ptr %6(i64 noundef 16, ptr noundef nonnull @__func__.edge_isect_ls_ensure) #9
  tail call void @BLI_ghash_insert(ptr noundef %0, ptr noundef %1, ptr noundef %7) #9
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %3, %2 ]
  ret ptr %9
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !87 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #10
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !88 {
  %4 = load float, ptr %1, align 4, !tbaa !66
  %5 = load float, ptr %2, align 4, !tbaa !66
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !66
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !66
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !66
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !89 {
  %3 = load float, ptr %0, align 4, !tbaa !66
  %4 = load float, ptr %1, align 4, !tbaa !66
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !66
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !66
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !40, i64 48}
!35 = !{!"ScanFillContext", !36, i64 0, !36, i64 16, !36, i64 32, !40, i64 48, !37, i64 56}
!36 = !{!"ListBase", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!37, !37, i64 0}
!42 = !{!43, !37, i64 0}
!43 = !{!"PolyInfo", !37, i64 0, !37, i64 8, !37, i64 16}
!44 = !{!35, !37, i64 24}
!45 = !{!43, !37, i64 8}
!46 = !{!47, !40, i64 32}
!47 = !{!"ScanFillEdge", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !48, i64 34, !48, i64 34, !38, i64 35}
!48 = !{!"int", !38, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{i8 0, i8 2}
!52 = distinct !{!52, !50}
!53 = !{!35, !37, i64 16}
!54 = !{!47, !37, i64 0}
!55 = distinct !{!55, !50}
!56 = !{!57, !40, i64 48}
!57 = !{!"ScanFillVert", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 24, !38, i64 36, !48, i64 44, !40, i64 48, !38, i64 50, !48, i64 51, !48, i64 51}
!58 = distinct !{!58, !50}
!59 = !{!47, !37, i64 16}
!60 = !{!47, !37, i64 24}
!61 = distinct !{!61, !50}
!62 = !{!35, !37, i64 0}
!63 = !{!57, !37, i64 0}
!64 = distinct !{!64, !50}
!65 = !{!"scanfill_utils.c:scanfill_preprocess_self_isect"}
!66 = !{!67, !67, i64 0}
!67 = !{!"float", !38, i64 0}
!68 = !{!69, !37, i64 32}
!69 = !{!"ScanFillIsect", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 32}
!70 = distinct !{!70, !50}
!71 = distinct !{!71, !50}
!72 = !{!73, !37, i64 16}
!73 = !{!"LinkData", !37, i64 0, !37, i64 8, !37, i64 16}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, !50}
!76 = distinct !{!76, !50}
!77 = distinct !{!77, !50}
!78 = !{!"scanfill_utils.c:copy_v2_v2"}
!79 = !{!"scanfill_utils.c:edge_isect_ls_add"}
!80 = !{!"scanfill_utils.c:BLI_listbase_is_single"}
!81 = !{!36, !37, i64 0}
!82 = !{!36, !37, i64 8}
!83 = !{!"scanfill_utils.c:edge_isect_ls_sort_cb"}
!84 = !{!"scanfill_utils.c:edge_step"}
!85 = !{!47, !37, i64 8}
!86 = !{!"scanfill_utils.c:edge_isect_ls_ensure"}
!87 = !{!"scanfill_utils.c:len_squared_v2v2"}
!88 = !{!"scanfill_utils.c:sub_v2_v2v2"}
!89 = !{!"scanfill_utils.c:dot_v2v2"}
