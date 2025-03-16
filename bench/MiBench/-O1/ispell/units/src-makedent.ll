; ModuleID = 'src/makedent.c'
source_filename = "src/makedent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.dent = type { ptr, ptr, [1 x i64] }
%struct.strchartype = type { ptr, ptr, ptr }

@hashheader = external global %struct.hashheader, align 4
@cbench_print = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"src/makedent.c\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\0D\0AWord '%s' contains illegal characters\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\0D\0ACouldn't allocate space for word '%s'\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\0D\0AIllegal affix flag character '%c'\0D\0A\00", align 1
@defdupchar = external local_unnamed_addr global i32, align 4
@laststringch = external local_unnamed_addr global i32, align 4
@strtosichar.out = internal global [184 x i8] zeroinitializer, align 16
@ichartosstr.out = internal global [184 x i8] zeroinitializer, align 16
@printichar.out = internal global [11 x i8] zeroinitializer, align 1
@chartypes = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@has_marker = internal unnamed_addr global i1 false, align 4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @makedent(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #15
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %6 = shl i64 %5, 32
  %7 = add i64 %6, -4294967296
  %8 = ashr exact i64 %7, 32
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8 0, ptr %9, align 1, !tbaa !5
  br label %13

13:                                               ; preds = %12, %3
  store ptr null, ptr %2, align 8, !tbaa !8
  %14 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  store i64 67108864, ptr %14, align 8, !tbaa !11
  %15 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !13
  %16 = sext i8 %15 to i32
  %17 = tail call ptr @index(ptr noundef %0, i32 noundef %16) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i8 0, ptr %17, align 1, !tbaa !5
  br label %20

20:                                               ; preds = %19, %13
  %21 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 100, i32 noundef 1), !range !17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %20
  %24 = icmp sgt i32 %1, 1
  br i1 %24, label %25, label %61

25:                                               ; preds = %23
  %26 = add nsw i32 %1, -2
  %27 = zext i32 %26 to i64
  %28 = getelementptr i8, ptr %4, i64 %27
  br label %29

29:                                               ; preds = %25, %53
  %30 = phi ptr [ %54, %53 ], [ %0, %25 ]
  %31 = phi i32 [ %33, %53 ], [ %1, %25 ]
  %32 = phi ptr [ %34, %53 ], [ %4, %25 ]
  %33 = add nsw i32 %31, -1
  %34 = getelementptr inbounds i8, ptr %32, i64 1
  %35 = load i8, ptr %32, align 1, !tbaa !5
  %36 = zext i8 %35 to i64
  %37 = icmp eq i8 %35, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %29
  %39 = icmp sgt i8 %35, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %35, ptr %30, align 1, !tbaa !5
  br label %53

42:                                               ; preds = %38
  %43 = add nuw nsw i64 %36, 4294967168
  %44 = and i64 %43, 4294967295
  %45 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %44
  br label %46

46:                                               ; preds = %46, %42
  %47 = phi ptr [ %30, %42 ], [ %51, %46 ]
  %48 = phi ptr [ %45, %42 ], [ %49, %46 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = load i8, ptr %48, align 1, !tbaa !5
  %51 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %50, ptr %47, align 1, !tbaa !5
  %52 = icmp eq i8 %50, 0
  br i1 %52, label %53, label %46, !llvm.loop !18

53:                                               ; preds = %46, %40
  %54 = phi ptr [ %41, %40 ], [ %47, %46 ]
  %55 = icmp eq ptr %32, %28
  br i1 %55, label %56, label %29, !llvm.loop !20

56:                                               ; preds = %53, %29
  %57 = phi i32 [ %31, %29 ], [ 1, %53 ]
  %58 = phi ptr [ %30, %29 ], [ %54, %53 ]
  %59 = icmp slt i32 %57, 2
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %23, %56
  %62 = phi i32 [ 1, %23 ], [ %60, %56 ]
  %63 = phi ptr [ %0, %23 ], [ %58, %56 ]
  store i8 0, ptr %63, align 1, !tbaa !5
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i8, ptr %4, align 16, !tbaa !5
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %101, label %74

68:                                               ; preds = %61, %20
  %69 = load i32, ptr @cbench_print, align 4, !tbaa !21
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %217, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr @stderr, align 8, !tbaa !22
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str, ptr noundef %0, i32 noundef 156, ptr noundef nonnull @.str.1) #17
  br label %217

74:                                               ; preds = %65, %97
  %75 = phi i8 [ %99, %97 ], [ %66, %65 ]
  %76 = phi ptr [ %98, %97 ], [ %4, %65 ]
  %77 = zext i8 %75 to i64
  %78 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !5
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %77
  %83 = load i8, ptr %82, align 1, !tbaa !5
  %84 = icmp eq i8 %83, 0
  %85 = icmp eq ptr %76, %4
  %86 = or i1 %85, %84
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds i8, ptr %76, i64 1
  %89 = load i8, ptr %88, align 1, !tbaa !5
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87, %81
  %92 = load i32, ptr @cbench_print, align 4, !tbaa !21
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %217, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr @stderr, align 8, !tbaa !22
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.2, ptr noundef %0) #17
  br label %217

97:                                               ; preds = %74, %87
  %98 = getelementptr inbounds i8, ptr %76, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !5
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %74, !llvm.loop !23

101:                                              ; preds = %97, %65
  %102 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %103 = trunc i64 %102 to i32
  %104 = load i8, ptr %4, align 16, !tbaa !5
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %159, label %106

106:                                              ; preds = %101
  %107 = zext i8 %104 to i64
  %108 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !5
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %116, label %121

111:                                              ; preds = %116
  %112 = zext i8 %119 to i64
  %113 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %121, !llvm.loop !24

116:                                              ; preds = %106, %111
  %117 = phi ptr [ %118, %111 ], [ %4, %106 ]
  %118 = getelementptr inbounds i8, ptr %117, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !5
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %159, label %111, !llvm.loop !24

121:                                              ; preds = %111, %106
  %122 = phi i1 [ %105, %106 ], [ %120, %111 ]
  %123 = phi ptr [ %4, %106 ], [ %118, %111 ]
  br i1 %122, label %159, label %124

124:                                              ; preds = %121
  %125 = load i8, ptr %123, align 1, !tbaa !5
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %144, label %127

127:                                              ; preds = %124
  %128 = zext i8 %125 to i64
  %129 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !5
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %127, %137
  %133 = phi ptr [ %134, %137 ], [ %123, %127 ]
  %134 = getelementptr inbounds i8, ptr %133, i64 1
  %135 = load i8, ptr %134, align 1, !tbaa !5
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %144, label %137, !llvm.loop !25

137:                                              ; preds = %132
  %138 = zext i8 %135 to i64
  %139 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !5
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %132, label %142, !llvm.loop !25

142:                                              ; preds = %137, %127
  %143 = phi i1 [ %126, %127 ], [ %136, %137 ]
  br i1 %143, label %144, label %159

144:                                              ; preds = %132, %142, %124
  %145 = zext i8 %104 to i64
  %146 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !5
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %144, %154
  %150 = phi ptr [ %151, %154 ], [ %4, %144 ]
  %151 = getelementptr inbounds i8, ptr %150, i64 1
  %152 = load i8, ptr %151, align 1, !tbaa !5
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = zext i8 %152 to i64
  %156 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !5
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %149, label %159, !llvm.loop !26

159:                                              ; preds = %116, %149, %154, %101, %121, %142, %144
  %160 = phi i64 [ 268435456, %121 ], [ 0, %144 ], [ 805306368, %142 ], [ 268435456, %101 ], [ 805306368, %154 ], [ 536870912, %149 ], [ 268435456, %116 ]
  %161 = load i64, ptr %14, align 8, !tbaa !11
  %162 = or i64 %161, %160
  store i64 %162, ptr %14, align 8, !tbaa !11
  %163 = icmp sgt i32 %103, 99
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32, ptr @cbench_print, align 4, !tbaa !21
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %217, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr @stderr, align 8, !tbaa !22
  %169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef nonnull @.str, ptr noundef %0, i32 noundef 186, ptr noundef nonnull @.str.1) #17
  br label %217

170:                                              ; preds = %159
  %171 = add nsw i32 %103, 1
  %172 = call ptr @mymalloc(i32 noundef %171) #15
  %173 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  store ptr %172, ptr %173, align 8, !tbaa !27
  %174 = icmp eq ptr %172, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32, ptr @cbench_print, align 4, !tbaa !21
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %217, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr @stderr, align 8, !tbaa !22
  %180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %179, ptr noundef nonnull @.str.3, ptr noundef %0) #17
  br label %217

181:                                              ; preds = %170
  %182 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %172, ptr noundef nonnull dereferenceable(1) %0) #15
  %183 = load i64, ptr %14, align 8, !tbaa !11
  %184 = and i64 %183, 805306368
  %185 = icmp eq i64 %184, 805306368
  br i1 %185, label %188, label %186

186:                                              ; preds = %181
  %187 = load ptr, ptr %173, align 8, !tbaa !27
  call void @chupcase(ptr noundef %187)
  br label %188

188:                                              ; preds = %186, %181
  br i1 %18, label %217, label %189

189:                                              ; preds = %188
  %190 = getelementptr inbounds i8, ptr %17, i64 1
  br label %191

191:                                              ; preds = %210, %189
  %192 = phi ptr [ %190, %189 ], [ %216, %210 ]
  %193 = load i8, ptr %192, align 1, !tbaa !5
  switch i8 %193, label %194 [
    i8 0, label %217
    i8 10, label %217
  ]

194:                                              ; preds = %191
  %195 = zext i8 %193 to i32
  %196 = add i8 %193, -65
  %197 = icmp ult i8 %196, 27
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = add nsw i32 %195, -65
  %200 = zext nneg i32 %199 to i64
  %201 = shl nuw nsw i64 1, %200
  %202 = load i64, ptr %14, align 8, !tbaa !11
  %203 = or i64 %202, %201
  store i64 %203, ptr %14, align 8, !tbaa !11
  br label %210

204:                                              ; preds = %194
  %205 = load i32, ptr @cbench_print, align 4, !tbaa !21
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load ptr, ptr @stderr, align 8, !tbaa !22
  %209 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.4, i32 noundef %195) #17
  br label %210

210:                                              ; preds = %204, %207, %198
  %211 = getelementptr inbounds i8, ptr %192, i64 1
  %212 = load i8, ptr %211, align 1, !tbaa !5
  %213 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !13
  %214 = icmp eq i8 %212, %213
  %215 = getelementptr inbounds i8, ptr %192, i64 2
  %216 = select i1 %214, ptr %215, ptr %211
  br label %191, !llvm.loop !28

217:                                              ; preds = %191, %191, %188, %175, %178, %164, %167, %91, %94, %68, %71
  %218 = phi i32 [ -1, %71 ], [ -1, %68 ], [ -1, %94 ], [ -1, %91 ], [ -1, %167 ], [ -1, %164 ], [ -1, %178 ], [ -1, %175 ], [ 0, %188 ], [ 0, %191 ], [ 0, %191 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #15
  ret i32 %218
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @strtoichar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = icmp sgt i32 %2, 1
  br i1 %5, label %6, label %122

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  br label %8

8:                                                ; preds = %6, %110
  %9 = phi ptr [ %0, %6 ], [ %113, %110 ]
  %10 = phi i32 [ %2, %6 ], [ %12, %110 ]
  %11 = phi ptr [ %1, %6 ], [ %115, %110 ]
  %12 = add nsw i32 %10, -1
  %13 = load i8, ptr %11, align 1, !tbaa !5
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %117, label %15

15:                                               ; preds = %8
  %16 = zext i8 %13 to i64
  %17 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %106, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !29
  %22 = load i32, ptr @defdupchar, align 4
  %23 = select i1 %7, i32 %22, i32 0
  %24 = icmp slt i32 %21, 1
  br i1 %24, label %97, label %25

25:                                               ; preds = %20
  %26 = add nsw i32 %21, -1
  %27 = getelementptr inbounds i8, ptr %11, i64 1
  br label %28

28:                                               ; preds = %93, %25
  %29 = phi i32 [ %95, %93 ], [ %26, %25 ]
  %30 = phi i32 [ %94, %93 ], [ 0, %25 ]
  %31 = add nsw i32 %30, %29
  %32 = ashr i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %28
  %38 = load i8, ptr %11, align 1, !tbaa !5
  %39 = xor i8 %38, %35
  %40 = and i8 %39, 127
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %54

42:                                               ; preds = %48
  %43 = getelementptr inbounds i8, ptr %49, i64 1
  %44 = load i8, ptr %49, align 1, !tbaa !5
  %45 = xor i8 %44, %52
  %46 = and i8 %45, 127
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %54, !llvm.loop !30

48:                                               ; preds = %37, %42
  %49 = phi ptr [ %43, %42 ], [ %27, %37 ]
  %50 = phi ptr [ %51, %42 ], [ %34, %37 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %42, !llvm.loop !30

54:                                               ; preds = %42, %48, %37, %28
  %55 = phi ptr [ %34, %28 ], [ %34, %37 ], [ %51, %48 ], [ %51, %42 ]
  %56 = phi i1 [ %36, %28 ], [ %36, %37 ], [ %53, %48 ], [ %53, %42 ]
  %57 = phi ptr [ %11, %28 ], [ %27, %37 ], [ %43, %42 ], [ %49, %48 ]
  br i1 %56, label %58, label %71

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %33
  %60 = load i32, ptr %59, align 4, !tbaa !21
  %61 = icmp eq i32 %60, %23
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 29, i64 %33
  %64 = load i32, ptr %63, align 4, !tbaa !21
  store i32 %64, ptr @laststringch, align 4, !tbaa !21
  %65 = ptrtoint ptr %55 to i64
  %66 = ptrtoint ptr %34 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  br label %98

69:                                               ; preds = %58
  %70 = getelementptr inbounds i8, ptr %55, i64 -1
  br label %71

71:                                               ; preds = %69, %54
  %72 = phi ptr [ %70, %69 ], [ %55, %54 ]
  %73 = getelementptr inbounds i8, ptr %57, i64 -1
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = and i8 %74, 127
  %76 = load i8, ptr %72, align 1, !tbaa !5
  %77 = and i8 %76, 127
  %78 = icmp ult i8 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = add nsw i32 %32, -1
  br label %93

81:                                               ; preds = %71
  %82 = icmp ugt i8 %75, %77
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = add nsw i32 %32, 1
  br label %93

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %33
  %87 = load i32, ptr %86, align 4, !tbaa !21
  %88 = icmp slt i32 %23, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = add nsw i32 %32, -1
  br label %93

91:                                               ; preds = %85
  %92 = add nsw i32 %32, 1
  br label %93

93:                                               ; preds = %91, %89, %83, %79
  %94 = phi i32 [ %30, %79 ], [ %84, %83 ], [ %30, %89 ], [ %92, %91 ]
  %95 = phi i32 [ %80, %79 ], [ %29, %83 ], [ %90, %89 ], [ %29, %91 ]
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %28, !llvm.loop !31

97:                                               ; preds = %93, %20
  store i32 -1, ptr @laststringch, align 4, !tbaa !21
  br label %98

98:                                               ; preds = %62, %97
  %99 = phi i32 [ %68, %62 ], [ 0, %97 ]
  %100 = icmp sgt i32 %99, 0
  %101 = select i1 %100, i32 %99, i32 1
  br i1 %100, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, ptr @laststringch, align 4, !tbaa !21
  %104 = trunc i32 %103 to i8
  %105 = xor i8 %104, -128
  br label %110

106:                                              ; preds = %15, %98
  %107 = phi i32 [ %101, %98 ], [ 1, %15 ]
  %108 = load i8, ptr %11, align 1, !tbaa !5
  %109 = and i8 %108, 127
  br label %110

110:                                              ; preds = %102, %106
  %111 = phi i8 [ %109, %106 ], [ %105, %102 ]
  %112 = phi i32 [ %107, %106 ], [ %101, %102 ]
  %113 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 %111, ptr %9, align 1, !tbaa !5
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, ptr %11, i64 %114
  %116 = icmp sgt i32 %10, 2
  br i1 %116, label %8, label %117, !llvm.loop !32

117:                                              ; preds = %110, %8
  %118 = phi i32 [ %10, %8 ], [ 1, %110 ]
  %119 = phi ptr [ %9, %8 ], [ %113, %110 ]
  %120 = icmp slt i32 %118, 2
  %121 = zext i1 %120 to i32
  br label %122

122:                                              ; preds = %117, %4
  %123 = phi i32 [ 1, %4 ], [ %121, %117 ]
  %124 = phi ptr [ %0, %4 ], [ %119, %117 ]
  store i8 0, ptr %124, align 1, !tbaa !5
  ret i32 %123
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @ichartostr(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = icmp sgt i32 %2, 1
  br i1 %5, label %6, label %62

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  br label %8

8:                                                ; preds = %6, %54
  %9 = phi ptr [ %0, %6 ], [ %55, %54 ]
  %10 = phi i32 [ %2, %6 ], [ %12, %54 ]
  %11 = phi ptr [ %1, %6 ], [ %13, %54 ]
  %12 = add nsw i32 %10, -1
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  %14 = load i8, ptr %11, align 1, !tbaa !5
  %15 = zext i8 %14 to i32
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %8
  %18 = icmp sgt i8 %14, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 %14, ptr %9, align 1, !tbaa !5
  br label %54

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -128
  br i1 %7, label %23, label %43

23:                                               ; preds = %21
  %24 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !29
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i32, ptr @defdupchar, align 4, !tbaa !21
  %28 = zext nneg i32 %24 to i64
  br label %29

29:                                               ; preds = %26, %39
  %30 = phi i64 [ %28, %26 ], [ %31, %39 ]
  %31 = add nsw i64 %30, -1
  %32 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !21
  %34 = icmp eq i32 %33, %27
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 29, i64 %31
  %37 = load i32, ptr %36, align 4, !tbaa !21
  %38 = icmp eq i32 %37, %22
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %29
  %40 = icmp sgt i64 %30, 1
  br i1 %40, label %29, label %43, !llvm.loop !33

41:                                               ; preds = %35
  %42 = trunc i64 %31 to i32
  br label %43

43:                                               ; preds = %41, %39, %23, %21
  %44 = phi i32 [ %22, %21 ], [ %22, %23 ], [ %42, %41 ], [ %22, %39 ]
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %45
  br label %47

47:                                               ; preds = %47, %43
  %48 = phi ptr [ %9, %43 ], [ %52, %47 ]
  %49 = phi ptr [ %46, %43 ], [ %50, %47 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  %51 = load i8, ptr %49, align 1, !tbaa !5
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %51, ptr %48, align 1, !tbaa !5
  %53 = icmp eq i8 %51, 0
  br i1 %53, label %54, label %47, !llvm.loop !18

54:                                               ; preds = %47, %19
  %55 = phi ptr [ %20, %19 ], [ %48, %47 ]
  %56 = icmp sgt i32 %10, 2
  br i1 %56, label %8, label %57, !llvm.loop !20

57:                                               ; preds = %54, %8
  %58 = phi i32 [ %10, %8 ], [ 1, %54 ]
  %59 = phi ptr [ %9, %8 ], [ %55, %54 ]
  %60 = icmp slt i32 %58, 2
  %61 = zext i1 %60 to i32
  br label %62

62:                                               ; preds = %57, %4
  %63 = phi i32 [ 1, %4 ], [ %61, %57 ]
  %64 = phi ptr [ %0, %4 ], [ %59, %57 ]
  store i8 0, ptr %64, align 1, !tbaa !5
  ret i32 %63
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @whatcap(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load i8, ptr %0, align 1, !tbaa !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %58, label %4

4:                                                ; preds = %1
  %5 = zext i8 %2 to i64
  %6 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %19

9:                                                ; preds = %14
  %10 = zext i8 %17 to i64
  %11 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19, !llvm.loop !24

14:                                               ; preds = %4, %9
  %15 = phi ptr [ %16, %9 ], [ %0, %4 ]
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %58, label %9, !llvm.loop !24

19:                                               ; preds = %9, %4
  %20 = phi i1 [ %3, %4 ], [ %18, %9 ]
  %21 = phi ptr [ %0, %4 ], [ %16, %9 ]
  br i1 %20, label %58, label %22

22:                                               ; preds = %19
  %23 = load i8, ptr %21, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = zext i8 %23 to i64
  %27 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !5
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25, %35
  %31 = phi ptr [ %32, %35 ], [ %21, %25 ]
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !5
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %42, label %35, !llvm.loop !25

35:                                               ; preds = %30
  %36 = zext i8 %33 to i64
  %37 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %30, label %40, !llvm.loop !25

40:                                               ; preds = %35, %25
  %41 = phi i1 [ %24, %25 ], [ %34, %35 ]
  br i1 %41, label %42, label %58

42:                                               ; preds = %30, %22, %40
  %43 = load i8, ptr %0, align 1, !tbaa !5
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %42, %53
  %49 = phi ptr [ %50, %53 ], [ %0, %42 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !5
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = zext i8 %51 to i64
  %55 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !5
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %48, label %58, !llvm.loop !26

58:                                               ; preds = %14, %48, %53, %1, %40, %42, %19
  %59 = phi i64 [ 268435456, %19 ], [ 0, %42 ], [ 805306368, %40 ], [ 268435456, %1 ], [ 805306368, %53 ], [ 536870912, %48 ], [ 268435456, %14 ]
  ret i64 %59
}

declare ptr @mymalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define dso_local void @chupcase(ptr noundef %0) local_unnamed_addr #9 {
  %2 = tail call i32 @strtoichar(ptr noundef nonnull @strtosichar.out, ptr noundef %0, i32 noundef 184, i32 noundef 1), !range !17
  %3 = icmp ne i32 %2, 0
  %4 = load i32, ptr @cbench_print, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @stderr, align 8, !tbaa !22
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef %0, i32 noundef 942, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = load i8, ptr @strtosichar.out, align 16, !tbaa !5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10, %13
  %14 = phi i8 [ %20, %13 ], [ %11, %10 ]
  %15 = phi ptr [ %19, %13 ], [ @strtosichar.out, %10 ]
  %16 = zext i8 %14 to i64
  %17 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !5
  store i8 %18, ptr %15, align 1, !tbaa !5
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %13, !llvm.loop !34

22:                                               ; preds = %13, %10
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %24 = trunc i64 %23 to i32
  %25 = add i32 %24, 1
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %56

27:                                               ; preds = %22
  %28 = add i64 %23, 4294967295
  %29 = and i64 %28, 4294967295
  %30 = getelementptr i8, ptr @strtosichar.out, i64 %29
  br label %31

31:                                               ; preds = %27, %53
  %32 = phi ptr [ %54, %53 ], [ %0, %27 ]
  %33 = phi ptr [ %34, %53 ], [ @strtosichar.out, %27 ]
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  %35 = load i8, ptr %33, align 1, !tbaa !5
  %36 = zext i8 %35 to i64
  %37 = icmp eq i8 %35, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %31
  %39 = icmp sgt i8 %35, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 %35, ptr %32, align 1, !tbaa !5
  br label %53

42:                                               ; preds = %38
  %43 = add nuw nsw i64 %36, 4294967168
  %44 = and i64 %43, 4294967295
  %45 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %44
  br label %46

46:                                               ; preds = %46, %42
  %47 = phi ptr [ %32, %42 ], [ %51, %46 ]
  %48 = phi ptr [ %45, %42 ], [ %49, %46 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = load i8, ptr %48, align 1, !tbaa !5
  %51 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %50, ptr %47, align 1, !tbaa !5
  %52 = icmp eq i8 %50, 0
  br i1 %52, label %53, label %46, !llvm.loop !18

53:                                               ; preds = %46, %40
  %54 = phi ptr [ %41, %40 ], [ %47, %46 ]
  %55 = icmp eq ptr %33, %30
  br i1 %55, label %56, label %31, !llvm.loop !20

56:                                               ; preds = %31, %53, %22
  %57 = phi ptr [ %0, %22 ], [ %32, %31 ], [ %54, %53 ]
  store i8 0, ptr %57, align 1, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @addvheader(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @mymalloc(i32 noundef 24) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = load i32, ptr @cbench_print, align 4, !tbaa !21
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef %10) #17
  br label %46

12:                                               ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !35
  %13 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !11
  %15 = and i64 %14, 805306368
  %16 = icmp eq i64 %15, 805306368
  %17 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  br i1 %16, label %19, label %18

18:                                               ; preds = %12
  store ptr null, ptr %17, align 8, !tbaa !27
  br label %39

19:                                               ; preds = %12
  %20 = load ptr, ptr %17, align 8, !tbaa !27
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #16
  %22 = trunc i64 %21 to i32
  %23 = add i32 %22, 1
  %24 = tail call ptr @mymalloc(i32 noundef %23) #15
  store ptr %24, ptr %17, align 8, !tbaa !27
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load i32, ptr @cbench_print, align 4, !tbaa !21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @stderr, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !27
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.3, ptr noundef %32) #17
  br label %34

34:                                               ; preds = %29, %26
  tail call void @myfree(ptr noundef nonnull %2) #15
  br label %46

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !27
  %38 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %37) #15
  br label %39

39:                                               ; preds = %35, %18
  %40 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !27
  tail call void @chupcase(ptr noundef %41)
  store ptr %2, ptr %0, align 8, !tbaa !8
  %42 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !11
  %44 = and i64 %43, -1879048193
  %45 = or disjoint i64 %44, 1342177280
  store i64 %45, ptr %42, align 8, !tbaa !11
  br label %46

46:                                               ; preds = %4, %7, %39, %34
  %47 = phi i32 [ 0, %39 ], [ -1, %34 ], [ -1, %7 ], [ -1, %4 ]
  ret i32 %47
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare void @myfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @combinecaps(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !11
  %5 = and i64 %4, 1879048192
  %6 = icmp eq i64 %5, 1342177280
  br i1 %6, label %7, label %17

7:                                                ; preds = %2, %13
  %8 = phi ptr [ %14, %13 ], [ %0, %2 ]
  %9 = getelementptr inbounds %struct.dent, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !11
  %11 = and i64 %10, 1073741824
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %8, align 8, !tbaa !8
  %15 = tail call fastcc i32 @combine_two_entries(ptr noundef %0, ptr noundef %14, ptr noundef %1), !range !17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %7, label %19, !llvm.loop !36

17:                                               ; preds = %2
  %18 = tail call fastcc i32 @combine_two_entries(ptr noundef %0, ptr noundef %0, ptr noundef %1), !range !17
  br label %19

19:                                               ; preds = %7, %13, %17
  %20 = phi ptr [ %0, %17 ], [ %14, %13 ], [ %8, %7 ]
  %21 = phi i32 [ %18, %17 ], [ %15, %13 ], [ 0, %7 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %19
  %24 = load i64, ptr %3, align 8, !tbaa !11
  %25 = and i64 %24, 1879048192
  switch i64 %25, label %36 [
    i64 268435456, label %26
    i64 1342177280, label %38
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.dent, ptr %20, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !11
  %31 = xor i64 %30, %28
  %32 = and i64 %31, 134217728
  %33 = icmp eq i64 %32, 0
  %34 = icmp eq i64 %25, 1342177280
  %35 = or i1 %34, %33
  br i1 %35, label %38, label %36

36:                                               ; preds = %26, %23
  %37 = tail call i32 @addvheader(ptr noundef %0), !range !37
  br label %38

38:                                               ; preds = %23, %26, %36
  %39 = tail call ptr @mymalloc(i32 noundef 24) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, ptr @cbench_print, align 4, !tbaa !21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %76, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @stderr, align 8, !tbaa !22
  %46 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !27
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.3, ptr noundef %47) #17
  br label %76

49:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !35
  %50 = load ptr, ptr %0, align 8, !tbaa !8
  store ptr %50, ptr %39, align 8, !tbaa !8
  store ptr %39, ptr %0, align 8, !tbaa !8
  %51 = load i64, ptr %3, align 8, !tbaa !11
  %52 = and i64 %51, 1073741824
  %53 = getelementptr inbounds %struct.dent, ptr %39, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !11
  %55 = or i64 %54, %52
  store i64 %55, ptr %53, align 8, !tbaa !11
  %56 = load i64, ptr %3, align 8, !tbaa !11
  %57 = or i64 %56, 1073741824
  store i64 %57, ptr %3, align 8, !tbaa !11
  %58 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !11
  %60 = and i64 %59, -2080374785
  %61 = or i64 %60, %57
  store i64 %61, ptr %3, align 8, !tbaa !11
  %62 = load i64, ptr %58, align 8, !tbaa !11
  %63 = and i64 %62, 134217728
  %64 = or i64 %63, %61
  store i64 %64, ptr %3, align 8, !tbaa !11
  %65 = load i64, ptr %58, align 8, !tbaa !11
  %66 = and i64 %65, 805306368
  %67 = icmp eq i64 %66, 805306368
  br i1 %67, label %68, label %72

68:                                               ; preds = %49
  %69 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !27
  %71 = getelementptr inbounds %struct.dent, ptr %39, i64 0, i32 1
  store ptr %70, ptr %71, align 8, !tbaa !27
  br label %76

72:                                               ; preds = %49
  %73 = getelementptr inbounds %struct.dent, ptr %39, i64 0, i32 1
  store ptr null, ptr %73, align 8, !tbaa !27
  %74 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !27
  tail call void @myfree(ptr noundef %75) #15
  br label %76

76:                                               ; preds = %19, %72, %68, %41, %44
  %77 = phi i32 [ -1, %44 ], [ -1, %41 ], [ %21, %68 ], [ %21, %72 ], [ %21, %19 ]
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @combine_two_entries(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !11
  %8 = xor i64 %7, -1
  %9 = and i64 %5, -2080374785
  %10 = and i64 %9, %8
  %11 = icmp eq i64 %10, 0
  %12 = xor i64 %7, %5
  %13 = and i64 %12, 134217728
  br i1 %11, label %14, label %19

14:                                               ; preds = %3
  %15 = icmp ne i64 %13, 0
  %16 = and i64 %7, 134217728
  %17 = icmp eq i64 %16, 0
  %18 = and i1 %17, %15
  br i1 %18, label %58, label %21

19:                                               ; preds = %3
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %19, %14
  %22 = xor i64 %7, %5
  %23 = and i64 %22, 805306368
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = and i64 %7, 805306368
  %27 = icmp eq i64 %26, 805306368
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !27
  %31 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !27
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %32) #16
  %34 = icmp eq i32 %33, 0
  br label %44

35:                                               ; preds = %21
  br i1 %11, label %36, label %58

36:                                               ; preds = %35
  %37 = and i64 %5, 805306368
  %38 = icmp eq i64 %37, 268435456
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = and i64 %7, 805306368
  %41 = icmp eq i64 %40, 0
  %42 = icmp eq i64 %37, 536870912
  %43 = and i1 %42, %41
  br label %44

44:                                               ; preds = %28, %39
  %45 = phi i1 [ %34, %28 ], [ %43, %39 ]
  br i1 %45, label %46, label %58

46:                                               ; preds = %25, %36, %44
  %47 = or i64 %7, %9
  store i64 %47, ptr %6, align 8, !tbaa !11
  %48 = load i64, ptr %4, align 8, !tbaa !11
  %49 = and i64 %48, 134217728
  %50 = or i64 %49, %47
  store i64 %50, ptr %6, align 8, !tbaa !11
  %51 = load i64, ptr %4, align 8, !tbaa !11
  %52 = and i64 %51, 134217728
  %53 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !11
  %55 = or i64 %54, %52
  store i64 %55, ptr %53, align 8, !tbaa !11
  %56 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !27
  tail call void @myfree(ptr noundef %57) #15
  br label %127

58:                                               ; preds = %14, %19, %35, %44
  %59 = xor i64 %5, -1
  %60 = and i64 %7, -2080374785
  %61 = and i64 %60, %59
  %62 = icmp eq i64 %61, 0
  %63 = xor i64 %7, %5
  %64 = and i64 %63, 134217728
  br i1 %62, label %65, label %70

65:                                               ; preds = %58
  %66 = icmp ne i64 %64, 0
  %67 = and i64 %5, 134217728
  %68 = icmp eq i64 %67, 0
  %69 = and i1 %68, %66
  br i1 %69, label %127, label %72

70:                                               ; preds = %58
  %71 = icmp eq i64 %64, 0
  br i1 %71, label %72, label %127

72:                                               ; preds = %70, %65
  %73 = xor i64 %7, %5
  %74 = and i64 %73, 805306368
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = and i64 %5, 805306368
  %78 = icmp eq i64 %77, 805306368
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !27
  %82 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !27
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %83) #16
  %85 = icmp eq i32 %84, 0
  br label %95

86:                                               ; preds = %72
  br i1 %62, label %87, label %127

87:                                               ; preds = %86
  %88 = and i64 %7, 805306368
  %89 = icmp eq i64 %88, 268435456
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = and i64 %5, 805306368
  %92 = icmp eq i64 %91, 0
  %93 = icmp eq i64 %88, 536870912
  %94 = and i1 %92, %93
  br label %95

95:                                               ; preds = %79, %90
  %96 = phi i1 [ %85, %79 ], [ %94, %90 ]
  br i1 %96, label %97, label %127

97:                                               ; preds = %76, %87, %95
  %98 = or i64 %60, %5
  store i64 %98, ptr %4, align 8, !tbaa !11
  %99 = load i64, ptr %6, align 8, !tbaa !11
  %100 = and i64 %99, 1207959552
  %101 = or i64 %100, %98
  store i64 %101, ptr %4, align 8, !tbaa !11
  %102 = and i64 %101, 134217728
  %103 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %104 = load i64, ptr %103, align 8, !tbaa !11
  %105 = or i64 %102, %104
  store i64 %105, ptr %103, align 8, !tbaa !11
  %106 = load ptr, ptr %1, align 8, !tbaa !8
  store ptr %106, ptr %2, align 8, !tbaa !8
  %107 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !27
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %97
  %111 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !27
  %113 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %108, ptr noundef nonnull dereferenceable(1) %112) #15
  br label %114

114:                                              ; preds = %110, %97
  %115 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !27
  tail call void @myfree(ptr noundef %116) #15
  %117 = load ptr, ptr %107, align 8, !tbaa !27
  store ptr %117, ptr %115, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !35
  %118 = load i64, ptr %4, align 8, !tbaa !11
  %119 = and i64 %118, 805306368
  %120 = icmp eq i64 %119, 805306368
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load i64, ptr %103, align 8, !tbaa !11
  %123 = and i64 %122, 1879048192
  %124 = icmp eq i64 %123, 1342177280
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = tail call i32 @addvheader(ptr noundef %0), !range !37
  br label %127

127:                                              ; preds = %65, %70, %86, %95, %114, %121, %125, %46
  %128 = phi i32 [ 1, %46 ], [ 1, %125 ], [ 1, %121 ], [ 1, %114 ], [ 0, %95 ], [ 0, %86 ], [ 0, %70 ], [ 0, %65 ]
  ret i32 %128
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @upcase(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load i8, ptr %0, align 1, !tbaa !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %11, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !5
  store i8 %9, ptr %6, align 1, !tbaa !5
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !34

13:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lowcase(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load i8, ptr %0, align 1, !tbaa !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %11, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !5
  store i8 %9, ptr %6, align 1, !tbaa !5
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !38

13:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef nonnull ptr @strtosichar(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = tail call i32 @strtoichar(ptr noundef nonnull @strtosichar.out, ptr noundef %0, i32 noundef 184, i32 noundef %1), !range !17
  %4 = icmp ne i32 %3, 0
  %5 = load i32, ptr @cbench_print, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !tbaa !22
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %0, i32 noundef 942, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %8, %2
  ret ptr @strtosichar.out
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @toutent(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %6, i32 noundef 100, i32 noundef 1), !range !17
  %8 = icmp ne i32 %7, 0
  %9 = load i32, ptr @cbench_print, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !tbaa !22
  %14 = load ptr, ptr %5, align 8, !tbaa !27
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %14, i32 noundef 698, ptr noundef nonnull @.str.1) #17
  br label %16

16:                                               ; preds = %12, %3
  %17 = icmp eq i32 %2, 0
  %18 = getelementptr i8, ptr %4, i64 182
  br label %19

19:                                               ; preds = %284, %16
  %20 = phi ptr [ %1, %16 ], [ %285, %284 ]
  br i1 %17, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.dent, ptr %20, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !11
  %24 = and i64 %23, 134217728
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %279, label %26

26:                                               ; preds = %21, %19
  %27 = getelementptr inbounds %struct.dent, ptr %20, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !11
  %29 = lshr i64 %28, 28
  %30 = and i64 %29, 3
  switch i64 %30, label %276 [
    i64 0, label %31
    i64 1, label %102
    i64 2, label %178
    i64 3, label %253
  ]

31:                                               ; preds = %26
  %32 = load i8, ptr %4, align 16, !tbaa !5
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31, %34
  %35 = phi i8 [ %41, %34 ], [ %32, %31 ]
  %36 = phi ptr [ %40, %34 ], [ %4, %31 ]
  %37 = zext i8 %35 to i64
  %38 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !5
  store i8 %39, ptr %36, align 1, !tbaa !5
  %40 = getelementptr inbounds i8, ptr %36, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %34, !llvm.loop !38

43:                                               ; preds = %34, %31
  br label %44

44:                                               ; preds = %43, %68
  %45 = phi ptr [ %69, %68 ], [ @ichartosstr.out, %43 ]
  %46 = phi i32 [ %48, %68 ], [ 184, %43 ]
  %47 = phi ptr [ %49, %68 ], [ %4, %43 ]
  %48 = add nsw i32 %46, -1
  %49 = getelementptr inbounds i8, ptr %47, i64 1
  %50 = load i8, ptr %47, align 1, !tbaa !5
  %51 = zext i8 %50 to i64
  %52 = icmp eq i8 %50, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %44
  %54 = icmp sgt i8 %50, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 %50, ptr %45, align 1, !tbaa !5
  br label %68

57:                                               ; preds = %53
  %58 = add nuw nsw i64 %51, 4294967168
  %59 = and i64 %58, 4294967295
  %60 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %59
  br label %61

61:                                               ; preds = %61, %57
  %62 = phi ptr [ %45, %57 ], [ %66, %61 ]
  %63 = phi ptr [ %60, %57 ], [ %64, %61 ]
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  %65 = load i8, ptr %63, align 1, !tbaa !5
  %66 = getelementptr inbounds i8, ptr %62, i64 1
  store i8 %65, ptr %62, align 1, !tbaa !5
  %67 = icmp eq i8 %65, 0
  br i1 %67, label %68, label %61, !llvm.loop !18

68:                                               ; preds = %61, %55
  %69 = phi ptr [ %56, %55 ], [ %62, %61 ]
  %70 = icmp eq ptr %47, %18
  br i1 %70, label %71, label %44, !llvm.loop !20

71:                                               ; preds = %68, %44
  %72 = phi i32 [ %46, %44 ], [ 1, %68 ]
  %73 = phi ptr [ %45, %44 ], [ %69, %68 ]
  %74 = icmp slt i32 %72, 2
  store i8 0, ptr %73, align 1, !tbaa !5
  %75 = load i32, ptr @cbench_print, align 4
  %76 = icmp ne i32 %75, 0
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load ptr, ptr @stderr, align 8, !tbaa !22
  %80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str, ptr noundef nonnull @ichartosstr.out, i32 noundef 956, ptr noundef nonnull @.str.1) #17
  br label %81

81:                                               ; preds = %71, %78
  store i1 false, ptr @has_marker, align 4
  %82 = call i32 @fputs(ptr nonnull @ichartosstr.out, ptr %0)
  br label %83

83:                                               ; preds = %99, %81
  %84 = phi i64 [ 0, %81 ], [ %100, %99 ]
  %85 = load i64, ptr %27, align 8, !tbaa !11
  %86 = shl nuw nsw i64 1, %84
  %87 = and i64 %85, %86
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %83
  %90 = load i1, ptr @has_marker, align 4
  br i1 %90, label %95, label %91

91:                                               ; preds = %89
  %92 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !13
  %93 = sext i8 %92 to i32
  %94 = call i32 @putc(i32 noundef %93, ptr noundef %0)
  br label %95

95:                                               ; preds = %91, %89
  store i1 true, ptr @has_marker, align 4
  %96 = trunc i64 %84 to i32
  %97 = add i32 %96, 65
  %98 = call i32 @putc(i32 noundef %97, ptr noundef %0)
  br label %99

99:                                               ; preds = %95, %83
  %100 = add nuw nsw i64 %84, 1
  %101 = icmp eq i64 %100, 26
  br i1 %101, label %277, label %83, !llvm.loop !39

102:                                              ; preds = %26
  %103 = and i64 %28, 1073741824
  %104 = icmp ne i64 %103, 0
  %105 = icmp eq ptr %20, %1
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %279, label %107

107:                                              ; preds = %102
  %108 = load i8, ptr %4, align 16, !tbaa !5
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %107, %110
  %111 = phi i8 [ %117, %110 ], [ %108, %107 ]
  %112 = phi ptr [ %116, %110 ], [ %4, %107 ]
  %113 = zext i8 %111 to i64
  %114 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !5
  store i8 %115, ptr %112, align 1, !tbaa !5
  %116 = getelementptr inbounds i8, ptr %112, i64 1
  %117 = load i8, ptr %116, align 1, !tbaa !5
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %110, !llvm.loop !34

119:                                              ; preds = %110, %107
  br label %120

120:                                              ; preds = %119, %144
  %121 = phi ptr [ %145, %144 ], [ @ichartosstr.out, %119 ]
  %122 = phi i32 [ %124, %144 ], [ 184, %119 ]
  %123 = phi ptr [ %125, %144 ], [ %4, %119 ]
  %124 = add nsw i32 %122, -1
  %125 = getelementptr inbounds i8, ptr %123, i64 1
  %126 = load i8, ptr %123, align 1, !tbaa !5
  %127 = zext i8 %126 to i64
  %128 = icmp eq i8 %126, 0
  br i1 %128, label %147, label %129

129:                                              ; preds = %120
  %130 = icmp sgt i8 %126, -1
  br i1 %130, label %131, label %133

131:                                              ; preds = %129
  %132 = getelementptr inbounds i8, ptr %121, i64 1
  store i8 %126, ptr %121, align 1, !tbaa !5
  br label %144

133:                                              ; preds = %129
  %134 = add nuw nsw i64 %127, 4294967168
  %135 = and i64 %134, 4294967295
  %136 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %135
  br label %137

137:                                              ; preds = %137, %133
  %138 = phi ptr [ %121, %133 ], [ %142, %137 ]
  %139 = phi ptr [ %136, %133 ], [ %140, %137 ]
  %140 = getelementptr inbounds i8, ptr %139, i64 1
  %141 = load i8, ptr %139, align 1, !tbaa !5
  %142 = getelementptr inbounds i8, ptr %138, i64 1
  store i8 %141, ptr %138, align 1, !tbaa !5
  %143 = icmp eq i8 %141, 0
  br i1 %143, label %144, label %137, !llvm.loop !18

144:                                              ; preds = %137, %131
  %145 = phi ptr [ %132, %131 ], [ %138, %137 ]
  %146 = icmp eq ptr %123, %18
  br i1 %146, label %147, label %120, !llvm.loop !20

147:                                              ; preds = %144, %120
  %148 = phi i32 [ %122, %120 ], [ 1, %144 ]
  %149 = phi ptr [ %121, %120 ], [ %145, %144 ]
  %150 = icmp slt i32 %148, 2
  store i8 0, ptr %149, align 1, !tbaa !5
  %151 = load i32, ptr @cbench_print, align 4
  %152 = icmp ne i32 %151, 0
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load ptr, ptr @stderr, align 8, !tbaa !22
  %156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str, ptr noundef nonnull @ichartosstr.out, i32 noundef 956, ptr noundef nonnull @.str.1) #17
  br label %157

157:                                              ; preds = %147, %154
  store i1 false, ptr @has_marker, align 4
  %158 = call i32 @fputs(ptr nonnull @ichartosstr.out, ptr %0)
  br label %159

159:                                              ; preds = %175, %157
  %160 = phi i64 [ 0, %157 ], [ %176, %175 ]
  %161 = load i64, ptr %27, align 8, !tbaa !11
  %162 = shl nuw nsw i64 1, %160
  %163 = and i64 %161, %162
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %159
  %166 = load i1, ptr @has_marker, align 4
  br i1 %166, label %171, label %167

167:                                              ; preds = %165
  %168 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !13
  %169 = sext i8 %168 to i32
  %170 = call i32 @putc(i32 noundef %169, ptr noundef %0)
  br label %171

171:                                              ; preds = %167, %165
  store i1 true, ptr @has_marker, align 4
  %172 = trunc i64 %160 to i32
  %173 = add i32 %172, 65
  %174 = call i32 @putc(i32 noundef %173, ptr noundef %0)
  br label %175

175:                                              ; preds = %171, %159
  %176 = add nuw nsw i64 %160, 1
  %177 = icmp eq i64 %176, 26
  br i1 %177, label %277, label %159, !llvm.loop !39

178:                                              ; preds = %26
  %179 = load i8, ptr %4, align 16, !tbaa !5
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %178, %181
  %182 = phi i8 [ %188, %181 ], [ %179, %178 ]
  %183 = phi ptr [ %187, %181 ], [ %4, %178 ]
  %184 = zext i8 %182 to i64
  %185 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !5
  store i8 %186, ptr %183, align 1, !tbaa !5
  %187 = getelementptr inbounds i8, ptr %183, i64 1
  %188 = load i8, ptr %187, align 1, !tbaa !5
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %181, !llvm.loop !38

190:                                              ; preds = %181, %178
  %191 = load i8, ptr %4, align 16, !tbaa !5
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !5
  store i8 %194, ptr %4, align 16, !tbaa !5
  br label %195

195:                                              ; preds = %219, %190
  %196 = phi ptr [ @ichartosstr.out, %190 ], [ %220, %219 ]
  %197 = phi i32 [ 184, %190 ], [ %199, %219 ]
  %198 = phi ptr [ %4, %190 ], [ %200, %219 ]
  %199 = add nsw i32 %197, -1
  %200 = getelementptr inbounds i8, ptr %198, i64 1
  %201 = load i8, ptr %198, align 1, !tbaa !5
  %202 = zext i8 %201 to i64
  %203 = icmp eq i8 %201, 0
  br i1 %203, label %222, label %204

204:                                              ; preds = %195
  %205 = icmp sgt i8 %201, -1
  br i1 %205, label %206, label %208

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, ptr %196, i64 1
  store i8 %201, ptr %196, align 1, !tbaa !5
  br label %219

208:                                              ; preds = %204
  %209 = add nuw nsw i64 %202, 4294967168
  %210 = and i64 %209, 4294967295
  %211 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %210
  br label %212

212:                                              ; preds = %212, %208
  %213 = phi ptr [ %196, %208 ], [ %217, %212 ]
  %214 = phi ptr [ %211, %208 ], [ %215, %212 ]
  %215 = getelementptr inbounds i8, ptr %214, i64 1
  %216 = load i8, ptr %214, align 1, !tbaa !5
  %217 = getelementptr inbounds i8, ptr %213, i64 1
  store i8 %216, ptr %213, align 1, !tbaa !5
  %218 = icmp eq i8 %216, 0
  br i1 %218, label %219, label %212, !llvm.loop !18

219:                                              ; preds = %212, %206
  %220 = phi ptr [ %207, %206 ], [ %213, %212 ]
  %221 = icmp eq ptr %198, %18
  br i1 %221, label %222, label %195, !llvm.loop !20

222:                                              ; preds = %219, %195
  %223 = phi i32 [ %197, %195 ], [ 1, %219 ]
  %224 = phi ptr [ %196, %195 ], [ %220, %219 ]
  %225 = icmp slt i32 %223, 2
  store i8 0, ptr %224, align 1, !tbaa !5
  %226 = load i32, ptr @cbench_print, align 4
  %227 = icmp ne i32 %226, 0
  %228 = select i1 %225, i1 %227, i1 false
  br i1 %228, label %229, label %232

229:                                              ; preds = %222
  %230 = load ptr, ptr @stderr, align 8, !tbaa !22
  %231 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef nonnull @.str, ptr noundef nonnull @ichartosstr.out, i32 noundef 956, ptr noundef nonnull @.str.1) #17
  br label %232

232:                                              ; preds = %222, %229
  store i1 false, ptr @has_marker, align 4
  %233 = call i32 @fputs(ptr nonnull @ichartosstr.out, ptr %0)
  br label %234

234:                                              ; preds = %250, %232
  %235 = phi i64 [ 0, %232 ], [ %251, %250 ]
  %236 = load i64, ptr %27, align 8, !tbaa !11
  %237 = shl nuw nsw i64 1, %235
  %238 = and i64 %236, %237
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %250, label %240

240:                                              ; preds = %234
  %241 = load i1, ptr @has_marker, align 4
  br i1 %241, label %246, label %242

242:                                              ; preds = %240
  %243 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !13
  %244 = sext i8 %243 to i32
  %245 = call i32 @putc(i32 noundef %244, ptr noundef %0)
  br label %246

246:                                              ; preds = %242, %240
  store i1 true, ptr @has_marker, align 4
  %247 = trunc i64 %235 to i32
  %248 = add i32 %247, 65
  %249 = call i32 @putc(i32 noundef %248, ptr noundef %0)
  br label %250

250:                                              ; preds = %246, %234
  %251 = add nuw nsw i64 %235, 1
  %252 = icmp eq i64 %251, 26
  br i1 %252, label %277, label %234, !llvm.loop !39

253:                                              ; preds = %26
  %254 = getelementptr inbounds %struct.dent, ptr %20, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !27
  store i1 false, ptr @has_marker, align 4
  %256 = call i32 @fputs(ptr %255, ptr %0)
  br label %257

257:                                              ; preds = %273, %253
  %258 = phi i64 [ 0, %253 ], [ %274, %273 ]
  %259 = load i64, ptr %27, align 8, !tbaa !11
  %260 = shl nuw nsw i64 1, %258
  %261 = and i64 %259, %260
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %273, label %263

263:                                              ; preds = %257
  %264 = load i1, ptr @has_marker, align 4
  br i1 %264, label %269, label %265

265:                                              ; preds = %263
  %266 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !13
  %267 = sext i8 %266 to i32
  %268 = call i32 @putc(i32 noundef %267, ptr noundef %0)
  br label %269

269:                                              ; preds = %265, %263
  store i1 true, ptr @has_marker, align 4
  %270 = trunc i64 %258 to i32
  %271 = add i32 %270, 65
  %272 = call i32 @putc(i32 noundef %271, ptr noundef %0)
  br label %273

273:                                              ; preds = %269, %257
  %274 = add nuw nsw i64 %258, 1
  %275 = icmp eq i64 %274, 26
  br i1 %275, label %277, label %257, !llvm.loop !39

276:                                              ; preds = %26
  unreachable

277:                                              ; preds = %273, %250, %175, %99
  %278 = call i32 @fputc(i32 10, ptr %0)
  br label %279

279:                                              ; preds = %277, %102, %21
  %280 = getelementptr inbounds %struct.dent, ptr %20, i64 0, i32 2
  %281 = load i64, ptr %280, align 8, !tbaa !11
  %282 = and i64 %281, 1073741824
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %286, label %284

284:                                              ; preds = %279
  %285 = load ptr, ptr %20, align 8, !tbaa !8
  br label %19, !llvm.loop !40

286:                                              ; preds = %279
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef nonnull ptr @ichartosstr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq i32 %1, 0
  br label %4

4:                                                ; preds = %50, %2
  %5 = phi ptr [ @ichartosstr.out, %2 ], [ %51, %50 ]
  %6 = phi i32 [ 184, %2 ], [ %8, %50 ]
  %7 = phi ptr [ %0, %2 ], [ %9, %50 ]
  %8 = add nsw i32 %6, -1
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  %10 = load i8, ptr %7, align 1, !tbaa !5
  %11 = zext i8 %10 to i32
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %53, label %13

13:                                               ; preds = %4
  %14 = icmp sgt i8 %10, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %10, ptr %5, align 1, !tbaa !5
  br label %50

17:                                               ; preds = %13
  %18 = add nsw i32 %11, -128
  br i1 %3, label %19, label %39

19:                                               ; preds = %17
  %20 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !29
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i32, ptr @defdupchar, align 4, !tbaa !21
  %24 = zext nneg i32 %20 to i64
  br label %25

25:                                               ; preds = %35, %22
  %26 = phi i64 [ %24, %22 ], [ %27, %35 ]
  %27 = add nsw i64 %26, -1
  %28 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !21
  %30 = icmp eq i32 %29, %23
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 29, i64 %27
  %33 = load i32, ptr %32, align 4, !tbaa !21
  %34 = icmp eq i32 %33, %18
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %25
  %36 = icmp sgt i64 %26, 1
  br i1 %36, label %25, label %39, !llvm.loop !33

37:                                               ; preds = %31
  %38 = trunc i64 %27 to i32
  br label %39

39:                                               ; preds = %35, %37, %19, %17
  %40 = phi i32 [ %18, %17 ], [ %18, %19 ], [ %38, %37 ], [ %18, %35 ]
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %41
  br label %43

43:                                               ; preds = %43, %39
  %44 = phi ptr [ %5, %39 ], [ %48, %43 ]
  %45 = phi ptr [ %42, %39 ], [ %46, %43 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  %47 = load i8, ptr %45, align 1, !tbaa !5
  %48 = getelementptr inbounds i8, ptr %44, i64 1
  store i8 %47, ptr %44, align 1, !tbaa !5
  %49 = icmp eq i8 %47, 0
  br i1 %49, label %50, label %43, !llvm.loop !18

50:                                               ; preds = %43, %15
  %51 = phi ptr [ %16, %15 ], [ %44, %43 ]
  %52 = icmp ugt i32 %6, 2
  br i1 %52, label %4, label %53, !llvm.loop !20

53:                                               ; preds = %4, %50
  %54 = phi i32 [ %6, %4 ], [ 1, %50 ]
  %55 = phi ptr [ %5, %4 ], [ %51, %50 ]
  %56 = icmp slt i32 %54, 2
  store i8 0, ptr %55, align 1, !tbaa !5
  %57 = load i32, ptr @cbench_print, align 4
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load ptr, ptr @stderr, align 8, !tbaa !22
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str, ptr noundef nonnull @ichartosstr.out, i32 noundef 956, ptr noundef nonnull @.str.1) #17
  br label %63

63:                                               ; preds = %60, %53
  ret ptr @ichartosstr.out
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @stringcharlen(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !29
  %4 = icmp eq i32 %1, 0
  %5 = load i32, ptr @defdupchar, align 4
  %6 = select i1 %4, i32 %5, i32 0
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %80, label %8

8:                                                ; preds = %2
  %9 = add nsw i32 %3, -1
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  br label %11

11:                                               ; preds = %8, %76
  %12 = phi i32 [ %78, %76 ], [ %9, %8 ]
  %13 = phi i32 [ %77, %76 ], [ 0, %8 ]
  %14 = add nsw i32 %12, %13
  %15 = ashr i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %11
  %21 = load i8, ptr %0, align 1, !tbaa !5
  %22 = xor i8 %21, %18
  %23 = and i8 %22, 127
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %37

25:                                               ; preds = %31
  %26 = getelementptr inbounds i8, ptr %32, i64 1
  %27 = load i8, ptr %32, align 1, !tbaa !5
  %28 = xor i8 %27, %35
  %29 = and i8 %28, 127
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %37, !llvm.loop !30

31:                                               ; preds = %20, %25
  %32 = phi ptr [ %26, %25 ], [ %10, %20 ]
  %33 = phi ptr [ %34, %25 ], [ %17, %20 ]
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %25, !llvm.loop !30

37:                                               ; preds = %25, %31, %20, %11
  %38 = phi ptr [ %17, %11 ], [ %17, %20 ], [ %34, %31 ], [ %34, %25 ]
  %39 = phi i1 [ %19, %11 ], [ %19, %20 ], [ %36, %31 ], [ %36, %25 ]
  %40 = phi ptr [ %0, %11 ], [ %10, %20 ], [ %32, %31 ], [ %26, %25 ]
  br i1 %39, label %41, label %54

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %16
  %43 = load i32, ptr %42, align 4, !tbaa !21
  %44 = icmp eq i32 %43, %6
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 29, i64 %16
  %47 = load i32, ptr %46, align 4, !tbaa !21
  store i32 %47, ptr @laststringch, align 4, !tbaa !21
  %48 = ptrtoint ptr %38 to i64
  %49 = ptrtoint ptr %17 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  br label %81

52:                                               ; preds = %41
  %53 = getelementptr inbounds i8, ptr %38, i64 -1
  br label %54

54:                                               ; preds = %52, %37
  %55 = phi ptr [ %53, %52 ], [ %38, %37 ]
  %56 = getelementptr inbounds i8, ptr %40, i64 -1
  %57 = load i8, ptr %56, align 1, !tbaa !5
  %58 = and i8 %57, 127
  %59 = load i8, ptr %55, align 1, !tbaa !5
  %60 = and i8 %59, 127
  %61 = icmp ult i8 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = add nsw i32 %15, -1
  br label %76

64:                                               ; preds = %54
  %65 = icmp ugt i8 %58, %60
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  %67 = add nsw i32 %15, 1
  br label %76

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %16
  %70 = load i32, ptr %69, align 4, !tbaa !21
  %71 = icmp slt i32 %6, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = add nsw i32 %15, -1
  br label %76

74:                                               ; preds = %68
  %75 = add nsw i32 %15, 1
  br label %76

76:                                               ; preds = %66, %74, %72, %62
  %77 = phi i32 [ %13, %62 ], [ %67, %66 ], [ %13, %72 ], [ %75, %74 ]
  %78 = phi i32 [ %63, %62 ], [ %12, %66 ], [ %73, %72 ], [ %12, %74 ]
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %11, !llvm.loop !31

80:                                               ; preds = %76, %2
  store i32 -1, ptr @laststringch, align 4, !tbaa !21
  br label %81

81:                                               ; preds = %80, %45
  %82 = phi i32 [ %51, %45 ], [ 0, %80 ]
  ret i32 %82
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @printichar(i32 noundef %0) local_unnamed_addr #12 {
  %2 = icmp slt i32 %0, 128
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = trunc i32 %0 to i8
  store i8 %4, ptr @printichar.out, align 1, !tbaa !5
  store i8 0, ptr getelementptr inbounds ([11 x i8], ptr @printichar.out, i64 0, i64 1), align 1, !tbaa !5
  br label %10

5:                                                ; preds = %1
  %6 = add nsw i32 %0, -128
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %7
  %9 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @printichar.out, ptr noundef nonnull dereferenceable(1) %8) #15
  br label %10

10:                                               ; preds = %5, %3
  ret ptr @printichar.out
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @findfiletype(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #13 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 13), align 4, !tbaa !41
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load ptr, ptr @chartypes, align 8, !tbaa !22
  %12 = zext nneg i32 %8 to i64
  br label %13

13:                                               ; preds = %10, %24
  %14 = phi i64 [ 0, %10 ], [ %25, %24 ]
  %15 = getelementptr inbounds %struct.strchartype, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %16) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = trunc i64 %14 to i32
  %21 = icmp eq ptr %2, null
  br i1 %21, label %73, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.strchartype, ptr %11, i64 %14, i32 1
  br label %66

24:                                               ; preds = %13
  %25 = add nuw nsw i64 %14, 1
  %26 = icmp eq i64 %25, %12
  br i1 %26, label %27, label %13, !llvm.loop !44

27:                                               ; preds = %24, %7, %3
  %28 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 13), align 4, !tbaa !41
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %27
  %31 = load ptr, ptr @chartypes, align 8, !tbaa !22
  %32 = zext nneg i32 %28 to i64
  br label %33

33:                                               ; preds = %30, %63
  %34 = phi i64 [ 0, %30 ], [ %64, %63 ]
  %35 = getelementptr inbounds %struct.strchartype, ptr %31, i64 %34, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = load i8, ptr %36, align 1, !tbaa !5
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %33, %56
  %40 = phi ptr [ %60, %56 ], [ %36, %33 ]
  %41 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #16
  %42 = trunc i64 %41 to i32
  %43 = icmp slt i32 %5, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = sub i64 %4, %41
  %46 = shl i64 %45, 32
  %47 = ashr exact i64 %46, 32
  %48 = getelementptr inbounds i8, ptr %0, i64 %47
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(1) %40) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = trunc i64 %34 to i32
  %53 = icmp eq ptr %2, null
  br i1 %53, label %73, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.strchartype, ptr %31, i64 %34, i32 1
  br label %66

56:                                               ; preds = %39, %44
  %57 = shl i64 %41, 32
  %58 = add i64 %57, 4294967296
  %59 = ashr exact i64 %58, 32
  %60 = getelementptr inbounds i8, ptr %40, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !5
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %39, !llvm.loop !46

63:                                               ; preds = %56, %33
  %64 = add nuw nsw i64 %34, 1
  %65 = icmp eq i64 %64, %32
  br i1 %65, label %73, label %33, !llvm.loop !47

66:                                               ; preds = %22, %54
  %67 = phi ptr [ %55, %54 ], [ %23, %22 ]
  %68 = phi i32 [ %52, %54 ], [ %20, %22 ]
  %69 = load ptr, ptr %67, align 8, !tbaa !48
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(4) @.str.5) #16
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, ptr %2, align 4, !tbaa !21
  br label %73

73:                                               ; preds = %63, %66, %27, %51, %19
  %74 = phi i32 [ %20, %19 ], [ %52, %51 ], [ -1, %27 ], [ %68, %66 ], [ -1, %63 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"dent", !10, i64 0, !10, i64 8, !6, i64 16}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!14, !6, i64 68}
!14 = !{!"hashheader", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !6, i64 48, !6, i64 53, !6, i64 66, !6, i64 67, !6, i64 68, !6, i64 70, !6, i64 526, !6, i64 754, !6, i64 982, !6, i64 1210, !6, i64 1438, !6, i64 1666, !6, i64 1894, !6, i64 2022, !6, i64 3124, !6, i64 3524, !15, i64 3924}
!15 = !{!"short", !6, i64 0}
!16 = !{!"int", !6, i64 0}
!17 = !{i32 0, i32 2}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !19}
!21 = !{!16, !16, i64 0}
!22 = !{!10, !10, i64 0}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = !{!9, !10, i64 8}
!28 = distinct !{!28, !19}
!29 = !{!14, !16, i64 36}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !5}
!36 = distinct !{!36, !19}
!37 = !{i32 -1, i32 1}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19}
!41 = !{!14, !16, i64 40}
!42 = !{!43, !10, i64 0}
!43 = !{!"strchartype", !10, i64 0, !10, i64 8, !10, i64 16}
!44 = distinct !{!44, !19}
!45 = !{!43, !10, i64 16}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19}
!48 = !{!43, !10, i64 8}
