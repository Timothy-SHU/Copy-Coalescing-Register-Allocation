; ModuleID = 'blender/source/blender/nodes/intern/node_exec.c'
source_filename = "blender/source/blender/nodes/intern/node_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeTreeExec = type { ptr, i32, ptr, i32, ptr, ptr }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeExec = type { ptr, %struct.bNodeExecData, ptr }
%struct.bNodeExecData = type { ptr, ptr }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bNodeThreadStack = type { ptr, ptr, ptr, i8 }

@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [25 x i8] c"node tree execution data\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"node execution data\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"bNodeStack\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"bNodeThreadStack\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @node_exec_socket_use_stack(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 7
  %3 = load i16, ptr %2, align 8, !tbaa !34
  %4 = icmp ult i16 %3, 4
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @node_get_socket_stack(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 16
  %8 = load i16, ptr %7, align 8, !tbaa !43
  %9 = icmp sgt i16 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = zext nneg i16 %8 to i64
  %12 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %2, %6, %10
  %14 = phi ptr [ %12, %10 ], [ null, %6 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @node_get_stack(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #1 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %15, %10 ], [ %8, %6 ]
  %12 = phi ptr [ %14, %10 ], [ %2, %6 ]
  %13 = tail call ptr @node_get_socket_stack(ptr noundef %1, ptr noundef nonnull %11) #9
  %14 = getelementptr inbounds ptr, ptr %12, i64 1
  store ptr %13, ptr %12, align 8, !tbaa !44
  %15 = load ptr, ptr %11, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !45

17:                                               ; preds = %10, %6, %4
  %18 = icmp eq ptr %3, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %28, %23 ], [ %21, %19 ]
  %25 = phi ptr [ %27, %23 ], [ %3, %19 ]
  %26 = tail call ptr @node_get_socket_stack(ptr noundef %1, ptr noundef nonnull %24) #9
  %27 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr %26, ptr %25, align 8, !tbaa !44
  %28 = load ptr, ptr %24, align 8, !tbaa !44
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %23, !llvm.loop !47

30:                                               ; preds = %23, %19, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ntree_exec_begin(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #3 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %7 = load ptr, ptr @G, align 8, !tbaa !48
  tail call void @ntreeUpdateTree(ptr noundef %7, ptr noundef %1) #11
  call void @ntreeGetDependencyList(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %9 = call ptr %8(i64 noundef 48, ptr noundef nonnull @.str) #11
  store ptr %1, ptr %9, align 8, !tbaa !51
  store i32 0, ptr %4, align 4, !tbaa !53
  %10 = load i32, ptr %6, align 4, !tbaa !53
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = sext i32 %10 to i64
  br label %63

14:                                               ; preds = %3, %56
  %15 = phi i64 [ %57, %56 ], [ 0, %3 ]
  %16 = load ptr, ptr %5, align 8, !tbaa !44
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = load i32, ptr %4, align 4, !tbaa !53
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 14
  store i16 %20, ptr %21, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %14, %25
  %26 = phi ptr [ %27, %25 ], [ %23, %14 ]
  call fastcc void @node_init_input_index(ptr noundef nonnull %26, ptr noundef nonnull %4) #9
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %25, !llvm.loop !57

29:                                               ; preds = %25, %14
  %30 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !58
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 8
  %36 = load i16, ptr %35, align 4, !tbaa !59
  %37 = icmp eq i16 %36, 6
  br i1 %37, label %38, label %48

38:                                               ; preds = %34, %29
  %39 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 23
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi ptr [ %40, %42 ], [ %46, %44 ]
  call fastcc void @node_init_output_index(ptr noundef nonnull %45, ptr noundef nonnull %4, ptr noundef nonnull %43) #9
  %46 = load ptr, ptr %45, align 8, !tbaa !44
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %44, !llvm.loop !60

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 18
  %50 = load ptr, ptr %49, align 8, !tbaa !44
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48, %52
  %53 = phi ptr [ %54, %52 ], [ %50, %48 ]
  call fastcc void @node_init_output_index(ptr noundef nonnull %53, ptr noundef nonnull %4, ptr noundef null) #9
  %54 = load ptr, ptr %53, align 8, !tbaa !44
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %52, !llvm.loop !61

56:                                               ; preds = %52, %44, %48, %38
  %57 = add nuw nsw i64 %15, 1
  %58 = load i32, ptr %6, align 4, !tbaa !53
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %14, label %61, !llvm.loop !62

61:                                               ; preds = %56
  %62 = load i32, ptr %4, align 4, !tbaa !53
  br label %63

63:                                               ; preds = %12, %61
  %64 = phi i64 [ %13, %12 ], [ %59, %61 ]
  %65 = phi i32 [ 0, %12 ], [ %62, %61 ]
  %66 = phi i32 [ %10, %12 ], [ %58, %61 ]
  %67 = getelementptr inbounds %struct.bNodeTreeExec, ptr %9, i64 0, i32 1
  store i32 %66, ptr %67, align 8, !tbaa !63
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %69 = shl nsw i64 %64, 5
  %70 = call ptr %68(i64 noundef %69, ptr noundef nonnull @.str.1) #11
  %71 = getelementptr inbounds %struct.bNodeTreeExec, ptr %9, i64 0, i32 2
  store ptr %70, ptr %71, align 8, !tbaa !64
  %72 = getelementptr inbounds %struct.bNodeTreeExec, ptr %9, i64 0, i32 3
  store i32 %65, ptr %72, align 8, !tbaa !65
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %74 = sext i32 %65 to i64
  %75 = mul nsw i64 %74, 48
  %76 = call ptr %73(i64 noundef %75, ptr noundef nonnull @.str.2) #11
  %77 = getelementptr inbounds %struct.bNodeTreeExec, ptr %9, i64 0, i32 4
  store ptr %76, ptr %77, align 8, !tbaa !66
  %78 = load i32, ptr %72, align 8, !tbaa !65
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %133

80:                                               ; preds = %63
  %81 = zext nneg i32 %78 to i64
  %82 = add nuw nsw i64 %81, 7
  %83 = and i64 %82, 4294967288
  %84 = add nsw i64 %81, -1
  %85 = insertelement <8 x i64> poison, i64 %84, i64 0
  %86 = shufflevector <8 x i64> %85, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %87

87:                                               ; preds = %129, %80
  %88 = phi i64 [ 0, %80 ], [ %130, %129 ]
  %89 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %80 ], [ %131, %129 ]
  %90 = icmp ule <8 x i64> %89, %86
  %91 = extractelement <8 x i1> %90, i64 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.bNodeStack, ptr %76, i64 %88, i32 4
  store i16 1, ptr %93, align 8, !tbaa !67
  br label %94

94:                                               ; preds = %92, %87
  %95 = extractelement <8 x i1> %90, i64 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = or disjoint i64 %88, 1
  %98 = getelementptr inbounds %struct.bNodeStack, ptr %76, i64 %97, i32 4
  store i16 1, ptr %98, align 8, !tbaa !67
  br label %99

99:                                               ; preds = %96, %94
  %100 = extractelement <8 x i1> %90, i64 2
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = or disjoint i64 %88, 2
  %103 = getelementptr inbounds %struct.bNodeStack, ptr %76, i64 %102, i32 4
  store i16 1, ptr %103, align 8, !tbaa !67
  br label %104

104:                                              ; preds = %101, %99
  %105 = extractelement <8 x i1> %90, i64 3
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = or disjoint i64 %88, 3
  %108 = getelementptr inbounds %struct.bNodeStack, ptr %76, i64 %107, i32 4
  store i16 1, ptr %108, align 8, !tbaa !67
  br label %109

109:                                              ; preds = %106, %104
  %110 = extractelement <8 x i1> %90, i64 4
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = or disjoint i64 %88, 4
  %113 = getelementptr inbounds %struct.bNodeStack, ptr %76, i64 %112, i32 4
  store i16 1, ptr %113, align 8, !tbaa !67
  br label %114

114:                                              ; preds = %111, %109
  %115 = extractelement <8 x i1> %90, i64 5
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = or disjoint i64 %88, 5
  %118 = getelementptr inbounds %struct.bNodeStack, ptr %76, i64 %117, i32 4
  store i16 1, ptr %118, align 8, !tbaa !67
  br label %119

119:                                              ; preds = %116, %114
  %120 = extractelement <8 x i1> %90, i64 6
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = or disjoint i64 %88, 6
  %123 = getelementptr inbounds %struct.bNodeStack, ptr %76, i64 %122, i32 4
  store i16 1, ptr %123, align 8, !tbaa !67
  br label %124

124:                                              ; preds = %121, %119
  %125 = extractelement <8 x i1> %90, i64 7
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = or disjoint i64 %88, 7
  %128 = getelementptr inbounds %struct.bNodeStack, ptr %76, i64 %127, i32 4
  store i16 1, ptr %128, align 8, !tbaa !67
  br label %129

129:                                              ; preds = %126, %124
  %130 = add i64 %88, 8
  %131 = add <8 x i64> %89, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %132 = icmp eq i64 %130, %83
  br i1 %132, label %133, label %87, !llvm.loop !68

133:                                              ; preds = %129, %63
  %134 = load i32, ptr %6, align 4, !tbaa !53
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %206

136:                                              ; preds = %133
  %137 = load ptr, ptr %71, align 8, !tbaa !64
  br label %138

138:                                              ; preds = %136, %200
  %139 = phi i64 [ 0, %136 ], [ %201, %200 ]
  %140 = phi ptr [ %137, %136 ], [ %202, %200 ]
  %141 = load ptr, ptr %5, align 8, !tbaa !44
  %142 = getelementptr inbounds ptr, ptr %141, i64 %139
  %143 = load ptr, ptr %142, align 8, !tbaa !44
  store ptr %143, ptr %140, align 8, !tbaa !71
  %144 = getelementptr inbounds %struct.bNode, ptr %143, i64 0, i32 4
  %145 = load ptr, ptr %144, align 8, !tbaa !74
  %146 = getelementptr inbounds %struct.bNodeType, ptr %145, i64 0, i32 41
  %147 = load ptr, ptr %146, align 8, !tbaa !75
  %148 = getelementptr inbounds %struct.bNodeExec, ptr %140, i64 0, i32 2
  store ptr %147, ptr %148, align 8, !tbaa !78
  %149 = getelementptr inbounds %struct.bNode, ptr %143, i64 0, i32 17
  %150 = load ptr, ptr %149, align 8, !tbaa !44
  %151 = icmp eq ptr %150, null
  br i1 %151, label %174, label %152

152:                                              ; preds = %138
  %153 = getelementptr inbounds %struct.bNode, ptr %143, i64 0, i32 37
  br label %154

154:                                              ; preds = %152, %171
  %155 = phi ptr [ %150, %152 ], [ %172, %171 ]
  %156 = getelementptr inbounds %struct.bNodeSocket, ptr %155, i64 0, i32 23
  %157 = load ptr, ptr %156, align 8, !tbaa !79
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.bNodeLink, ptr %157, i64 0, i32 6
  %161 = load i32, ptr %160, align 8, !tbaa !80
  %162 = and i32 %161, 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store i16 0, ptr %153, align 4, !tbaa !82
  br label %165

165:                                              ; preds = %164, %159, %154
  %166 = load ptr, ptr %77, align 8, !tbaa !66
  %167 = call fastcc ptr @setup_stack(ptr noundef %166, ptr noundef %1, ptr noundef %143, ptr noundef nonnull %155) #9
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.bNodeStack, ptr %167, i64 0, i32 5
  store i16 1, ptr %170, align 2, !tbaa !83
  br label %171

171:                                              ; preds = %165, %169
  %172 = load ptr, ptr %155, align 8, !tbaa !44
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %154, !llvm.loop !84

174:                                              ; preds = %171, %138
  %175 = getelementptr inbounds %struct.bNode, ptr %143, i64 0, i32 18
  %176 = load ptr, ptr %175, align 8, !tbaa !44
  %177 = icmp eq ptr %176, null
  br i1 %177, label %184, label %178

178:                                              ; preds = %174, %178
  %179 = phi ptr [ %182, %178 ], [ %176, %174 ]
  %180 = load ptr, ptr %77, align 8, !tbaa !66
  %181 = call fastcc ptr @setup_stack(ptr noundef %180, ptr noundef %1, ptr noundef %143, ptr noundef nonnull %179) #9
  %182 = load ptr, ptr %179, align 8, !tbaa !44
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %178, !llvm.loop !85

184:                                              ; preds = %178, %174
  %185 = call i32 @BKE_node_instance_key(i32 %2, ptr noundef %1, ptr noundef %143) #11
  %186 = load ptr, ptr %0, align 8, !tbaa !86
  %187 = icmp eq ptr %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = call ptr @BKE_node_instance_hash_lookup(ptr noundef nonnull %186, i32 %185) #11
  br label %190

190:                                              ; preds = %184, %188
  %191 = phi ptr [ %189, %188 ], [ null, %184 ]
  %192 = getelementptr inbounds %struct.bNodeExec, ptr %140, i64 0, i32 1, i32 1
  store ptr %191, ptr %192, align 8, !tbaa !88
  %193 = load ptr, ptr %144, align 8, !tbaa !74
  %194 = getelementptr inbounds %struct.bNodeType, ptr %193, i64 0, i32 40
  %195 = load ptr, ptr %194, align 8, !tbaa !89
  %196 = icmp eq ptr %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.bNodeExec, ptr %140, i64 0, i32 1
  %199 = call ptr %195(ptr noundef nonnull %0, ptr noundef nonnull %143, i32 %185) #11
  store ptr %199, ptr %198, align 8, !tbaa !90
  br label %200

200:                                              ; preds = %190, %197
  %201 = add nuw nsw i64 %139, 1
  %202 = getelementptr inbounds %struct.bNodeExec, ptr %140, i64 1
  %203 = load i32, ptr %6, align 4, !tbaa !53
  %204 = sext i32 %203 to i64
  %205 = icmp slt i64 %201, %204
  br i1 %205, label %138, label %206, !llvm.loop !91

206:                                              ; preds = %200, %133
  %207 = load ptr, ptr %5, align 8, !tbaa !44
  %208 = icmp eq ptr %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %206
  %210 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %210(ptr noundef nonnull %207) #11
  br label %211

211:                                              ; preds = %209, %206
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret ptr %9
}

; Function Attrs: optsize
declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ntreeGetDependencyList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_init_input_index(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !PGOFuncName !92 {
  %3 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeLink, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 16
  %12 = load i16, ptr %11, align 8, !tbaa !43
  br label %20

13:                                               ; preds = %6, %2
  %14 = tail call i32 @node_exec_socket_use_stack(ptr noundef nonnull %0) #9, !range !94
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %1, align 4, !tbaa !53
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %1, align 4, !tbaa !53
  %19 = trunc i32 %17 to i16
  br label %20

20:                                               ; preds = %13, %16, %10
  %21 = phi i16 [ %19, %16 ], [ %12, %10 ], [ -1, %13 ]
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 16
  store i16 %21, ptr %22, align 8, !tbaa !43
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_init_output_index(ptr noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2) unnamed_addr #6 !PGOFuncName !95 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %3, %9
  %6 = phi ptr [ %7, %9 ], [ %2, %3 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %5, !llvm.loop !97

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %15, i64 0, i32 16
  %17 = load i16, ptr %16, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 16
  store i16 %17, ptr %18, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 23
  store ptr %7, ptr %19, align 8, !tbaa !79
  br label %40

20:                                               ; preds = %5
  %21 = tail call i32 @node_exec_socket_use_stack(ptr noundef %0) #9, !range !94
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %1, align 4, !tbaa !53
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %1, align 4, !tbaa !53
  %26 = trunc i32 %24 to i16
  %27 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 16
  store i16 %26, ptr %27, align 8, !tbaa !43
  br label %40

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 16
  store i16 -1, ptr %29, align 8, !tbaa !43
  br label %40

30:                                               ; preds = %3
  %31 = tail call i32 @node_exec_socket_use_stack(ptr noundef %0) #9, !range !94
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %1, align 4, !tbaa !53
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %1, align 4, !tbaa !53
  %36 = trunc i32 %34 to i16
  %37 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 16
  store i16 %36, ptr %37, align 8, !tbaa !43
  br label %40

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 16
  store i16 -1, ptr %39, align 8, !tbaa !43
  br label %40

40:                                               ; preds = %13, %28, %23, %33, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @setup_stack(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !PGOFuncName !98 {
  %5 = tail call ptr @node_get_socket_stack(ptr noundef %0, ptr noundef %3) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 7
  %13 = load i16, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.bNodeStack, ptr %5, i64 0, i32 7
  store i16 %13, ptr %14, align 2, !tbaa !99
  switch i16 %13, label %19 [
    i16 0, label %15
    i16 1, label %17
    i16 2, label %18
  ]

15:                                               ; preds = %11
  %16 = tail call float @node_socket_get_float(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #11
  store float %16, ptr %5, align 8, !tbaa !100
  br label %19

17:                                               ; preds = %11
  tail call void @node_socket_get_vector(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %5) #11
  br label %19

18:                                               ; preds = %11
  tail call void @node_socket_get_color(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %5) #11
  br label %19

19:                                               ; preds = %15, %17, %18, %11, %7, %4
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @BKE_node_instance_key(i32, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_node_instance_hash_lookup(ptr noundef, i32) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntree_exec_end(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %6(ptr noundef nonnull %3) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !63
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %7, %24
  %14 = phi i32 [ %25, %24 ], [ %11, %7 ]
  %15 = phi i32 [ %26, %24 ], [ 0, %7 ]
  %16 = phi ptr [ %27, %24 ], [ %9, %7 ]
  %17 = getelementptr inbounds %struct.bNodeExec, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.bNodeExec, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !90
  tail call void %18(ptr noundef %22) #11
  %23 = load i32, ptr %10, align 8, !tbaa !63
  br label %24

24:                                               ; preds = %13, %20
  %25 = phi i32 [ %14, %13 ], [ %23, %20 ]
  %26 = add nuw nsw i32 %15, 1
  %27 = getelementptr inbounds %struct.bNodeExec, ptr %16, i64 1
  %28 = icmp slt i32 %26, %25
  br i1 %28, label %13, label %29, !llvm.loop !101

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !tbaa !64
  br label %31

31:                                               ; preds = %29, %7
  %32 = phi ptr [ %30, %29 ], [ %9, %7 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %35(ptr noundef nonnull %32) #11
  br label %36

36:                                               ; preds = %34, %31
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %37(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeGetThreadStack(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.ListBase, ptr %4, i64 %5
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %6, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bNodeThreadStack, ptr %9, i64 0, i32 3
  %13 = load i8, ptr %12, align 8, !tbaa !103
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %7, !llvm.loop !105

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bNodeThreadStack, ptr %9, i64 0, i32 3
  store i8 1, ptr %16, align 8, !tbaa !103
  br label %26

17:                                               ; preds = %7
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %19 = tail call ptr %18(i64 noundef 32, ptr noundef nonnull @.str.3) #11
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = tail call ptr %20(ptr noundef %22) #11
  %24 = getelementptr inbounds %struct.bNodeThreadStack, ptr %19, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !106
  %25 = getelementptr inbounds %struct.bNodeThreadStack, ptr %19, i64 0, i32 3
  store i8 1, ptr %25, align 8, !tbaa !103
  tail call void @BLI_addtail(ptr noundef %6, ptr noundef %19) #11
  br label %26

26:                                               ; preds = %15, %17
  %27 = phi ptr [ %9, %15 ], [ %19, %17 ]
  ret ptr %27
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ntreeReleaseThreadStack(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.bNodeThreadStack, ptr %0, i64 0, i32 3
  store i8 0, ptr %2, align 8, !tbaa !103
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ntreeExecThreadNodes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = alloca [64 x ptr], align 16
  %6 = alloca [64 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %5, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %6, i8 0, i64 512, i1 false)
  %7 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !63
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.bNodeThreadStack, ptr %1, i64 0, i32 2
  br label %14

14:                                               ; preds = %10, %35
  %15 = phi i32 [ 0, %10 ], [ %36, %35 ]
  %16 = phi ptr [ %12, %10 ], [ %37, %35 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 37
  %19 = load i16, ptr %18, align 4, !tbaa !82
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %13, align 8, !tbaa !106
  call void @node_get_stack(ptr noundef nonnull %17, ptr noundef %22, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %23 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = getelementptr inbounds %struct.bNodeType, ptr %24, i64 0, i32 42
  %26 = load ptr, ptr %25, align 8, !tbaa !107
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !58
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bNodeExec, ptr %16, i64 0, i32 1
  call void %26(ptr noundef %2, i32 noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %34, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %35

35:                                               ; preds = %14, %33, %28, %21
  %36 = add nuw nsw i32 %15, 1
  %37 = getelementptr inbounds %struct.bNodeExec, ptr %16, i64 1
  %38 = load i32, ptr %7, align 8, !tbaa !63
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %14, label %40, !llvm.loop !108

40:                                               ; preds = %35, %4
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #10
  ret i8 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare float @node_socket_get_float(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @node_socket_get_vector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @node_socket_get_color(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }

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
!34 = !{!35, !39, i64 168}
!35 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !37, i64 184, !40, i64 248, !40, i64 252, !36, i64 256, !39, i64 264, !39, i64 266, !41, i64 268, !36, i64 272, !41, i64 280, !41, i64 284, !36, i64 288, !36, i64 296, !42, i64 304}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!"bNodeStack", !37, i64 0, !40, i64 16, !40, i64 20, !36, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!43 = !{!35, !39, i64 264}
!44 = !{!36, !36, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = !{!49, !36, i64 0}
!49 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !50, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!50 = !{!"ListBase", !36, i64 0, !36, i64 8}
!51 = !{!52, !36, i64 0}
!52 = !{!"bNodeTreeExec", !36, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !36, i64 40}
!53 = !{!41, !41, i64 0}
!54 = !{!55, !39, i64 184}
!55 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !41, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !50, i64 200, !50, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !50, i64 264, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !41, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !40, i64 380, !40, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !56, i64 400, !56, i64 416, !56, i64 432, !39, i64 448, !39, i64 450, !41, i64 452, !36, i64 456}
!56 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!57 = distinct !{!57, !46}
!58 = !{!55, !41, i64 168}
!59 = !{!55, !39, i64 172}
!60 = distinct !{!60, !46}
!61 = distinct !{!61, !46}
!62 = distinct !{!62, !46}
!63 = !{!52, !41, i64 8}
!64 = !{!52, !36, i64 16}
!65 = !{!52, !41, i64 24}
!66 = !{!52, !36, i64 32}
!67 = !{!42, !39, i64 32}
!68 = distinct !{!68, !46, !69, !70}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!72, !36, i64 0}
!72 = !{!"bNodeExec", !36, i64 0, !73, i64 8, !36, i64 24}
!73 = !{!"bNodeExecData", !36, i64 0, !36, i64 8}
!74 = !{!55, !36, i64 32}
!75 = !{!76, !36, i64 696}
!76 = !{!"bNodeType", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 18, !41, i64 84, !37, i64 88, !37, i64 152, !41, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !39, i64 436, !39, i64 438, !39, i64 440, !36, i64 448, !36, i64 456, !37, i64 464, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !77, i64 720}
!77 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!78 = !{!72, !36, i64 24}
!79 = !{!35, !36, i64 296}
!80 = !{!81, !41, i64 48}
!81 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !41, i64 52}
!82 = !{!55, !39, i64 388}
!83 = !{!42, !39, i64 34}
!84 = distinct !{!84, !46}
!85 = distinct !{!85, !46}
!86 = !{!87, !36, i64 0}
!87 = !{!"bNodeExecContext", !36, i64 0}
!88 = !{!72, !36, i64 16}
!89 = !{!76, !36, i64 688}
!90 = !{!72, !36, i64 8}
!91 = distinct !{!91, !46}
!92 = !{!"node_exec.c:node_init_input_index"}
!93 = !{!81, !36, i64 32}
!94 = !{i32 0, i32 2}
!95 = !{!"node_exec.c:node_init_output_index"}
!96 = !{!81, !36, i64 40}
!97 = distinct !{!97, !46}
!98 = !{!"node_exec.c:setup_stack"}
!99 = !{!42, !39, i64 38}
!100 = !{!40, !40, i64 0}
!101 = distinct !{!101, !46}
!102 = !{!52, !36, i64 40}
!103 = !{!104, !37, i64 24}
!104 = !{!"bNodeThreadStack", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!105 = distinct !{!105, !46}
!106 = !{!104, !36, i64 16}
!107 = !{!76, !36, i64 704}
!108 = distinct !{!108, !46}
