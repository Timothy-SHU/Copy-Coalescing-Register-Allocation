; ModuleID = 'blender/intern/mikktspace/mikktspace.c'
source_filename = "blender/intern/mikktspace/mikktspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SMikkTSpaceInterface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.STriInfo = type { [3 x i32], [3 x ptr], %struct.SVec3, %struct.SVec3, float, float, i32, i32, i32, [4 x i8] }
%struct.SVec3 = type { float, float, float }
%struct.STSpace = type { %struct.SVec3, float, %struct.SVec3, float, i32, i32 }
%struct.STmpVert = type { [3 x float], i32 }
%struct.SGroup = type { i32, ptr, i32, i32 }
%struct.SSubGroup = type { i32, ptr }
%union.SEdge = type { %struct.anon }
%struct.anon = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @genTangSpaceDefault(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @genTangSpace(ptr noundef %0, float noundef 1.800000e+02) #24, !range !34
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @genTangSpace(ptr noundef %0, float noundef %1) local_unnamed_addr #1 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = tail call i32 %6(ptr noundef nonnull %0) #25
  %8 = fmul float %1, 0x400921FB60000000
  %9 = fdiv float %8, 1.800000e+02
  %10 = fpext float %9 to double
  %11 = tail call double @cos(double noundef %10) #25
  %12 = fptrunc double %11 to float
  %13 = load ptr, ptr %0, align 8, !tbaa !35
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %199, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %199, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %199, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %199, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %13, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %199, label %32

32:                                               ; preds = %28
  %33 = icmp sgt i32 %7, 0
  br i1 %33, label %34, label %199

34:                                               ; preds = %32, %45
  %35 = phi i32 [ %46, %45 ], [ 0, %32 ]
  %36 = phi i32 [ %47, %45 ], [ 0, %32 ]
  %37 = load ptr, ptr %0, align 8, !tbaa !35
  %38 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = tail call i32 %39(ptr noundef nonnull %0, i32 noundef %36) #25
  switch i32 %40, label %45 [
    i32 3, label %41
    i32 4, label %43
  ]

41:                                               ; preds = %34
  %42 = add nsw i32 %35, 1
  br label %45

43:                                               ; preds = %34
  %44 = add nsw i32 %35, 2
  br label %45

45:                                               ; preds = %34, %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ], [ %35, %34 ]
  %47 = add nuw nsw i32 %36, 1
  %48 = icmp eq i32 %47, %7
  br i1 %48, label %49, label %34, !llvm.loop !46

49:                                               ; preds = %45
  %50 = icmp slt i32 %46, 1
  br i1 %50, label %199, label %51

51:                                               ; preds = %49
  %52 = zext nneg i32 %46 to i64
  %53 = mul nuw nsw i64 %52, 12
  %54 = tail call noalias ptr @malloc(i64 noundef %53) #26
  %55 = mul nuw nsw i64 %52, 88
  %56 = tail call noalias ptr @malloc(i64 noundef %55) #26
  %57 = icmp eq ptr %54, null
  %58 = icmp eq ptr %56, null
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  br i1 %57, label %62, label %61

61:                                               ; preds = %60
  tail call void @free(ptr noundef nonnull %54) #25
  br label %62

62:                                               ; preds = %61, %60
  br i1 %58, label %199, label %63

63:                                               ; preds = %62
  tail call void @free(ptr noundef nonnull %56) #25
  br label %199

64:                                               ; preds = %51
  %65 = tail call fastcc i32 @GenerateInitialVerticesIndexList(ptr noundef nonnull %56, ptr noundef nonnull %54, ptr noundef nonnull %0, i32 noundef %46) #24
  tail call fastcc void @GenerateSharedVerticesIndexList(ptr noundef nonnull %54, ptr noundef nonnull %0, i32 noundef %46) #24
  br label %66

66:                                               ; preds = %64, %98
  %67 = phi i64 [ 0, %64 ], [ %100, %98 ]
  %68 = phi i32 [ 0, %64 ], [ %99, %98 ]
  %69 = mul nuw nsw i64 %67, 3
  %70 = getelementptr inbounds i32, ptr %54, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !48
  %72 = getelementptr i32, ptr %70, i64 1
  %73 = load i32, ptr %72, align 4, !tbaa !48
  %74 = getelementptr i32, ptr %70, i64 2
  %75 = load i32, ptr %74, align 4, !tbaa !48
  %76 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef nonnull %0, i32 noundef %71) #24
  %77 = extractvalue { <2 x float>, float } %76, 0
  %78 = extractvalue { <2 x float>, float } %76, 1
  %79 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef nonnull %0, i32 noundef %73) #24
  %80 = extractvalue { <2 x float>, float } %79, 0
  %81 = extractvalue { <2 x float>, float } %79, 1
  %82 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef nonnull %0, i32 noundef %75) #24
  %83 = extractvalue { <2 x float>, float } %82, 0
  %84 = extractvalue { <2 x float>, float } %82, 1
  %85 = tail call fastcc i32 @veq(<2 x float> %77, float %78, <2 x float> %80, float %81) #24, !range !34
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %66
  %88 = tail call fastcc i32 @veq(<2 x float> %77, float %78, <2 x float> %83, float %84) #24, !range !34
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = tail call fastcc i32 @veq(<2 x float> %80, float %81, <2 x float> %83, float %84) #24, !range !34
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90, %87, %66
  %94 = getelementptr inbounds %struct.STriInfo, ptr %56, i64 %67, i32 7
  %95 = load i32, ptr %94, align 4, !tbaa !50
  %96 = or i32 %95, 1
  store i32 %96, ptr %94, align 4, !tbaa !50
  %97 = add nsw i32 %68, 1
  br label %98

98:                                               ; preds = %93, %90
  %99 = phi i32 [ %97, %93 ], [ %68, %90 ]
  %100 = add nuw nsw i64 %67, 1
  %101 = icmp eq i64 %100, %52
  br i1 %101, label %102, label %66, !llvm.loop !54

102:                                              ; preds = %98
  %103 = sub nsw i32 %46, %99
  tail call fastcc void @DegenPrologue(ptr noundef %56, ptr noundef nonnull %54, i32 noundef %103, i32 noundef %46) #24
  tail call fastcc void @InitTriInfo(ptr noundef %56, ptr noundef nonnull %54, ptr noundef nonnull %0, i32 noundef %103) #24
  %104 = mul nsw i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %105, 24
  %107 = tail call noalias ptr @malloc(i64 noundef %106) #26
  %108 = sext i32 %103 to i64
  %109 = mul nsw i64 %108, 12
  %110 = tail call noalias ptr @malloc(i64 noundef %109) #26
  %111 = icmp eq ptr %107, null
  %112 = icmp eq ptr %110, null
  %113 = or i1 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %102
  br i1 %111, label %116, label %115

115:                                              ; preds = %114
  tail call void @free(ptr noundef nonnull %107) #25
  br label %116

116:                                              ; preds = %115, %114
  br i1 %112, label %118, label %117

117:                                              ; preds = %116
  tail call void @free(ptr noundef nonnull %110) #25
  br label %118

118:                                              ; preds = %117, %116
  tail call void @free(ptr noundef nonnull %54) #25
  tail call void @free(ptr noundef %56) #25
  br label %199

119:                                              ; preds = %102
  %120 = tail call fastcc i32 @Build4RuleGroups(ptr noundef %56, ptr noundef nonnull %107, ptr noundef nonnull %110, ptr noundef nonnull %54, i32 noundef %103) #24
  %121 = sext i32 %65 to i64
  %122 = mul nsw i64 %121, 40
  %123 = tail call ptr @calloc(i64 1, i64 %122)
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  tail call void @free(ptr noundef nonnull %54) #25
  tail call void @free(ptr noundef %56) #25
  tail call void @free(ptr noundef nonnull %107) #25
  tail call void @free(ptr noundef nonnull %110) #25
  br label %199

126:                                              ; preds = %119
  %127 = icmp sgt i32 %65, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %126
  %129 = zext nneg i32 %65 to i64
  br label %130

130:                                              ; preds = %128, %130
  %131 = phi i64 [ 0, %128 ], [ %134, %130 ]
  %132 = getelementptr inbounds %struct.STSpace, ptr %123, i64 %131
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %132, align 4, !tbaa !55
  %133 = getelementptr inbounds %struct.STSpace, ptr %123, i64 %131, i32 2
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %133, align 4, !tbaa !55
  %134 = add nuw nsw i64 %131, 1
  %135 = icmp eq i64 %134, %129
  br i1 %135, label %136, label %130, !llvm.loop !56

136:                                              ; preds = %130, %126
  %137 = tail call fastcc i32 @GenerateTSpaces(ptr noundef nonnull %123, ptr noundef %56, ptr noundef %107, i32 noundef %120, ptr noundef %54, float noundef %12, ptr noundef nonnull %0) #24
  tail call void @free(ptr noundef %107) #25
  tail call void @free(ptr noundef %110) #25
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  tail call void @free(ptr noundef %56) #25
  tail call void @free(ptr noundef %54) #25
  tail call void @free(ptr noundef nonnull %123) #25
  br label %199

140:                                              ; preds = %136
  tail call fastcc void @DegenEpilogue(ptr noundef nonnull %123, ptr noundef %56, ptr noundef %54, ptr noundef nonnull %0, i32 noundef %103, i32 noundef %46) #24
  tail call void @free(ptr noundef %56) #25
  tail call void @free(ptr noundef %54) #25
  br i1 %33, label %141, label %198

141:                                              ; preds = %140
  %142 = getelementptr inbounds float, ptr %3, i64 2
  %143 = getelementptr inbounds float, ptr %4, i64 2
  br label %144

144:                                              ; preds = %141, %194
  %145 = phi i32 [ 0, %141 ], [ %196, %194 ]
  %146 = phi i32 [ 0, %141 ], [ %195, %194 ]
  %147 = load ptr, ptr %0, align 8, !tbaa !35
  %148 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !42
  %150 = call i32 %149(ptr noundef nonnull %0, i32 noundef %145) #25
  %151 = add i32 %150, -3
  %152 = icmp ult i32 %151, 2
  br i1 %152, label %153, label %194

153:                                              ; preds = %144
  %154 = sext i32 %146 to i64
  br label %155

155:                                              ; preds = %153, %188
  %156 = phi i64 [ %154, %153 ], [ %189, %188 ]
  %157 = phi i32 [ 0, %153 ], [ %190, %188 ]
  %158 = getelementptr inbounds %struct.STSpace, ptr %123, i64 %156
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #27
  %159 = load <2 x float>, ptr %158, align 4, !tbaa !55
  store <2 x float> %159, ptr %3, align 8, !tbaa !55
  %160 = getelementptr inbounds %struct.SVec3, ptr %158, i64 0, i32 2
  %161 = load float, ptr %160, align 4, !tbaa !57
  store float %161, ptr %142, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #27
  %162 = getelementptr inbounds %struct.STSpace, ptr %123, i64 %156, i32 2
  %163 = load <2 x float>, ptr %162, align 4, !tbaa !55
  store <2 x float> %163, ptr %4, align 8, !tbaa !55
  %164 = getelementptr inbounds %struct.STSpace, ptr %123, i64 %156, i32 2, i32 2
  %165 = load float, ptr %164, align 4, !tbaa !59
  store float %165, ptr %143, align 8, !tbaa !55
  %166 = load ptr, ptr %0, align 8, !tbaa !35
  %167 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %166, i64 0, i32 6
  %168 = load ptr, ptr %167, align 8, !tbaa !60
  %169 = icmp eq ptr %168, null
  br i1 %169, label %178, label %170

170:                                              ; preds = %155
  %171 = getelementptr inbounds %struct.STSpace, ptr %123, i64 %156, i32 1
  %172 = load float, ptr %171, align 4, !tbaa !61
  %173 = getelementptr inbounds %struct.STSpace, ptr %123, i64 %156, i32 3
  %174 = load float, ptr %173, align 4, !tbaa !62
  %175 = getelementptr inbounds %struct.STSpace, ptr %123, i64 %156, i32 5
  %176 = load i32, ptr %175, align 4, !tbaa !63
  call void %168(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, float noundef %172, float noundef %174, i32 noundef %176, i32 noundef %145, i32 noundef %157) #25
  %177 = load ptr, ptr %0, align 8, !tbaa !35
  br label %178

178:                                              ; preds = %170, %155
  %179 = phi ptr [ %177, %170 ], [ %166, %155 ]
  %180 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %179, i64 0, i32 5
  %181 = load ptr, ptr %180, align 8, !tbaa !64
  %182 = icmp eq ptr %181, null
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.STSpace, ptr %123, i64 %156, i32 5
  %185 = load i32, ptr %184, align 4, !tbaa !63
  %186 = icmp eq i32 %185, 1
  %187 = select i1 %186, float 1.000000e+00, float -1.000000e+00
  call void %181(ptr noundef nonnull %0, ptr noundef nonnull %3, float noundef %187, i32 noundef %145, i32 noundef %157) #25
  br label %188

188:                                              ; preds = %183, %178
  %189 = add nsw i64 %156, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #27
  %190 = add nuw nsw i32 %157, 1
  %191 = icmp eq i32 %190, %150
  br i1 %191, label %192, label %155, !llvm.loop !65

192:                                              ; preds = %188
  %193 = trunc i64 %189 to i32
  br label %194

194:                                              ; preds = %192, %144
  %195 = phi i32 [ %146, %144 ], [ %193, %192 ]
  %196 = add nuw nsw i32 %145, 1
  %197 = icmp eq i32 %196, %7
  br i1 %197, label %198, label %144, !llvm.loop !66

198:                                              ; preds = %194, %140
  call void @free(ptr noundef %123) #25
  br label %199

199:                                              ; preds = %32, %62, %63, %49, %2, %16, %20, %24, %28, %198, %139, %125, %118
  %200 = phi i32 [ 0, %118 ], [ 0, %125 ], [ 1, %198 ], [ 0, %139 ], [ 0, %28 ], [ 0, %24 ], [ 0, %20 ], [ 0, %16 ], [ 0, %2 ], [ 0, %49 ], [ 0, %63 ], [ 0, %62 ], [ 0, %32 ]
  ret i32 %200
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GenerateInitialVerticesIndexList(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 !PGOFuncName !67 {
  %5 = load ptr, ptr %2, align 8, !tbaa !35
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = tail call i32 %6(ptr noundef nonnull %2) #25
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %156, %4
  %10 = phi i32 [ 0, %4 ], [ %158, %156 ]
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %164

12:                                               ; preds = %9
  %13 = zext nneg i32 %3 to i64
  %14 = add nuw nsw i64 %13, 3
  %15 = and i64 %14, 4294967292
  %16 = add nsw i64 %13, -1
  %17 = insertelement <4 x i64> poison, i64 %16, i64 0
  %18 = shufflevector <4 x i64> %17, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %19

19:                                               ; preds = %41, %12
  %20 = phi i64 [ 0, %12 ], [ %42, %41 ]
  %21 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %12 ], [ %43, %41 ]
  %22 = icmp ule <4 x i64> %21, %18
  %23 = extractelement <4 x i1> %22, i64 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %20, i32 7
  store i32 0, ptr %25, align 4, !tbaa !50
  br label %26

26:                                               ; preds = %24, %19
  %27 = extractelement <4 x i1> %22, i64 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = or disjoint i64 %20, 1
  %30 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %29, i32 7
  store i32 0, ptr %30, align 4, !tbaa !50
  br label %31

31:                                               ; preds = %28, %26
  %32 = extractelement <4 x i1> %22, i64 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = or disjoint i64 %20, 2
  %35 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %34, i32 7
  store i32 0, ptr %35, align 4, !tbaa !50
  br label %36

36:                                               ; preds = %33, %31
  %37 = extractelement <4 x i1> %22, i64 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = or disjoint i64 %20, 3
  %40 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %39, i32 7
  store i32 0, ptr %40, align 4, !tbaa !50
  br label %41

41:                                               ; preds = %38, %36
  %42 = add i64 %20, 4
  %43 = add <4 x i64> %21, <i64 4, i64 4, i64 4, i64 4>
  %44 = icmp eq i64 %42, %15
  br i1 %44, label %164, label %19, !llvm.loop !68

45:                                               ; preds = %4, %156
  %46 = phi i32 [ %158, %156 ], [ 0, %4 ]
  %47 = phi i32 [ %159, %156 ], [ 0, %4 ]
  %48 = phi i32 [ %157, %156 ], [ 0, %4 ]
  %49 = load ptr, ptr %2, align 8, !tbaa !35
  %50 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !42
  %52 = tail call i32 %51(ptr noundef nonnull %2, i32 noundef %47) #25
  %53 = add i32 %52, -5
  %54 = icmp ult i32 %53, -2
  br i1 %54, label %156, label %55

55:                                               ; preds = %45
  %56 = sext i32 %48 to i64
  %57 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %56, i32 6
  store i32 %47, ptr %57, align 8, !tbaa !71
  %58 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %56, i32 8
  store i32 %46, ptr %58, align 8, !tbaa !72
  %59 = icmp eq i32 %52, 3
  %60 = tail call fastcc i32 @MakeIndex(i32 noundef %47, i32 noundef 0) #24
  br i1 %59, label %61, label %71

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %56, i32 9
  store i8 0, ptr %62, align 1, !tbaa !73
  %63 = getelementptr inbounds i8, ptr %62, i64 1
  store i8 1, ptr %63, align 1, !tbaa !73
  %64 = getelementptr inbounds i8, ptr %62, i64 2
  store i8 2, ptr %64, align 1, !tbaa !73
  %65 = mul nsw i32 %48, 3
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %1, i64 %66
  store i32 %60, ptr %67, align 4, !tbaa !48
  %68 = tail call fastcc i32 @MakeIndex(i32 noundef %47, i32 noundef 1) #24
  %69 = getelementptr i32, ptr %67, i64 1
  store i32 %68, ptr %69, align 4, !tbaa !48
  %70 = tail call fastcc i32 @MakeIndex(i32 noundef %47, i32 noundef 2) #24
  br label %149

71:                                               ; preds = %55
  %72 = add nsw i32 %48, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %73, i32 6
  store i32 %47, ptr %74, align 8, !tbaa !71
  %75 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %73, i32 8
  store i32 %46, ptr %75, align 8, !tbaa !72
  %76 = tail call fastcc i32 @MakeIndex(i32 noundef %47, i32 noundef 1) #24
  %77 = tail call fastcc i32 @MakeIndex(i32 noundef %47, i32 noundef 2) #24
  %78 = tail call fastcc i32 @MakeIndex(i32 noundef %47, i32 noundef 3) #24
  %79 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef nonnull %2, i32 noundef %60) #24
  %80 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef nonnull %2, i32 noundef %76) #24
  %81 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef nonnull %2, i32 noundef %77) #24
  %82 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef nonnull %2, i32 noundef %78) #24
  %83 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %81, float 1.000000e+00, <2 x float> %79, float 1.000000e+00) #24
  %84 = extractvalue { <2 x float>, float } %83, 0
  %85 = extractvalue { <2 x float>, float } %83, 1
  %86 = tail call fastcc float @LengthSquared(<2 x float> %84, float %85) #24
  %87 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %82, float 1.000000e+00, <2 x float> %80, float 1.000000e+00) #24
  %88 = extractvalue { <2 x float>, float } %87, 0
  %89 = extractvalue { <2 x float>, float } %87, 1
  %90 = tail call fastcc float @LengthSquared(<2 x float> %88, float %89) #24
  %91 = fcmp olt float %86, %90
  br i1 %91, label %116, label %92

92:                                               ; preds = %71
  %93 = fcmp olt float %90, %86
  br i1 %93, label %131, label %94

94:                                               ; preds = %92
  %95 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef nonnull %2, i32 noundef %60) #24
  %96 = extractvalue { <2 x float>, float } %95, 0
  %97 = extractvalue { <2 x float>, float } %95, 1
  %98 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef nonnull %2, i32 noundef %76) #24
  %99 = extractvalue { <2 x float>, float } %98, 0
  %100 = extractvalue { <2 x float>, float } %98, 1
  %101 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef nonnull %2, i32 noundef %77) #24
  %102 = extractvalue { <2 x float>, float } %101, 0
  %103 = extractvalue { <2 x float>, float } %101, 1
  %104 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef nonnull %2, i32 noundef %78) #24
  %105 = extractvalue { <2 x float>, float } %104, 0
  %106 = extractvalue { <2 x float>, float } %104, 1
  %107 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %102, float %103, <2 x float> %96, float %97) #24
  %108 = extractvalue { <2 x float>, float } %107, 0
  %109 = extractvalue { <2 x float>, float } %107, 1
  %110 = tail call fastcc float @LengthSquared(<2 x float> %108, float %109) #24
  %111 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %105, float %106, <2 x float> %99, float %100) #24
  %112 = extractvalue { <2 x float>, float } %111, 0
  %113 = extractvalue { <2 x float>, float } %111, 1
  %114 = tail call fastcc float @LengthSquared(<2 x float> %112, float %113) #24
  %115 = fcmp olt float %114, %110
  br i1 %115, label %131, label %116

116:                                              ; preds = %71, %94
  %117 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %56, i32 9
  store i8 0, ptr %117, align 1, !tbaa !73
  %118 = getelementptr inbounds i8, ptr %117, i64 1
  store i8 1, ptr %118, align 1, !tbaa !73
  %119 = getelementptr inbounds i8, ptr %117, i64 2
  store i8 2, ptr %119, align 1, !tbaa !73
  %120 = mul nsw i32 %48, 3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, ptr %1, i64 %121
  store i32 %60, ptr %122, align 4, !tbaa !48
  %123 = getelementptr i32, ptr %122, i64 1
  store i32 %76, ptr %123, align 4, !tbaa !48
  %124 = getelementptr i32, ptr %122, i64 2
  store i32 %77, ptr %124, align 4, !tbaa !48
  %125 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %73, i32 9
  store i8 0, ptr %125, align 1, !tbaa !73
  %126 = getelementptr inbounds i8, ptr %125, i64 1
  store i8 2, ptr %126, align 1, !tbaa !73
  %127 = getelementptr inbounds i8, ptr %125, i64 2
  store i8 3, ptr %127, align 1, !tbaa !73
  %128 = mul nsw i32 %72, 3
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, ptr %1, i64 %129
  store i32 %60, ptr %130, align 4, !tbaa !48
  br label %146

131:                                              ; preds = %92, %94
  %132 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %56, i32 9
  store i8 0, ptr %132, align 1, !tbaa !73
  %133 = getelementptr inbounds i8, ptr %132, i64 1
  store i8 1, ptr %133, align 1, !tbaa !73
  %134 = getelementptr inbounds i8, ptr %132, i64 2
  store i8 3, ptr %134, align 1, !tbaa !73
  %135 = mul nsw i32 %48, 3
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, ptr %1, i64 %136
  store i32 %60, ptr %137, align 4, !tbaa !48
  %138 = getelementptr i32, ptr %137, i64 1
  store i32 %76, ptr %138, align 4, !tbaa !48
  %139 = getelementptr i32, ptr %137, i64 2
  store i32 %78, ptr %139, align 4, !tbaa !48
  %140 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %73, i32 9
  store i8 1, ptr %140, align 1, !tbaa !73
  %141 = getelementptr inbounds i8, ptr %140, i64 1
  store i8 2, ptr %141, align 1, !tbaa !73
  %142 = getelementptr inbounds i8, ptr %140, i64 2
  store i8 3, ptr %142, align 1, !tbaa !73
  %143 = mul nsw i32 %72, 3
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, ptr %1, i64 %144
  store i32 %76, ptr %145, align 4, !tbaa !48
  br label %146

146:                                              ; preds = %131, %116
  %147 = phi ptr [ %145, %131 ], [ %130, %116 ]
  %148 = getelementptr i32, ptr %147, i64 1
  store i32 %77, ptr %148, align 4, !tbaa !48
  br label %149

149:                                              ; preds = %146, %61
  %150 = phi ptr [ %147, %146 ], [ %67, %61 ]
  %151 = phi i32 [ %78, %146 ], [ %70, %61 ]
  %152 = phi i32 [ 2, %146 ], [ 1, %61 ]
  %153 = getelementptr i32, ptr %150, i64 2
  store i32 %151, ptr %153, align 4, !tbaa !48
  %154 = add nsw i32 %48, %152
  %155 = add nsw i32 %52, %46
  br label %156

156:                                              ; preds = %45, %149
  %157 = phi i32 [ %154, %149 ], [ %48, %45 ]
  %158 = phi i32 [ %155, %149 ], [ %46, %45 ]
  %159 = add nuw nsw i32 %47, 1
  %160 = load ptr, ptr %2, align 8, !tbaa !35
  %161 = load ptr, ptr %160, align 8, !tbaa !40
  %162 = tail call i32 %161(ptr noundef nonnull %2) #25
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %45, label %9, !llvm.loop !74

164:                                              ; preds = %41, %9
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GenerateSharedVerticesIndexList(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !75 {
  %4 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %1, i32 noundef 0) #24
  %5 = extractvalue { <2 x float>, float } %4, 0
  %6 = extractvalue { <2 x float>, float } %4, 1
  %7 = mul i32 %2, 3
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %58

9:                                                ; preds = %3
  %10 = tail call i32 @llvm.smax.i32(i32 %7, i32 2)
  %11 = zext nneg i32 %10 to i64
  br label %12

12:                                               ; preds = %9, %53
  %13 = phi i64 [ 1, %9 ], [ %56, %53 ]
  %14 = phi float [ %6, %9 ], [ %55, %53 ]
  %15 = phi <2 x float> [ %5, %9 ], [ %48, %53 ]
  %16 = phi float [ %6, %9 ], [ %54, %53 ]
  %17 = phi <2 x float> [ %5, %9 ], [ %47, %53 ]
  %18 = getelementptr inbounds i32, ptr %0, i64 %13
  %19 = load i32, ptr %18, align 4, !tbaa !48
  %20 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %1, i32 noundef %19) #24
  %21 = extractvalue { <2 x float>, float } %20, 0
  %22 = extractvalue { <2 x float>, float } %20, 1
  %23 = extractelement <2 x float> %15, i64 0
  %24 = extractelement <2 x float> %21, i64 0
  %25 = fcmp ogt float %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = shufflevector <2 x float> %21, <2 x float> %15, <2 x i32> <i32 0, i32 3>
  br label %33

28:                                               ; preds = %12
  %29 = extractelement <2 x float> %17, i64 0
  %30 = fcmp olt float %29, %24
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = shufflevector <2 x float> %21, <2 x float> %17, <2 x i32> <i32 0, i32 3>
  br label %33

33:                                               ; preds = %28, %31, %26
  %34 = phi <2 x float> [ %17, %26 ], [ %32, %31 ], [ %17, %28 ]
  %35 = phi <2 x float> [ %27, %26 ], [ %15, %31 ], [ %15, %28 ]
  %36 = extractelement <2 x float> %35, i64 1
  %37 = extractelement <2 x float> %21, i64 1
  %38 = fcmp ogt float %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = shufflevector <2 x float> %35, <2 x float> %21, <2 x i32> <i32 0, i32 3>
  br label %46

41:                                               ; preds = %33
  %42 = extractelement <2 x float> %34, i64 1
  %43 = fcmp olt float %42, %37
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = shufflevector <2 x float> %34, <2 x float> %21, <2 x i32> <i32 0, i32 3>
  br label %46

46:                                               ; preds = %41, %44, %39
  %47 = phi <2 x float> [ %34, %39 ], [ %45, %44 ], [ %34, %41 ]
  %48 = phi <2 x float> [ %40, %39 ], [ %35, %44 ], [ %35, %41 ]
  %49 = fcmp ogt float %14, %22
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = fcmp olt float %16, %22
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %46, %50, %52
  %54 = phi float [ %22, %52 ], [ %16, %50 ], [ %16, %46 ]
  %55 = phi float [ %14, %52 ], [ %14, %50 ], [ %22, %46 ]
  %56 = add nuw nsw i64 %13, 1
  %57 = icmp eq i64 %56, %11
  br i1 %57, label %58, label %12, !llvm.loop !76

58:                                               ; preds = %53, %3
  %59 = phi <2 x float> [ %5, %3 ], [ %47, %53 ]
  %60 = phi float [ %6, %3 ], [ %54, %53 ]
  %61 = phi <2 x float> [ %5, %3 ], [ %48, %53 ]
  %62 = phi float [ %6, %3 ], [ %55, %53 ]
  %63 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %59, float %60, <2 x float> %61, float %62) #24
  %64 = extractvalue { <2 x float>, float } %63, 0
  %65 = extractvalue { <2 x float>, float } %63, 1
  %66 = extractelement <2 x float> %64, i64 1
  %67 = extractelement <2 x float> %64, i64 0
  %68 = fcmp ogt float %66, %67
  %69 = fcmp ogt float %66, %65
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = extractelement <2 x float> %61, i64 1
  %73 = extractelement <2 x float> %59, i64 1
  br label %79

74:                                               ; preds = %58
  %75 = extractelement <2 x float> %59, i64 0
  %76 = extractelement <2 x float> %61, i64 0
  %77 = fcmp ogt float %65, %67
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %74, %78, %71
  %80 = phi float [ %73, %71 ], [ %60, %78 ], [ %75, %74 ]
  %81 = phi float [ %72, %71 ], [ %62, %78 ], [ %76, %74 ]
  %82 = phi i1 [ false, %71 ], [ false, %78 ], [ true, %74 ]
  %83 = zext nneg i32 %2 to i64
  %84 = mul nuw nsw i64 %83, 12
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #26
  %86 = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #26
  %87 = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #26
  %88 = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #26
  %89 = icmp eq ptr %85, null
  %90 = icmp eq ptr %86, null
  %91 = or i1 %89, %90
  %92 = icmp eq ptr %87, null
  %93 = or i1 %91, %92
  %94 = icmp eq ptr %88, null
  %95 = or i1 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %79
  br i1 %89, label %98, label %97

97:                                               ; preds = %96
  tail call void @free(ptr noundef nonnull %85) #25
  br label %98

98:                                               ; preds = %97, %96
  br i1 %90, label %100, label %99

99:                                               ; preds = %98
  tail call void @free(ptr noundef nonnull %86) #25
  br label %100

100:                                              ; preds = %99, %98
  br i1 %92, label %102, label %101

101:                                              ; preds = %100
  tail call void @free(ptr noundef nonnull %87) #25
  br label %102

102:                                              ; preds = %101, %100
  br i1 %94, label %104, label %103

103:                                              ; preds = %102
  tail call void @free(ptr noundef nonnull %88) #25
  br label %104

104:                                              ; preds = %103, %102
  tail call fastcc void @GenerateSharedVerticesIndexListSlow(ptr noundef %0, ptr noundef %1, i32 noundef %2) #24
  br label %222

105:                                              ; preds = %79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %86, i8 0, i64 8192, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %88, i8 0, i64 8192, i1 false)
  br i1 %8, label %106, label %127

106:                                              ; preds = %105
  %107 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %108 = zext nneg i32 %107 to i64
  br label %109

109:                                              ; preds = %106, %109
  %110 = phi i64 [ 0, %106 ], [ %125, %109 ]
  %111 = getelementptr inbounds i32, ptr %0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !48
  %113 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %1, i32 noundef %112) #24
  %114 = extractvalue { <2 x float>, float } %113, 0
  %115 = extractelement <2 x float> %114, i64 0
  %116 = extractvalue { <2 x float>, float } %113, 1
  %117 = extractelement <2 x float> %114, i64 1
  %118 = select i1 %70, float %117, float %116
  %119 = select i1 %82, float %115, float %118
  %120 = tail call fastcc i32 @FindGridCell(float noundef %81, float noundef %80, float noundef %119) #24
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, ptr %86, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !48
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %122, align 4, !tbaa !48
  %125 = add nuw nsw i64 %110, 1
  %126 = icmp eq i64 %125, %108
  br i1 %126, label %127, label %109, !llvm.loop !77

127:                                              ; preds = %109, %105
  store i32 0, ptr %87, align 4, !tbaa !48
  %128 = getelementptr i32, ptr %86, i64 -1
  br label %133

129:                                              ; preds = %133
  br i1 %8, label %130, label %142

130:                                              ; preds = %129
  %131 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %132 = zext nneg i32 %131 to i64
  br label %144

133:                                              ; preds = %127, %133
  %134 = phi i32 [ 0, %127 ], [ %138, %133 ]
  %135 = phi i64 [ 1, %127 ], [ %140, %133 ]
  %136 = getelementptr i32, ptr %128, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !48
  %138 = add nsw i32 %137, %134
  %139 = getelementptr inbounds i32, ptr %87, i64 %135
  store i32 %138, ptr %139, align 4, !tbaa !48
  %140 = add nuw nsw i64 %135, 1
  %141 = icmp eq i64 %140, 2048
  br i1 %141, label %129, label %133, !llvm.loop !78

142:                                              ; preds = %144, %129
  tail call void @free(ptr noundef %88) #25
  %143 = load i32, ptr %86, align 4, !tbaa !48
  br label %169

144:                                              ; preds = %130, %144
  %145 = phi i64 [ 0, %130 ], [ %167, %144 ]
  %146 = getelementptr inbounds i32, ptr %0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !48
  %148 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %1, i32 noundef %147) #24
  %149 = extractvalue { <2 x float>, float } %148, 0
  %150 = extractelement <2 x float> %149, i64 0
  %151 = extractvalue { <2 x float>, float } %148, 1
  %152 = extractelement <2 x float> %149, i64 1
  %153 = select i1 %70, float %152, float %151
  %154 = select i1 %82, float %150, float %153
  %155 = tail call fastcc i32 @FindGridCell(float noundef %81, float noundef %80, float noundef %154) #24
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, ptr %87, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !48
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, ptr %85, i64 %159
  %161 = getelementptr inbounds i32, ptr %88, i64 %156
  %162 = load i32, ptr %161, align 4, !tbaa !48
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, ptr %160, i64 %163
  %165 = trunc i64 %145 to i32
  store i32 %165, ptr %164, align 4, !tbaa !48
  %166 = add nsw i32 %162, 1
  store i32 %166, ptr %161, align 4, !tbaa !48
  %167 = add nuw nsw i64 %145, 1
  %168 = icmp eq i64 %167, %132
  br i1 %168, label %142, label %144, !llvm.loop !79

169:                                              ; preds = %142, %169
  %170 = phi i64 [ 1, %142 ], [ %175, %169 ]
  %171 = phi i32 [ %143, %142 ], [ %174, %169 ]
  %172 = getelementptr inbounds i32, ptr %86, i64 %170
  %173 = load i32, ptr %172, align 4, !tbaa !48
  %174 = tail call i32 @llvm.smax.i32(i32 %171, i32 %173)
  %175 = add nuw nsw i64 %170, 1
  %176 = icmp eq i64 %175, 2048
  br i1 %176, label %177, label %169, !llvm.loop !80

177:                                              ; preds = %169
  %178 = sext i32 %174 to i64
  %179 = shl nsw i64 %178, 4
  %180 = tail call noalias ptr @malloc(i64 noundef %179) #26
  %181 = icmp eq ptr %180, null
  br label %182

182:                                              ; preds = %214, %177
  %183 = phi i64 [ 0, %177 ], [ %215, %214 ]
  %184 = getelementptr inbounds i32, ptr %87, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !48
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, ptr %85, i64 %186
  %188 = getelementptr inbounds i32, ptr %86, i64 %183
  %189 = load i32, ptr %188, align 4, !tbaa !48
  %190 = icmp slt i32 %189, 2
  br i1 %190, label %211, label %191

191:                                              ; preds = %182
  br i1 %181, label %216, label %192

192:                                              ; preds = %191
  %193 = zext nneg i32 %189 to i64
  br label %194

194:                                              ; preds = %192, %194
  %195 = phi i64 [ 0, %192 ], [ %207, %194 ]
  %196 = getelementptr inbounds i32, ptr %187, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !48
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, ptr %0, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !48
  %201 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %1, i32 noundef %200) #24
  %202 = extractvalue { <2 x float>, float } %201, 0
  %203 = extractvalue { <2 x float>, float } %201, 1
  %204 = getelementptr inbounds %struct.STmpVert, ptr %180, i64 %195
  store <2 x float> %202, ptr %204, align 4, !tbaa !55
  %205 = getelementptr inbounds [3 x float], ptr %204, i64 0, i64 2
  store float %203, ptr %205, align 4, !tbaa !55
  %206 = getelementptr inbounds %struct.STmpVert, ptr %180, i64 %195, i32 1
  store i32 %197, ptr %206, align 4, !tbaa !81
  %207 = add nuw nsw i64 %195, 1
  %208 = icmp eq i64 %207, %193
  br i1 %208, label %209, label %194, !llvm.loop !83

209:                                              ; preds = %194
  %210 = add nsw i32 %189, -1
  tail call fastcc void @MergeVertsFast(ptr noundef nonnull %0, ptr noundef nonnull %180, ptr noundef %1, i32 noundef 0, i32 noundef %210) #24
  br label %211

211:                                              ; preds = %209, %182
  %212 = add nuw nsw i64 %183, 1
  %213 = icmp eq i64 %212, 2048
  br i1 %213, label %219, label %214

214:                                              ; preds = %211, %216
  %215 = phi i64 [ %212, %211 ], [ %217, %216 ]
  br label %182, !llvm.loop !84

216:                                              ; preds = %191
  tail call fastcc void @MergeVertsSlow(ptr noundef %0, ptr noundef %1, ptr noundef %187, i32 noundef %189) #24
  %217 = add nuw nsw i64 %183, 1
  %218 = icmp eq i64 %217, 2048
  br i1 %218, label %221, label %214

219:                                              ; preds = %211
  br i1 %181, label %221, label %220

220:                                              ; preds = %219
  tail call void @free(ptr noundef nonnull %180) #25
  br label %221

221:                                              ; preds = %216, %220, %219
  tail call void @free(ptr noundef %85) #25
  tail call void @free(ptr noundef %86) #25
  tail call void @free(ptr noundef %87) #25
  br label %222

222:                                              ; preds = %221, %104
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc { <2 x float>, float } @GetPosition(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !85 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #27
  call fastcc void @IndexToData(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %1) #24
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = load i32, ptr %3, align 4, !tbaa !48
  %10 = load i32, ptr %4, align 4, !tbaa !48
  call void %8(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %9, i32 noundef %10) #25
  %11 = load <2 x float>, ptr %5, align 8, !tbaa !55
  %12 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  %14 = insertvalue { <2 x float>, float } poison, <2 x float> %11, 0
  %15 = insertvalue { <2 x float>, float } %14, float %13, 1
  ret { <2 x float>, float } %15
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @veq(<2 x float> %0, float %1, <2 x float> %2, float %3) unnamed_addr #7 !PGOFuncName !86 {
  %5 = extractelement <2 x float> %0, i64 0
  %6 = extractelement <2 x float> %2, i64 0
  %7 = fcmp oeq float %5, %6
  %8 = fcmp oeq <2 x float> %0, %2
  %9 = extractelement <2 x i1> %8, i64 1
  %10 = select i1 %7, i1 %9, i1 false
  %11 = fcmp oeq float %1, %3
  %12 = select i1 %10, i1 %11, i1 false
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @DegenPrologue(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 !PGOFuncName !87 {
  %5 = alloca %struct.STriInfo, align 8
  %6 = add nsw i32 %3, -1
  %7 = icmp sgt i32 %3, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %33, %4
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %36, label %84

10:                                               ; preds = %4, %33
  %11 = phi i32 [ %34, %33 ], [ 0, %4 ]
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %12, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !71
  %15 = add nsw i32 %11, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %16, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !71
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %12, i32 7
  %22 = load i32, ptr %21, align 4, !tbaa !50
  %23 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %16, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = xor i32 %24, %22
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = or i32 %22, 2
  store i32 %29, ptr %21, align 4, !tbaa !50
  %30 = or i32 %24, 2
  store i32 %30, ptr %23, align 4, !tbaa !50
  br label %31

31:                                               ; preds = %28, %20
  %32 = add nsw i32 %11, 2
  br label %33

33:                                               ; preds = %10, %31
  %34 = phi i32 [ %32, %31 ], [ %15, %10 ]
  %35 = icmp slt i32 %34, %6
  br i1 %35, label %10, label %8, !llvm.loop !88

36:                                               ; preds = %8, %80
  %37 = phi i32 [ %81, %80 ], [ 1, %8 ]
  %38 = phi i32 [ %82, %80 ], [ 0, %8 ]
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %39
  %41 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %39, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = icmp slt i32 %37, %3
  br i1 %46, label %50, label %84

47:                                               ; preds = %36
  %48 = add nuw nsw i32 %38, 2
  %49 = tail call i32 @llvm.smax.i32(i32 %37, i32 %48)
  br label %80

50:                                               ; preds = %45, %50
  %51 = phi i32 [ %56, %50 ], [ %37, %45 ]
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %52, i32 7
  %54 = load i32, ptr %53, align 4, !tbaa !50
  %55 = and i32 %54, 1
  %56 = add nsw i32 %55, %51
  %57 = icmp ne i32 %55, 0
  %58 = icmp slt i32 %56, %3
  %59 = and i1 %57, %58
  br i1 %59, label %50, label %60, !llvm.loop !89

60:                                               ; preds = %50
  %61 = add nsw i32 %56, 1
  br i1 %57, label %84, label %62

62:                                               ; preds = %60
  %63 = mul nsw i32 %38, 3
  %64 = mul nsw i32 %56, 3
  %65 = zext nneg i32 %63 to i64
  %66 = sext i32 %64 to i64
  %67 = getelementptr i32, ptr %1, i64 %65
  %68 = getelementptr i32, ptr %1, i64 %66
  br label %69

69:                                               ; preds = %62, %69
  %70 = phi i64 [ 0, %62 ], [ %75, %69 ]
  %71 = getelementptr i32, ptr %67, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !48
  %73 = getelementptr i32, ptr %68, i64 %70
  %74 = load i32, ptr %73, align 4, !tbaa !48
  store i32 %74, ptr %71, align 4, !tbaa !48
  store i32 %72, ptr %73, align 4, !tbaa !48
  %75 = add nuw nsw i64 %70, 1
  %76 = icmp eq i64 %75, 3
  br i1 %76, label %77, label %69, !llvm.loop !90

77:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %40, i64 88, i1 false), !tbaa.struct !91
  %78 = sext i32 %56 to i64
  %79 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %40, ptr noundef nonnull align 8 dereferenceable(88) %79, i64 88, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %79, ptr noundef nonnull align 8 dereferenceable(88) %5, i64 88, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5)
  br label %80

80:                                               ; preds = %77, %47
  %81 = phi i32 [ %61, %77 ], [ %49, %47 ]
  %82 = add nuw nsw i32 %38, 1
  %83 = icmp slt i32 %82, %2
  br i1 %83, label %36, label %84, !llvm.loop !92

84:                                               ; preds = %45, %60, %80, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @InitTriInfo(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 !PGOFuncName !93 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %196

6:                                                ; preds = %4
  %7 = zext nneg i32 %3 to i64
  br label %8

8:                                                ; preds = %6, %24
  %9 = phi i64 [ 0, %6 ], [ %25, %24 ]
  %10 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %9
  %11 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %9, i32 2
  %12 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %9, i32 7
  br label %16

13:                                               ; preds = %24
  br i1 %5, label %14, label %196

14:                                               ; preds = %13
  %15 = zext nneg i32 %3 to i64
  br label %30

16:                                               ; preds = %8, %16
  %17 = phi i64 [ 0, %8 ], [ %22, %16 ]
  %18 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 %17
  store i32 -1, ptr %18, align 4, !tbaa !48
  %19 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %9, i32 1, i64 %17
  store ptr null, ptr %19, align 8, !tbaa !94
  %20 = load i32, ptr %12, align 4, !tbaa !50
  %21 = or i32 %20, 4
  store i32 %21, ptr %12, align 4, !tbaa !50
  %22 = add nuw nsw i64 %17, 1
  %23 = icmp eq i64 %22, 3
  br i1 %23, label %24, label %16, !llvm.loop !95

24:                                               ; preds = %16
  %25 = add nuw nsw i64 %9, 1
  %26 = icmp eq i64 %25, %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  br i1 %26, label %13, label %8, !llvm.loop !96

27:                                               ; preds = %140
  %28 = add nsw i32 %3, -1
  %29 = icmp eq i32 %3, 1
  br i1 %29, label %196, label %143

30:                                               ; preds = %14, %140
  %31 = phi i64 [ 0, %14 ], [ %141, %140 ]
  %32 = mul nuw nsw i64 %31, 3
  %33 = getelementptr inbounds i32, ptr %1, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !48
  %35 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %2, i32 noundef %34) #24
  %36 = extractvalue { <2 x float>, float } %35, 0
  %37 = extractvalue { <2 x float>, float } %35, 1
  %38 = getelementptr i32, ptr %33, i64 1
  %39 = load i32, ptr %38, align 4, !tbaa !48
  %40 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %2, i32 noundef %39) #24
  %41 = extractvalue { <2 x float>, float } %40, 0
  %42 = extractvalue { <2 x float>, float } %40, 1
  %43 = getelementptr i32, ptr %33, i64 2
  %44 = load i32, ptr %43, align 4, !tbaa !48
  %45 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %2, i32 noundef %44) #24
  %46 = extractvalue { <2 x float>, float } %45, 0
  %47 = extractvalue { <2 x float>, float } %45, 1
  %48 = load i32, ptr %33, align 4, !tbaa !48
  %49 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef %2, i32 noundef %48) #24
  %50 = load i32, ptr %38, align 4, !tbaa !48
  %51 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef %2, i32 noundef %50) #24
  %52 = load i32, ptr %43, align 4, !tbaa !48
  %53 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef %2, i32 noundef %52) #24
  %54 = fsub <2 x float> %51, %49
  %55 = extractelement <2 x float> %54, i64 0
  %56 = fsub <2 x float> %51, %49
  %57 = extractelement <2 x float> %56, i64 1
  %58 = fsub <2 x float> %53, %49
  %59 = extractelement <2 x float> %58, i64 0
  %60 = fsub <2 x float> %53, %49
  %61 = extractelement <2 x float> %60, i64 1
  %62 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %41, float %42, <2 x float> %36, float %37) #24
  %63 = extractvalue { <2 x float>, float } %62, 0
  %64 = extractvalue { <2 x float>, float } %62, 1
  %65 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %46, float %47, <2 x float> %36, float %37) #24
  %66 = extractvalue { <2 x float>, float } %65, 0
  %67 = extractvalue { <2 x float>, float } %65, 1
  %68 = fneg float %57
  %69 = fmul float %59, %68
  %70 = tail call float @llvm.fmuladd.f32(float %55, float %61, float %69)
  %71 = tail call fastcc { <2 x float>, float } @vscale(float noundef %61, <2 x float> %63, float %64) #24
  %72 = extractvalue { <2 x float>, float } %71, 0
  %73 = extractvalue { <2 x float>, float } %71, 1
  %74 = tail call fastcc { <2 x float>, float } @vscale(float noundef %57, <2 x float> %66, float %67) #24
  %75 = extractvalue { <2 x float>, float } %74, 0
  %76 = extractvalue { <2 x float>, float } %74, 1
  %77 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %72, float %73, <2 x float> %75, float %76) #24
  %78 = extractvalue { <2 x float>, float } %77, 0
  %79 = extractvalue { <2 x float>, float } %77, 1
  %80 = fneg float %59
  %81 = tail call fastcc { <2 x float>, float } @vscale(float noundef %80, <2 x float> %63, float %64) #24
  %82 = extractvalue { <2 x float>, float } %81, 0
  %83 = extractvalue { <2 x float>, float } %81, 1
  %84 = tail call fastcc { <2 x float>, float } @vscale(float noundef %55, <2 x float> %66, float %67) #24
  %85 = extractvalue { <2 x float>, float } %84, 0
  %86 = extractvalue { <2 x float>, float } %84, 1
  %87 = tail call fastcc { <2 x float>, float } @vadd(<2 x float> %82, float %83, <2 x float> %85, float %86) #24
  %88 = extractvalue { <2 x float>, float } %87, 0
  %89 = extractvalue { <2 x float>, float } %87, 1
  %90 = fcmp ogt float %70, 0.000000e+00
  %91 = select i1 %90, i32 8, i32 0
  %92 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %31, i32 7
  %93 = load i32, ptr %92, align 4, !tbaa !50
  %94 = or i32 %93, %91
  store i32 %94, ptr %92, align 4, !tbaa !50
  %95 = tail call fastcc i32 @NotZero(float noundef %70) #24, !range !34
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %140, label %97

97:                                               ; preds = %30
  %98 = tail call float @llvm.fabs.f32(float %70)
  %99 = tail call fastcc float @Length(<2 x float> %78, float %79) #24
  %100 = tail call fastcc float @Length(<2 x float> %88, float %89) #24
  %101 = load i32, ptr %92, align 4, !tbaa !50
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, float -1.000000e+00, float 1.000000e+00
  %105 = tail call fastcc i32 @NotZero(float noundef %99) #24, !range !34
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %31, i32 2
  %109 = fdiv float %104, %99
  %110 = tail call fastcc { <2 x float>, float } @vscale(float noundef %109, <2 x float> %78, float %79) #24
  %111 = extractvalue { <2 x float>, float } %110, 0
  %112 = extractvalue { <2 x float>, float } %110, 1
  store <2 x float> %111, ptr %108, align 8, !tbaa.struct !97
  %113 = getelementptr inbounds i8, ptr %108, i64 8
  store float %112, ptr %113, align 8, !tbaa.struct !98
  br label %114

114:                                              ; preds = %107, %97
  %115 = tail call fastcc i32 @NotZero(float noundef %100) #24, !range !34
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %31, i32 3
  %119 = fdiv float %104, %100
  %120 = tail call fastcc { <2 x float>, float } @vscale(float noundef %119, <2 x float> %88, float %89) #24
  %121 = extractvalue { <2 x float>, float } %120, 0
  %122 = extractvalue { <2 x float>, float } %120, 1
  store <2 x float> %121, ptr %118, align 4, !tbaa.struct !97
  %123 = getelementptr inbounds i8, ptr %118, i64 8
  store float %122, ptr %123, align 4, !tbaa.struct !98
  br label %124

124:                                              ; preds = %117, %114
  %125 = insertelement <2 x float> poison, float %99, i64 0
  %126 = insertelement <2 x float> %125, float %100, i64 1
  %127 = insertelement <2 x float> poison, float %98, i64 0
  %128 = shufflevector <2 x float> %127, <2 x float> poison, <2 x i32> zeroinitializer
  %129 = fdiv <2 x float> %126, %128
  %130 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %31, i32 4
  store <2 x float> %129, ptr %130, align 8, !tbaa !55
  %131 = extractelement <2 x float> %129, i64 0
  %132 = tail call fastcc i32 @NotZero(float noundef %131) #24, !range !34
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %124
  %135 = extractelement <2 x float> %129, i64 1
  %136 = tail call fastcc i32 @NotZero(float noundef %135) #24, !range !34
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = and i32 %101, -5
  store i32 %139, ptr %92, align 4, !tbaa !50
  br label %140

140:                                              ; preds = %124, %134, %138, %30
  %141 = add nuw nsw i64 %31, 1
  %142 = icmp eq i64 %141, %15
  br i1 %142, label %27, label %30, !llvm.loop !99

143:                                              ; preds = %27, %193
  %144 = phi i32 [ %194, %193 ], [ 0, %27 ]
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %145, i32 6
  %147 = load i32, ptr %146, align 8, !tbaa !71
  %148 = add nsw i32 %144, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %149, i32 6
  %151 = load i32, ptr %150, align 8, !tbaa !71
  %152 = icmp eq i32 %147, %151
  br i1 %152, label %153, label %193

153:                                              ; preds = %143
  %154 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %145, i32 7
  %155 = load i32, ptr %154, align 4, !tbaa !50
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  %158 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %149, i32 7
  %159 = load i32, ptr %158, align 4, !tbaa !50
  %160 = and i32 %159, 1
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %157, i1 %161, i1 false
  br i1 %162, label %163, label %191

163:                                              ; preds = %153
  %164 = xor i32 %159, %155
  %165 = and i32 %164, 8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %191, label %167

167:                                              ; preds = %163
  %168 = and i32 %159, 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %167
  %171 = mul nsw i32 %144, 3
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, ptr %1, i64 %172
  %174 = tail call fastcc float @CalcTexArea(ptr noundef %2, ptr noundef %173) #24
  %175 = mul nsw i32 %148, 3
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, ptr %1, i64 %176
  %178 = tail call fastcc float @CalcTexArea(ptr noundef %2, ptr noundef %177) #24
  %179 = fcmp ult float %174, %178
  br i1 %179, label %181, label %180

180:                                              ; preds = %170
  br label %181

181:                                              ; preds = %170, %167, %180
  %182 = phi i64 [ %149, %170 ], [ %145, %167 ], [ %145, %180 ]
  %183 = phi i64 [ %145, %170 ], [ %149, %167 ], [ %149, %180 ]
  %184 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %183, i32 7
  %185 = load i32, ptr %184, align 4, !tbaa !50
  %186 = and i32 %185, -9
  store i32 %186, ptr %184, align 4, !tbaa !50
  %187 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %182, i32 7
  %188 = load i32, ptr %187, align 4, !tbaa !50
  %189 = and i32 %188, 8
  %190 = or disjoint i32 %189, %186
  store i32 %190, ptr %184, align 4, !tbaa !50
  br label %191

191:                                              ; preds = %163, %181, %153
  %192 = add nsw i32 %144, 2
  br label %193

193:                                              ; preds = %143, %191
  %194 = phi i32 [ %192, %191 ], [ %148, %143 ]
  %195 = icmp slt i32 %194, %28
  br i1 %195, label %143, label %196, !llvm.loop !100

196:                                              ; preds = %193, %4, %13, %27
  %197 = sext i32 %3 to i64
  %198 = mul nsw i64 %197, 36
  %199 = tail call noalias ptr @malloc(i64 noundef %198) #26
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  tail call fastcc void @BuildNeighborsSlow(ptr noundef %0, ptr noundef %1, i32 noundef %3) #24
  br label %203

202:                                              ; preds = %196
  tail call fastcc void @BuildNeighborsFast(ptr noundef %0, ptr noundef nonnull %199, ptr noundef %1, i32 noundef %3) #24
  tail call void @free(ptr noundef nonnull %199) #25
  br label %203

203:                                              ; preds = %202, %201
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @Build4RuleGroups(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #9 !PGOFuncName !101 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %72

7:                                                ; preds = %5
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %7, %69
  %10 = phi i64 [ 0, %7 ], [ %70, %69 ]
  %11 = phi i32 [ 0, %7 ], [ %66, %69 ]
  %12 = phi i32 [ 0, %7 ], [ %65, %69 ]
  %13 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %10
  %14 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %10, i32 7
  %15 = mul i64 %10, 3
  %16 = and i64 %15, 4294967295
  %17 = getelementptr i32, ptr %3, i64 %16
  %18 = trunc i64 %10 to i32
  br label %19

19:                                               ; preds = %9, %64
  %20 = phi i64 [ 0, %9 ], [ %67, %64 ]
  %21 = phi i32 [ %11, %9 ], [ %66, %64 ]
  %22 = phi i32 [ %12, %9 ], [ %65, %64 ]
  %23 = load i32, ptr %14, align 4, !tbaa !50
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %10, i32 1, i64 %20
  %28 = load ptr, ptr %27, align 8, !tbaa !94
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = getelementptr i32, ptr %17, i64 %20
  %32 = load i32, ptr %31, align 4, !tbaa !48
  %33 = sext i32 %21 to i64
  %34 = getelementptr inbounds %struct.SGroup, ptr %1, i64 %33
  store ptr %34, ptr %27, align 8, !tbaa !94
  %35 = getelementptr inbounds %struct.SGroup, ptr %1, i64 %33, i32 2
  store i32 %32, ptr %35, align 8, !tbaa !102
  %36 = lshr i32 %23, 3
  %37 = and i32 %36, 1
  %38 = getelementptr inbounds %struct.SGroup, ptr %1, i64 %33, i32 3
  store i32 %37, ptr %38, align 4, !tbaa !104
  store i32 0, ptr %34, align 8, !tbaa !105
  %39 = sext i32 %22 to i64
  %40 = getelementptr inbounds i32, ptr %2, i64 %39
  %41 = getelementptr inbounds %struct.SGroup, ptr %1, i64 %33, i32 1
  store ptr %40, ptr %41, align 8, !tbaa !106
  %42 = add nsw i32 %21, 1
  %43 = load ptr, ptr %27, align 8, !tbaa !94
  tail call fastcc void @AddTriToGroup(ptr noundef %43, i32 noundef %18) #24
  %44 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 %20
  %45 = load i32, ptr %44, align 4, !tbaa !48
  %46 = icmp eq i64 %20, 0
  %47 = shl i64 %20, 32
  %48 = add i64 %47, -4294967296
  %49 = ashr exact i64 %48, 32
  %50 = select i1 %46, i64 2, i64 %49
  %51 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !48
  %53 = icmp sgt i32 %45, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %30
  %55 = load ptr, ptr %27, align 8, !tbaa !94
  tail call fastcc void @AssignRecur(ptr noundef nonnull %3, ptr noundef nonnull %0, i32 noundef %45, ptr noundef %55) #24
  br label %56

56:                                               ; preds = %54, %30
  %57 = icmp sgt i32 %52, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = load ptr, ptr %27, align 8, !tbaa !94
  tail call fastcc void @AssignRecur(ptr noundef nonnull %3, ptr noundef nonnull %0, i32 noundef %52, ptr noundef %59) #24
  br label %60

60:                                               ; preds = %58, %56
  %61 = load ptr, ptr %27, align 8, !tbaa !94
  %62 = load i32, ptr %61, align 8, !tbaa !105
  %63 = add nsw i32 %62, %22
  br label %64

64:                                               ; preds = %19, %26, %60
  %65 = phi i32 [ %63, %60 ], [ %22, %26 ], [ %22, %19 ]
  %66 = phi i32 [ %42, %60 ], [ %21, %26 ], [ %21, %19 ]
  %67 = add nuw nsw i64 %20, 1
  %68 = icmp eq i64 %67, 3
  br i1 %68, label %69, label %19, !llvm.loop !107

69:                                               ; preds = %64
  %70 = add nuw nsw i64 %10, 1
  %71 = icmp eq i64 %70, %8
  br i1 %71, label %72, label %9, !llvm.loop !108

72:                                               ; preds = %69, %5
  %73 = phi i32 [ 0, %5 ], [ %66, %69 ]
  ret i32 %73
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @GenerateTSpaces(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, float noundef %5, ptr noundef %6) unnamed_addr #1 !PGOFuncName !109 {
  %8 = alloca %struct.SSubGroup, align 8
  %9 = alloca %struct.STSpace, align 4
  %10 = alloca %struct.STSpace, align 4
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %289

12:                                               ; preds = %7
  %13 = zext nneg i32 %3 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %20, %14 ]
  %16 = phi i32 [ 0, %12 ], [ %19, %14 ]
  %17 = getelementptr inbounds %struct.SGroup, ptr %2, i64 %15
  %18 = load i32, ptr %17, align 8, !tbaa !105
  %19 = tail call i32 @llvm.smax.i32(i32 %16, i32 %18)
  %20 = add nuw nsw i64 %15, 1
  %21 = icmp eq i64 %20, %13
  br i1 %21, label %22, label %14, !llvm.loop !110

22:                                               ; preds = %14
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %289, label %24

24:                                               ; preds = %22
  %25 = zext nneg i32 %19 to i64
  %26 = mul nuw nsw i64 %25, 40
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #26
  %28 = shl nuw nsw i64 %25, 4
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #26
  %30 = shl nuw nsw i64 %25, 2
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #26
  %32 = icmp eq ptr %27, null
  %33 = icmp eq ptr %29, null
  %34 = or i1 %32, %33
  %35 = icmp eq ptr %31, null
  %36 = or i1 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %24
  br i1 %11, label %38, label %287

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.SSubGroup, ptr %8, i64 0, i32 1
  %40 = zext nneg i32 %3 to i64
  br label %50

41:                                               ; preds = %24
  br i1 %32, label %43, label %42

42:                                               ; preds = %41
  tail call void @free(ptr noundef nonnull %27) #25
  br label %43

43:                                               ; preds = %42, %41
  br i1 %33, label %45, label %44

44:                                               ; preds = %43
  tail call void @free(ptr noundef nonnull %29) #25
  br label %45

45:                                               ; preds = %44, %43
  br i1 %35, label %289, label %46

46:                                               ; preds = %45
  tail call void @free(ptr noundef nonnull %31) #25
  br label %289

47:                                               ; preds = %281, %50, %59
  %48 = add nuw nsw i64 %51, 1
  %49 = icmp eq i64 %48, %40
  br i1 %49, label %287, label %50, !llvm.loop !111

50:                                               ; preds = %38, %47
  %51 = phi i64 [ 0, %38 ], [ %48, %47 ]
  %52 = getelementptr inbounds %struct.SGroup, ptr %2, i64 %51
  %53 = load i32, ptr %52, align 8, !tbaa !105
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %47

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.SGroup, ptr %2, i64 %51, i32 1
  %57 = getelementptr inbounds %struct.SGroup, ptr %2, i64 %51, i32 2
  %58 = getelementptr inbounds %struct.SGroup, ptr %2, i64 %51, i32 3
  br label %63

59:                                               ; preds = %273
  %60 = icmp sgt i32 %254, 0
  br i1 %60, label %61, label %47

61:                                               ; preds = %59
  %62 = zext nneg i32 %254 to i64
  br label %281

63:                                               ; preds = %55, %273
  %64 = phi i64 [ 0, %55 ], [ %277, %273 ]
  %65 = phi i32 [ 0, %55 ], [ %254, %273 ]
  %66 = load ptr, ptr %56, align 8, !tbaa !106
  %67 = getelementptr inbounds i32, ptr %66, i64 %64
  %68 = load i32, ptr %67, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #27
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %69, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !94
  %72 = icmp eq ptr %71, %52
  br i1 %72, label %82, label %73

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %69, i32 1, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !94
  %76 = icmp eq ptr %75, %52
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %69, i32 1, i64 2
  %79 = load ptr, ptr %78, align 8, !tbaa !94
  %80 = icmp eq ptr %79, %52
  %81 = select i1 %80, i32 2, i32 -1
  br label %82

82:                                               ; preds = %77, %73, %63
  %83 = phi i32 [ 0, %63 ], [ 1, %73 ], [ %81, %77 ]
  %84 = mul nsw i32 %68, 3
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %4, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !48
  %89 = tail call fastcc { <2 x float>, float } @GetNormal(ptr noundef %6, i32 noundef %88) #24
  %90 = extractvalue { <2 x float>, float } %89, 0
  %91 = extractvalue { <2 x float>, float } %89, 1
  %92 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %69, i32 2
  %93 = load <2 x float>, ptr %92, align 8
  %94 = getelementptr inbounds i8, ptr %92, i64 8
  %95 = load float, ptr %94, align 8
  %96 = tail call fastcc float @vdot(<2 x float> %90, float %91, <2 x float> %93, float %95) #24
  %97 = tail call fastcc { <2 x float>, float } @vscale(float noundef %96, <2 x float> %90, float %91) #24
  %98 = extractvalue { <2 x float>, float } %97, 0
  %99 = extractvalue { <2 x float>, float } %97, 1
  %100 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %93, float %95, <2 x float> %98, float %99) #24
  %101 = extractvalue { <2 x float>, float } %100, 0
  %102 = extractvalue { <2 x float>, float } %100, 1
  %103 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %69, i32 3
  %104 = load <2 x float>, ptr %103, align 4
  %105 = getelementptr inbounds i8, ptr %103, i64 8
  %106 = load float, ptr %105, align 4
  %107 = tail call fastcc float @vdot(<2 x float> %90, float %91, <2 x float> %104, float %106) #24
  %108 = tail call fastcc { <2 x float>, float } @vscale(float noundef %107, <2 x float> %90, float %91) #24
  %109 = extractvalue { <2 x float>, float } %108, 0
  %110 = extractvalue { <2 x float>, float } %108, 1
  %111 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %104, float %106, <2 x float> %109, float %110) #24
  %112 = extractvalue { <2 x float>, float } %111, 0
  %113 = extractvalue { <2 x float>, float } %111, 1
  %114 = tail call fastcc i32 @VNotZero(<2 x float> %101, float %102) #24, !range !34
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %82
  %117 = tail call fastcc { <2 x float>, float } @Normalize(<2 x float> %101, float %102) #24
  %118 = extractvalue { <2 x float>, float } %117, 0
  %119 = extractvalue { <2 x float>, float } %117, 1
  br label %120

120:                                              ; preds = %116, %82
  %121 = phi <2 x float> [ %118, %116 ], [ %101, %82 ]
  %122 = phi float [ %119, %116 ], [ %102, %82 ]
  %123 = tail call fastcc i32 @VNotZero(<2 x float> %112, float %113) #24, !range !34
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = tail call fastcc { <2 x float>, float } @Normalize(<2 x float> %112, float %113) #24
  %127 = extractvalue { <2 x float>, float } %126, 0
  %128 = extractvalue { <2 x float>, float } %126, 1
  br label %129

129:                                              ; preds = %125, %120
  %130 = phi <2 x float> [ %127, %125 ], [ %112, %120 ]
  %131 = phi float [ %128, %125 ], [ %113, %120 ]
  %132 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %69, i32 6
  %133 = load i32, ptr %132, align 8, !tbaa !71
  %134 = load i32, ptr %52, align 8, !tbaa !105
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %129
  store i32 0, ptr %8, align 8, !tbaa !112
  store ptr %31, ptr %39, align 8, !tbaa !114
  br label %216

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %69, i32 7
  br label %139

139:                                              ; preds = %137, %206
  %140 = phi i64 [ 0, %137 ], [ %208, %206 ]
  %141 = phi i32 [ 0, %137 ], [ %207, %206 ]
  %142 = load ptr, ptr %56, align 8, !tbaa !106
  %143 = getelementptr inbounds i32, ptr %142, i64 %140
  %144 = load i32, ptr %143, align 4, !tbaa !48
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %145, i32 6
  %147 = load i32, ptr %146, align 8, !tbaa !71
  %148 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %145, i32 2
  %149 = load <2 x float>, ptr %148, align 8
  %150 = getelementptr inbounds i8, ptr %148, i64 8
  %151 = load float, ptr %150, align 8
  %152 = tail call fastcc float @vdot(<2 x float> %90, float %91, <2 x float> %149, float %151) #24
  %153 = tail call fastcc { <2 x float>, float } @vscale(float noundef %152, <2 x float> %90, float %91) #24
  %154 = extractvalue { <2 x float>, float } %153, 0
  %155 = extractvalue { <2 x float>, float } %153, 1
  %156 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %149, float %151, <2 x float> %154, float %155) #24
  %157 = extractvalue { <2 x float>, float } %156, 0
  %158 = extractvalue { <2 x float>, float } %156, 1
  %159 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %145, i32 3
  %160 = load <2 x float>, ptr %159, align 4
  %161 = getelementptr inbounds i8, ptr %159, i64 8
  %162 = load float, ptr %161, align 4
  %163 = tail call fastcc float @vdot(<2 x float> %90, float %91, <2 x float> %160, float %162) #24
  %164 = tail call fastcc { <2 x float>, float } @vscale(float noundef %163, <2 x float> %90, float %91) #24
  %165 = extractvalue { <2 x float>, float } %164, 0
  %166 = extractvalue { <2 x float>, float } %164, 1
  %167 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %160, float %162, <2 x float> %165, float %166) #24
  %168 = extractvalue { <2 x float>, float } %167, 0
  %169 = extractvalue { <2 x float>, float } %167, 1
  %170 = tail call fastcc i32 @VNotZero(<2 x float> %157, float %158) #24, !range !34
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %139
  %173 = tail call fastcc { <2 x float>, float } @Normalize(<2 x float> %157, float %158) #24
  %174 = extractvalue { <2 x float>, float } %173, 0
  %175 = extractvalue { <2 x float>, float } %173, 1
  br label %176

176:                                              ; preds = %172, %139
  %177 = phi <2 x float> [ %174, %172 ], [ %157, %139 ]
  %178 = phi float [ %175, %172 ], [ %158, %139 ]
  %179 = tail call fastcc i32 @VNotZero(<2 x float> %168, float %169) #24, !range !34
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %176
  %182 = tail call fastcc { <2 x float>, float } @Normalize(<2 x float> %168, float %169) #24
  %183 = extractvalue { <2 x float>, float } %182, 0
  %184 = extractvalue { <2 x float>, float } %182, 1
  br label %185

185:                                              ; preds = %181, %176
  %186 = phi <2 x float> [ %183, %181 ], [ %168, %176 ]
  %187 = phi float [ %184, %181 ], [ %169, %176 ]
  %188 = load i32, ptr %138, align 4, !tbaa !50
  %189 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %145, i32 7
  %190 = load i32, ptr %189, align 4, !tbaa !50
  %191 = or i32 %190, %188
  %192 = and i32 %191, 4
  %193 = icmp ne i32 %192, 0
  %194 = icmp eq i32 %133, %147
  %195 = select i1 %193, i1 true, i1 %194
  br i1 %195, label %202, label %196

196:                                              ; preds = %185
  %197 = tail call fastcc float @vdot(<2 x float> %130, float %131, <2 x float> %186, float %187) #24
  %198 = tail call fastcc float @vdot(<2 x float> %121, float %122, <2 x float> %177, float %178) #24
  %199 = fcmp ogt float %198, %5
  %200 = fcmp ogt float %197, %5
  %201 = select i1 %199, i1 %200, i1 false
  br i1 %201, label %202, label %206

202:                                              ; preds = %196, %185
  %203 = add nsw i32 %141, 1
  %204 = sext i32 %141 to i64
  %205 = getelementptr inbounds i32, ptr %31, i64 %204
  store i32 %144, ptr %205, align 4, !tbaa !48
  br label %206

206:                                              ; preds = %202, %196
  %207 = phi i32 [ %203, %202 ], [ %141, %196 ]
  %208 = add nuw nsw i64 %140, 1
  %209 = load i32, ptr %52, align 8, !tbaa !105
  %210 = sext i32 %209 to i64
  %211 = icmp slt i64 %208, %210
  br i1 %211, label %139, label %212, !llvm.loop !115

212:                                              ; preds = %206
  store i32 %207, ptr %8, align 8, !tbaa !112
  store ptr %31, ptr %39, align 8, !tbaa !114
  %213 = icmp sgt i32 %207, 1
  br i1 %213, label %214, label %216

214:                                              ; preds = %212
  %215 = add nsw i32 %207, -1
  tail call fastcc void @QuickSort(ptr noundef %31, i32 noundef 0, i32 noundef %215, i32 noundef 39871946) #24
  br label %216

216:                                              ; preds = %136, %214, %212
  %217 = phi i32 [ 0, %136 ], [ %207, %214 ], [ %207, %212 ]
  %218 = icmp sgt i32 %65, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %216, %219
  %220 = phi i32 [ %225, %219 ], [ 0, %216 ]
  %221 = zext nneg i32 %220 to i64
  %222 = getelementptr inbounds %struct.SSubGroup, ptr %29, i64 %221
  %223 = call fastcc i32 @CompareSubGroups(ptr noundef nonnull %8, ptr noundef %222) #24, !range !34
  %224 = xor i32 %223, 1
  %225 = add nuw nsw i32 %224, %220
  %226 = icmp slt i32 %225, %65
  %227 = icmp eq i32 %223, 0
  %228 = and i1 %227, %226
  br i1 %228, label %219, label %229, !llvm.loop !116

229:                                              ; preds = %219
  br i1 %227, label %230, label %252

230:                                              ; preds = %216, %229
  %231 = phi i32 [ %225, %229 ], [ 0, %216 ]
  %232 = sext i32 %217 to i64
  %233 = shl nsw i64 %232, 2
  %234 = tail call noalias ptr @malloc(i64 noundef %233) #26
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %245

236:                                              ; preds = %230
  br i1 %218, label %237, label %288

237:                                              ; preds = %236
  %238 = zext nneg i32 %65 to i64
  br label %239

239:                                              ; preds = %237, %239
  %240 = phi i64 [ 0, %237 ], [ %243, %239 ]
  %241 = getelementptr inbounds %struct.SSubGroup, ptr %29, i64 %240, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !114
  tail call void @free(ptr noundef %242) #25
  %243 = add nuw nsw i64 %240, 1
  %244 = icmp eq i64 %243, %238
  br i1 %244, label %288, label %239, !llvm.loop !117

245:                                              ; preds = %230
  %246 = sext i32 %65 to i64
  %247 = getelementptr inbounds %struct.SSubGroup, ptr %29, i64 %246
  store i32 %217, ptr %247, align 8, !tbaa !112
  %248 = getelementptr inbounds %struct.SSubGroup, ptr %29, i64 %246, i32 1
  store ptr %234, ptr %248, align 8, !tbaa !114
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %234, ptr align 4 %31, i64 %233, i1 false)
  %249 = getelementptr inbounds %struct.STSpace, ptr %27, i64 %246
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #27
  %250 = load i32, ptr %57, align 8, !tbaa !102
  call fastcc void @EvalTspace(ptr dead_on_unwind nonnull writable sret(%struct.STSpace) align 4 %9, ptr noundef %31, i32 noundef %217, ptr noundef %4, ptr noundef %1, ptr noundef %6, i32 noundef %250) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %249, ptr noundef nonnull align 4 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #27
  %251 = add nsw i32 %65, 1
  br label %252

252:                                              ; preds = %245, %229
  %253 = phi i32 [ %225, %229 ], [ %231, %245 ]
  %254 = phi i32 [ %65, %229 ], [ %251, %245 ]
  %255 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %69, i32 8
  %256 = load i32, ptr %255, align 8, !tbaa !72
  %257 = sext i32 %83 to i64
  %258 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %69, i32 9, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !73
  %260 = zext i8 %259 to i32
  %261 = add nsw i32 %256, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.STSpace, ptr %0, i64 %262
  %264 = getelementptr inbounds %struct.STSpace, ptr %0, i64 %262, i32 4
  %265 = load i32, ptr %264, align 4, !tbaa !119
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %267, label %270

267:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #27
  %268 = sext i32 %253 to i64
  %269 = getelementptr inbounds %struct.STSpace, ptr %27, i64 %268
  call fastcc void @AvgTSpace(ptr dead_on_unwind nonnull writable sret(%struct.STSpace) align 4 %10, ptr noundef nonnull %263, ptr noundef %269) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %263, ptr noundef nonnull align 4 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #27
  br label %273

270:                                              ; preds = %252
  %271 = sext i32 %253 to i64
  %272 = getelementptr inbounds %struct.STSpace, ptr %27, i64 %271
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %263, ptr noundef nonnull align 4 dereferenceable(40) %272, i64 40, i1 false), !tbaa.struct !118
  br label %273

273:                                              ; preds = %270, %267
  %274 = phi i32 [ 2, %267 ], [ 1, %270 ]
  %275 = load i32, ptr %58, align 4, !tbaa !104
  store i32 %274, ptr %264, align 4
  %276 = getelementptr inbounds %struct.STSpace, ptr %0, i64 %262, i32 5
  store i32 %275, ptr %276, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #27
  %277 = add nuw nsw i64 %64, 1
  %278 = load i32, ptr %52, align 8, !tbaa !105
  %279 = sext i32 %278 to i64
  %280 = icmp slt i64 %277, %279
  br i1 %280, label %63, label %59, !llvm.loop !120

281:                                              ; preds = %61, %281
  %282 = phi i64 [ 0, %61 ], [ %285, %281 ]
  %283 = getelementptr inbounds %struct.SSubGroup, ptr %29, i64 %282, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !114
  tail call void @free(ptr noundef %284) #25
  %285 = add nuw nsw i64 %282, 1
  %286 = icmp eq i64 %285, %62
  br i1 %286, label %47, label %281, !llvm.loop !121

287:                                              ; preds = %47, %37
  tail call void @free(ptr noundef %29) #25
  tail call void @free(ptr noundef %31) #25
  tail call void @free(ptr noundef %27) #25
  br label %289

288:                                              ; preds = %239, %236
  tail call void @free(ptr noundef %29) #25
  tail call void @free(ptr noundef %31) #25
  tail call void @free(ptr noundef %27) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #27
  br label %289

289:                                              ; preds = %7, %288, %45, %46, %22, %287
  %290 = phi i32 [ 1, %287 ], [ 1, %22 ], [ 0, %46 ], [ 0, %45 ], [ 0, %288 ], [ 1, %7 ]
  ret i32 %290
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DegenEpilogue(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 !PGOFuncName !122 {
  %7 = icmp slt i32 %4, %5
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = mul nsw i32 %4, 3
  %10 = icmp sgt i32 %4, 0
  %11 = sext i32 %4 to i64
  %12 = sext i32 %5 to i64
  br label %17

13:                                               ; preds = %65, %6
  %14 = icmp sgt i32 %4, 0
  br i1 %14, label %15, label %133

15:                                               ; preds = %13
  %16 = zext nneg i32 %4 to i64
  br label %68

17:                                               ; preds = %8, %65
  %18 = phi i64 [ %11, %8 ], [ %66, %65 ]
  %19 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %18, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %17
  %24 = mul nsw i64 %18, 3
  %25 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %18, i32 8
  %26 = getelementptr i32, ptr %2, i64 %24
  br label %27

27:                                               ; preds = %23, %62
  %28 = phi i64 [ 0, %23 ], [ %63, %62 ]
  %29 = getelementptr i32, ptr %26, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !48
  br i1 %10, label %31, label %62

31:                                               ; preds = %27, %31
  %32 = phi i32 [ %38, %31 ], [ 0, %27 ]
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %2, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !48
  %36 = icmp ne i32 %30, %35
  %37 = zext i1 %36 to i32
  %38 = add nuw nsw i32 %32, %37
  %39 = icmp slt i32 %38, %9
  %40 = select i1 %36, i1 %39, i1 false
  br i1 %40, label %31, label %41, !llvm.loop !123

41:                                               ; preds = %31
  br i1 %36, label %62, label %42

42:                                               ; preds = %41
  %43 = udiv i32 %38, 3
  %44 = urem i32 %38, 3
  %45 = zext nneg i32 %43 to i64
  %46 = zext nneg i32 %44 to i64
  %47 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %45, i32 9, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !73
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %45, i32 8
  %51 = load i32, ptr %50, align 8, !tbaa !72
  %52 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %18, i32 9, i64 %28
  %53 = load i8, ptr %52, align 1, !tbaa !73
  %54 = zext i8 %53 to i32
  %55 = load i32, ptr %25, align 8, !tbaa !72
  %56 = add nsw i32 %55, %54
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.STSpace, ptr %0, i64 %57
  %59 = add nsw i32 %51, %49
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.STSpace, ptr %0, i64 %60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %58, ptr noundef nonnull align 4 dereferenceable(40) %61, i64 40, i1 false), !tbaa.struct !118
  br label %62

62:                                               ; preds = %27, %42, %41
  %63 = add nuw nsw i64 %28, 1
  %64 = icmp eq i64 %63, 3
  br i1 %64, label %65, label %27, !llvm.loop !124

65:                                               ; preds = %62, %17
  %66 = add nsw i64 %18, 1
  %67 = icmp eq i64 %66, %12
  br i1 %67, label %13, label %17, !llvm.loop !125

68:                                               ; preds = %15, %130
  %69 = phi i64 [ 0, %15 ], [ %131, %130 ]
  %70 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %69, i32 7
  %71 = load i32, ptr %70, align 4, !tbaa !50
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %130, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %69, i32 9
  %76 = load i8, ptr %75, align 1, !tbaa !73
  %77 = zext nneg i8 %76 to i32
  %78 = shl nuw i32 1, %77
  %79 = getelementptr inbounds i8, ptr %75, i64 1
  %80 = load i8, ptr %79, align 1, !tbaa !73
  %81 = zext nneg i8 %80 to i32
  %82 = shl nuw i32 1, %81
  %83 = or i32 %82, %78
  %84 = getelementptr inbounds i8, ptr %75, i64 2
  %85 = load i8, ptr %84, align 1, !tbaa !73
  %86 = zext nneg i8 %85 to i32
  %87 = shl nuw i32 1, %86
  %88 = or i32 %83, %87
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %74
  %92 = and i32 %88, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = and i32 %88, 8
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i32 3, i32 0
  br label %98

98:                                               ; preds = %94, %91, %74
  %99 = phi i32 [ 1, %74 ], [ 2, %91 ], [ %97, %94 ]
  %100 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %69, i32 6
  %101 = load i32, ptr %100, align 8, !tbaa !71
  %102 = tail call fastcc i32 @MakeIndex(i32 noundef %101, i32 noundef %99) #24
  %103 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %3, i32 noundef %102) #24
  %104 = extractvalue { <2 x float>, float } %103, 0
  %105 = extractvalue { <2 x float>, float } %103, 1
  %106 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %69, i32 8
  br label %107

107:                                              ; preds = %98, %127
  %108 = phi i32 [ 0, %98 ], [ %128, %127 ]
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds i8, ptr %75, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !73
  %112 = zext i8 %111 to i32
  %113 = tail call fastcc i32 @MakeIndex(i32 noundef %101, i32 noundef %112) #24
  %114 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %3, i32 noundef %113) #24
  %115 = extractvalue { <2 x float>, float } %114, 0
  %116 = extractvalue { <2 x float>, float } %114, 1
  %117 = tail call fastcc i32 @veq(<2 x float> %115, float %116, <2 x float> %104, float %105) #24, !range !34
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %107
  %120 = load i32, ptr %106, align 8, !tbaa !72
  %121 = add nsw i32 %120, %99
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.STSpace, ptr %0, i64 %122
  %124 = add nsw i32 %120, %112
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.STSpace, ptr %0, i64 %125
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %123, ptr noundef nonnull align 4 dereferenceable(40) %126, i64 40, i1 false), !tbaa.struct !118
  br label %130

127:                                              ; preds = %107
  %128 = add nuw nsw i32 %108, 1
  %129 = icmp ult i32 %108, 2
  br i1 %129, label %107, label %130, !llvm.loop !126

130:                                              ; preds = %127, %119, %68
  %131 = add nuw nsw i64 %69, 1
  %132 = icmp eq i64 %131, %16
  br i1 %132, label %133, label %68, !llvm.loop !127

133:                                              ; preds = %130, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { <2 x float>, float } @vsub(<2 x float> %0, float %1, <2 x float> %2, float %3) unnamed_addr #7 !PGOFuncName !128 {
  %5 = fsub <2 x float> %0, %2
  %6 = fsub float %1, %3
  %7 = insertvalue { <2 x float>, float } poison, <2 x float> %5, 0
  %8 = insertvalue { <2 x float>, float } %7, float %6, 1
  ret { <2 x float>, float } %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GenerateSharedVerticesIndexListSlow(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !129 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %59

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %56
  %8 = phi i64 [ 0, %5 ], [ %57, %56 ]
  %9 = mul nuw nsw i64 %8, 3
  %10 = getelementptr i32, ptr %0, i64 %9
  br label %11

11:                                               ; preds = %7, %53
  %12 = phi i64 [ 0, %7 ], [ %54, %53 ]
  %13 = getelementptr i32, ptr %10, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !48
  %15 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %1, i32 noundef %14) #24
  %16 = extractvalue { <2 x float>, float } %15, 0
  %17 = extractvalue { <2 x float>, float } %15, 1
  %18 = tail call fastcc { <2 x float>, float } @GetNormal(ptr noundef %1, i32 noundef %14) #24
  %19 = extractvalue { <2 x float>, float } %18, 0
  %20 = extractvalue { <2 x float>, float } %18, 1
  %21 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef %1, i32 noundef %14) #24
  br label %22

22:                                               ; preds = %11, %49
  %23 = phi i32 [ 0, %11 ], [ %50, %49 ]
  %24 = mul nuw nsw i32 %23, 3
  br label %25

25:                                               ; preds = %22, %46
  %26 = phi i32 [ 0, %22 ], [ %47, %46 ]
  %27 = add nuw nsw i32 %26, %24
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !48
  %31 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %1, i32 noundef %30) #24
  %32 = extractvalue { <2 x float>, float } %31, 0
  %33 = extractvalue { <2 x float>, float } %31, 1
  %34 = tail call fastcc { <2 x float>, float } @GetNormal(ptr noundef %1, i32 noundef %30) #24
  %35 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef %1, i32 noundef %30) #24
  %36 = tail call fastcc i32 @veq(<2 x float> %16, float %17, <2 x float> %32, float %33) #24, !range !34
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %25
  %39 = extractvalue { <2 x float>, float } %34, 1
  %40 = extractvalue { <2 x float>, float } %34, 0
  %41 = tail call fastcc i32 @veq(<2 x float> %19, float %20, <2 x float> %40, float %39) #24, !range !34
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = tail call fastcc i32 @veq(<2 x float> %21, float 1.000000e+00, <2 x float> %35, float 1.000000e+00) #24, !range !34
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %25, %38, %43
  %47 = add nuw nsw i32 %26, 1
  %48 = icmp ult i32 %26, 2
  br i1 %48, label %25, label %49, !llvm.loop !130

49:                                               ; preds = %46
  %50 = add nuw nsw i32 %23, 1
  %51 = zext nneg i32 %50 to i64
  %52 = icmp ult i64 %8, %51
  br i1 %52, label %53, label %22, !llvm.loop !131

53:                                               ; preds = %49, %43
  store i32 -1, ptr %13, align 4, !tbaa !48
  %54 = add nuw nsw i64 %12, 1
  %55 = icmp eq i64 %54, 3
  br i1 %55, label %56, label %11, !llvm.loop !132

56:                                               ; preds = %53
  %57 = add nuw nsw i64 %8, 1
  %58 = icmp eq i64 %57, %6
  br i1 %58, label %59, label %7, !llvm.loop !133

59:                                               ; preds = %56, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @FindGridCell(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #11 !PGOFuncName !134 {
  %4 = fsub float %2, %0
  %5 = fsub float %1, %0
  %6 = fdiv float %4, %5
  %7 = fmul float %6, 2.048000e+03
  %8 = fptosi float %7 to i32
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 2047)
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @MergeVertsFast(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 !PGOFuncName !135 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.STmpVert, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #27
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %10, i64 12, i1 false), !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %10, i64 12, i1 false), !tbaa !55
  %11 = icmp slt i32 %3, %4
  br i1 %11, label %12, label %36

12:                                               ; preds = %5
  %13 = sext i32 %4 to i64
  br label %16

14:                                               ; preds = %33
  %15 = icmp eq i64 %18, %13
  br i1 %15, label %36, label %16, !llvm.loop !136

16:                                               ; preds = %12, %14
  %17 = phi i64 [ %9, %12 ], [ %18, %14 ]
  %18 = add nsw i64 %17, 1
  %19 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %18
  br label %20

20:                                               ; preds = %16, %33
  %21 = phi i64 [ 0, %16 ], [ %34, %33 ]
  %22 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !55
  %24 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 %21
  %25 = load float, ptr %24, align 4, !tbaa !55
  %26 = fcmp ogt float %23, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %21
  %29 = load float, ptr %28, align 4, !tbaa !55
  %30 = fcmp olt float %29, %25
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %20
  %32 = phi ptr [ %22, %20 ], [ %28, %27 ]
  store float %25, ptr %32, align 4, !tbaa !55
  br label %33

33:                                               ; preds = %31, %27
  %34 = add nuw nsw i64 %21, 1
  %35 = icmp eq i64 %34, 3
  br i1 %35, label %14, label %20, !llvm.loop !137

36:                                               ; preds = %14, %5
  %37 = load float, ptr %7, align 4, !tbaa !55
  %38 = load float, ptr %6, align 4, !tbaa !55
  %39 = fsub float %37, %38
  %40 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %41 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %42 = load <2 x float>, ptr %40, align 4, !tbaa !55
  %43 = load <2 x float>, ptr %41, align 4, !tbaa !55
  %44 = fsub <2 x float> %42, %43
  %45 = extractelement <2 x float> %44, i64 0
  %46 = fcmp ogt float %45, %39
  %47 = extractelement <2 x float> %44, i64 1
  %48 = fcmp ogt float %45, %47
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %53, label %50

50:                                               ; preds = %36
  %51 = fcmp ogt float %47, %39
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %36, %50, %52
  %54 = phi i64 [ 2, %52 ], [ 0, %50 ], [ 1, %36 ]
  %55 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %54
  %56 = load float, ptr %55, align 4, !tbaa !55
  %57 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %54
  %58 = load float, ptr %57, align 4, !tbaa !55
  %59 = fadd float %56, %58
  %60 = fmul float %59, 5.000000e-01
  %61 = fcmp ult float %60, %56
  %62 = fcmp ugt float %60, %58
  %63 = and i1 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %53
  %65 = icmp sgt i32 %3, %4
  br i1 %65, label %204, label %66

66:                                               ; preds = %64
  %67 = add i32 %4, 1
  br label %71

68:                                               ; preds = %53
  br i1 %11, label %69, label %181

69:                                               ; preds = %68
  %70 = getelementptr [3 x float], ptr %1, i64 0, i64 %54
  br label %141

71:                                               ; preds = %66, %137
  %72 = phi i64 [ %9, %66 ], [ %138, %137 ]
  %73 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %72, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !81
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !48
  %78 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %2, i32 noundef %77) #24
  %79 = extractvalue { <2 x float>, float } %78, 1
  %80 = tail call fastcc { <2 x float>, float } @GetNormal(ptr noundef %2, i32 noundef %77) #24
  %81 = extractvalue { <2 x float>, float } %80, 1
  %82 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef %2, i32 noundef %77) #24
  %83 = icmp sgt i64 %72, %9
  br i1 %83, label %84, label %137

84:                                               ; preds = %71
  %85 = extractvalue { <2 x float>, float } %80, 0
  %86 = extractvalue { <2 x float>, float } %78, 0
  %87 = extractelement <2 x float> %86, i64 0
  %88 = extractelement <2 x float> %85, i64 0
  %89 = extractelement <2 x float> %82, i64 0
  br label %90

90:                                               ; preds = %84, %90
  %91 = phi i32 [ %3, %84 ], [ %128, %90 ]
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %92, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !81
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, ptr %0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !48
  %98 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %2, i32 noundef %97) #24
  %99 = extractvalue { <2 x float>, float } %98, 0
  %100 = extractvalue { <2 x float>, float } %98, 1
  %101 = tail call fastcc { <2 x float>, float } @GetNormal(ptr noundef %2, i32 noundef %97) #24
  %102 = extractvalue { <2 x float>, float } %101, 0
  %103 = extractvalue { <2 x float>, float } %101, 1
  %104 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef %2, i32 noundef %97) #24
  %105 = extractelement <2 x float> %99, i64 0
  %106 = fcmp oeq float %87, %105
  %107 = fcmp oeq <2 x float> %86, %99
  %108 = extractelement <2 x i1> %107, i64 1
  %109 = select i1 %106, i1 %108, i1 false
  %110 = fcmp oeq float %79, %100
  %111 = select i1 %109, i1 %110, i1 false
  %112 = extractelement <2 x float> %102, i64 0
  %113 = fcmp oeq float %88, %112
  %114 = select i1 %111, i1 %113, i1 false
  %115 = fcmp oeq <2 x float> %85, %102
  %116 = extractelement <2 x i1> %115, i64 1
  %117 = select i1 %114, i1 %116, i1 false
  %118 = fcmp oeq float %81, %103
  %119 = select i1 %117, i1 %118, i1 false
  %120 = extractelement <2 x float> %104, i64 0
  %121 = fcmp oeq float %89, %120
  %122 = select i1 %119, i1 %121, i1 false
  %123 = fcmp oeq <2 x float> %82, %104
  %124 = extractelement <2 x i1> %123, i64 1
  %125 = select i1 %122, i1 %124, i1 false
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = add nsw i32 %91, %127
  %129 = sext i32 %128 to i64
  %130 = icmp sle i64 %72, %129
  %131 = or i1 %130, %125
  br i1 %131, label %132, label %90, !llvm.loop !138

132:                                              ; preds = %90
  br i1 %125, label %133, label %137

133:                                              ; preds = %132
  %134 = sext i32 %94 to i64
  %135 = getelementptr inbounds i32, ptr %0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !48
  store i32 %136, ptr %76, align 4, !tbaa !48
  br label %137

137:                                              ; preds = %71, %133, %132
  %138 = add nsw i64 %72, 1
  %139 = trunc i64 %138 to i32
  %140 = icmp eq i32 %67, %139
  br i1 %140, label %204, label %71, !llvm.loop !139

141:                                              ; preds = %69, %177
  %142 = phi i32 [ %4, %69 ], [ %179, %177 ]
  %143 = phi i32 [ %3, %69 ], [ %178, %177 ]
  br label %146

144:                                              ; preds = %146
  %145 = icmp slt i32 %154, %142
  br i1 %145, label %157, label %177

146:                                              ; preds = %141, %146
  %147 = phi i32 [ %143, %141 ], [ %154, %146 ]
  %148 = sext i32 %147 to i64
  %149 = getelementptr %struct.STmpVert, ptr %70, i64 %148
  %150 = load float, ptr %149, align 4, !tbaa !55
  %151 = fcmp uge float %150, %60
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = add nsw i32 %147, %153
  %155 = icmp sge i32 %154, %142
  %156 = select i1 %151, i1 true, i1 %155
  br i1 %156, label %144, label %146, !llvm.loop !140

157:                                              ; preds = %144, %157
  %158 = phi i32 [ %165, %157 ], [ %142, %144 ]
  %159 = sext i32 %158 to i64
  %160 = getelementptr %struct.STmpVert, ptr %70, i64 %159
  %161 = load float, ptr %160, align 4, !tbaa !55
  %162 = fcmp olt float %161, %60
  %163 = xor i1 %162, true
  %164 = sext i1 %163 to i32
  %165 = add nsw i32 %158, %164
  %166 = icmp sge i32 %154, %165
  %167 = select i1 %162, i1 true, i1 %166
  br i1 %167, label %168, label %157, !llvm.loop !141

168:                                              ; preds = %157
  %169 = and i1 %151, %162
  br i1 %169, label %170, label %177

170:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8)
  %171 = sext i32 %154 to i64
  %172 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %172, i64 16, i1 false), !tbaa.struct !142
  %173 = sext i32 %165 to i64
  %174 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %173
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %172, ptr noundef nonnull align 4 dereferenceable(16) %174, i64 16, i1 false), !tbaa.struct !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %174, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !142
  %175 = add nsw i32 %154, 1
  %176 = add nsw i32 %165, -1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8)
  br label %177

177:                                              ; preds = %144, %170, %168
  %178 = phi i32 [ %175, %170 ], [ %154, %168 ], [ %154, %144 ]
  %179 = phi i32 [ %176, %170 ], [ %165, %168 ], [ %142, %144 ]
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %141, label %181, !llvm.loop !143

181:                                              ; preds = %177, %68
  %182 = phi i32 [ %3, %68 ], [ %178, %177 ]
  %183 = phi i32 [ %4, %68 ], [ %179, %177 ]
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %181
  %186 = sext i32 %182 to i64
  %187 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %186
  %188 = getelementptr inbounds [3 x float], ptr %187, i64 0, i64 %54
  %189 = load float, ptr %188, align 4, !tbaa !55
  %190 = fcmp olt float %189, %60
  %191 = zext i1 %190 to i32
  %192 = add nsw i32 %182, %191
  %193 = xor i1 %190, true
  %194 = sext i1 %193 to i32
  %195 = add nsw i32 %182, %194
  br label %196

196:                                              ; preds = %185, %181
  %197 = phi i32 [ %192, %185 ], [ %182, %181 ]
  %198 = phi i32 [ %195, %185 ], [ %183, %181 ]
  %199 = icmp sgt i32 %198, %3
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  tail call fastcc void @MergeVertsFast(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, i32 noundef %198) #24
  br label %201

201:                                              ; preds = %200, %196
  %202 = icmp slt i32 %197, %4
  br i1 %202, label %203, label %204

203:                                              ; preds = %201
  tail call fastcc void @MergeVertsFast(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %197, i32 noundef %4) #24
  br label %204

204:                                              ; preds = %137, %64, %201, %203
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @MergeVertsSlow(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #1 !PGOFuncName !144 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %57

6:                                                ; preds = %4
  %7 = zext nneg i32 %3 to i64
  br label %8

8:                                                ; preds = %6, %54
  %9 = phi i64 [ 0, %6 ], [ %55, %54 ]
  %10 = getelementptr inbounds i32, ptr %2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !48
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !48
  %15 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %1, i32 noundef %14) #24
  %16 = extractvalue { <2 x float>, float } %15, 0
  %17 = extractvalue { <2 x float>, float } %15, 1
  %18 = tail call fastcc { <2 x float>, float } @GetNormal(ptr noundef %1, i32 noundef %14) #24
  %19 = extractvalue { <2 x float>, float } %18, 0
  %20 = extractvalue { <2 x float>, float } %18, 1
  %21 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef %1, i32 noundef %14) #24
  %22 = icmp eq i64 %9, 0
  br i1 %22, label %54, label %23

23:                                               ; preds = %8, %46
  %24 = phi i32 [ %47, %46 ], [ 0, %8 ]
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %2, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !48
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !48
  %31 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %1, i32 noundef %30) #24
  %32 = extractvalue { <2 x float>, float } %31, 0
  %33 = extractvalue { <2 x float>, float } %31, 1
  %34 = tail call fastcc { <2 x float>, float } @GetNormal(ptr noundef %1, i32 noundef %30) #24
  %35 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef %1, i32 noundef %30) #24
  %36 = tail call fastcc i32 @veq(<2 x float> %16, float %17, <2 x float> %32, float %33) #24, !range !34
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %23
  %39 = extractvalue { <2 x float>, float } %34, 1
  %40 = extractvalue { <2 x float>, float } %34, 0
  %41 = tail call fastcc i32 @veq(<2 x float> %19, float %20, <2 x float> %40, float %39) #24, !range !34
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = tail call fastcc i32 @veq(<2 x float> %21, float 1.000000e+00, <2 x float> %35, float 1.000000e+00) #24, !range !34
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %23, %38, %43
  %47 = add nuw nsw i32 %24, 1
  %48 = zext nneg i32 %47 to i64
  %49 = icmp ugt i64 %9, %48
  br i1 %49, label %23, label %54, !llvm.loop !145

50:                                               ; preds = %43
  %51 = sext i32 %27 to i64
  %52 = getelementptr inbounds i32, ptr %0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !48
  store i32 %53, ptr %13, align 4, !tbaa !48
  br label %54

54:                                               ; preds = %46, %8, %50
  %55 = add nuw nsw i64 %9, 1
  %56 = icmp eq i64 %55, %7
  br i1 %56, label %57, label %8, !llvm.loop !146

57:                                               ; preds = %54, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc { <2 x float>, float } @GetNormal(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !147 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #27
  call fastcc void @IndexToData(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %1) #24
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = load i32, ptr %3, align 4, !tbaa !48
  %10 = load i32, ptr %4, align 4, !tbaa !48
  call void %8(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %9, i32 noundef %10) #25
  %11 = load <2 x float>, ptr %5, align 8, !tbaa !55
  %12 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  %14 = insertvalue { <2 x float>, float } poison, <2 x float> %11, 0
  %15 = insertvalue { <2 x float>, float } %14, float %13, 1
  ret { <2 x float>, float } %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc <2 x float> @GetTexCoord(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !148 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call fastcc void @IndexToData(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %1) #24
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = load i32, ptr %3, align 4, !tbaa !48
  %10 = load i32, ptr %4, align 4, !tbaa !48
  call void %8(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %9, i32 noundef %10) #25
  %11 = load <2 x float>, ptr %5, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  ret <2 x float> %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @IndexToData(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #12 !PGOFuncName !149 {
  %4 = and i32 %2, 3
  store i32 %4, ptr %1, align 4, !tbaa !48
  %5 = ashr i32 %2, 2
  store i32 %5, ptr %0, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @MakeIndex(i32 noundef %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !150 {
  %3 = shl i32 %0, 2
  %4 = and i32 %1, 3
  %5 = or disjoint i32 %4, %3
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @LengthSquared(<2 x float> %0, float %1) unnamed_addr #7 !PGOFuncName !151 {
  %3 = extractelement <2 x float> %0, i64 0
  %4 = fmul <2 x float> %0, %0
  %5 = extractelement <2 x float> %4, i64 1
  %6 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %5)
  %7 = tail call float @llvm.fmuladd.f32(float %1, float %1, float %6)
  ret float %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { <2 x float>, float } @vscale(float noundef %0, <2 x float> %1, float %2) unnamed_addr #7 !PGOFuncName !152 {
  %4 = insertelement <2 x float> poison, float %0, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %5, %1
  %7 = fmul float %0, %2
  %8 = insertvalue { <2 x float>, float } poison, <2 x float> %6, 0
  %9 = insertvalue { <2 x float>, float } %8, float %7, 1
  ret { <2 x float>, float } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { <2 x float>, float } @vadd(<2 x float> %0, float %1, <2 x float> %2, float %3) unnamed_addr #7 !PGOFuncName !153 {
  %5 = fadd <2 x float> %0, %2
  %6 = fadd float %1, %3
  %7 = insertvalue { <2 x float>, float } poison, <2 x float> %5, 0
  %8 = insertvalue { <2 x float>, float } %7, float %6, 1
  ret { <2 x float>, float } %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @NotZero(float noundef %0) unnamed_addr #11 !PGOFuncName !154 {
  %2 = tail call float @llvm.fabs.f32(float %0)
  %3 = fcmp ogt float %2, 0x3810000000000000
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @Length(<2 x float> %0, float %1) unnamed_addr #14 !PGOFuncName !155 {
  %3 = tail call fastcc float @LengthSquared(<2 x float> %0, float %1) #24
  %4 = tail call float @sqrtf(float noundef %3) #25
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @CalcTexArea(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !156 {
  %3 = load i32, ptr %1, align 4, !tbaa !48
  %4 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef %0, i32 noundef %3) #24
  %5 = getelementptr inbounds i32, ptr %1, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !48
  %7 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef %0, i32 noundef %6) #24
  %8 = getelementptr inbounds i32, ptr %1, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !48
  %10 = tail call fastcc <2 x float> @GetTexCoord(ptr noundef %0, i32 noundef %9) #24
  %11 = fsub <2 x float> %7, %4
  %12 = extractelement <2 x float> %11, i64 0
  %13 = fsub <2 x float> %7, %4
  %14 = extractelement <2 x float> %13, i64 1
  %15 = fsub <2 x float> %10, %4
  %16 = extractelement <2 x float> %15, i64 0
  %17 = fsub <2 x float> %10, %4
  %18 = extractelement <2 x float> %17, i64 1
  %19 = fneg float %14
  %20 = fmul float %16, %19
  %21 = tail call float @llvm.fmuladd.f32(float %12, float %18, float %20)
  %22 = fcmp olt float %21, 0.000000e+00
  %23 = fneg float %21
  %24 = select i1 %22, float %23, float %21
  ret float %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @BuildNeighborsSlow(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #8 !PGOFuncName !157 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %71

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %68
  %8 = phi i64 [ 0, %5 ], [ %69, %68 ]
  %9 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %8
  %10 = trunc i64 %8 to i32
  %11 = mul i32 %10, 3
  %12 = zext i32 %11 to i64
  %13 = getelementptr i32, ptr %1, i64 %12
  %14 = trunc i64 %8 to i32
  br label %15

15:                                               ; preds = %7, %65
  %16 = phi i64 [ 0, %7 ], [ %66, %65 ]
  %17 = getelementptr inbounds [3 x i32], ptr %9, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !48
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = add nuw nsw i64 %16, 1
  br label %65

22:                                               ; preds = %15
  %23 = getelementptr i32, ptr %13, i64 %16
  %24 = load i32, ptr %23, align 4, !tbaa !48
  %25 = icmp eq i64 %16, 2
  %26 = add nuw nsw i64 %16, 1
  %27 = trunc i64 %26 to i32
  %28 = select i1 %25, i32 0, i32 %27
  %29 = add nuw nsw i32 %28, %11
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %1, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !48
  br label %33

33:                                               ; preds = %22, %57
  %34 = phi i32 [ %58, %57 ], [ 0, %22 ]
  %35 = zext nneg i32 %34 to i64
  %36 = icmp eq i64 %8, %35
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = mul nsw i32 %34, 3
  br label %39

39:                                               ; preds = %37, %55
  %40 = phi i32 [ 0, %37 ], [ %42, %55 ]
  %41 = icmp ult i32 %40, 2
  %42 = add nuw nsw i32 %40, 1
  %43 = select i1 %41, i32 %42, i32 0
  %44 = add nuw nsw i32 %43, %38
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %1, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !48
  %48 = icmp eq i32 %24, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = add nuw nsw i32 %40, %38
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %1, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !48
  %54 = icmp eq i32 %32, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %39, %49
  %56 = icmp ult i32 %40, 2
  br i1 %56, label %39, label %57, !llvm.loop !158

57:                                               ; preds = %55, %33
  %58 = add nuw nsw i32 %34, 1
  %59 = icmp slt i32 %58, %2
  br i1 %59, label %33, label %65, !llvm.loop !159

60:                                               ; preds = %49
  store i32 %34, ptr %17, align 4, !tbaa !48
  %61 = zext nneg i32 %34 to i64
  %62 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %61
  %63 = zext nneg i32 %40 to i64
  %64 = getelementptr inbounds [3 x i32], ptr %62, i64 0, i64 %63
  store i32 %14, ptr %64, align 4, !tbaa !48
  br label %65

65:                                               ; preds = %57, %20, %60
  %66 = phi i64 [ %21, %20 ], [ %26, %60 ], [ %26, %57 ]
  %67 = icmp eq i64 %66, 3
  br i1 %67, label %68, label %15, !llvm.loop !160

68:                                               ; preds = %65
  %69 = add nuw nsw i64 %8, 1
  %70 = icmp eq i64 %69, %6
  br i1 %70, label %71, label %7, !llvm.loop !161

71:                                               ; preds = %68, %3
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @BuildNeighborsFast(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #15 !PGOFuncName !162 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = mul nsw i32 %3, 3
  %14 = add nsw i32 %13, -1
  tail call fastcc void @QuickSortEdges(ptr noundef %1, i32 noundef 0, i32 noundef %14, i32 noundef 0, i32 noundef 39871946) #24
  br label %175

15:                                               ; preds = %4
  %16 = zext nneg i32 %3 to i64
  br label %17

17:                                               ; preds = %15, %39
  %18 = phi i64 [ 0, %15 ], [ %40, %39 ]
  %19 = mul nuw nsw i64 %18, 3
  %20 = getelementptr i32, ptr %2, i64 %19
  %21 = trunc i64 %18 to i32
  br label %22

22:                                               ; preds = %17, %22
  %23 = phi i64 [ 0, %17 ], [ %28, %22 ]
  %24 = add nuw nsw i64 %23, %19
  %25 = getelementptr inbounds i32, ptr %2, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !48
  %27 = icmp eq i64 %23, 2
  %28 = add nuw nsw i64 %23, 1
  %29 = and i64 %28, 4294967295
  %30 = select i1 %27, i64 0, i64 %29
  %31 = getelementptr i32, ptr %20, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !48
  %33 = tail call i32 @llvm.smin.i32(i32 %26, i32 %32)
  %34 = getelementptr inbounds %union.SEdge, ptr %1, i64 %24
  store i32 %33, ptr %34, align 4, !tbaa !73
  %35 = tail call i32 @llvm.smax.i32(i32 %26, i32 %32)
  %36 = getelementptr inbounds %struct.anon, ptr %34, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !73
  %37 = getelementptr inbounds %struct.anon, ptr %34, i64 0, i32 2
  store i32 %21, ptr %37, align 4, !tbaa !73
  %38 = icmp eq i64 %28, 3
  br i1 %38, label %39, label %22, !llvm.loop !163

39:                                               ; preds = %22
  %40 = add nuw nsw i64 %18, 1
  %41 = icmp eq i64 %40, %16
  br i1 %41, label %42, label %17, !llvm.loop !164

42:                                               ; preds = %39
  %43 = mul nsw i32 %3, 3
  %44 = add nsw i32 %43, -1
  tail call fastcc void @QuickSortEdges(ptr noundef nonnull %1, i32 noundef 0, i32 noundef %44, i32 noundef 0, i32 noundef 39871946) #24
  br i1 %11, label %45, label %175

45:                                               ; preds = %42
  %46 = tail call i32 @llvm.smax.i32(i32 %43, i32 2)
  %47 = zext nneg i32 %46 to i64
  br label %52

48:                                               ; preds = %65
  br i1 %11, label %49, label %175

49:                                               ; preds = %48
  %50 = tail call i32 @llvm.smax.i32(i32 %43, i32 2)
  %51 = zext nneg i32 %50 to i64
  br label %74

52:                                               ; preds = %45, %65
  %53 = phi i64 [ 1, %45 ], [ %67, %65 ]
  %54 = phi i32 [ 0, %45 ], [ %66, %65 ]
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %union.SEdge, ptr %1, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !73
  %58 = getelementptr inbounds %union.SEdge, ptr %1, i64 %53
  %59 = load i32, ptr %58, align 4, !tbaa !73
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = trunc i64 %53 to i32
  %63 = add i32 %62, -1
  tail call fastcc void @QuickSortEdges(ptr noundef nonnull %1, i32 noundef %54, i32 noundef %63, i32 noundef 1, i32 noundef 39871946) #24
  %64 = trunc i64 %53 to i32
  br label %65

65:                                               ; preds = %52, %61
  %66 = phi i32 [ %64, %61 ], [ %54, %52 ]
  %67 = add nuw nsw i64 %53, 1
  %68 = icmp eq i64 %67, %47
  br i1 %68, label %48, label %52, !llvm.loop !165

69:                                               ; preds = %93
  br i1 %11, label %70, label %175

70:                                               ; preds = %69
  %71 = zext nneg i32 %43 to i64
  %72 = tail call i32 @llvm.smax.i32(i32 %43, i32 1)
  %73 = zext nneg i32 %72 to i64
  br label %97

74:                                               ; preds = %49, %93
  %75 = phi i64 [ 1, %49 ], [ %95, %93 ]
  %76 = phi i32 [ 0, %49 ], [ %94, %93 ]
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %union.SEdge, ptr %1, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !73
  %80 = getelementptr inbounds %union.SEdge, ptr %1, i64 %75
  %81 = load i32, ptr %80, align 4, !tbaa !73
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.anon, ptr %78, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !73
  %86 = getelementptr inbounds %struct.anon, ptr %80, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !73
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %83, %74
  %90 = trunc i64 %75 to i32
  %91 = add i32 %90, -1
  tail call fastcc void @QuickSortEdges(ptr noundef nonnull %1, i32 noundef %76, i32 noundef %91, i32 noundef 2, i32 noundef 39871946) #24
  %92 = trunc i64 %75 to i32
  br label %93

93:                                               ; preds = %83, %89
  %94 = phi i32 [ %92, %89 ], [ %76, %83 ]
  %95 = add nuw nsw i64 %75, 1
  %96 = icmp eq i64 %95, %51
  br i1 %96, label %69, label %74, !llvm.loop !166

97:                                               ; preds = %70, %173
  %98 = phi i64 [ 0, %70 ], [ %115, %173 ]
  %99 = getelementptr inbounds %union.SEdge, ptr %1, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !73
  %101 = getelementptr inbounds %struct.anon, ptr %99, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !73
  %103 = getelementptr inbounds %struct.anon, ptr %99, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  store i32 0, ptr %8, align 4, !tbaa !48
  %105 = mul nsw i32 %104, 3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %2, i64 %106
  call fastcc void @GetEdge(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %107, i32 noundef %100, i32 noundef %102) #24
  %108 = sext i32 %104 to i64
  %109 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %108
  %110 = load i32, ptr %7, align 4, !tbaa !48
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [3 x i32], ptr %109, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !48
  %114 = icmp eq i32 %113, -1
  %115 = add nuw nsw i64 %98, 1
  %116 = icmp ult i64 %115, %71
  %117 = select i1 %114, i1 %116, i1 false
  br i1 %117, label %118, label %173

118:                                              ; preds = %97
  %119 = trunc i64 %115 to i32
  %120 = load i32, ptr %5, align 4
  %121 = load i32, ptr %6, align 4
  br label %122

122:                                              ; preds = %118, %156
  %123 = phi i32 [ 1, %118 ], [ %158, %156 ]
  %124 = phi i32 [ %119, %118 ], [ %157, %156 ]
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %union.SEdge, ptr %1, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !73
  %128 = icmp eq i32 %100, %127
  br i1 %128, label %129, label %160

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.anon, ptr %126, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !73
  %132 = icmp eq i32 %102, %131
  %133 = icmp ne i32 %123, 0
  %134 = and i1 %133, %132
  br i1 %134, label %135, label %160

135:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #27
  %136 = getelementptr inbounds %struct.anon, ptr %126, i64 0, i32 2
  %137 = load i32, ptr %136, align 4, !tbaa !73
  %138 = mul nsw i32 %137, 3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %2, i64 %139
  call fastcc void @GetEdge(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %140, i32 noundef %100, i32 noundef %102) #24
  %141 = load i32, ptr %9, align 4, !tbaa !48
  %142 = icmp eq i32 %120, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %135
  %144 = sext i32 %137 to i64
  %145 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %144
  %146 = load i32, ptr %8, align 4, !tbaa !48
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x i32], ptr %145, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !48
  %150 = icmp eq i32 %149, -1
  %151 = load i32, ptr %10, align 4, !tbaa !48
  %152 = icmp eq i32 %121, %151
  %153 = select i1 %152, i1 %150, i1 false
  br i1 %153, label %156, label %154

154:                                              ; preds = %143, %135
  %155 = add nsw i32 %124, 1
  br label %156

156:                                              ; preds = %143, %154
  %157 = phi i32 [ %155, %154 ], [ %124, %143 ]
  %158 = phi i32 [ 1, %154 ], [ 0, %143 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  %159 = icmp slt i32 %157, %43
  br i1 %159, label %122, label %160, !llvm.loop !167

160:                                              ; preds = %156, %122, %129
  %161 = phi i32 [ %157, %156 ], [ %124, %122 ], [ %124, %129 ]
  %162 = phi i32 [ %158, %156 ], [ %123, %122 ], [ %123, %129 ]
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = sext i32 %161 to i64
  %166 = getelementptr inbounds %union.SEdge, ptr %1, i64 %165, i32 0, i32 2
  %167 = load i32, ptr %166, align 4, !tbaa !73
  store i32 %167, ptr %112, align 4, !tbaa !48
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.STriInfo, ptr %0, i64 %168
  %170 = load i32, ptr %8, align 4, !tbaa !48
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [3 x i32], ptr %169, i64 0, i64 %171
  store i32 %104, ptr %172, align 4, !tbaa !48
  br label %173

173:                                              ; preds = %97, %160, %164
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  %174 = icmp eq i64 %115, %73
  br i1 %174, label %175, label %97, !llvm.loop !168

175:                                              ; preds = %173, %42, %12, %48, %69
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @QuickSortEdges(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #16 !PGOFuncName !169 {
  %6 = alloca %struct.anon, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6)
  %7 = sub nsw i32 %2, %1
  %8 = add nsw i32 %7, 1
  %9 = icmp slt i32 %7, 1
  br i1 %9, label %72, label %10

10:                                               ; preds = %5
  %11 = icmp eq i32 %8, 2
  br i1 %11, label %12, label %24

12:                                               ; preds = %10
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %union.SEdge, ptr %0, i64 %13
  %15 = zext nneg i32 %3 to i64
  %16 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !73
  %18 = sext i32 %2 to i64
  %19 = getelementptr inbounds %union.SEdge, ptr %0, i64 %18
  %20 = getelementptr inbounds [3 x i32], ptr %19, i64 0, i64 %15
  %21 = load i32, ptr %20, align 4, !tbaa !73
  %22 = icmp sgt i32 %17, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %14, i64 12, i1 false), !tbaa.struct !170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(12) %19, i64 12, i1 false), !tbaa.struct !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !170
  br label %72

24:                                               ; preds = %10
  %25 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 %4)
  %26 = add i32 %4, 3
  %27 = add i32 %26, %25
  %28 = urem i32 %27, %8
  %29 = add nsw i32 %28, %1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %union.SEdge, ptr %0, i64 %30
  %32 = zext nneg i32 %3 to i64
  %33 = getelementptr inbounds [3 x i32], ptr %31, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !73
  br label %35

35:                                               ; preds = %62, %24
  %36 = phi i32 [ %2, %24 ], [ %63, %62 ]
  %37 = phi i32 [ %1, %24 ], [ %64, %62 ]
  %38 = sext i32 %37 to i64
  br label %39

39:                                               ; preds = %39, %35
  %40 = phi i64 [ %45, %39 ], [ %38, %35 ]
  %41 = getelementptr inbounds %union.SEdge, ptr %0, i64 %40
  %42 = getelementptr inbounds [3 x i32], ptr %41, i64 0, i64 %32
  %43 = load i32, ptr %42, align 4, !tbaa !73
  %44 = icmp slt i32 %43, %34
  %45 = add i64 %40, 1
  br i1 %44, label %39, label %46, !llvm.loop !171

46:                                               ; preds = %39
  %47 = sext i32 %36 to i64
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ %54, %48 ], [ %47, %46 ]
  %50 = getelementptr inbounds %union.SEdge, ptr %0, i64 %49
  %51 = getelementptr inbounds [3 x i32], ptr %50, i64 0, i64 %32
  %52 = load i32, ptr %51, align 4, !tbaa !73
  %53 = icmp sgt i32 %52, %34
  %54 = add i64 %49, -1
  br i1 %53, label %48, label %55, !llvm.loop !172

55:                                               ; preds = %48
  %56 = trunc i64 %40 to i32
  %57 = trunc i64 %49 to i32
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %41, i64 12, i1 false), !tbaa.struct !170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %41, ptr noundef nonnull align 4 dereferenceable(12) %50, i64 12, i1 false), !tbaa.struct !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %50, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !170
  %60 = add nsw i32 %56, 1
  %61 = add nsw i32 %57, -1
  br label %62

62:                                               ; preds = %55, %59
  %63 = phi i32 [ %61, %59 ], [ %57, %55 ]
  %64 = phi i32 [ %60, %59 ], [ %56, %55 ]
  %65 = icmp sgt i32 %64, %63
  br i1 %65, label %66, label %35, !llvm.loop !173

66:                                               ; preds = %62
  %67 = icmp sgt i32 %63, %1
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  tail call fastcc void @QuickSortEdges(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %63, i32 noundef %3, i32 noundef %27) #24
  br label %69

69:                                               ; preds = %68, %66
  %70 = icmp slt i32 %64, %2
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  tail call fastcc void @QuickSortEdges(ptr noundef nonnull %0, i32 noundef %64, i32 noundef %2, i32 noundef %3, i32 noundef %27) #24
  br label %72

72:                                               ; preds = %69, %71, %12, %23, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @GetEdge(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #17 !PGOFuncName !174 {
  store i32 -1, ptr %2, align 4, !tbaa !48
  %7 = load i32, ptr %3, align 4, !tbaa !48
  %8 = icmp eq i32 %7, %4
  %9 = icmp eq i32 %7, %5
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = getelementptr inbounds i32, ptr %3, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !48
  %14 = icmp eq i32 %13, %4
  %15 = icmp eq i32 %13, %5
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  store i32 0, ptr %2, align 4, !tbaa !48
  %18 = load i32, ptr %3, align 4, !tbaa !48
  store i32 %18, ptr %0, align 4, !tbaa !48
  br label %26

19:                                               ; preds = %11
  store i32 2, ptr %2, align 4, !tbaa !48
  %20 = getelementptr inbounds i32, ptr %3, i64 2
  %21 = load i32, ptr %20, align 4, !tbaa !48
  store i32 %21, ptr %0, align 4, !tbaa !48
  br label %26

22:                                               ; preds = %6
  store i32 1, ptr %2, align 4, !tbaa !48
  %23 = getelementptr inbounds i32, ptr %3, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !48
  store i32 %24, ptr %0, align 4, !tbaa !48
  %25 = getelementptr inbounds i32, ptr %3, i64 2
  br label %26

26:                                               ; preds = %17, %19, %22
  %27 = phi ptr [ %12, %17 ], [ %3, %19 ], [ %25, %22 ]
  %28 = load i32, ptr %27, align 4, !tbaa !48
  store i32 %28, ptr %1, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @AddTriToGroup(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #18 !PGOFuncName !175 {
  %3 = getelementptr inbounds %struct.SGroup, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = load i32, ptr %0, align 8, !tbaa !105
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %4, i64 %6
  store i32 %1, ptr %7, align 4, !tbaa !48
  %8 = load i32, ptr %0, align 8, !tbaa !105
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %0, align 8, !tbaa !105
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @AssignRecur(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #19 !PGOFuncName !176 {
  %5 = getelementptr inbounds %struct.SGroup, ptr %3, i64 0, i32 2
  %6 = getelementptr inbounds %struct.SGroup, ptr %3, i64 0, i32 3
  %7 = icmp ne ptr %3, null
  br label %8

8:                                                ; preds = %74, %4
  %9 = phi i32 [ %2, %4 ], [ %71, %74 ]
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %10
  %12 = load i32, ptr %5, align 8, !tbaa !102
  %13 = mul nsw i32 %9, 3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !48
  %17 = icmp eq i32 %16, %12
  br i1 %17, label %27, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds i32, ptr %15, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !48
  %21 = icmp eq i32 %20, %12
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds i32, ptr %15, i64 2
  %24 = load i32, ptr %23, align 4, !tbaa !48
  %25 = icmp eq i32 %24, %12
  %26 = select i1 %25, i32 2, i32 -1
  br label %27

27:                                               ; preds = %22, %18, %8
  %28 = phi i1 [ false, %8 ], [ true, %18 ], [ %25, %22 ]
  %29 = phi i32 [ 0, %8 ], [ 1, %18 ], [ %26, %22 ]
  %30 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %10, i32 1
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %10, i32 1, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !94
  %34 = icmp eq ptr %33, null
  %35 = and i1 %34, %7
  br i1 %35, label %36, label %76

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %10, i32 7
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %30, align 8, !tbaa !94
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %10, i32 1, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !94
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %10, i32 1, i64 2
  %50 = load ptr, ptr %49, align 8, !tbaa !94
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = and i32 %38, -9
  %54 = load i32, ptr %6, align 4, !tbaa !104
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 0, i32 8
  %57 = or disjoint i32 %56, %53
  store i32 %57, ptr %37, align 4, !tbaa !50
  br label %58

58:                                               ; preds = %41, %44, %48, %52, %36
  %59 = phi i32 [ %38, %41 ], [ %38, %44 ], [ %38, %48 ], [ %57, %52 ], [ %38, %36 ]
  %60 = lshr i32 %59, 3
  %61 = and i32 %60, 1
  %62 = load i32, ptr %6, align 4, !tbaa !104
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  tail call fastcc void @AddTriToGroup(ptr noundef nonnull %3, i32 noundef %9) #24
  store ptr %3, ptr %32, align 8, !tbaa !94
  %65 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 %31
  %66 = load i32, ptr %65, align 4, !tbaa !48
  %67 = add nsw i32 %29, -1
  %68 = sext i32 %67 to i64
  %69 = select i1 %28, i64 %68, i64 2
  %70 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !48
  %72 = icmp sgt i32 %66, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  tail call fastcc void @AssignRecur(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %66, ptr noundef nonnull %3) #24
  br label %74

74:                                               ; preds = %73, %64
  %75 = icmp sgt i32 %71, -1
  br i1 %75, label %8, label %76

76:                                               ; preds = %74, %27, %58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @vdot(<2 x float> %0, float %1, <2 x float> %2, float %3) unnamed_addr #7 !PGOFuncName !177 {
  %5 = extractelement <2 x float> %0, i64 0
  %6 = extractelement <2 x float> %2, i64 0
  %7 = fmul <2 x float> %0, %2
  %8 = extractelement <2 x float> %7, i64 1
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %8)
  %10 = tail call float @llvm.fmuladd.f32(float %1, float %3, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @VNotZero(<2 x float> %0, float %1) unnamed_addr #7 !PGOFuncName !178 {
  %3 = extractelement <2 x float> %0, i64 0
  %4 = tail call fastcc i32 @NotZero(float noundef %3) #24, !range !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = extractelement <2 x float> %0, i64 1
  %8 = tail call fastcc i32 @NotZero(float noundef %7) #24, !range !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @NotZero(float noundef %1) #24, !range !34
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i32 [ 1, %6 ], [ 1, %2 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc { <2 x float>, float } @Normalize(<2 x float> %0, float %1) unnamed_addr #14 !PGOFuncName !179 {
  %3 = tail call fastcc float @Length(<2 x float> %0, float %1) #24
  %4 = fdiv float 1.000000e+00, %3
  %5 = tail call fastcc { <2 x float>, float } @vscale(float noundef %4, <2 x float> %0, float %1) #24
  ret { <2 x float>, float } %5
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @QuickSort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #16 !PGOFuncName !180 {
  %5 = add i32 %2, 1
  br label %6

6:                                                ; preds = %52, %4
  %7 = phi i32 [ %1, %4 ], [ %47, %52 ]
  %8 = phi i32 [ %3, %4 ], [ %11, %52 ]
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 %8)
  %10 = add i32 %8, 3
  %11 = add i32 %10, %9
  %12 = sub i32 %5, %7
  %13 = urem i32 %11, %12
  %14 = add nsw i32 %13, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !48
  br label %18

18:                                               ; preds = %45, %6
  %19 = phi i32 [ %2, %6 ], [ %46, %45 ]
  %20 = phi i32 [ %7, %6 ], [ %47, %45 ]
  %21 = sext i32 %20 to i64
  br label %22

22:                                               ; preds = %22, %18
  %23 = phi i64 [ %27, %22 ], [ %21, %18 ]
  %24 = getelementptr inbounds i32, ptr %0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !48
  %26 = icmp slt i32 %25, %17
  %27 = add i64 %23, 1
  br i1 %26, label %22, label %28, !llvm.loop !181

28:                                               ; preds = %22
  %29 = getelementptr inbounds i32, ptr %0, i64 %23
  %30 = trunc i64 %23 to i32
  %31 = sext i32 %19 to i64
  br label %32

32:                                               ; preds = %32, %28
  %33 = phi i64 [ %37, %32 ], [ %31, %28 ]
  %34 = getelementptr inbounds i32, ptr %0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !48
  %36 = icmp sgt i32 %35, %17
  %37 = add i64 %33, -1
  br i1 %36, label %32, label %38, !llvm.loop !182

38:                                               ; preds = %32
  %39 = trunc i64 %33 to i32
  %40 = icmp sgt i32 %30, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds i32, ptr %0, i64 %33
  store i32 %35, ptr %29, align 4, !tbaa !48
  store i32 %25, ptr %42, align 4, !tbaa !48
  %43 = add nsw i32 %30, 1
  %44 = add nsw i32 %39, -1
  br label %45

45:                                               ; preds = %38, %41
  %46 = phi i32 [ %44, %41 ], [ %39, %38 ]
  %47 = phi i32 [ %43, %41 ], [ %30, %38 ]
  %48 = icmp sgt i32 %47, %46
  br i1 %48, label %49, label %18, !llvm.loop !183

49:                                               ; preds = %45
  %50 = icmp sgt i32 %46, %7
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  tail call fastcc void @QuickSort(ptr noundef nonnull %0, i32 noundef %7, i32 noundef %46, i32 noundef %11) #24
  br label %52

52:                                               ; preds = %51, %49
  %53 = icmp slt i32 %47, %2
  br i1 %53, label %6, label %54

54:                                               ; preds = %52
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @CompareSubGroups(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #20 !PGOFuncName !184 {
  %3 = load i32, ptr %0, align 8, !tbaa !112
  %4 = load i32, ptr %1, align 8, !tbaa !112
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.SSubGroup, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = getelementptr inbounds %struct.SSubGroup, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  br label %13

13:                                               ; preds = %8, %13
  %14 = phi i32 [ 0, %8 ], [ %22, %13 ]
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %10, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !48
  %18 = getelementptr inbounds i32, ptr %12, i64 %15
  %19 = load i32, ptr %18, align 4, !tbaa !48
  %20 = icmp eq i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = add nuw nsw i32 %14, %21
  %23 = icmp slt i32 %22, %3
  %24 = and i1 %20, %23
  br i1 %24, label %13, label %25, !llvm.loop !185

25:                                               ; preds = %13, %6, %2
  %26 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %21, %13 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @EvalTspace(ptr dead_on_unwind noalias nocapture writable sret(%struct.STSpace) align 4 %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5, i32 noundef %6) unnamed_addr #1 !PGOFuncName !186 {
  %8 = getelementptr inbounds %struct.SVec3, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.STSpace, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.STSpace, ptr %0, i64 0, i32 2, i32 2
  %11 = getelementptr inbounds %struct.STSpace, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.STSpace, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %13 = load <2 x float>, ptr %9, align 4
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %193

15:                                               ; preds = %7
  %16 = zext nneg i32 %2 to i64
  br label %17

17:                                               ; preds = %15, %184
  %18 = phi i64 [ 0, %15 ], [ %191, %184 ]
  %19 = phi float [ 0.000000e+00, %15 ], [ %189, %184 ]
  %20 = phi <2 x float> [ zeroinitializer, %15 ], [ %188, %184 ]
  %21 = phi float [ 0.000000e+00, %15 ], [ %187, %184 ]
  %22 = phi <2 x float> [ %13, %15 ], [ %186, %184 ]
  %23 = phi float [ 0.000000e+00, %15 ], [ %185, %184 ]
  %24 = phi <2 x float> [ zeroinitializer, %15 ], [ %190, %184 ]
  %25 = getelementptr inbounds i32, ptr %1, i64 %18
  %26 = load i32, ptr %25, align 4, !tbaa !48
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.STriInfo, ptr %4, i64 %27, i32 7
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %184

32:                                               ; preds = %17
  %33 = mul nsw i32 %26, 3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %3, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !48
  %37 = icmp eq i32 %36, %6
  br i1 %37, label %47, label %38

38:                                               ; preds = %32
  %39 = getelementptr i32, ptr %35, i64 1
  %40 = load i32, ptr %39, align 4, !tbaa !48
  %41 = icmp eq i32 %40, %6
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr i32, ptr %35, i64 2
  %44 = load i32, ptr %43, align 4, !tbaa !48
  %45 = icmp eq i32 %44, %6
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %38, %32, %46, %42
  %48 = phi i1 [ false, %46 ], [ true, %42 ], [ true, %32 ], [ true, %38 ]
  %49 = phi i1 [ true, %46 ], [ false, %42 ], [ false, %32 ], [ true, %38 ]
  %50 = phi i32 [ 2, %46 ], [ -1, %42 ], [ 0, %32 ], [ 1, %38 ]
  %51 = add nsw i32 %50, %33
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %3, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !48
  %55 = tail call fastcc { <2 x float>, float } @GetNormal(ptr noundef %5, i32 noundef %54) #24
  %56 = extractvalue { <2 x float>, float } %55, 0
  %57 = extractvalue { <2 x float>, float } %55, 1
  %58 = getelementptr inbounds %struct.STriInfo, ptr %4, i64 %27, i32 2
  %59 = load <2 x float>, ptr %58, align 8
  %60 = getelementptr inbounds i8, ptr %58, i64 8
  %61 = load float, ptr %60, align 8
  %62 = tail call fastcc float @vdot(<2 x float> %56, float %57, <2 x float> %59, float %61) #24
  %63 = tail call fastcc { <2 x float>, float } @vscale(float noundef %62, <2 x float> %56, float %57) #24
  %64 = extractvalue { <2 x float>, float } %63, 0
  %65 = extractvalue { <2 x float>, float } %63, 1
  %66 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %59, float %61, <2 x float> %64, float %65) #24
  %67 = extractvalue { <2 x float>, float } %66, 0
  %68 = extractvalue { <2 x float>, float } %66, 1
  %69 = getelementptr inbounds %struct.STriInfo, ptr %4, i64 %27, i32 3
  %70 = load <2 x float>, ptr %69, align 4
  %71 = getelementptr inbounds i8, ptr %69, i64 8
  %72 = load float, ptr %71, align 4
  %73 = tail call fastcc float @vdot(<2 x float> %56, float %57, <2 x float> %70, float %72) #24
  %74 = tail call fastcc { <2 x float>, float } @vscale(float noundef %73, <2 x float> %56, float %57) #24
  %75 = extractvalue { <2 x float>, float } %74, 0
  %76 = extractvalue { <2 x float>, float } %74, 1
  %77 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %70, float %72, <2 x float> %75, float %76) #24
  %78 = extractvalue { <2 x float>, float } %77, 0
  %79 = extractvalue { <2 x float>, float } %77, 1
  %80 = tail call fastcc i32 @VNotZero(<2 x float> %67, float %68) #24, !range !34
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %47
  %83 = tail call fastcc { <2 x float>, float } @Normalize(<2 x float> %67, float %68) #24
  %84 = extractvalue { <2 x float>, float } %83, 0
  %85 = extractvalue { <2 x float>, float } %83, 1
  br label %86

86:                                               ; preds = %82, %47
  %87 = phi <2 x float> [ %84, %82 ], [ %67, %47 ]
  %88 = phi float [ %85, %82 ], [ %68, %47 ]
  %89 = tail call fastcc i32 @VNotZero(<2 x float> %78, float %79) #24, !range !34
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = tail call fastcc { <2 x float>, float } @Normalize(<2 x float> %78, float %79) #24
  %93 = extractvalue { <2 x float>, float } %92, 0
  %94 = extractvalue { <2 x float>, float } %92, 1
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi <2 x float> [ %93, %91 ], [ %78, %86 ]
  %97 = phi float [ %94, %91 ], [ %79, %86 ]
  %98 = add nsw i32 %50, 1
  %99 = select i1 %48, i32 %98, i32 0
  %100 = add nsw i32 %99, %33
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, ptr %3, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !48
  %104 = load i32, ptr %53, align 4, !tbaa !48
  %105 = add nsw i32 %50, -1
  %106 = select i1 %49, i32 %105, i32 2
  %107 = add nsw i32 %106, %33
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, ptr %3, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !48
  %111 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %5, i32 noundef %110) #24
  %112 = extractvalue { <2 x float>, float } %111, 0
  %113 = extractvalue { <2 x float>, float } %111, 1
  %114 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %5, i32 noundef %104) #24
  %115 = extractvalue { <2 x float>, float } %114, 0
  %116 = extractvalue { <2 x float>, float } %114, 1
  %117 = tail call fastcc { <2 x float>, float } @GetPosition(ptr noundef %5, i32 noundef %103) #24
  %118 = extractvalue { <2 x float>, float } %117, 0
  %119 = extractvalue { <2 x float>, float } %117, 1
  %120 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %112, float %113, <2 x float> %115, float %116) #24
  %121 = extractvalue { <2 x float>, float } %120, 0
  %122 = extractvalue { <2 x float>, float } %120, 1
  %123 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %118, float %119, <2 x float> %115, float %116) #24
  %124 = extractvalue { <2 x float>, float } %123, 0
  %125 = extractvalue { <2 x float>, float } %123, 1
  %126 = tail call fastcc float @vdot(<2 x float> %56, float %57, <2 x float> %121, float %122) #24
  %127 = tail call fastcc { <2 x float>, float } @vscale(float noundef %126, <2 x float> %56, float %57) #24
  %128 = extractvalue { <2 x float>, float } %127, 0
  %129 = extractvalue { <2 x float>, float } %127, 1
  %130 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %121, float %122, <2 x float> %128, float %129) #24
  %131 = extractvalue { <2 x float>, float } %130, 0
  %132 = extractvalue { <2 x float>, float } %130, 1
  %133 = tail call fastcc i32 @VNotZero(<2 x float> %131, float %132) #24, !range !34
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %95
  %136 = tail call fastcc { <2 x float>, float } @Normalize(<2 x float> %131, float %132) #24
  %137 = extractvalue { <2 x float>, float } %136, 0
  %138 = extractvalue { <2 x float>, float } %136, 1
  br label %139

139:                                              ; preds = %135, %95
  %140 = phi <2 x float> [ %137, %135 ], [ %131, %95 ]
  %141 = phi float [ %138, %135 ], [ %132, %95 ]
  %142 = tail call fastcc float @vdot(<2 x float> %56, float %57, <2 x float> %124, float %125) #24
  %143 = tail call fastcc { <2 x float>, float } @vscale(float noundef %142, <2 x float> %56, float %57) #24
  %144 = extractvalue { <2 x float>, float } %143, 0
  %145 = extractvalue { <2 x float>, float } %143, 1
  %146 = tail call fastcc { <2 x float>, float } @vsub(<2 x float> %124, float %125, <2 x float> %144, float %145) #24
  %147 = extractvalue { <2 x float>, float } %146, 0
  %148 = extractvalue { <2 x float>, float } %146, 1
  %149 = tail call fastcc i32 @VNotZero(<2 x float> %147, float %148) #24, !range !34
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %139
  %152 = tail call fastcc { <2 x float>, float } @Normalize(<2 x float> %147, float %148) #24
  %153 = extractvalue { <2 x float>, float } %152, 0
  %154 = extractvalue { <2 x float>, float } %152, 1
  br label %155

155:                                              ; preds = %151, %139
  %156 = phi <2 x float> [ %153, %151 ], [ %147, %139 ]
  %157 = phi float [ %154, %151 ], [ %148, %139 ]
  %158 = tail call fastcc float @vdot(<2 x float> %140, float %141, <2 x float> %156, float %157) #24
  %159 = fcmp ogt float %158, 1.000000e+00
  %160 = fcmp olt float %158, -1.000000e+00
  %161 = select i1 %160, float -1.000000e+00, float %158
  %162 = select i1 %159, float 1.000000e+00, float %161
  %163 = fpext float %162 to double
  %164 = tail call double @acos(double noundef %163) #25
  %165 = fptrunc double %164 to float
  %166 = getelementptr inbounds %struct.STriInfo, ptr %4, i64 %27, i32 4
  %167 = load <2 x float>, ptr %166, align 8, !tbaa !55
  %168 = tail call fastcc { <2 x float>, float } @vscale(float noundef %165, <2 x float> %87, float %88) #24
  %169 = extractvalue { <2 x float>, float } %168, 0
  %170 = extractvalue { <2 x float>, float } %168, 1
  %171 = tail call fastcc { <2 x float>, float } @vadd(<2 x float> %20, float %21, <2 x float> %169, float %170) #24
  %172 = extractvalue { <2 x float>, float } %171, 0
  %173 = extractvalue { <2 x float>, float } %171, 1
  %174 = tail call fastcc { <2 x float>, float } @vscale(float noundef %165, <2 x float> %96, float %97) #24
  %175 = extractvalue { <2 x float>, float } %174, 0
  %176 = extractvalue { <2 x float>, float } %174, 1
  %177 = tail call fastcc { <2 x float>, float } @vadd(<2 x float> %22, float %23, <2 x float> %175, float %176) #24
  %178 = extractvalue { <2 x float>, float } %177, 0
  %179 = extractvalue { <2 x float>, float } %177, 1
  %180 = insertelement <2 x float> poison, float %165, i64 0
  %181 = shufflevector <2 x float> %180, <2 x float> poison, <2 x i32> zeroinitializer
  %182 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %181, <2 x float> %167, <2 x float> %24)
  %183 = fadd float %19, %165
  br label %184

184:                                              ; preds = %155, %17
  %185 = phi float [ %179, %155 ], [ %23, %17 ]
  %186 = phi <2 x float> [ %178, %155 ], [ %22, %17 ]
  %187 = phi float [ %173, %155 ], [ %21, %17 ]
  %188 = phi <2 x float> [ %172, %155 ], [ %20, %17 ]
  %189 = phi float [ %183, %155 ], [ %19, %17 ]
  %190 = phi <2 x float> [ %182, %155 ], [ %24, %17 ]
  %191 = add nuw nsw i64 %18, 1
  %192 = icmp eq i64 %191, %16
  br i1 %192, label %193, label %17, !llvm.loop !187

193:                                              ; preds = %184, %7
  %194 = phi float [ 0.000000e+00, %7 ], [ %185, %184 ]
  %195 = phi <2 x float> [ %13, %7 ], [ %186, %184 ]
  %196 = phi float [ 0.000000e+00, %7 ], [ %187, %184 ]
  %197 = phi <2 x float> [ zeroinitializer, %7 ], [ %188, %184 ]
  %198 = phi float [ 0.000000e+00, %7 ], [ %189, %184 ]
  %199 = phi <2 x float> [ zeroinitializer, %7 ], [ %190, %184 ]
  store <2 x float> %197, ptr %0, align 4
  store float %196, ptr %8, align 4
  store <2 x float> %195, ptr %9, align 4
  store float %194, ptr %10, align 4
  %200 = extractelement <2 x float> %199, i64 0
  store float %200, ptr %11, align 4, !tbaa !61
  %201 = extractelement <2 x float> %199, i64 1
  store float %201, ptr %12, align 4, !tbaa !62
  %202 = tail call fastcc i32 @VNotZero(<2 x float> %197, float %196) #24, !range !34
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %193
  %205 = tail call fastcc { <2 x float>, float } @Normalize(<2 x float> %197, float %196) #24
  %206 = extractvalue { <2 x float>, float } %205, 0
  %207 = extractvalue { <2 x float>, float } %205, 1
  store <2 x float> %206, ptr %0, align 4, !tbaa.struct !97
  store float %207, ptr %8, align 4, !tbaa.struct !98
  br label %208

208:                                              ; preds = %204, %193
  %209 = tail call fastcc i32 @VNotZero(<2 x float> %195, float %194) #24, !range !34
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = tail call fastcc { <2 x float>, float } @Normalize(<2 x float> %195, float %194) #24
  %213 = extractvalue { <2 x float>, float } %212, 0
  %214 = extractvalue { <2 x float>, float } %212, 1
  store <2 x float> %213, ptr %9, align 4, !tbaa.struct !97
  store float %214, ptr %10, align 4, !tbaa.struct !98
  br label %215

215:                                              ; preds = %211, %208
  %216 = fcmp ogt float %198, 0.000000e+00
  br i1 %216, label %217, label %220

217:                                              ; preds = %215
  %218 = fdiv float %200, %198
  store float %218, ptr %11, align 4, !tbaa !61
  %219 = fdiv float %201, %198
  store float %219, ptr %12, align 4, !tbaa !62
  br label %220

220:                                              ; preds = %217, %215
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @AvgTSpace(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.STSpace) align 4 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #21 !PGOFuncName !188 {
  %4 = getelementptr inbounds %struct.STSpace, ptr %1, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds %struct.STSpace, ptr %2, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !61
  %8 = fcmp oeq float %5, %7
  %9 = getelementptr inbounds %struct.STSpace, ptr %1, i64 0, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !62
  %11 = getelementptr inbounds %struct.STSpace, ptr %2, i64 0, i32 3
  %12 = load float, ptr %11, align 4, !tbaa !62
  br i1 %8, label %16, label %13

13:                                               ; preds = %3
  %14 = load <2 x float>, ptr %1, align 4
  %15 = load <2 x float>, ptr %2, align 4
  br label %42

16:                                               ; preds = %3
  %17 = fcmp oeq float %10, %12
  %18 = load <2 x float>, ptr %1, align 4
  %19 = load <2 x float>, ptr %2, align 4
  br i1 %17, label %20, label %42

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %1, i64 8
  %22 = load float, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %2, i64 8
  %24 = load float, ptr %23, align 4
  %25 = tail call fastcc i32 @veq(<2 x float> %18, float %22, <2 x float> %19, float %24) #24, !range !34
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.STSpace, ptr %1, i64 0, i32 2
  %29 = getelementptr inbounds %struct.STSpace, ptr %2, i64 0, i32 2
  %30 = load <2 x float>, ptr %28, align 4
  %31 = getelementptr inbounds %struct.STSpace, ptr %1, i64 0, i32 2, i32 2
  %32 = load float, ptr %31, align 4
  %33 = load <2 x float>, ptr %29, align 4
  %34 = getelementptr inbounds %struct.STSpace, ptr %2, i64 0, i32 2, i32 2
  %35 = load float, ptr %34, align 4
  %36 = tail call fastcc i32 @veq(<2 x float> %30, float %32, <2 x float> %33, float %35) #24, !range !34
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.STSpace, ptr %0, i64 0, i32 1
  store float %5, ptr %39, align 4, !tbaa !61
  %40 = getelementptr inbounds %struct.STSpace, ptr %0, i64 0, i32 3
  store float %10, ptr %40, align 4, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !97
  %41 = getelementptr inbounds %struct.STSpace, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %41, ptr noundef nonnull align 4 dereferenceable(12) %28, i64 12, i1 false), !tbaa.struct !97
  br label %85

42:                                               ; preds = %13, %27, %20, %16
  %43 = phi <2 x float> [ %15, %13 ], [ %19, %27 ], [ %19, %20 ], [ %19, %16 ]
  %44 = phi <2 x float> [ %14, %13 ], [ %18, %27 ], [ %18, %20 ], [ %18, %16 ]
  %45 = fadd float %5, %7
  %46 = fmul float %45, 5.000000e-01
  %47 = getelementptr inbounds %struct.STSpace, ptr %0, i64 0, i32 1
  store float %46, ptr %47, align 4, !tbaa !61
  %48 = fadd float %10, %12
  %49 = fmul float %48, 5.000000e-01
  %50 = getelementptr inbounds %struct.STSpace, ptr %0, i64 0, i32 3
  store float %49, ptr %50, align 4, !tbaa !62
  %51 = getelementptr inbounds i8, ptr %1, i64 8
  %52 = load float, ptr %51, align 4
  %53 = getelementptr inbounds i8, ptr %2, i64 8
  %54 = load float, ptr %53, align 4
  %55 = tail call fastcc { <2 x float>, float } @vadd(<2 x float> %44, float %52, <2 x float> %43, float %54) #24
  %56 = extractvalue { <2 x float>, float } %55, 0
  %57 = extractvalue { <2 x float>, float } %55, 1
  store <2 x float> %56, ptr %0, align 4, !tbaa.struct !97
  %58 = getelementptr inbounds i8, ptr %0, i64 8
  store float %57, ptr %58, align 4, !tbaa.struct !98
  %59 = getelementptr inbounds %struct.STSpace, ptr %0, i64 0, i32 2
  %60 = getelementptr inbounds %struct.STSpace, ptr %1, i64 0, i32 2
  %61 = getelementptr inbounds %struct.STSpace, ptr %2, i64 0, i32 2
  %62 = load <2 x float>, ptr %60, align 4
  %63 = getelementptr inbounds %struct.STSpace, ptr %1, i64 0, i32 2, i32 2
  %64 = load float, ptr %63, align 4
  %65 = load <2 x float>, ptr %61, align 4
  %66 = getelementptr inbounds %struct.STSpace, ptr %2, i64 0, i32 2, i32 2
  %67 = load float, ptr %66, align 4
  %68 = tail call fastcc { <2 x float>, float } @vadd(<2 x float> %62, float %64, <2 x float> %65, float %67) #24
  %69 = extractvalue { <2 x float>, float } %68, 0
  %70 = extractvalue { <2 x float>, float } %68, 1
  store <2 x float> %69, ptr %59, align 4, !tbaa.struct !97
  %71 = getelementptr inbounds %struct.STSpace, ptr %0, i64 0, i32 2, i32 2
  store float %70, ptr %71, align 4, !tbaa.struct !98
  %72 = tail call fastcc i32 @VNotZero(<2 x float> %56, float %57) #24, !range !34
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %42
  %75 = tail call fastcc { <2 x float>, float } @Normalize(<2 x float> %56, float %57) #24
  %76 = extractvalue { <2 x float>, float } %75, 0
  %77 = extractvalue { <2 x float>, float } %75, 1
  store <2 x float> %76, ptr %0, align 4, !tbaa.struct !97
  store float %77, ptr %58, align 4, !tbaa.struct !98
  br label %78

78:                                               ; preds = %74, %42
  %79 = tail call fastcc i32 @VNotZero(<2 x float> %69, float %70) #24, !range !34
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = tail call fastcc { <2 x float>, float } @Normalize(<2 x float> %69, float %70) #24
  %83 = extractvalue { <2 x float>, float } %82, 0
  %84 = extractvalue { <2 x float>, float } %82, 1
  store <2 x float> %83, ptr %59, align 4, !tbaa.struct !97
  store float %84, ptr %71, align 4, !tbaa.struct !98
  br label %85

85:                                               ; preds = %78, %81, %38
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #22

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #22

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #24 = { optsize }
attributes #25 = { nounwind optsize }
attributes #26 = { nounwind optsize allocsize(0) }
attributes #27 = { nounwind }

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
!34 = !{i32 0, i32 2}
!35 = !{!36, !37, i64 0}
!36 = !{!"SMikkTSpaceContext", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !37, i64 0}
!41 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48}
!42 = !{!41, !37, i64 8}
!43 = !{!41, !37, i64 16}
!44 = !{!41, !37, i64 24}
!45 = !{!41, !37, i64 32}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !38, i64 0}
!50 = !{!51, !49, i64 76}
!51 = !{!"", !38, i64 0, !38, i64 16, !52, i64 40, !52, i64 52, !53, i64 64, !53, i64 68, !49, i64 72, !49, i64 76, !49, i64 80, !38, i64 84}
!52 = !{!"", !53, i64 0, !53, i64 4, !53, i64 8}
!53 = !{!"float", !38, i64 0}
!54 = distinct !{!54, !47}
!55 = !{!53, !53, i64 0}
!56 = distinct !{!56, !47}
!57 = !{!58, !53, i64 8}
!58 = !{!"", !52, i64 0, !53, i64 12, !52, i64 16, !53, i64 28, !49, i64 32, !49, i64 36}
!59 = !{!58, !53, i64 24}
!60 = !{!41, !37, i64 48}
!61 = !{!58, !53, i64 12}
!62 = !{!58, !53, i64 28}
!63 = !{!58, !49, i64 36}
!64 = !{!41, !37, i64 40}
!65 = distinct !{!65, !47}
!66 = distinct !{!66, !47}
!67 = !{!"mikktspace.c:GenerateInitialVerticesIndexList"}
!68 = distinct !{!68, !47, !69, !70}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!51, !49, i64 72}
!72 = !{!51, !49, i64 80}
!73 = !{!38, !38, i64 0}
!74 = distinct !{!74, !47}
!75 = !{!"mikktspace.c:GenerateSharedVerticesIndexList"}
!76 = distinct !{!76, !47}
!77 = distinct !{!77, !47}
!78 = distinct !{!78, !47}
!79 = distinct !{!79, !47}
!80 = distinct !{!80, !47}
!81 = !{!82, !49, i64 12}
!82 = !{!"", !38, i64 0, !49, i64 12}
!83 = distinct !{!83, !47}
!84 = distinct !{!84, !47}
!85 = !{!"mikktspace.c:GetPosition"}
!86 = !{!"mikktspace.c:veq"}
!87 = !{!"mikktspace.c:DegenPrologue"}
!88 = distinct !{!88, !47}
!89 = distinct !{!89, !47}
!90 = distinct !{!90, !47}
!91 = !{i64 0, i64 12, !73, i64 16, i64 24, !73, i64 40, i64 4, !55, i64 44, i64 4, !55, i64 48, i64 4, !55, i64 52, i64 4, !55, i64 56, i64 4, !55, i64 60, i64 4, !55, i64 64, i64 4, !55, i64 68, i64 4, !55, i64 72, i64 4, !48, i64 76, i64 4, !48, i64 80, i64 4, !48, i64 84, i64 4, !73}
!92 = distinct !{!92, !47}
!93 = !{!"mikktspace.c:InitTriInfo"}
!94 = !{!37, !37, i64 0}
!95 = distinct !{!95, !47}
!96 = distinct !{!96, !47}
!97 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55}
!98 = !{i64 0, i64 4, !55}
!99 = distinct !{!99, !47}
!100 = distinct !{!100, !47}
!101 = !{!"mikktspace.c:Build4RuleGroups"}
!102 = !{!103, !49, i64 16}
!103 = !{!"", !49, i64 0, !37, i64 8, !49, i64 16, !49, i64 20}
!104 = !{!103, !49, i64 20}
!105 = !{!103, !49, i64 0}
!106 = !{!103, !37, i64 8}
!107 = distinct !{!107, !47}
!108 = distinct !{!108, !47}
!109 = !{!"mikktspace.c:GenerateTSpaces"}
!110 = distinct !{!110, !47}
!111 = distinct !{!111, !47}
!112 = !{!113, !49, i64 0}
!113 = !{!"", !49, i64 0, !37, i64 8}
!114 = !{!113, !37, i64 8}
!115 = distinct !{!115, !47}
!116 = distinct !{!116, !47}
!117 = distinct !{!117, !47}
!118 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55, i64 12, i64 4, !55, i64 16, i64 4, !55, i64 20, i64 4, !55, i64 24, i64 4, !55, i64 28, i64 4, !55, i64 32, i64 4, !48, i64 36, i64 4, !48}
!119 = !{!58, !49, i64 32}
!120 = distinct !{!120, !47}
!121 = distinct !{!121, !47}
!122 = !{!"mikktspace.c:DegenEpilogue"}
!123 = distinct !{!123, !47}
!124 = distinct !{!124, !47}
!125 = distinct !{!125, !47}
!126 = distinct !{!126, !47}
!127 = distinct !{!127, !47}
!128 = !{!"mikktspace.c:vsub"}
!129 = !{!"mikktspace.c:GenerateSharedVerticesIndexListSlow"}
!130 = distinct !{!130, !47}
!131 = distinct !{!131, !47}
!132 = distinct !{!132, !47}
!133 = distinct !{!133, !47}
!134 = !{!"mikktspace.c:FindGridCell"}
!135 = !{!"mikktspace.c:MergeVertsFast"}
!136 = distinct !{!136, !47}
!137 = distinct !{!137, !47}
!138 = distinct !{!138, !47}
!139 = distinct !{!139, !47}
!140 = distinct !{!140, !47}
!141 = distinct !{!141, !47}
!142 = !{i64 0, i64 12, !73, i64 12, i64 4, !48}
!143 = distinct !{!143, !47}
!144 = !{!"mikktspace.c:MergeVertsSlow"}
!145 = distinct !{!145, !47}
!146 = distinct !{!146, !47}
!147 = !{!"mikktspace.c:GetNormal"}
!148 = !{!"mikktspace.c:GetTexCoord"}
!149 = !{!"mikktspace.c:IndexToData"}
!150 = !{!"mikktspace.c:MakeIndex"}
!151 = !{!"mikktspace.c:LengthSquared"}
!152 = !{!"mikktspace.c:vscale"}
!153 = !{!"mikktspace.c:vadd"}
!154 = !{!"mikktspace.c:NotZero"}
!155 = !{!"mikktspace.c:Length"}
!156 = !{!"mikktspace.c:CalcTexArea"}
!157 = !{!"mikktspace.c:BuildNeighborsSlow"}
!158 = distinct !{!158, !47}
!159 = distinct !{!159, !47}
!160 = distinct !{!160, !47}
!161 = distinct !{!161, !47}
!162 = !{!"mikktspace.c:BuildNeighborsFast"}
!163 = distinct !{!163, !47}
!164 = distinct !{!164, !47}
!165 = distinct !{!165, !47}
!166 = distinct !{!166, !47}
!167 = distinct !{!167, !47}
!168 = distinct !{!168, !47}
!169 = !{!"mikktspace.c:QuickSortEdges"}
!170 = !{i64 0, i64 4, !48, i64 4, i64 4, !48, i64 8, i64 4, !48, i64 0, i64 12, !73}
!171 = distinct !{!171, !47}
!172 = distinct !{!172, !47}
!173 = distinct !{!173, !47}
!174 = !{!"mikktspace.c:GetEdge"}
!175 = !{!"mikktspace.c:AddTriToGroup"}
!176 = !{!"mikktspace.c:AssignRecur"}
!177 = !{!"mikktspace.c:vdot"}
!178 = !{!"mikktspace.c:VNotZero"}
!179 = !{!"mikktspace.c:Normalize"}
!180 = !{!"mikktspace.c:QuickSort"}
!181 = distinct !{!181, !47}
!182 = distinct !{!182, !47}
!183 = distinct !{!183, !47}
!184 = !{!"mikktspace.c:CompareSubGroups"}
!185 = distinct !{!185, !47}
!186 = !{!"mikktspace.c:EvalTspace"}
!187 = distinct !{!187, !47}
!188 = !{!"mikktspace.c:AvgTSpace"}
