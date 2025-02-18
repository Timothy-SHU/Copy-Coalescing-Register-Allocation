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
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bNodeTreeExec = type { ptr, i32, ptr, i32, ptr, ptr }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeExec = type { ptr, %struct.bNodeExecData, ptr }
%struct.bNodeExecData = type { ptr, ptr }
%struct.bNodeThreadStack = type { ptr, ptr, ptr, i8 }

@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [25 x i8] c"node tree execution data\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"node execution data\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"bNodeStack\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"bNodeThreadStack\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @node_exec_socket_use_stack(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 7
  %3 = load i16, ptr %2, align 8, !tbaa !34
  %4 = icmp ult i16 %3, 4
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @node_get_stack(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #1 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %1, null
  br label %12

12:                                               ; preds = %10, %22
  %13 = phi ptr [ %8, %10 ], [ %25, %22 ]
  %14 = phi ptr [ %2, %10 ], [ %24, %22 ]
  br i1 %11, label %22, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 16
  %17 = load i16, ptr %16, align 8, !tbaa !43
  %18 = icmp sgt i16 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = zext nneg i16 %17 to i64
  %21 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 %20
  br label %22

22:                                               ; preds = %12, %15, %19
  %23 = phi ptr [ %21, %19 ], [ null, %15 ], [ null, %12 ]
  %24 = getelementptr inbounds ptr, ptr %14, i64 1
  store ptr %23, ptr %14, align 8, !tbaa !44
  %25 = load ptr, ptr %13, align 8, !tbaa !44
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %12, !llvm.loop !45

27:                                               ; preds = %22, %6, %4
  %28 = icmp eq ptr %3, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %29
  %34 = icmp eq ptr %1, null
  br label %35

35:                                               ; preds = %33, %45
  %36 = phi ptr [ %31, %33 ], [ %48, %45 ]
  %37 = phi ptr [ %3, %33 ], [ %47, %45 ]
  br i1 %34, label %45, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.bNodeSocket, ptr %36, i64 0, i32 16
  %40 = load i16, ptr %39, align 8, !tbaa !43
  %41 = icmp sgt i16 %40, -1
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = zext nneg i16 %40 to i64
  %44 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 %43
  br label %45

45:                                               ; preds = %35, %38, %42
  %46 = phi ptr [ %44, %42 ], [ null, %38 ], [ null, %35 ]
  %47 = getelementptr inbounds ptr, ptr %37, i64 1
  store ptr %46, ptr %37, align 8, !tbaa !44
  %48 = load ptr, ptr %36, align 8, !tbaa !44
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %35, !llvm.loop !48

50:                                               ; preds = %45, %29, %27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ntree_exec_begin(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #3 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %6 = load ptr, ptr @G, align 8, !tbaa !49
  tail call void @ntreeUpdateTree(ptr noundef %6, ptr noundef %1) #7
  call void @ntreeGetDependencyList(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %8 = call ptr %7(i64 noundef 48, ptr noundef nonnull @.str) #7
  store ptr %1, ptr %8, align 8, !tbaa !52
  %9 = load i32, ptr %5, align 4, !tbaa !54
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %119

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !tbaa !44
  %13 = zext nneg i32 %9 to i64
  br label %14

14:                                               ; preds = %11, %115
  %15 = phi i64 [ 0, %11 ], [ %117, %115 ]
  %16 = phi i32 [ 0, %11 ], [ %116, %115 ]
  %17 = getelementptr inbounds ptr, ptr %12, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = trunc i32 %16 to i16
  %20 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 14
  store i16 %19, ptr %20, align 8, !tbaa !55
  %21 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %50, label %24

24:                                               ; preds = %14, %44
  %25 = phi ptr [ %48, %44 ], [ %22, %14 ]
  %26 = phi i32 [ %46, %44 ], [ %16, %14 ]
  %27 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 23
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.bNodeLink, ptr %28, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.bNodeSocket, ptr %32, i64 0, i32 16
  %36 = load i16, ptr %35, align 8, !tbaa !43
  br label %44

37:                                               ; preds = %30, %24
  %38 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 7
  %39 = load i16, ptr %38, align 8, !tbaa !34
  %40 = icmp ugt i16 %39, 3
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = add nsw i32 %26, 1
  %43 = trunc i32 %26 to i16
  br label %44

44:                                               ; preds = %37, %34, %41
  %45 = phi i16 [ %36, %34 ], [ %43, %41 ], [ -1, %37 ]
  %46 = phi i32 [ %26, %34 ], [ %42, %41 ], [ %26, %37 ]
  %47 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 16
  store i16 %45, ptr %47, align 8, !tbaa !43
  %48 = load ptr, ptr %25, align 8, !tbaa !44
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %24, !llvm.loop !61

50:                                               ; preds = %44, %14
  %51 = phi i32 [ %16, %14 ], [ %46, %44 ]
  %52 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !62
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 8
  %58 = load i16, ptr %57, align 4, !tbaa !63
  %59 = icmp eq i16 %58, 6
  br i1 %59, label %60, label %98

60:                                               ; preds = %56, %50
  %61 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 18
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  %63 = icmp eq ptr %62, null
  br i1 %63, label %115, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 23
  br label %66

66:                                               ; preds = %64, %94
  %67 = phi ptr [ %62, %64 ], [ %96, %94 ]
  %68 = phi i32 [ %51, %64 ], [ %95, %94 ]
  br label %69

69:                                               ; preds = %73, %66
  %70 = phi ptr [ %65, %66 ], [ %71, %73 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !44
  %72 = icmp eq ptr %71, null
  br i1 %72, label %84, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.bNodeLink, ptr %71, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !64
  %76 = icmp eq ptr %75, %67
  br i1 %76, label %77, label %69, !llvm.loop !65

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.bNodeLink, ptr %71, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !59
  %80 = getelementptr inbounds %struct.bNodeSocket, ptr %79, i64 0, i32 16
  %81 = load i16, ptr %80, align 8, !tbaa !43
  %82 = getelementptr inbounds %struct.bNodeSocket, ptr %67, i64 0, i32 16
  store i16 %81, ptr %82, align 8, !tbaa !43
  %83 = getelementptr inbounds %struct.bNodeSocket, ptr %67, i64 0, i32 23
  store ptr %71, ptr %83, align 8, !tbaa !58
  br label %94

84:                                               ; preds = %69
  %85 = getelementptr inbounds %struct.bNodeSocket, ptr %67, i64 0, i32 7
  %86 = load i16, ptr %85, align 8, !tbaa !34
  %87 = icmp ugt i16 %86, 3
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = add nsw i32 %68, 1
  %90 = trunc i32 %68 to i16
  %91 = getelementptr inbounds %struct.bNodeSocket, ptr %67, i64 0, i32 16
  store i16 %90, ptr %91, align 8, !tbaa !43
  br label %94

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.bNodeSocket, ptr %67, i64 0, i32 16
  store i16 -1, ptr %93, align 8, !tbaa !43
  br label %94

94:                                               ; preds = %77, %88, %92
  %95 = phi i32 [ %68, %92 ], [ %89, %88 ], [ %68, %77 ]
  %96 = load ptr, ptr %67, align 8, !tbaa !44
  %97 = icmp eq ptr %96, null
  br i1 %97, label %115, label %66, !llvm.loop !66

98:                                               ; preds = %56
  %99 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 18
  %100 = load ptr, ptr %99, align 8, !tbaa !44
  %101 = icmp eq ptr %100, null
  br i1 %101, label %115, label %102

102:                                              ; preds = %98, %102
  %103 = phi ptr [ %113, %102 ], [ %100, %98 ]
  %104 = phi i32 [ %111, %102 ], [ %51, %98 ]
  %105 = getelementptr inbounds %struct.bNodeSocket, ptr %103, i64 0, i32 7
  %106 = load i16, ptr %105, align 8, !tbaa !34
  %107 = icmp ult i16 %106, 4
  %108 = trunc i32 %104 to i16
  %109 = select i1 %107, i16 %108, i16 -1
  %110 = zext i1 %107 to i32
  %111 = add nsw i32 %104, %110
  %112 = getelementptr inbounds %struct.bNodeSocket, ptr %103, i64 0, i32 16
  store i16 %109, ptr %112, align 8, !tbaa !43
  %113 = load ptr, ptr %103, align 8, !tbaa !44
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %102, !llvm.loop !67

115:                                              ; preds = %102, %94, %98, %60
  %116 = phi i32 [ %51, %60 ], [ %51, %98 ], [ %95, %94 ], [ %111, %102 ]
  %117 = add nuw nsw i64 %15, 1
  %118 = icmp eq i64 %117, %13
  br i1 %118, label %119, label %14, !llvm.loop !68

119:                                              ; preds = %115, %3
  %120 = phi i32 [ 0, %3 ], [ %116, %115 ]
  %121 = getelementptr inbounds %struct.bNodeTreeExec, ptr %8, i64 0, i32 1
  store i32 %9, ptr %121, align 8, !tbaa !69
  %122 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %123 = sext i32 %9 to i64
  %124 = shl nsw i64 %123, 5
  %125 = call ptr %122(i64 noundef %124, ptr noundef nonnull @.str.1) #7
  %126 = getelementptr inbounds %struct.bNodeTreeExec, ptr %8, i64 0, i32 2
  store ptr %125, ptr %126, align 8, !tbaa !70
  %127 = getelementptr inbounds %struct.bNodeTreeExec, ptr %8, i64 0, i32 3
  store i32 %120, ptr %127, align 8, !tbaa !71
  %128 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %129 = sext i32 %120 to i64
  %130 = mul nsw i64 %129, 48
  %131 = call ptr %128(i64 noundef %130, ptr noundef nonnull @.str.2) #7
  %132 = getelementptr inbounds %struct.bNodeTreeExec, ptr %8, i64 0, i32 4
  store ptr %131, ptr %132, align 8, !tbaa !72
  %133 = load i32, ptr %127, align 8, !tbaa !71
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %119
  %136 = zext nneg i32 %133 to i64
  br label %137

137:                                              ; preds = %135, %137
  %138 = phi i64 [ 0, %135 ], [ %140, %137 ]
  %139 = getelementptr inbounds %struct.bNodeStack, ptr %131, i64 %138, i32 4
  store i16 1, ptr %139, align 8, !tbaa !73
  %140 = add nuw nsw i64 %138, 1
  %141 = icmp eq i64 %140, %136
  br i1 %141, label %142, label %137, !llvm.loop !74

142:                                              ; preds = %137, %119
  %143 = load i32, ptr %5, align 4, !tbaa !54
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %258

145:                                              ; preds = %142
  %146 = load ptr, ptr %126, align 8, !tbaa !70
  br label %147

147:                                              ; preds = %145, %252
  %148 = phi i64 [ 0, %145 ], [ %253, %252 ]
  %149 = phi ptr [ %146, %145 ], [ %254, %252 ]
  %150 = load ptr, ptr %4, align 8, !tbaa !44
  %151 = getelementptr inbounds ptr, ptr %150, i64 %148
  %152 = load ptr, ptr %151, align 8, !tbaa !44
  store ptr %152, ptr %149, align 8, !tbaa !75
  %153 = getelementptr inbounds %struct.bNode, ptr %152, i64 0, i32 4
  %154 = load ptr, ptr %153, align 8, !tbaa !78
  %155 = getelementptr inbounds %struct.bNodeType, ptr %154, i64 0, i32 41
  %156 = load ptr, ptr %155, align 8, !tbaa !79
  %157 = getelementptr inbounds %struct.bNodeExec, ptr %149, i64 0, i32 2
  store ptr %156, ptr %157, align 8, !tbaa !82
  %158 = getelementptr inbounds %struct.bNode, ptr %152, i64 0, i32 17
  %159 = load ptr, ptr %158, align 8, !tbaa !44
  %160 = icmp eq ptr %159, null
  br i1 %160, label %203, label %161

161:                                              ; preds = %147
  %162 = getelementptr inbounds %struct.bNode, ptr %152, i64 0, i32 37
  br label %163

163:                                              ; preds = %161, %200
  %164 = phi ptr [ %159, %161 ], [ %201, %200 ]
  %165 = getelementptr inbounds %struct.bNodeSocket, ptr %164, i64 0, i32 23
  %166 = load ptr, ptr %165, align 8, !tbaa !58
  %167 = icmp ne ptr %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.bNodeLink, ptr %166, i64 0, i32 6
  %170 = load i32, ptr %169, align 8, !tbaa !83
  %171 = and i32 %170, 2
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  store i16 0, ptr %162, align 4, !tbaa !84
  br label %174

174:                                              ; preds = %173, %168, %163
  %175 = load ptr, ptr %132, align 8, !tbaa !72
  %176 = icmp eq ptr %175, null
  br i1 %176, label %184, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.bNodeSocket, ptr %164, i64 0, i32 16
  %179 = load i16, ptr %178, align 8, !tbaa !43
  %180 = icmp sgt i16 %179, -1
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = zext nneg i16 %179 to i64
  %183 = getelementptr inbounds %struct.bNodeStack, ptr %175, i64 %182
  br label %184

184:                                              ; preds = %181, %177, %174
  %185 = phi ptr [ %183, %181 ], [ null, %177 ], [ null, %174 ]
  %186 = icmp eq ptr %185, null
  %187 = or i1 %167, %186
  br i1 %187, label %196, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.bNodeSocket, ptr %164, i64 0, i32 7
  %190 = load i16, ptr %189, align 8, !tbaa !34
  %191 = getelementptr inbounds %struct.bNodeStack, ptr %185, i64 0, i32 7
  store i16 %190, ptr %191, align 2, !tbaa !85
  switch i16 %190, label %196 [
    i16 0, label %192
    i16 1, label %194
    i16 2, label %195
  ]

192:                                              ; preds = %188
  %193 = call float @node_socket_get_float(ptr noundef %1, ptr noundef %152, ptr noundef nonnull %164) #7
  store float %193, ptr %185, align 8, !tbaa !86
  br label %196

194:                                              ; preds = %188
  call void @node_socket_get_vector(ptr noundef %1, ptr noundef %152, ptr noundef nonnull %164, ptr noundef nonnull %185) #7
  br label %196

195:                                              ; preds = %188
  call void @node_socket_get_color(ptr noundef %1, ptr noundef %152, ptr noundef nonnull %164, ptr noundef nonnull %185) #7
  br label %196

196:                                              ; preds = %184, %188, %192, %194, %195
  %197 = icmp eq ptr %185, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %196
  %199 = getelementptr inbounds %struct.bNodeStack, ptr %185, i64 0, i32 5
  store i16 1, ptr %199, align 2, !tbaa !87
  br label %200

200:                                              ; preds = %196, %198
  %201 = load ptr, ptr %164, align 8, !tbaa !44
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %163, !llvm.loop !88

203:                                              ; preds = %200, %147
  %204 = getelementptr inbounds %struct.bNode, ptr %152, i64 0, i32 18
  %205 = load ptr, ptr %204, align 8, !tbaa !44
  %206 = icmp eq ptr %205, null
  br i1 %206, label %236, label %207

207:                                              ; preds = %203, %233
  %208 = phi ptr [ %234, %233 ], [ %205, %203 ]
  %209 = load ptr, ptr %132, align 8, !tbaa !72
  %210 = icmp eq ptr %209, null
  br i1 %210, label %218, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.bNodeSocket, ptr %208, i64 0, i32 16
  %213 = load i16, ptr %212, align 8, !tbaa !43
  %214 = icmp sgt i16 %213, -1
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = zext nneg i16 %213 to i64
  %217 = getelementptr inbounds %struct.bNodeStack, ptr %209, i64 %216
  br label %218

218:                                              ; preds = %215, %211, %207
  %219 = phi ptr [ %217, %215 ], [ null, %211 ], [ null, %207 ]
  %220 = icmp eq ptr %219, null
  br i1 %220, label %233, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.bNodeSocket, ptr %208, i64 0, i32 23
  %223 = load ptr, ptr %222, align 8, !tbaa !58
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %233

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.bNodeSocket, ptr %208, i64 0, i32 7
  %227 = load i16, ptr %226, align 8, !tbaa !34
  %228 = getelementptr inbounds %struct.bNodeStack, ptr %219, i64 0, i32 7
  store i16 %227, ptr %228, align 2, !tbaa !85
  switch i16 %227, label %233 [
    i16 0, label %229
    i16 1, label %231
    i16 2, label %232
  ]

229:                                              ; preds = %225
  %230 = call float @node_socket_get_float(ptr noundef %1, ptr noundef %152, ptr noundef nonnull %208) #7
  store float %230, ptr %219, align 8, !tbaa !86
  br label %233

231:                                              ; preds = %225
  call void @node_socket_get_vector(ptr noundef %1, ptr noundef %152, ptr noundef nonnull %208, ptr noundef nonnull %219) #7
  br label %233

232:                                              ; preds = %225
  call void @node_socket_get_color(ptr noundef %1, ptr noundef %152, ptr noundef nonnull %208, ptr noundef nonnull %219) #7
  br label %233

233:                                              ; preds = %218, %221, %225, %229, %231, %232
  %234 = load ptr, ptr %208, align 8, !tbaa !44
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %207, !llvm.loop !89

236:                                              ; preds = %233, %203
  %237 = call i32 @BKE_node_instance_key(i32 %2, ptr noundef %1, ptr noundef %152) #7
  %238 = load ptr, ptr %0, align 8, !tbaa !90
  %239 = icmp eq ptr %238, null
  br i1 %239, label %242, label %240

240:                                              ; preds = %236
  %241 = call ptr @BKE_node_instance_hash_lookup(ptr noundef nonnull %238, i32 %237) #7
  br label %242

242:                                              ; preds = %236, %240
  %243 = phi ptr [ %241, %240 ], [ null, %236 ]
  %244 = getelementptr inbounds %struct.bNodeExec, ptr %149, i64 0, i32 1, i32 1
  store ptr %243, ptr %244, align 8, !tbaa !92
  %245 = load ptr, ptr %153, align 8, !tbaa !78
  %246 = getelementptr inbounds %struct.bNodeType, ptr %245, i64 0, i32 40
  %247 = load ptr, ptr %246, align 8, !tbaa !93
  %248 = icmp eq ptr %247, null
  br i1 %248, label %252, label %249

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.bNodeExec, ptr %149, i64 0, i32 1
  %251 = call ptr %247(ptr noundef nonnull %0, ptr noundef %152, i32 %237) #7
  store ptr %251, ptr %250, align 8, !tbaa !94
  br label %252

252:                                              ; preds = %242, %249
  %253 = add nuw nsw i64 %148, 1
  %254 = getelementptr inbounds %struct.bNodeExec, ptr %149, i64 1
  %255 = load i32, ptr %5, align 4, !tbaa !54
  %256 = sext i32 %255 to i64
  %257 = icmp slt i64 %253, %256
  br i1 %257, label %147, label %258, !llvm.loop !95

258:                                              ; preds = %252, %142
  %259 = load ptr, ptr %4, align 8, !tbaa !44
  %260 = icmp eq ptr %259, null
  br i1 %260, label %263, label %261

261:                                              ; preds = %258
  %262 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %262(ptr noundef nonnull %259) #7
  br label %263

263:                                              ; preds = %261, %258
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret ptr %8
}

declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ntreeGetDependencyList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @BKE_node_instance_key(i32, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @BKE_node_instance_hash_lookup(ptr noundef, i32) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ntree_exec_end(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %6(ptr noundef nonnull %3) #7
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !69
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 8, !tbaa !70
  br label %14

14:                                               ; preds = %12, %23
  %15 = phi i32 [ %24, %23 ], [ 0, %12 ]
  %16 = phi ptr [ %25, %23 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.bNodeExec, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.bNodeExec, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !94
  tail call void %18(ptr noundef %22) #7
  br label %23

23:                                               ; preds = %14, %20
  %24 = add nuw nsw i32 %15, 1
  %25 = getelementptr inbounds %struct.bNodeExec, ptr %16, i64 1
  %26 = load i32, ptr %9, align 8, !tbaa !69
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %14, label %28, !llvm.loop !96

28:                                               ; preds = %23, %7
  %29 = load ptr, ptr %8, align 8, !tbaa !70
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %32(ptr noundef nonnull %29) #7
  br label %33

33:                                               ; preds = %31, %28
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %34(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeGetThreadStack(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !97
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
  %13 = load i8, ptr %12, align 8, !tbaa !98
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %7, !llvm.loop !100

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bNodeThreadStack, ptr %9, i64 0, i32 3
  store i8 1, ptr %16, align 8, !tbaa !98
  br label %26

17:                                               ; preds = %7
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %19 = tail call ptr %18(i64 noundef 32, ptr noundef nonnull @.str.3) #7
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = tail call ptr %20(ptr noundef %22) #7
  %24 = getelementptr inbounds %struct.bNodeThreadStack, ptr %19, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !101
  %25 = getelementptr inbounds %struct.bNodeThreadStack, ptr %19, i64 0, i32 3
  store i8 1, ptr %25, align 8, !tbaa !98
  tail call void @BLI_addtail(ptr noundef %6, ptr noundef %19) #7
  br label %26

26:                                               ; preds = %15, %17
  %27 = phi ptr [ %9, %15 ], [ %19, %17 ]
  ret ptr %27
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ntreeReleaseThreadStack(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bNodeThreadStack, ptr %0, i64 0, i32 3
  store i8 0, ptr %2, align 8, !tbaa !98
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ntreeExecThreadNodes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = alloca [64 x ptr], align 16
  %6 = alloca [64 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %5, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %6, i8 0, i64 512, i1 false)
  %7 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !69
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %82

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.bNodeThreadStack, ptr %1, i64 0, i32 2
  br label %14

14:                                               ; preds = %10, %77
  %15 = phi i32 [ 0, %10 ], [ %78, %77 ]
  %16 = phi ptr [ %12, %10 ], [ %79, %77 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 37
  %19 = load i16, ptr %18, align 4, !tbaa !84
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %77, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %13, align 8, !tbaa !101
  %23 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = icmp eq ptr %22, null
  br label %28

28:                                               ; preds = %26, %38
  %29 = phi ptr [ %24, %26 ], [ %41, %38 ]
  %30 = phi ptr [ %5, %26 ], [ %40, %38 ]
  br i1 %27, label %38, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 16
  %33 = load i16, ptr %32, align 8, !tbaa !43
  %34 = icmp sgt i16 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = zext nneg i16 %33 to i64
  %37 = getelementptr inbounds %struct.bNodeStack, ptr %22, i64 %36
  br label %38

38:                                               ; preds = %35, %31, %28
  %39 = phi ptr [ %37, %35 ], [ null, %31 ], [ null, %28 ]
  %40 = getelementptr inbounds ptr, ptr %30, i64 1
  store ptr %39, ptr %30, align 8, !tbaa !44
  %41 = load ptr, ptr %29, align 8, !tbaa !44
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %28, !llvm.loop !45

43:                                               ; preds = %38, %21
  %44 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 18
  %45 = load ptr, ptr %44, align 8, !tbaa !44
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47

47:                                               ; preds = %43
  %48 = icmp eq ptr %22, null
  br label %49

49:                                               ; preds = %47, %59
  %50 = phi ptr [ %45, %47 ], [ %62, %59 ]
  %51 = phi ptr [ %6, %47 ], [ %61, %59 ]
  br i1 %48, label %59, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.bNodeSocket, ptr %50, i64 0, i32 16
  %54 = load i16, ptr %53, align 8, !tbaa !43
  %55 = icmp sgt i16 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = zext nneg i16 %54 to i64
  %58 = getelementptr inbounds %struct.bNodeStack, ptr %22, i64 %57
  br label %59

59:                                               ; preds = %56, %52, %49
  %60 = phi ptr [ %58, %56 ], [ null, %52 ], [ null, %49 ]
  %61 = getelementptr inbounds ptr, ptr %51, i64 1
  store ptr %60, ptr %51, align 8, !tbaa !44
  %62 = load ptr, ptr %50, align 8, !tbaa !44
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %49, !llvm.loop !48

64:                                               ; preds = %59, %43
  %65 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !78
  %67 = getelementptr inbounds %struct.bNodeType, ptr %66, i64 0, i32 42
  %68 = load ptr, ptr %67, align 8, !tbaa !102
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !62
  %73 = and i32 %72, 512
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.bNodeExec, ptr %16, i64 0, i32 1
  call void %68(ptr noundef %2, i32 noundef %3, ptr noundef %17, ptr noundef nonnull %76, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  br label %77

77:                                               ; preds = %14, %75, %70, %64
  %78 = add nuw nsw i32 %15, 1
  %79 = getelementptr inbounds %struct.bNodeExec, ptr %16, i64 1
  %80 = load i32, ptr %7, align 8, !tbaa !69
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %14, label %82, !llvm.loop !103

82:                                               ; preds = %77, %4
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #7
  ret i8 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare float @node_socket_get_float(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @node_socket_get_vector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @node_socket_get_color(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !46, !47}
!49 = !{!50, !36, i64 0}
!50 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !51, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!51 = !{!"ListBase", !36, i64 0, !36, i64 8}
!52 = !{!53, !36, i64 0}
!53 = !{!"bNodeTreeExec", !36, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !36, i64 40}
!54 = !{!41, !41, i64 0}
!55 = !{!56, !39, i64 184}
!56 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !41, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !51, i64 200, !51, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !51, i64 264, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !41, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !40, i64 380, !40, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !57, i64 400, !57, i64 416, !57, i64 432, !39, i64 448, !39, i64 450, !41, i64 452, !36, i64 456}
!57 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!58 = !{!35, !36, i64 296}
!59 = !{!60, !36, i64 32}
!60 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !41, i64 52}
!61 = distinct !{!61, !46, !47}
!62 = !{!56, !41, i64 168}
!63 = !{!56, !39, i64 172}
!64 = !{!60, !36, i64 40}
!65 = distinct !{!65, !46, !47}
!66 = distinct !{!66, !46, !47}
!67 = distinct !{!67, !46, !47}
!68 = distinct !{!68, !46, !47}
!69 = !{!53, !41, i64 8}
!70 = !{!53, !36, i64 16}
!71 = !{!53, !41, i64 24}
!72 = !{!53, !36, i64 32}
!73 = !{!42, !39, i64 32}
!74 = distinct !{!74, !46, !47}
!75 = !{!76, !36, i64 0}
!76 = !{!"bNodeExec", !36, i64 0, !77, i64 8, !36, i64 24}
!77 = !{!"bNodeExecData", !36, i64 0, !36, i64 8}
!78 = !{!56, !36, i64 32}
!79 = !{!80, !36, i64 696}
!80 = !{!"bNodeType", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 18, !41, i64 84, !37, i64 88, !37, i64 152, !41, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !39, i64 436, !39, i64 438, !39, i64 440, !36, i64 448, !36, i64 456, !37, i64 464, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !81, i64 720}
!81 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!82 = !{!76, !36, i64 24}
!83 = !{!60, !41, i64 48}
!84 = !{!56, !39, i64 388}
!85 = !{!42, !39, i64 38}
!86 = !{!40, !40, i64 0}
!87 = !{!42, !39, i64 34}
!88 = distinct !{!88, !46, !47}
!89 = distinct !{!89, !46, !47}
!90 = !{!91, !36, i64 0}
!91 = !{!"bNodeExecContext", !36, i64 0}
!92 = !{!76, !36, i64 16}
!93 = !{!80, !36, i64 688}
!94 = !{!76, !36, i64 8}
!95 = distinct !{!95, !46, !47}
!96 = distinct !{!96, !46, !47}
!97 = !{!53, !36, i64 40}
!98 = !{!99, !37, i64 24}
!99 = !{!"bNodeThreadStack", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!100 = distinct !{!100, !46, !47}
!101 = !{!99, !36, i64 16}
!102 = !{!80, !36, i64 704}
!103 = distinct !{!103, !46, !47}
