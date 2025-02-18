; ModuleID = 'blender/source/blender/nodes/intern/node_util.c'
source_filename = "blender/source/blender/nodes/intern/node_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@ramp_blend_items = external global [0 x %struct.EnumPropertyItem], align 8
@node_math_items = external global [0 x %struct.EnumPropertyItem], align 8
@node_vec_math_items = external global [0 x %struct.EnumPropertyItem], align 8
@node_filter_items = external global [0 x %struct.EnumPropertyItem], align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"internal node link\00", align 1
@RNA_NodeSocket = external global %struct.StructRNA, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"default_value\00", align 1
@switch.table.node_update_internal_links_default = private unnamed_addr constant [7 x i32] [i32 3, i32 -1, i32 4, i32 -1, i32 1, i32 -1, i32 2], align 4
@switch.table.node_update_internal_links_default.2 = private unnamed_addr constant [7 x i32] [i32 3, i32 4, i32 -1, i32 -1, i32 1, i32 -1, i32 2], align 4
@switch.table.node_update_internal_links_default.3 = private unnamed_addr constant [7 x i32] [i32 5, i32 1, i32 2, i32 -1, i32 3, i32 -1, i32 4], align 4
@switch.table.node_update_internal_links_default.4 = private unnamed_addr constant [7 x i32] [i32 4, i32 1, i32 2, i32 -1, i32 3, i32 -1, i32 5], align 4
@switch.table.node_update_internal_links_default.5 = private unnamed_addr constant [7 x i32] [i32 3, i32 1, i32 2, i32 -1, i32 5, i32 -1, i32 4], align 4

; Function Attrs: nounwind uwtable
define dso_local void @node_free_curves(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @curvemapping_free(ptr noundef %3) #3
  ret void
}

declare void @curvemapping_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @node_free_standard_storage(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %6(ptr noundef nonnull %3) #3
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @node_copy_curves(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr @curvemapping_copy(ptr noundef %5) #3
  %7 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %6, ptr %7, align 8, !tbaa !34
  ret void
}

declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @node_copy_standard_storage(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr %4(ptr noundef %6) #3
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %7, ptr %8, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @node_initexec_curves(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @curvemapping_initialize(ptr noundef %5) #3
  ret ptr null
}

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @node_blend_label(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %7 = load i16, ptr %6, align 8, !tbaa !45
  %8 = sext i16 %7 to i32
  %9 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull @ramp_blend_items, i32 noundef %8, ptr noundef nonnull %5) #3
  %10 = load ptr, ptr %5, align 8, !tbaa !44
  %11 = sext i32 %3 to i64
  %12 = call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %10, i64 noundef %11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare zeroext i8 @RNA_enum_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @node_math_label(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %7 = load i16, ptr %6, align 8, !tbaa !45
  %8 = sext i16 %7 to i32
  %9 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull @node_math_items, i32 noundef %8, ptr noundef nonnull %5) #3
  %10 = load ptr, ptr %5, align 8, !tbaa !44
  %11 = sext i32 %3 to i64
  %12 = call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %10, i64 noundef %11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @node_vect_math_label(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %7 = load i16, ptr %6, align 8, !tbaa !45
  %8 = sext i16 %7 to i32
  %9 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull @node_vec_math_items, i32 noundef %8, ptr noundef nonnull %5) #3
  %10 = load ptr, ptr %5, align 8, !tbaa !44
  %11 = sext i32 %3 to i64
  %12 = call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %10, i64 noundef %11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @node_filter_label(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %7 = load i16, ptr %6, align 8, !tbaa !45
  %8 = sext i16 %7 to i32
  %9 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull @node_filter_items, i32 noundef %8, ptr noundef nonnull %5) #3
  %10 = load ptr, ptr %5, align 8, !tbaa !44
  %11 = sext i32 %3 to i64
  %12 = call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %10, i64 noundef %11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @node_update_internal_links_default(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %144, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %11, %8 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 23
  store ptr null, ptr %10, align 8, !tbaa !46
  %11 = load ptr, ptr %9, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !49

13:                                               ; preds = %8, %4
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %19 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 23
  br label %23

20:                                               ; preds = %136, %13
  %21 = load ptr, ptr %5, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %144, label %139

23:                                               ; preds = %17, %136
  %24 = phi ptr [ %15, %17 ], [ %137, %136 ]
  %25 = tail call i32 @nodeLinkIsHidden(ptr noundef nonnull %24) #3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %136

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bNodeLink, ptr %24, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  %30 = getelementptr inbounds %struct.bNodeLink, ptr %24, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %136

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 23
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %136

37:                                               ; preds = %33
  %38 = tail call i32 @nodeSocketIsHidden(ptr noundef %29) #3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %136

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 8
  %42 = load i16, ptr %41, align 2, !tbaa !55
  %43 = and i16 %42, 512
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %136

45:                                               ; preds = %40
  store ptr %24, ptr %34, align 8, !tbaa !46
  %46 = load ptr, ptr %18, align 8, !tbaa !44
  %47 = icmp eq ptr %46, null
  br i1 %47, label %123, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 7
  br label %50

50:                                               ; preds = %48, %117
  %51 = phi ptr [ %46, %48 ], [ %121, %117 ]
  %52 = phi ptr [ null, %48 ], [ %120, %117 ]
  %53 = phi i8 [ 0, %48 ], [ %119, %117 ]
  %54 = phi i32 [ -1, %48 ], [ %118, %117 ]
  %55 = getelementptr inbounds %struct.bNodeSocket, ptr %51, i64 0, i32 7
  %56 = load i16, ptr %55, align 8, !tbaa !56
  %57 = load i16, ptr %49, align 8, !tbaa !56
  switch i16 %57, label %94 [
    i16 2, label %58
    i16 1, label %60
    i16 0, label %62
    i16 6, label %64
    i16 4, label %66
    i16 3, label %68
    i16 7, label %71
  ]

58:                                               ; preds = %50
  %59 = icmp ult i16 %56, 7
  br i1 %59, label %74, label %94

60:                                               ; preds = %50
  %61 = icmp ult i16 %56, 7
  br i1 %61, label %78, label %94

62:                                               ; preds = %50
  %63 = icmp ult i16 %56, 7
  br i1 %63, label %82, label %94

64:                                               ; preds = %50
  %65 = icmp ult i16 %56, 7
  br i1 %65, label %86, label %94

66:                                               ; preds = %50
  %67 = icmp ult i16 %56, 7
  br i1 %67, label %90, label %94

68:                                               ; preds = %50
  %69 = icmp eq i16 %56, 3
  %70 = select i1 %69, i32 1, i32 -1
  br label %94

71:                                               ; preds = %50
  %72 = icmp eq i16 %56, 7
  %73 = select i1 %72, i32 1, i32 -1
  br label %94

74:                                               ; preds = %58
  %75 = zext nneg i16 %56 to i64
  %76 = getelementptr inbounds [7 x i32], ptr @switch.table.node_update_internal_links_default, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4
  br label %94

78:                                               ; preds = %60
  %79 = zext nneg i16 %56 to i64
  %80 = getelementptr inbounds [7 x i32], ptr @switch.table.node_update_internal_links_default.2, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4
  br label %94

82:                                               ; preds = %62
  %83 = zext nneg i16 %56 to i64
  %84 = getelementptr inbounds [7 x i32], ptr @switch.table.node_update_internal_links_default.3, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4
  br label %94

86:                                               ; preds = %64
  %87 = zext nneg i16 %56 to i64
  %88 = getelementptr inbounds [7 x i32], ptr @switch.table.node_update_internal_links_default.4, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4
  br label %94

90:                                               ; preds = %66
  %91 = zext nneg i16 %56 to i64
  %92 = getelementptr inbounds [7 x i32], ptr @switch.table.node_update_internal_links_default.5, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4
  br label %94

94:                                               ; preds = %66, %90, %64, %86, %62, %82, %60, %78, %58, %74, %71, %68, %50
  %95 = phi i32 [ %70, %68 ], [ %73, %71 ], [ -1, %50 ], [ %77, %74 ], [ -1, %58 ], [ %81, %78 ], [ -1, %60 ], [ %85, %82 ], [ -1, %62 ], [ %89, %86 ], [ -1, %64 ], [ %93, %90 ], [ -1, %66 ]
  %96 = getelementptr inbounds %struct.bNodeSocket, ptr %51, i64 0, i32 23
  %97 = load ptr, ptr %96, align 8, !tbaa !46
  %98 = icmp ne ptr %97, null
  %99 = zext i1 %98 to i8
  %100 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %51) #3
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.bNodeSocket, ptr %51, i64 0, i32 8
  %104 = load i16, ptr %103, align 2, !tbaa !55
  %105 = and i16 %104, 512
  %106 = icmp ne i16 %105, 0
  %107 = icmp slt i32 %95, 0
  %108 = select i1 %106, i1 true, i1 %107
  %109 = icmp slt i32 %95, %54
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %102
  %112 = icmp sgt i32 %95, %54
  %113 = icmp eq i8 %53, 0
  %114 = select i1 %98, i1 %113, i1 false
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %111, %102, %94
  %118 = phi i32 [ %54, %102 ], [ %54, %94 ], [ %95, %116 ], [ %54, %111 ]
  %119 = phi i8 [ %53, %102 ], [ %53, %94 ], [ %99, %116 ], [ %53, %111 ]
  %120 = phi ptr [ %52, %102 ], [ %52, %94 ], [ %51, %116 ], [ %52, %111 ]
  %121 = load ptr, ptr %51, align 8, !tbaa !44
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %50, !llvm.loop !57

123:                                              ; preds = %117, %45
  %124 = phi ptr [ null, %45 ], [ %120, %117 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %136, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %128 = tail call ptr %127(i64 noundef 56, ptr noundef nonnull @.str) #3
  %129 = getelementptr inbounds %struct.bNodeLink, ptr %128, i64 0, i32 2
  store ptr %1, ptr %129, align 8, !tbaa !54
  %130 = getelementptr inbounds %struct.bNodeLink, ptr %128, i64 0, i32 4
  store ptr %124, ptr %130, align 8, !tbaa !52
  %131 = getelementptr inbounds %struct.bNodeLink, ptr %128, i64 0, i32 3
  store ptr %1, ptr %131, align 8, !tbaa !58
  %132 = getelementptr inbounds %struct.bNodeLink, ptr %128, i64 0, i32 5
  store ptr %29, ptr %132, align 8, !tbaa !59
  %133 = getelementptr inbounds %struct.bNodeLink, ptr %128, i64 0, i32 6
  %134 = load i32, ptr %133, align 8, !tbaa !60
  %135 = or i32 %134, 2
  store i32 %135, ptr %133, align 8, !tbaa !60
  tail call void @BLI_addtail(ptr noundef nonnull %19, ptr noundef %128) #3
  br label %136

136:                                              ; preds = %123, %126, %37, %40, %27, %33, %23
  %137 = load ptr, ptr %24, align 8, !tbaa !44
  %138 = icmp eq ptr %137, null
  br i1 %138, label %20, label %23, !llvm.loop !61

139:                                              ; preds = %20, %139
  %140 = phi ptr [ %142, %139 ], [ %21, %20 ]
  %141 = getelementptr inbounds %struct.bNodeSocket, ptr %140, i64 0, i32 23
  store ptr null, ptr %141, align 8, !tbaa !46
  %142 = load ptr, ptr %140, align 8, !tbaa !44
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %139, !llvm.loop !62

144:                                              ; preds = %139, %20, %2
  ret void
}

declare i32 @nodeLinkIsHidden(ptr noundef) local_unnamed_addr #1

declare i32 @nodeSocketIsHidden(ptr noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local float @node_socket_get_float(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #3
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %2, ptr noundef nonnull %4) #3
  %5 = call float @RNA_float_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.1) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #3
  ret float %5
}

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @node_socket_set_float(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #3
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %2, ptr noundef nonnull %5) #3
  call void @RNA_float_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, float noundef %3) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #3
  ret void
}

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @node_socket_get_color(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #3
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %2, ptr noundef nonnull %5) #3
  call void @RNA_float_get_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef %3) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #3
  ret void
}

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @node_socket_set_color(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #3
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %2, ptr noundef nonnull %5) #3
  call void @RNA_float_set_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef %3) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #3
  ret void
}

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @node_socket_get_vector(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #3
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %2, ptr noundef nonnull %5) #3
  call void @RNA_float_get_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef %3) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @node_socket_set_vector(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #3
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %2, ptr noundef nonnull %5) #3
  call void @RNA_float_set_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef %3) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #3
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
!34 = !{!35, !36, i64 248}
!35 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !39, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !39, i64 308, !37, i64 312, !40, i64 376, !40, i64 378, !42, i64 380, !42, i64 384, !40, i64 388, !40, i64 390, !36, i64 392, !43, i64 400, !43, i64 416, !43, i64 432, !40, i64 448, !40, i64 450, !39, i64 452, !36, i64 456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!"float", !37, i64 0}
!43 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!44 = !{!36, !36, i64 0}
!45 = !{!35, !40, i64 376}
!46 = !{!47, !36, i64 296}
!47 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !36, i64 176, !37, i64 184, !42, i64 248, !42, i64 252, !36, i64 256, !40, i64 264, !40, i64 266, !39, i64 268, !36, i64 272, !39, i64 280, !39, i64 284, !36, i64 288, !36, i64 296, !48, i64 304}
!48 = !{!"bNodeStack", !37, i64 0, !42, i64 16, !42, i64 20, !36, i64 24, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !37, i64 44}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!53, !36, i64 32}
!53 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !39, i64 48, !39, i64 52}
!54 = !{!53, !36, i64 16}
!55 = !{!47, !40, i64 170}
!56 = !{!47, !40, i64 168}
!57 = distinct !{!57, !50, !51}
!58 = !{!53, !36, i64 24}
!59 = !{!53, !36, i64 40}
!60 = !{!53, !39, i64 48}
!61 = distinct !{!61, !50, !51}
!62 = distinct !{!62, !50, !51}
