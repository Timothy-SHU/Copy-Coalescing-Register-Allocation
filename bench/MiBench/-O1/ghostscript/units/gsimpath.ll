; ModuleID = 'gsimpath.c'
source_filename = "gsimpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.status = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_imagepath(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.status, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #3
  store ptr %0, ptr %5, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.status, ptr %5, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.status, ptr %5, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.status, ptr %5, i64 0, i32 3
  store i32 %2, ptr %8, align 4, !tbaa !13
  %9 = add nsw i32 %1, 7
  %10 = sdiv i32 %9, 8
  %11 = getelementptr inbounds %struct.status, ptr %5, i64 0, i32 4
  store i32 %10, ptr %11, align 8, !tbaa !14
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %164

13:                                               ; preds = %4
  %14 = icmp sgt i32 %1, 0
  %15 = getelementptr inbounds %struct.status, ptr %5, i64 0, i32 7
  %16 = getelementptr inbounds %struct.status, ptr %5, i64 0, i32 6
  %17 = getelementptr inbounds %struct.status, ptr %5, i64 0, i32 5
  br label %20

18:                                               ; preds = %162, %20
  %19 = icmp sgt i32 %21, 1
  br i1 %19, label %20, label %164, !llvm.loop !15

20:                                               ; preds = %13, %18
  %21 = phi i32 [ %2, %13 ], [ %22, %18 ]
  %22 = add nsw i32 %21, -1
  br i1 %14, label %23, label %18

23:                                               ; preds = %20
  %24 = add nsw i32 %21, -2
  %25 = icmp ne i32 %21, 1
  %26 = icmp ne i32 %21, 1
  br label %27

27:                                               ; preds = %23, %162
  %28 = phi i32 [ %1, %23 ], [ %29, %162 ]
  %29 = add nsw i32 %28, -1
  %30 = load i32, ptr %7, align 8, !tbaa !12
  %31 = icmp sge i32 %30, %28
  %32 = load i32, ptr %8, align 4
  %33 = icmp sge i32 %32, %21
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load ptr, ptr %6, align 8, !tbaa !11
  %37 = load i32, ptr %11, align 8, !tbaa !14
  %38 = mul nsw i32 %37, %22
  %39 = lshr i32 %29, 3
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %36, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !17
  %44 = zext i8 %43 to i32
  %45 = and i32 %29, 7
  %46 = xor i32 %45, 7
  %47 = lshr i32 %44, %46
  %48 = and i32 %47, 1
  br label %49

49:                                               ; preds = %27, %35
  %50 = phi i32 [ %48, %35 ], [ 0, %27 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %162, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %7, align 8, !tbaa !12
  %54 = icmp sge i32 %53, %28
  %55 = and i1 %25, %54
  %56 = load i32, ptr %8, align 4
  %57 = icmp sgt i32 %56, %24
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load ptr, ptr %6, align 8, !tbaa !11
  %61 = load i32, ptr %11, align 8, !tbaa !14
  %62 = mul nsw i32 %61, %24
  %63 = lshr i32 %29, 3
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %60, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !17
  %68 = zext i8 %67 to i32
  %69 = and i32 %29, 7
  %70 = xor i32 %69, 7
  %71 = lshr i32 %68, %70
  %72 = and i32 %71, 1
  br label %73

73:                                               ; preds = %52, %59
  %74 = phi i32 [ %72, %59 ], [ 0, %52 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %162

76:                                               ; preds = %73
  %77 = load i32, ptr %7, align 8, !tbaa !12
  %78 = icmp sgt i32 %77, %28
  %79 = load i32, ptr %8, align 4
  %80 = icmp sge i32 %79, %21
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load ptr, ptr %6, align 8, !tbaa !11
  %84 = load i32, ptr %11, align 8, !tbaa !14
  %85 = mul nsw i32 %84, %22
  %86 = lshr i32 %28, 3
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %83, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !17
  %91 = zext i8 %90 to i32
  %92 = and i32 %28, 7
  %93 = xor i32 %92, 7
  %94 = lshr i32 %91, %93
  %95 = and i32 %94, 1
  br label %96

96:                                               ; preds = %76, %82
  %97 = phi i32 [ %95, %82 ], [ 0, %76 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %123, label %99

99:                                               ; preds = %96
  %100 = load i32, ptr %7, align 8, !tbaa !12
  %101 = icmp sgt i32 %100, %28
  %102 = and i1 %26, %101
  %103 = load i32, ptr %8, align 4
  %104 = icmp sgt i32 %103, %24
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %120

106:                                              ; preds = %99
  %107 = load ptr, ptr %6, align 8, !tbaa !11
  %108 = load i32, ptr %11, align 8, !tbaa !14
  %109 = mul nsw i32 %108, %24
  %110 = lshr i32 %28, 3
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %107, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !17
  %115 = zext i8 %114 to i32
  %116 = and i32 %28, 7
  %117 = xor i32 %116, 7
  %118 = lshr i32 %115, %117
  %119 = and i32 %118, 1
  br label %120

120:                                              ; preds = %99, %106
  %121 = phi i32 [ %119, %106 ], [ 0, %99 ]
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %162, label %123

123:                                              ; preds = %120, %96
  %124 = call fastcc i32 @trace_from(ptr noundef nonnull %5, i32 noundef %29, i32 noundef %22, i32 noundef 1)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %162

126:                                              ; preds = %123
  store i32 0, ptr %15, align 4, !tbaa !18
  store i32 0, ptr %16, align 8, !tbaa !19
  store i32 0, ptr %17, align 4, !tbaa !20
  %127 = call fastcc i32 @trace_from(ptr noundef nonnull %5, i32 noundef %29, i32 noundef %22, i32 noundef 0)
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %164, label %129

129:                                              ; preds = %126
  %130 = load i32, ptr %17, align 4, !tbaa !20
  %131 = icmp eq i32 %130, 0
  %132 = load i32, ptr %16, align 8
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %131, i1 %133, i1 false
  %135 = load i32, ptr %15, align 4, !tbaa !18
  br i1 %134, label %136, label %138

136:                                              ; preds = %129
  %137 = add nsw i32 %135, 1
  br label %154

138:                                              ; preds = %129
  %139 = icmp eq i32 %135, 0
  br i1 %139, label %153, label %140

140:                                              ; preds = %138
  %141 = load ptr, ptr %5, align 8, !tbaa !5
  %142 = mul nsw i32 %135, %130
  %143 = sitofp i32 %142 to float
  %144 = fmul float %143, 2.500000e-01
  %145 = fpext float %144 to double
  %146 = load i32, ptr %16, align 8, !tbaa !19
  %147 = mul nsw i32 %146, %135
  %148 = sitofp i32 %147 to float
  %149 = fmul float %148, 2.500000e-01
  %150 = fpext float %149 to double
  %151 = call i32 @gs_rlineto(ptr noundef %141, double noundef %145, double noundef %150) #3
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %153, label %156

153:                                              ; preds = %140, %138
  store i32 0, ptr %17, align 4, !tbaa !20
  store i32 0, ptr %16, align 8, !tbaa !19
  br label %154

154:                                              ; preds = %153, %136
  %155 = phi i32 [ %137, %136 ], [ 1, %153 ]
  store i32 %155, ptr %15, align 4, !tbaa !18
  br label %156

156:                                              ; preds = %154, %140
  %157 = phi i32 [ %151, %140 ], [ 0, %154 ]
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %156
  %160 = call i32 @gs_closepath(ptr noundef %0) #3
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %49, %73, %120, %123, %159
  %163 = icmp sgt i32 %28, 1
  br i1 %163, label %27, label %18, !llvm.loop !21

164:                                              ; preds = %18, %159, %156, %126, %4
  %165 = phi i32 [ 0, %4 ], [ %127, %126 ], [ %157, %156 ], [ %160, %159 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #3
  ret i32 %165
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @trace_from(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %50

6:                                                ; preds = %4
  %7 = add nuw nsw i32 %1, 1
  %8 = add nsw i32 %2, -1
  %9 = icmp slt i32 %1, -1
  br i1 %9, label %38, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !12
  %13 = icmp sle i32 %12, %7
  %14 = icmp slt i32 %2, 1
  %15 = or i1 %14, %13
  br i1 %15, label %38, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !13
  %19 = icmp slt i32 %18, %2
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !14
  %25 = mul nsw i32 %24, %8
  %26 = lshr i32 %7, 3
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %22, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !17
  %31 = zext i8 %30 to i32
  %32 = and i32 %7, 7
  %33 = xor i32 %32, 7
  %34 = shl nuw nsw i32 1, %33
  %35 = and i32 %34, %31
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 1, i32 3
  br label %38

38:                                               ; preds = %6, %10, %16, %20
  %39 = phi i32 [ %37, %20 ], [ 1, %16 ], [ 1, %10 ], [ 1, %6 ]
  %40 = load ptr, ptr %0, align 8, !tbaa !5
  %41 = sitofp i32 %7 to float
  %42 = sitofp i32 %39 to float
  %43 = fmul float %42, 2.500000e-01
  %44 = fsub float %41, %43
  %45 = fpext float %44 to double
  %46 = sitofp i32 %2 to float
  %47 = fpext float %46 to double
  %48 = tail call i32 @gs_moveto(ptr noundef %40, double noundef %45, double noundef %47) #3
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %383, label %50

50:                                               ; preds = %38, %4
  %51 = phi i32 [ 0, %4 ], [ %39, %38 ]
  %52 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 2
  %53 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 3
  %54 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 1
  %55 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 4
  %56 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 5
  %57 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %58 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %59 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 7
  %60 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %61 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %62 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 7
  %63 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %64 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 7
  %65 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %66 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %67 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 7
  %68 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 7
  %69 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 2
  %70 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 3
  %71 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 1
  %72 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 4
  %73 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 5
  %74 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %75 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 7
  %76 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %77 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %78 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 7
  %79 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 5
  %80 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %81 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 7
  %82 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %83 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %84 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 7
  %85 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 5
  %86 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %87 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 7
  %88 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %89 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 6
  %90 = getelementptr inbounds %struct.status, ptr %0, i64 0, i32 7
  br label %91

91:                                               ; preds = %375, %50
  %92 = phi i32 [ %2, %50 ], [ %376, %375 ]
  %93 = phi i32 [ -1, %50 ], [ %377, %375 ]
  %94 = phi i32 [ 0, %50 ], [ %378, %375 ]
  %95 = phi i32 [ %51, %50 ], [ %379, %375 ]
  %96 = phi i32 [ %1, %50 ], [ %381, %375 ]
  %97 = phi i32 [ undef, %50 ], [ %382, %375 ]
  %98 = sub nsw i32 %93, %94
  %99 = add nsw i32 %94, %93
  %100 = add nsw i32 %96, %98
  %101 = add nsw i32 %99, %92
  %102 = icmp slt i32 %100, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %91
  %104 = load i32, ptr %52, align 8, !tbaa !12
  %105 = icmp sle i32 %104, %100
  %106 = icmp slt i32 %101, 0
  %107 = or i1 %106, %105
  br i1 %107, label %125, label %108

108:                                              ; preds = %103
  %109 = load i32, ptr %53, align 4, !tbaa !13
  %110 = icmp sgt i32 %109, %101
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load ptr, ptr %54, align 8, !tbaa !11
  %113 = load i32, ptr %55, align 8, !tbaa !14
  %114 = mul nsw i32 %113, %101
  %115 = lshr i32 %100, 3
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %112, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !17
  %120 = zext i8 %119 to i32
  %121 = and i32 %100, 7
  %122 = xor i32 %121, 7
  %123 = lshr i32 %120, %122
  %124 = and i32 %123, 1
  br label %125

125:                                              ; preds = %91, %103, %108, %111
  %126 = phi i32 [ %124, %111 ], [ 0, %108 ], [ 0, %103 ], [ 0, %91 ]
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %227, label %128

128:                                              ; preds = %125
  br i1 %5, label %129, label %224

129:                                              ; preds = %128
  %130 = load i32, ptr %56, align 4, !tbaa !20
  %131 = icmp eq i32 %130, %99
  br i1 %131, label %132, label %164

132:                                              ; preds = %129
  %133 = load i32, ptr %57, align 8, !tbaa !19
  %134 = sub nsw i32 0, %98
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %132
  %137 = load i32, ptr %68, align 4, !tbaa !18
  %138 = add nsw i32 %137, -1
  store i32 %138, ptr %68, align 4, !tbaa !18
  %139 = icmp eq i32 %130, %98
  %140 = icmp eq i32 %133, %99
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = add nsw i32 %137, 1
  br label %159

144:                                              ; preds = %136
  %145 = icmp eq i32 %138, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %144
  %147 = load ptr, ptr %0, align 8, !tbaa !5
  %148 = mul nsw i32 %138, %130
  %149 = sitofp i32 %148 to float
  %150 = fmul float %149, 2.500000e-01
  %151 = fpext float %150 to double
  %152 = mul nsw i32 %138, %133
  %153 = sitofp i32 %152 to float
  %154 = fmul float %153, 2.500000e-01
  %155 = fpext float %154 to double
  %156 = tail call i32 @gs_rlineto(ptr noundef %147, double noundef %151, double noundef %155) #3
  %157 = icmp sgt i32 %156, -1
  br i1 %157, label %158, label %161

158:                                              ; preds = %146, %144
  store i32 %98, ptr %56, align 4, !tbaa !20
  store i32 %99, ptr %57, align 8, !tbaa !19
  br label %159

159:                                              ; preds = %158, %142
  %160 = phi i32 [ %143, %142 ], [ 2, %158 ]
  store i32 %160, ptr %68, align 4, !tbaa !18
  br label %161

161:                                              ; preds = %159, %146
  %162 = phi i32 [ %156, %146 ], [ 0, %159 ]
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %375, label %224

164:                                              ; preds = %132, %129
  %165 = sub nsw i32 1, %95
  %166 = icmp eq i32 %95, 1
  br i1 %166, label %192, label %167

167:                                              ; preds = %164
  %168 = icmp eq i32 %130, %93
  br i1 %168, label %169, label %175

169:                                              ; preds = %167
  %170 = load i32, ptr %58, align 8, !tbaa !19
  %171 = icmp eq i32 %170, %94
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, ptr %62, align 4, !tbaa !18
  %174 = add nsw i32 %173, %165
  store i32 %174, ptr %62, align 4, !tbaa !18
  br label %192

175:                                              ; preds = %169, %167
  %176 = load i32, ptr %59, align 4, !tbaa !18
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %191, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %0, align 8, !tbaa !5
  %180 = mul nsw i32 %176, %130
  %181 = sitofp i32 %180 to float
  %182 = fmul float %181, 2.500000e-01
  %183 = fpext float %182 to double
  %184 = load i32, ptr %60, align 8, !tbaa !19
  %185 = mul nsw i32 %184, %176
  %186 = sitofp i32 %185 to float
  %187 = fmul float %186, 2.500000e-01
  %188 = fpext float %187 to double
  %189 = tail call i32 @gs_rlineto(ptr noundef %179, double noundef %183, double noundef %188) #3
  %190 = icmp sgt i32 %189, -1
  br i1 %190, label %191, label %192

191:                                              ; preds = %178, %175
  store i32 %93, ptr %56, align 4, !tbaa !20
  store i32 %94, ptr %61, align 8, !tbaa !19
  store i32 %165, ptr %59, align 4, !tbaa !18
  br label %192

192:                                              ; preds = %164, %172, %178, %191
  %193 = phi i32 [ %189, %178 ], [ 0, %172 ], [ 0, %191 ], [ 0, %164 ]
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %375, label %195

195:                                              ; preds = %192
  %196 = load i32, ptr %56, align 4, !tbaa !20
  %197 = icmp eq i32 %196, %98
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = load i32, ptr %63, align 8, !tbaa !19
  %200 = icmp eq i32 %199, %99
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, ptr %67, align 4, !tbaa !18
  %203 = add nsw i32 %202, 3
  store i32 %203, ptr %67, align 4, !tbaa !18
  br label %221

204:                                              ; preds = %198, %195
  %205 = load i32, ptr %64, align 4, !tbaa !18
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %220, label %207

207:                                              ; preds = %204
  %208 = load ptr, ptr %0, align 8, !tbaa !5
  %209 = mul nsw i32 %205, %196
  %210 = sitofp i32 %209 to float
  %211 = fmul float %210, 2.500000e-01
  %212 = fpext float %211 to double
  %213 = load i32, ptr %65, align 8, !tbaa !19
  %214 = mul nsw i32 %213, %205
  %215 = sitofp i32 %214 to float
  %216 = fmul float %215, 2.500000e-01
  %217 = fpext float %216 to double
  %218 = tail call i32 @gs_rlineto(ptr noundef %208, double noundef %212, double noundef %217) #3
  %219 = icmp sgt i32 %218, -1
  br i1 %219, label %220, label %221

220:                                              ; preds = %207, %204
  store i32 %98, ptr %56, align 4, !tbaa !20
  store i32 %99, ptr %66, align 8, !tbaa !19
  store i32 3, ptr %64, align 4, !tbaa !18
  br label %221

221:                                              ; preds = %201, %207, %220
  %222 = phi i32 [ %218, %207 ], [ 0, %201 ], [ 0, %220 ]
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %375, label %224

224:                                              ; preds = %161, %221, %128
  %225 = phi i32 [ %95, %128 ], [ 3, %221 ], [ 3, %161 ]
  %226 = sub nsw i32 0, %94
  br label %352

227:                                              ; preds = %125
  %228 = add nsw i32 %96, %93
  %229 = add nsw i32 %94, %92
  %230 = icmp slt i32 %228, 0
  br i1 %230, label %253, label %231

231:                                              ; preds = %227
  %232 = load i32, ptr %69, align 8, !tbaa !12
  %233 = icmp sle i32 %232, %228
  %234 = icmp slt i32 %229, 0
  %235 = or i1 %234, %233
  br i1 %235, label %253, label %236

236:                                              ; preds = %231
  %237 = load i32, ptr %70, align 4, !tbaa !13
  %238 = icmp sgt i32 %237, %229
  br i1 %238, label %239, label %253

239:                                              ; preds = %236
  %240 = load ptr, ptr %71, align 8, !tbaa !11
  %241 = load i32, ptr %72, align 8, !tbaa !14
  %242 = mul nsw i32 %241, %229
  %243 = lshr i32 %228, 3
  %244 = add nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, ptr %240, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !17
  %248 = zext i8 %247 to i32
  %249 = and i32 %228, 7
  %250 = xor i32 %249, 7
  %251 = lshr i32 %248, %250
  %252 = and i32 %251, 1
  br label %253

253:                                              ; preds = %227, %231, %236, %239
  %254 = phi i32 [ %252, %239 ], [ 0, %236 ], [ 0, %231 ], [ 0, %227 ]
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %322

256:                                              ; preds = %253
  br i1 %5, label %257, label %319

257:                                              ; preds = %256
  %258 = sub nuw nsw i32 3, %95
  %259 = icmp eq i32 %95, 3
  br i1 %259, label %286, label %260

260:                                              ; preds = %257
  %261 = load i32, ptr %79, align 4, !tbaa !20
  %262 = icmp eq i32 %261, %93
  br i1 %262, label %263, label %269

263:                                              ; preds = %260
  %264 = load i32, ptr %80, align 8, !tbaa !19
  %265 = icmp eq i32 %264, %94
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i32, ptr %84, align 4, !tbaa !18
  %268 = add nsw i32 %267, %258
  store i32 %268, ptr %84, align 4, !tbaa !18
  br label %286

269:                                              ; preds = %263, %260
  %270 = load i32, ptr %81, align 4, !tbaa !18
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %285, label %272

272:                                              ; preds = %269
  %273 = load ptr, ptr %0, align 8, !tbaa !5
  %274 = mul nsw i32 %270, %261
  %275 = sitofp i32 %274 to float
  %276 = fmul float %275, 2.500000e-01
  %277 = fpext float %276 to double
  %278 = load i32, ptr %82, align 8, !tbaa !19
  %279 = mul nsw i32 %278, %270
  %280 = sitofp i32 %279 to float
  %281 = fmul float %280, 2.500000e-01
  %282 = fpext float %281 to double
  %283 = tail call i32 @gs_rlineto(ptr noundef %273, double noundef %277, double noundef %282) #3
  %284 = icmp sgt i32 %283, -1
  br i1 %284, label %285, label %286

285:                                              ; preds = %272, %269
  store i32 %93, ptr %79, align 4, !tbaa !20
  store i32 %94, ptr %83, align 8, !tbaa !19
  store i32 %258, ptr %81, align 4, !tbaa !18
  br label %286

286:                                              ; preds = %257, %266, %272, %285
  %287 = phi i32 [ %283, %272 ], [ 0, %266 ], [ 0, %285 ], [ 0, %257 ]
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %375, label %289

289:                                              ; preds = %286
  %290 = sub nsw i32 0, %98
  %291 = load i32, ptr %85, align 4, !tbaa !20
  %292 = icmp eq i32 %291, %99
  br i1 %292, label %293, label %299

293:                                              ; preds = %289
  %294 = load i32, ptr %86, align 8, !tbaa !19
  %295 = icmp eq i32 %294, %290
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load i32, ptr %90, align 4, !tbaa !18
  %298 = add nsw i32 %297, 1
  store i32 %298, ptr %90, align 4, !tbaa !18
  br label %316

299:                                              ; preds = %293, %289
  %300 = load i32, ptr %87, align 4, !tbaa !18
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %315, label %302

302:                                              ; preds = %299
  %303 = load ptr, ptr %0, align 8, !tbaa !5
  %304 = mul nsw i32 %300, %291
  %305 = sitofp i32 %304 to float
  %306 = fmul float %305, 2.500000e-01
  %307 = fpext float %306 to double
  %308 = load i32, ptr %88, align 8, !tbaa !19
  %309 = mul nsw i32 %308, %300
  %310 = sitofp i32 %309 to float
  %311 = fmul float %310, 2.500000e-01
  %312 = fpext float %311 to double
  %313 = tail call i32 @gs_rlineto(ptr noundef %303, double noundef %307, double noundef %312) #3
  %314 = icmp sgt i32 %313, -1
  br i1 %314, label %315, label %316

315:                                              ; preds = %302, %299
  store i32 %99, ptr %85, align 4, !tbaa !20
  store i32 %290, ptr %89, align 8, !tbaa !19
  store i32 1, ptr %87, align 4, !tbaa !18
  br label %316

316:                                              ; preds = %296, %302, %315
  %317 = phi i32 [ %313, %302 ], [ 0, %296 ], [ 0, %315 ]
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %375, label %319

319:                                              ; preds = %316, %256
  %320 = phi i32 [ %95, %256 ], [ 1, %316 ]
  %321 = sub nsw i32 0, %93
  br label %352

322:                                              ; preds = %253
  br i1 %5, label %323, label %352

323:                                              ; preds = %322
  %324 = load i32, ptr %73, align 4, !tbaa !20
  %325 = icmp eq i32 %324, %93
  br i1 %325, label %326, label %332

326:                                              ; preds = %323
  %327 = load i32, ptr %74, align 8, !tbaa !19
  %328 = icmp eq i32 %327, %94
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = load i32, ptr %78, align 4, !tbaa !18
  %331 = add nsw i32 %330, 4
  store i32 %331, ptr %78, align 4, !tbaa !18
  br label %349

332:                                              ; preds = %326, %323
  %333 = load i32, ptr %75, align 4, !tbaa !18
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %348, label %335

335:                                              ; preds = %332
  %336 = load ptr, ptr %0, align 8, !tbaa !5
  %337 = mul nsw i32 %333, %324
  %338 = sitofp i32 %337 to float
  %339 = fmul float %338, 2.500000e-01
  %340 = fpext float %339 to double
  %341 = load i32, ptr %76, align 8, !tbaa !19
  %342 = mul nsw i32 %341, %333
  %343 = sitofp i32 %342 to float
  %344 = fmul float %343, 2.500000e-01
  %345 = fpext float %344 to double
  %346 = tail call i32 @gs_rlineto(ptr noundef %336, double noundef %340, double noundef %345) #3
  %347 = icmp sgt i32 %346, -1
  br i1 %347, label %348, label %349

348:                                              ; preds = %335, %332
  store i32 %93, ptr %73, align 4, !tbaa !20
  store i32 %94, ptr %77, align 8, !tbaa !19
  store i32 4, ptr %75, align 4, !tbaa !18
  br label %349

349:                                              ; preds = %329, %335, %348
  %350 = phi i32 [ %346, %335 ], [ 0, %329 ], [ 0, %348 ]
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %375, label %352

352:                                              ; preds = %322, %349, %319, %224
  %353 = phi i32 [ %101, %224 ], [ %92, %319 ], [ %229, %349 ], [ %229, %322 ]
  %354 = phi i32 [ %226, %224 ], [ %94, %319 ], [ %93, %349 ], [ %93, %322 ]
  %355 = phi i32 [ %93, %224 ], [ %321, %319 ], [ %94, %349 ], [ %94, %322 ]
  %356 = phi i32 [ %225, %224 ], [ %320, %319 ], [ %95, %349 ], [ %95, %322 ]
  %357 = phi i32 [ %100, %224 ], [ %96, %319 ], [ %228, %349 ], [ %228, %322 ]
  %358 = icmp ne i32 %354, -1
  %359 = icmp ne i32 %355, 0
  %360 = or i1 %358, %359
  %361 = and i32 %98, %99
  %362 = icmp eq i32 %361, -1
  %363 = or i1 %362, %360
  br i1 %363, label %374, label %364

364:                                              ; preds = %352
  %365 = icmp eq i32 %357, %1
  %366 = icmp eq i32 %353, %2
  %367 = and i1 %366, %365
  br i1 %367, label %375, label %368

368:                                              ; preds = %364
  br i1 %5, label %374, label %369

369:                                              ; preds = %368
  %370 = icmp sgt i32 %353, %2
  %371 = icmp sgt i32 %357, %1
  %372 = and i1 %366, %371
  %373 = or i1 %370, %372
  br i1 %373, label %375, label %374

374:                                              ; preds = %369, %368, %352
  br label %375

375:                                              ; preds = %369, %364, %349, %316, %286, %221, %192, %161, %374
  %376 = phi i32 [ %353, %374 ], [ %92, %161 ], [ %92, %192 ], [ %92, %221 ], [ %92, %286 ], [ %92, %316 ], [ %92, %349 ], [ %353, %364 ], [ %353, %369 ]
  %377 = phi i32 [ %354, %374 ], [ %93, %161 ], [ %93, %192 ], [ %93, %221 ], [ %93, %286 ], [ %93, %316 ], [ %93, %349 ], [ -1, %364 ], [ -1, %369 ]
  %378 = phi i32 [ %355, %374 ], [ %94, %161 ], [ %94, %192 ], [ %94, %221 ], [ %94, %286 ], [ %94, %316 ], [ %94, %349 ], [ 0, %364 ], [ 0, %369 ]
  %379 = phi i32 [ %356, %374 ], [ %95, %161 ], [ %95, %192 ], [ %95, %221 ], [ %95, %286 ], [ %95, %316 ], [ %95, %349 ], [ %356, %364 ], [ %356, %369 ]
  %380 = phi i1 [ true, %374 ], [ false, %161 ], [ false, %192 ], [ false, %221 ], [ false, %286 ], [ false, %316 ], [ false, %349 ], [ false, %364 ], [ false, %369 ]
  %381 = phi i32 [ %357, %374 ], [ %96, %161 ], [ %96, %192 ], [ %96, %221 ], [ %96, %286 ], [ %96, %316 ], [ %96, %349 ], [ %357, %364 ], [ %357, %369 ]
  %382 = phi i32 [ %97, %374 ], [ %162, %161 ], [ %193, %192 ], [ %222, %221 ], [ %287, %286 ], [ %317, %316 ], [ %350, %349 ], [ 0, %364 ], [ 1, %369 ]
  br i1 %380, label %91, label %383, !llvm.loop !22

383:                                              ; preds = %375, %38
  %384 = phi i32 [ %48, %38 ], [ %382, %375 ]
  ret i32 %384
}

declare i32 @gs_closepath(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @gs_moveto(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @gs_rlineto(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !10, i64 16}
!13 = !{!6, !10, i64 20}
!14 = !{!6, !10, i64 24}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!8, !8, i64 0}
!18 = !{!6, !10, i64 36}
!19 = !{!6, !10, i64 32}
!20 = !{!6, !10, i64 28}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
