; ModuleID = 'make-relative-prefix.c'
source_filename = "make-relative-prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_relative_prefix(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @make_relative_prefix_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_relative_prefix_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %8 = icmp eq ptr %0, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %8, %9
  %11 = icmp eq ptr %2, null
  %12 = or i1 %10, %11
  br i1 %12, label %201, label %13

13:                                               ; preds = %4
  %14 = tail call ptr @lbasename(ptr noundef nonnull %0) #15
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  %17 = tail call ptr @getenv(ptr noundef nonnull @.str) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %60, label %19

19:                                               ; preds = %16
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #13
  %21 = add i64 %20, 1
  %22 = tail call i64 @llvm.umax.i64(i64 %21, i64 2)
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %24 = add i64 %23, 1
  %25 = add i64 %24, %22
  %26 = alloca i8, i64 %25, align 16
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = getelementptr inbounds i8, ptr %26, i64 2
  br label %29

29:                                               ; preds = %56, %19
  %30 = phi ptr [ %57, %56 ], [ %17, %19 ]
  br label %31

31:                                               ; preds = %29, %58
  %32 = phi ptr [ %59, %58 ], [ %30, %29 ]
  %33 = load i8, ptr %32, align 1, !tbaa !6
  switch i8 %33, label %58 [
    i8 58, label %34
    i8 0, label %34
  ]

34:                                               ; preds = %31, %31
  %35 = icmp eq ptr %32, %30
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  store i8 46, ptr %26, align 16, !tbaa !6
  store i8 47, ptr %27, align 1, !tbaa !6
  br label %48

37:                                               ; preds = %34
  %38 = ptrtoint ptr %32 to i64
  %39 = ptrtoint ptr %30 to i64
  %40 = sub i64 %38, %39
  %41 = call ptr @strncpy(ptr noundef nonnull %26, ptr noundef nonnull %30, i64 noundef %40) #13
  %42 = getelementptr inbounds i8, ptr %32, i64 -1
  %43 = load i8, ptr %42, align 1, !tbaa !6
  %44 = icmp eq i8 %43, 47
  %45 = getelementptr inbounds i8, ptr %26, i64 %40
  br i1 %44, label %48, label %46

46:                                               ; preds = %37
  store i8 47, ptr %45, align 1, !tbaa !6
  %47 = getelementptr i8, ptr %45, i64 1
  br label %48

48:                                               ; preds = %37, %46, %36
  %49 = phi ptr [ %47, %46 ], [ %28, %36 ], [ %45, %37 ]
  store i8 0, ptr %49, align 1, !tbaa !6
  %50 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %0) #13
  %51 = call i32 @access(ptr noundef nonnull %26, i32 noundef 1) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load i8, ptr %32, align 1, !tbaa !6
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, ptr %32, i64 1
  br label %29

58:                                               ; preds = %31
  %59 = getelementptr inbounds i8, ptr %32, i64 1
  br label %31

60:                                               ; preds = %48, %53, %16, %13
  %61 = phi ptr [ %0, %13 ], [ %0, %16 ], [ %26, %48 ], [ %0, %53 ]
  %62 = icmp eq i32 %3, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call ptr @lrealpath(ptr noundef %61) #15
  br label %67

65:                                               ; preds = %60
  %66 = call ptr @strdup(ptr noundef %61) #13
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi ptr [ %64, %63 ], [ %66, %65 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %201, label %70

70:                                               ; preds = %67
  %71 = call fastcc ptr @split_directories(ptr noundef nonnull %68, ptr noundef nonnull %5) #13
  call void @free(ptr noundef nonnull %68) #13
  %72 = icmp eq ptr %71, null
  br i1 %72, label %201, label %73

73:                                               ; preds = %70
  %74 = call fastcc ptr @split_directories(ptr noundef %1, ptr noundef nonnull %6) #13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %198, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %5, align 4, !tbaa !9
  %78 = add nsw i32 %77, -1
  store i32 %78, ptr %5, align 4, !tbaa !9
  %79 = load i32, ptr %6, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %76
  %82 = icmp sgt i32 %77, 1
  br i1 %82, label %83, label %198

83:                                               ; preds = %81
  %84 = zext nneg i32 %78 to i64
  br label %85

85:                                               ; preds = %83, %93
  %86 = phi i64 [ 0, %83 ], [ %94, %93 ]
  %87 = getelementptr inbounds ptr, ptr %71, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !11
  %89 = getelementptr inbounds ptr, ptr %74, i64 %86
  %90 = load ptr, ptr %89, align 8, !tbaa !11
  %91 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(1) %90) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = add nuw nsw i64 %86, 1
  %95 = icmp eq i64 %94, %84
  br i1 %95, label %198, label %85, !llvm.loop !13

96:                                               ; preds = %85
  %97 = trunc i64 %86 to i32
  %98 = icmp eq i32 %78, %97
  br i1 %98, label %198, label %99

99:                                               ; preds = %96, %76
  %100 = call fastcc ptr @split_directories(ptr noundef %2, ptr noundef nonnull %7) #13
  %101 = icmp eq ptr %100, null
  br i1 %101, label %198, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %7, align 4
  %104 = load i32, ptr %6, align 4
  %105 = call i32 @llvm.smin.i32(i32 %103, i32 %104)
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %198

107:                                              ; preds = %102
  %108 = zext nneg i32 %105 to i64
  br label %109

109:                                              ; preds = %107, %117
  %110 = phi i64 [ 0, %107 ], [ %118, %117 ]
  %111 = getelementptr inbounds ptr, ptr %74, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !11
  %113 = getelementptr inbounds ptr, ptr %100, i64 %110
  %114 = load ptr, ptr %113, align 8, !tbaa !11
  %115 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %112, ptr noundef nonnull dereferenceable(1) %114) #13
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = add nuw nsw i64 %110, 1
  %119 = icmp eq i64 %118, %108
  br i1 %119, label %122, label %109, !llvm.loop !15

120:                                              ; preds = %109
  %121 = trunc i64 %110 to i32
  br label %122

122:                                              ; preds = %117, %120
  %123 = phi i32 [ %121, %120 ], [ %105, %117 ]
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %198, label %125

125:                                              ; preds = %122
  %126 = load i32, ptr %5, align 4, !tbaa !9
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %125
  %129 = zext nneg i32 %126 to i64
  br label %130

130:                                              ; preds = %128, %130
  %131 = phi i64 [ 0, %128 ], [ %138, %130 ]
  %132 = phi i32 [ 0, %128 ], [ %137, %130 ]
  %133 = getelementptr inbounds ptr, ptr %71, i64 %131
  %134 = load ptr, ptr %133, align 8, !tbaa !11
  %135 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %134) #13
  %136 = trunc i64 %135 to i32
  %137 = add i32 %132, %136
  %138 = add nuw nsw i64 %131, 1
  %139 = icmp eq i64 %138, %129
  br i1 %139, label %140, label %130, !llvm.loop !16

140:                                              ; preds = %130, %125
  %141 = phi i32 [ 0, %125 ], [ %137, %130 ]
  %142 = sub nsw i32 %104, %123
  %143 = mul i32 %142, 3
  %144 = add i32 %141, %143
  %145 = icmp slt i32 %123, %103
  br i1 %145, label %146, label %159

146:                                              ; preds = %140
  %147 = zext i32 %123 to i64
  br label %148

148:                                              ; preds = %146, %148
  %149 = phi i64 [ %147, %146 ], [ %156, %148 ]
  %150 = phi i32 [ %144, %146 ], [ %155, %148 ]
  %151 = getelementptr inbounds ptr, ptr %100, i64 %149
  %152 = load ptr, ptr %151, align 8, !tbaa !11
  %153 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %152) #13
  %154 = trunc i64 %153 to i32
  %155 = add i32 %150, %154
  %156 = add nuw nsw i64 %149, 1
  %157 = trunc i64 %156 to i32
  %158 = icmp sgt i32 %103, %157
  br i1 %158, label %148, label %159, !llvm.loop !17

159:                                              ; preds = %148, %140
  %160 = phi i32 [ %144, %140 ], [ %155, %148 ]
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = call ptr @malloc(i64 noundef %162) #16
  %164 = icmp eq ptr %163, null
  br i1 %164, label %198, label %165

165:                                              ; preds = %159
  store i8 0, ptr %163, align 1, !tbaa !6
  br i1 %127, label %166, label %175

166:                                              ; preds = %165
  %167 = zext nneg i32 %126 to i64
  br label %168

168:                                              ; preds = %166, %168
  %169 = phi i64 [ 0, %166 ], [ %173, %168 ]
  %170 = getelementptr inbounds ptr, ptr %71, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !11
  %172 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(1) %171) #13
  %173 = add nuw nsw i64 %169, 1
  %174 = icmp eq i64 %173, %167
  br i1 %174, label %175, label %168, !llvm.loop !18

175:                                              ; preds = %168, %165
  %176 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %163) #13
  %177 = getelementptr inbounds i8, ptr %163, i64 %176
  %178 = icmp slt i32 %123, %104
  br i1 %178, label %179, label %186

179:                                              ; preds = %175, %179
  %180 = phi ptr [ %183, %179 ], [ %177, %175 ]
  %181 = phi i32 [ %184, %179 ], [ %123, %175 ]
  store i16 11822, ptr %180, align 1
  %182 = getelementptr inbounds i8, ptr %180, i64 2
  %183 = getelementptr inbounds i8, ptr %180, i64 3
  store i8 47, ptr %182, align 1, !tbaa !6
  %184 = add nuw nsw i32 %181, 1
  %185 = icmp eq i32 %184, %104
  br i1 %185, label %186, label %179, !llvm.loop !19

186:                                              ; preds = %179, %175
  %187 = phi ptr [ %177, %175 ], [ %183, %179 ]
  store i8 0, ptr %187, align 1, !tbaa !6
  br i1 %145, label %188, label %198

188:                                              ; preds = %186
  %189 = zext i32 %123 to i64
  br label %190

190:                                              ; preds = %188, %190
  %191 = phi i64 [ %189, %188 ], [ %195, %190 ]
  %192 = getelementptr inbounds ptr, ptr %100, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !11
  %194 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(1) %193) #13
  %195 = add nuw nsw i64 %191, 1
  %196 = trunc i64 %195 to i32
  %197 = icmp sgt i32 %103, %196
  br i1 %197, label %190, label %198, !llvm.loop !20

198:                                              ; preds = %93, %190, %102, %81, %186, %159, %122, %99, %96, %73
  %199 = phi ptr [ null, %73 ], [ null, %96 ], [ null, %99 ], [ %100, %122 ], [ %100, %159 ], [ %100, %186 ], [ null, %81 ], [ %100, %102 ], [ %100, %190 ], [ null, %93 ]
  %200 = phi ptr [ null, %73 ], [ null, %96 ], [ null, %99 ], [ null, %122 ], [ null, %159 ], [ %163, %186 ], [ null, %81 ], [ null, %102 ], [ %163, %190 ], [ null, %93 ]
  call fastcc void @free_split_directories(ptr noundef nonnull %71) #13
  call fastcc void @free_split_directories(ptr noundef %74) #13
  call fastcc void @free_split_directories(ptr noundef %199) #13
  br label %201

201:                                              ; preds = %70, %67, %4, %198
  %202 = phi ptr [ %200, %198 ], [ null, %4 ], [ null, %67 ], [ null, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret ptr %202
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @lbasename(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @lrealpath(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @split_directories(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %15, %2
  %4 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %5 = phi ptr [ %11, %15 ], [ %0, %2 ]
  br label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %5, %3 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = load i8, ptr %7, align 1, !tbaa !6
  switch i8 %9, label %6 [
    i8 0, label %17
    i8 47, label %10
  ], !llvm.loop !21

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %6 ]
  %12 = load i8, ptr %11, align 1, !tbaa !6
  %13 = icmp eq i8 %12, 47
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  br i1 %13, label %10, label %15, !llvm.loop !22

15:                                               ; preds = %10
  %16 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !21

17:                                               ; preds = %6
  %18 = add nuw nsw i32 %4, 2
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 3
  %21 = tail call ptr @malloc(i64 noundef %20) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %82, label %23

23:                                               ; preds = %17
  %24 = load i8, ptr %0, align 1, !tbaa !6
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %57, label %26

26:                                               ; preds = %23, %51
  %27 = phi i8 [ %55, %51 ], [ %24, %23 ]
  %28 = phi ptr [ %54, %51 ], [ %0, %23 ]
  %29 = phi ptr [ %53, %51 ], [ %0, %23 ]
  %30 = phi i32 [ %52, %51 ], [ 0, %23 ]
  %31 = getelementptr inbounds i8, ptr %29, i64 1
  %32 = icmp eq i8 %27, 47
  br i1 %32, label %33, label %51

33:                                               ; preds = %26, %33
  %34 = phi ptr [ %37, %33 ], [ %31, %26 ]
  %35 = load i8, ptr %34, align 1, !tbaa !6
  %36 = icmp eq i8 %35, 47
  %37 = getelementptr inbounds i8, ptr %34, i64 1
  br i1 %36, label %33, label %38, !llvm.loop !23

38:                                               ; preds = %33
  %39 = ptrtoint ptr %34 to i64
  %40 = ptrtoint ptr %28 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = tail call fastcc ptr @save_string(ptr noundef %28, i32 noundef %42) #13
  %44 = add nsw i32 %30, 1
  %45 = sext i32 %30 to i64
  %46 = getelementptr inbounds ptr, ptr %21, i64 %45
  store ptr %43, ptr %46, align 8, !tbaa !11
  %47 = icmp eq ptr %43, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = sext i32 %44 to i64
  %50 = getelementptr inbounds ptr, ptr %21, i64 %49
  store ptr null, ptr %50, align 8, !tbaa !11
  tail call fastcc void @free_split_directories(ptr noundef nonnull %21) #13
  br label %82

51:                                               ; preds = %38, %26
  %52 = phi i32 [ %30, %26 ], [ %44, %38 ]
  %53 = phi ptr [ %31, %26 ], [ %34, %38 ]
  %54 = phi ptr [ %28, %26 ], [ %34, %38 ]
  %55 = load i8, ptr %53, align 1, !tbaa !6
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %26, !llvm.loop !24

57:                                               ; preds = %51, %23
  %58 = phi i32 [ 0, %23 ], [ %52, %51 ]
  %59 = phi ptr [ %0, %23 ], [ %53, %51 ]
  %60 = phi ptr [ %0, %23 ], [ %54, %51 ]
  %61 = ptrtoint ptr %59 to i64
  %62 = ptrtoint ptr %60 to i64
  %63 = sub i64 %61, %62
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = trunc i64 %63 to i32
  %67 = tail call fastcc ptr @save_string(ptr noundef %60, i32 noundef %66) #13
  %68 = add nsw i32 %58, 1
  %69 = sext i32 %58 to i64
  %70 = getelementptr inbounds ptr, ptr %21, i64 %69
  store ptr %67, ptr %70, align 8, !tbaa !11
  br label %71

71:                                               ; preds = %65, %57
  %72 = phi i32 [ %68, %65 ], [ %58, %57 ]
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %21, i64 %73
  store ptr null, ptr %74, align 8, !tbaa !11
  %75 = getelementptr ptr, ptr %74, i64 -1
  %76 = load ptr, ptr %75, align 8, !tbaa !11
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  tail call fastcc void @free_split_directories(ptr noundef nonnull %21) #13
  br label %82

79:                                               ; preds = %71
  %80 = icmp eq ptr %1, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %79
  store i32 %72, ptr %1, align 4, !tbaa !9
  br label %82

82:                                               ; preds = %79, %81, %17, %78, %48
  %83 = phi ptr [ null, %48 ], [ null, %78 ], [ null, %17 ], [ %21, %81 ], [ %21, %79 ]
  ret ptr %83
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_split_directories(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ %9, %6 ], [ 0, %3 ]
  %8 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %9 = add nuw nsw i64 %7, 1
  tail call void @free(ptr noundef nonnull %8) #13
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !25

13:                                               ; preds = %6, %3
  tail call void @free(ptr noundef nonnull %0) #13
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc noalias noundef ptr @save_string(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @malloc(i64 noundef %4) #16
  %6 = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %0, i64 %6, i1 false)
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  store i8 0, ptr %7, align 1, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_relative_prefix_ignore_links(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @make_relative_prefix_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #13
  ret ptr %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
