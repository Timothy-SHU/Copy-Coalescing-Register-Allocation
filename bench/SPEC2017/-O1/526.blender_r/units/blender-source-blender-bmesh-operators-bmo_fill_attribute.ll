; ModuleID = 'blender/source/blender/bmesh/operators/bmo_fill_attribute.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_fill_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }

@.str = private unnamed_addr constant [12 x i8] c"use_normals\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"use_data\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"faces_fail.out\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_face_attribute_fill_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #4
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #4
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  tail call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  store ptr null, ptr %3, align 8, !tbaa !34
  %8 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #4
  store ptr null, ptr %4, align 8, !tbaa !34
  %9 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #4
  %10 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %10, align 4, !tbaa !38
  %11 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  store ptr %14, ptr %5, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #4
  %15 = load ptr, ptr %12, align 8, !tbaa !42
  %16 = call ptr %15(ptr noundef nonnull %5) #4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %54, %2
  %19 = call i32 @BLI_mempool_count(ptr noundef %8) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %136, label %21

21:                                               ; preds = %18
  %22 = icmp eq i8 %7, 0
  %23 = icmp eq i8 %6, 0
  br label %58

24:                                               ; preds = %2, %54
  %25 = phi ptr [ %56, %54 ], [ %16, %2 ]
  %26 = getelementptr inbounds %struct.BMHeader, ptr %25, i64 0, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !49
  %28 = and i8 %27, 16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.BMFace, ptr %25, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  br label %33

33:                                               ; preds = %50, %30
  %34 = phi ptr [ %32, %30 ], [ %52, %50 ]
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  br label %37

37:                                               ; preds = %45, %33
  %38 = phi ptr [ %36, %33 ], [ %47, %45 ]
  %39 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  %41 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !49
  %43 = and i8 %42, 16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  %48 = icmp eq ptr %47, %34
  br i1 %48, label %50, label %37, !llvm.loop !56

49:                                               ; preds = %37
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %3, ptr noundef %34, ptr noundef %8) #4
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  %53 = icmp eq ptr %52, %32
  br i1 %53, label %54, label %33, !llvm.loop !60

54:                                               ; preds = %50, %24
  %55 = load ptr, ptr %12, align 8, !tbaa !42
  %56 = call ptr %55(ptr noundef nonnull %5) #4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %18, label %24, !llvm.loop !61

58:                                               ; preds = %21, %131
  %59 = phi ptr [ %8, %21 ], [ %60, %131 ]
  %60 = phi ptr [ %9, %21 ], [ %59, %131 ]
  %61 = phi i32 [ 0, %21 ], [ %63, %131 ]
  br label %62

62:                                               ; preds = %129, %58
  %63 = phi i32 [ %130, %129 ], [ %61, %58 ]
  br label %64

64:                                               ; preds = %62, %72
  %65 = load ptr, ptr %3, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %3, ptr noundef %59) #4
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi ptr [ %68, %67 ], [ null, %64 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %131, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !55
  %75 = getelementptr inbounds %struct.BMHeader, ptr %74, i64 0, i32 3
  %76 = load i8, ptr %75, align 1, !tbaa !49
  %77 = and i8 %76, 16
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %64, label %79, !llvm.loop !62

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 3
  %81 = getelementptr inbounds %struct.BMHeader, ptr %74, i64 0, i32 3
  %82 = and i8 %76, -17
  store i8 %82, ptr %81, align 1, !tbaa !49
  %83 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !59
  br label %85

85:                                               ; preds = %103, %79
  %86 = phi ptr [ %84, %79 ], [ %105, %103 ]
  %87 = getelementptr inbounds %struct.BMLoop, ptr %86, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !53
  %89 = icmp eq ptr %88, %86
  br i1 %89, label %103, label %90

90:                                               ; preds = %85, %99
  %91 = phi ptr [ %101, %99 ], [ %88, %85 ]
  %92 = getelementptr inbounds %struct.BMLoop, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !55
  %94 = getelementptr inbounds %struct.BMHeader, ptr %93, i64 0, i32 3
  %95 = load i8, ptr %94, align 1, !tbaa !49
  %96 = and i8 %95, 16
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %4, ptr noundef %91, ptr noundef %60) #4
  br label %99

99:                                               ; preds = %98, %90
  %100 = getelementptr inbounds %struct.BMLoop, ptr %91, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !53
  %102 = icmp eq ptr %101, %86
  br i1 %102, label %103, label %90, !llvm.loop !63

103:                                              ; preds = %99, %85
  %104 = getelementptr inbounds %struct.BMLoop, ptr %86, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !59
  %106 = icmp eq ptr %105, %70
  br i1 %106, label %107, label %85, !llvm.loop !64

107:                                              ; preds = %103
  %108 = load ptr, ptr %80, align 8, !tbaa !55
  br label %109

109:                                              ; preds = %109, %107
  %110 = phi ptr [ %70, %107 ], [ %112, %109 ]
  %111 = getelementptr inbounds %struct.BMLoop, ptr %110, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !53
  %113 = getelementptr inbounds %struct.BMLoop, ptr %112, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !55
  %115 = getelementptr inbounds %struct.BMHeader, ptr %114, i64 0, i32 3
  %116 = load i8, ptr %115, align 1, !tbaa !49
  %117 = and i8 %116, 16
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %109, !llvm.loop !65

119:                                              ; preds = %109
  br i1 %22, label %121, label %120

120:                                              ; preds = %119
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %114, ptr noundef %108) #4
  call void @BM_face_copy_shared(ptr noundef %0, ptr noundef %108, ptr noundef nonnull @bm_loop_is_face_untag, ptr noundef null) #4
  br label %121

121:                                              ; preds = %120, %119
  br i1 %23, label %129, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !66
  %125 = getelementptr inbounds %struct.BMLoop, ptr %112, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !66
  %127 = icmp eq ptr %124, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  call void @BM_face_normal_flip(ptr noundef %0, ptr noundef %108) #4
  br label %129

129:                                              ; preds = %128, %122, %121
  %130 = add i32 %63, 1
  br label %62, !llvm.loop !62

131:                                              ; preds = %69
  %132 = load ptr, ptr %3, align 8, !tbaa !34
  %133 = load ptr, ptr %4, align 8, !tbaa !34
  store ptr %133, ptr %3, align 8, !tbaa !34
  store ptr %132, ptr %4, align 8, !tbaa !34
  %134 = call i32 @BLI_mempool_count(ptr noundef %60) #4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %58, !llvm.loop !67

136:                                              ; preds = %131, %18
  %137 = phi i32 [ 0, %18 ], [ %63, %131 ]
  %138 = phi ptr [ %9, %18 ], [ %59, %131 ]
  %139 = phi ptr [ %8, %18 ], [ %60, %131 ]
  call void @BLI_mempool_destroy(ptr noundef %139) #4
  store ptr null, ptr %3, align 8, !tbaa !34
  call void @BLI_mempool_destroy(ptr noundef %138) #4
  store ptr null, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  %140 = call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str.2) #4
  %141 = icmp eq i32 %137, %140
  br i1 %141, label %144, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %143, ptr noundef nonnull @.str.3, i8 noundef zeroext 8, i8 noundef zeroext 16) #4
  br label %144

144:                                              ; preds = %142, %136
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_hflag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_mempool_count(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_copy_shared(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @bm_loop_is_face_untag(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.BMHeader, ptr %4, i64 0, i32 3
  %6 = load i8, ptr %5, align 1, !tbaa !49
  %7 = lshr i8 %6, 4
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  ret i8 %9
}

declare void @BM_face_normal_flip(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !36, i64 60}
!39 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !35, i64 40}
!42 = !{!39, !35, i64 48}
!43 = !{!44, !35, i64 56}
!44 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !45, i64 144, !45, i64 344, !45, i64 544, !45, i64 744, !46, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !47, i64 960, !35, i64 976, !47, i64 984, !35, i64 1000}
!45 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!46 = !{!"short", !36, i64 0}
!47 = !{!"ListBase", !35, i64 0, !35, i64 8}
!48 = !{!36, !36, i64 0}
!49 = !{!50, !36, i64 13}
!50 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!51 = !{!52, !35, i64 24}
!52 = !{!"BMFace", !50, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !46, i64 48}
!53 = !{!54, !35, i64 40}
!54 = !{!"BMLoop", !50, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!55 = !{!54, !35, i64 32}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!54, !35, i64 56}
!60 = distinct !{!60, !57, !58}
!61 = distinct !{!61, !57, !58}
!62 = distinct !{!62, !57, !58}
!63 = distinct !{!63, !57, !58}
!64 = distinct !{!64, !57, !58}
!65 = distinct !{!65, !57, !58}
!66 = !{!54, !35, i64 16}
!67 = distinct !{!67, !57, !58}
