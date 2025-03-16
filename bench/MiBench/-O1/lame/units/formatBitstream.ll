; ModuleID = 'formatBitstream.c'
source_filename = "formatBitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BF_FrameData = type { i32, i32, i32, ptr, ptr, [2 x ptr], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], ptr }
%struct.BF_PartHolder = type { i32, ptr }
%struct.BF_BitstreamPart = type { i32, ptr }
%struct.side_info_link = type { ptr, %struct.MYSideInfo }
%struct.MYSideInfo = type { i32, i32, i32, i32, ptr, ptr, [2 x ptr], [2 x [2 x ptr]] }
%struct.BF_BitstreamElement = type { i32, i16 }
%struct.BF_FrameResults = type { i32, i32, i32 }

@BitCount = internal unnamed_addr global i32 0, align 4
@ThisFrameSize = internal unnamed_addr global i32 0, align 4
@BitsRemaining = internal unnamed_addr global i32 0, align 4
@forwardFrameLength = internal unnamed_addr global i32 0, align 4
@forwardSILength = internal unnamed_addr global i32 0, align 4
@elements = internal unnamed_addr global i32 0, align 4
@side_queue_free = internal unnamed_addr global ptr null, align 8
@side_queue_head = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [31 x i8] c"cannot allocate side_info_link\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @InitFormatBitStream() local_unnamed_addr #0 {
  store i32 0, ptr @BitCount, align 4, !tbaa !5
  store i32 0, ptr @ThisFrameSize, align 4, !tbaa !5
  store i32 0, ptr @BitsRemaining, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BF_BitstreamFrame(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @side_queue_free, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %77

5:                                                ; preds = %2
  %6 = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !9
  %10 = tail call i64 @fwrite(ptr nonnull @.str, i64 30, i64 1, ptr %9) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

11:                                               ; preds = %5
  store ptr null, ptr %6, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = load i32, ptr %13, align 8, !tbaa !16
  %15 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  store i32 %14, ptr %15, align 8, !tbaa !18
  %16 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  %17 = getelementptr inbounds %struct.BF_PartHolder, ptr %15, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !20
  %18 = sext i32 %14 to i64
  %19 = tail call noalias ptr @calloc(i64 noundef %18, i64 noundef 8) #11
  %20 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %16, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !21
  store i32 0, ptr %16, align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.side_info_link, ptr %6, i64 0, i32 1, i32 4
  store ptr %15, ptr %21, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  %24 = load i32, ptr %23, align 8, !tbaa !16
  %25 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  store i32 %24, ptr %25, align 8, !tbaa !18
  %26 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  %27 = getelementptr inbounds %struct.BF_PartHolder, ptr %25, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !20
  %28 = sext i32 %24 to i64
  %29 = tail call noalias ptr @calloc(i64 noundef %28, i64 noundef 8) #11
  %30 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %26, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !21
  store i32 0, ptr %26, align 8, !tbaa !16
  %31 = getelementptr inbounds %struct.side_info_link, ptr %6, i64 0, i32 1, i32 5
  store ptr %25, ptr %31, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !25
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %11
  %36 = zext nneg i32 %33 to i64
  br label %44

37:                                               ; preds = %44, %11
  %38 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !26
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %37
  %42 = zext nneg i32 %39 to i64
  %43 = zext nneg i32 %33 to i64
  br label %58

44:                                               ; preds = %44, %35
  %45 = phi i64 [ 0, %35 ], [ %56, %44 ]
  %46 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 5, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !9
  %48 = load i32, ptr %47, align 8, !tbaa !16
  %49 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  store i32 %48, ptr %49, align 8, !tbaa !18
  %50 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  %51 = getelementptr inbounds %struct.BF_PartHolder, ptr %49, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !20
  %52 = sext i32 %48 to i64
  %53 = tail call noalias ptr @calloc(i64 noundef %52, i64 noundef 8) #11
  %54 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %50, i64 0, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !21
  store i32 0, ptr %50, align 8, !tbaa !16
  %55 = getelementptr inbounds %struct.side_info_link, ptr %6, i64 0, i32 1, i32 6, i64 %45
  store ptr %49, ptr %55, align 8, !tbaa !9
  %56 = add nuw nsw i64 %45, 1
  %57 = icmp eq i64 %56, %36
  br i1 %57, label %37, label %44, !llvm.loop !27

58:                                               ; preds = %74, %41
  %59 = phi i64 [ 0, %41 ], [ %75, %74 ]
  br i1 %34, label %60, label %74

60:                                               ; preds = %58, %60
  %61 = phi i64 [ %72, %60 ], [ 0, %58 ]
  %62 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 6, i64 %59, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !9
  %64 = load i32, ptr %63, align 8, !tbaa !16
  %65 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  store i32 %64, ptr %65, align 8, !tbaa !18
  %66 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  %67 = getelementptr inbounds %struct.BF_PartHolder, ptr %65, i64 0, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !20
  %68 = sext i32 %64 to i64
  %69 = tail call noalias ptr @calloc(i64 noundef %68, i64 noundef 8) #11
  %70 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %66, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !21
  store i32 0, ptr %66, align 8, !tbaa !16
  %71 = getelementptr inbounds %struct.side_info_link, ptr %6, i64 0, i32 1, i32 7, i64 %59, i64 %61
  store ptr %65, ptr %71, align 8, !tbaa !9
  %72 = add nuw nsw i64 %61, 1
  %73 = icmp eq i64 %72, %43
  br i1 %73, label %74, label %60, !llvm.loop !29

74:                                               ; preds = %60, %58
  %75 = add nuw nsw i64 %59, 1
  %76 = icmp eq i64 %75, %42
  br i1 %76, label %79, label %58, !llvm.loop !30

77:                                               ; preds = %2
  %78 = load ptr, ptr %3, align 8, !tbaa !11
  store ptr %78, ptr @side_queue_free, align 8, !tbaa !9
  store ptr null, ptr %3, align 8, !tbaa !11
  br label %79

79:                                               ; preds = %74, %77, %37
  %80 = phi ptr [ %3, %77 ], [ %6, %37 ], [ %6, %74 ]
  %81 = load i32, ptr %0, align 8, !tbaa !31
  %82 = getelementptr inbounds %struct.side_info_link, ptr %80, i64 0, i32 1
  store i32 %81, ptr %82, align 8, !tbaa !32
  %83 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !26
  %85 = getelementptr inbounds %struct.side_info_link, ptr %80, i64 0, i32 1, i32 2
  store i32 %84, ptr %85, align 8, !tbaa !33
  %86 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !25
  %88 = getelementptr inbounds %struct.side_info_link, ptr %80, i64 0, i32 1, i32 3
  store i32 %87, ptr %88, align 4, !tbaa !34
  %89 = getelementptr inbounds %struct.side_info_link, ptr %80, i64 0, i32 1, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !22
  %91 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !14
  %93 = getelementptr inbounds %struct.BF_PartHolder, ptr %90, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !20
  store i32 0, ptr %94, align 8, !tbaa !16
  %95 = load i32, ptr %92, align 8, !tbaa !16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %128, label %97

97:                                               ; preds = %79
  %98 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %92, i64 0, i32 1
  br label %99

99:                                               ; preds = %113, %97
  %100 = phi i64 [ 0, %97 ], [ %124, %113 ]
  %101 = phi ptr [ %90, %97 ], [ %114, %113 ]
  %102 = load ptr, ptr %98, align 8, !tbaa !21
  %103 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %102, i64 %100
  %104 = getelementptr inbounds %struct.BF_PartHolder, ptr %101, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !20
  %106 = load i32, ptr %105, align 8, !tbaa !16
  %107 = add i32 %106, 1
  %108 = load i32, ptr %101, align 8, !tbaa !18
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %99
  %111 = add i32 %106, 9
  %112 = tail call ptr @BF_resizePartHolder(ptr noundef nonnull %101, i32 noundef %111)
  br label %113

113:                                              ; preds = %110, %99
  %114 = phi ptr [ %112, %110 ], [ %101, %99 ]
  %115 = getelementptr inbounds %struct.BF_PartHolder, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !20
  %117 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !21
  %119 = load i32, ptr %116, align 8, !tbaa !16
  %120 = add i32 %119, 1
  store i32 %120, ptr %116, align 8, !tbaa !16
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %118, i64 %121
  %123 = load i64, ptr %103, align 4
  store i64 %123, ptr %122, align 4
  %124 = add nuw nsw i64 %100, 1
  %125 = load i32, ptr %92, align 8, !tbaa !16
  %126 = zext i32 %125 to i64
  %127 = icmp ult i64 %124, %126
  br i1 %127, label %99, label %128, !llvm.loop !35

128:                                              ; preds = %113, %79
  %129 = phi ptr [ %90, %79 ], [ %114, %113 ]
  store ptr %129, ptr %89, align 8, !tbaa !22
  %130 = getelementptr inbounds %struct.side_info_link, ptr %80, i64 0, i32 1, i32 5
  %131 = load ptr, ptr %130, align 8, !tbaa !24
  %132 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 4
  %133 = load ptr, ptr %132, align 8, !tbaa !23
  %134 = getelementptr inbounds %struct.BF_PartHolder, ptr %131, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !20
  store i32 0, ptr %135, align 8, !tbaa !16
  %136 = load i32, ptr %133, align 8, !tbaa !16
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %169, label %138

138:                                              ; preds = %128
  %139 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %133, i64 0, i32 1
  br label %140

140:                                              ; preds = %154, %138
  %141 = phi i64 [ 0, %138 ], [ %165, %154 ]
  %142 = phi ptr [ %131, %138 ], [ %155, %154 ]
  %143 = load ptr, ptr %139, align 8, !tbaa !21
  %144 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %143, i64 %141
  %145 = getelementptr inbounds %struct.BF_PartHolder, ptr %142, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !20
  %147 = load i32, ptr %146, align 8, !tbaa !16
  %148 = add i32 %147, 1
  %149 = load i32, ptr %142, align 8, !tbaa !18
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %140
  %152 = add i32 %147, 9
  %153 = tail call ptr @BF_resizePartHolder(ptr noundef nonnull %142, i32 noundef %152)
  br label %154

154:                                              ; preds = %151, %140
  %155 = phi ptr [ %153, %151 ], [ %142, %140 ]
  %156 = getelementptr inbounds %struct.BF_PartHolder, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !20
  %158 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !21
  %160 = load i32, ptr %157, align 8, !tbaa !16
  %161 = add i32 %160, 1
  store i32 %161, ptr %157, align 8, !tbaa !16
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %159, i64 %162
  %164 = load i64, ptr %144, align 4
  store i64 %164, ptr %163, align 4
  %165 = add nuw nsw i64 %141, 1
  %166 = load i32, ptr %133, align 8, !tbaa !16
  %167 = zext i32 %166 to i64
  %168 = icmp ult i64 %165, %167
  br i1 %168, label %140, label %169, !llvm.loop !35

169:                                              ; preds = %154, %128
  %170 = phi ptr [ %131, %128 ], [ %155, %154 ]
  store ptr %170, ptr %130, align 8, !tbaa !24
  %171 = load ptr, ptr %91, align 8, !tbaa !14
  %172 = load i32, ptr %171, align 8, !tbaa !16
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %188, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %171, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !21
  br label %177

177:                                              ; preds = %177, %174
  %178 = phi i32 [ %184, %177 ], [ 0, %174 ]
  %179 = phi i32 [ %185, %177 ], [ 0, %174 ]
  %180 = phi ptr [ %186, %177 ], [ %176, %174 ]
  %181 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %180, i64 0, i32 1
  %182 = load i16, ptr %181, align 4, !tbaa !36
  %183 = zext i16 %182 to i32
  %184 = add nuw nsw i32 %178, %183
  %185 = add nuw i32 %179, 1
  %186 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %180, i64 1
  %187 = icmp eq i32 %185, %172
  br i1 %187, label %188, label %177, !llvm.loop !39

188:                                              ; preds = %177, %169
  %189 = phi i32 [ 0, %169 ], [ %184, %177 ]
  %190 = load ptr, ptr %132, align 8, !tbaa !23
  %191 = load i32, ptr %190, align 8, !tbaa !16
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %207, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %190, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !21
  br label %196

196:                                              ; preds = %196, %193
  %197 = phi i32 [ %203, %196 ], [ 0, %193 ]
  %198 = phi i32 [ %204, %196 ], [ 0, %193 ]
  %199 = phi ptr [ %205, %196 ], [ %195, %193 ]
  %200 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %199, i64 0, i32 1
  %201 = load i16, ptr %200, align 4, !tbaa !36
  %202 = zext i16 %201 to i32
  %203 = add nuw nsw i32 %197, %202
  %204 = add nuw i32 %198, 1
  %205 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %199, i64 1
  %206 = icmp eq i32 %204, %191
  br i1 %206, label %207, label %196, !llvm.loop !39

207:                                              ; preds = %196, %188
  %208 = phi i32 [ 0, %188 ], [ %203, %196 ]
  %209 = add nsw i32 %208, %189
  %210 = load i32, ptr %86, align 8, !tbaa !25
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %277, %207
  %213 = phi i32 [ %209, %207 ], [ %279, %277 ]
  %214 = load i32, ptr %83, align 4, !tbaa !26
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %284, label %363

216:                                              ; preds = %207, %277
  %217 = phi i64 [ %280, %277 ], [ 0, %207 ]
  %218 = phi i32 [ %279, %277 ], [ %209, %207 ]
  %219 = getelementptr inbounds %struct.side_info_link, ptr %80, i64 0, i32 1, i32 6, i64 %217
  %220 = load ptr, ptr %219, align 8, !tbaa !9
  %221 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 5, i64 %217
  %222 = load ptr, ptr %221, align 8, !tbaa !9
  %223 = getelementptr inbounds %struct.BF_PartHolder, ptr %220, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !20
  store i32 0, ptr %224, align 8, !tbaa !16
  %225 = load i32, ptr %222, align 8, !tbaa !16
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %258, label %227

227:                                              ; preds = %216
  %228 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %222, i64 0, i32 1
  br label %229

229:                                              ; preds = %243, %227
  %230 = phi i64 [ 0, %227 ], [ %254, %243 ]
  %231 = phi ptr [ %220, %227 ], [ %244, %243 ]
  %232 = load ptr, ptr %228, align 8, !tbaa !21
  %233 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %232, i64 %230
  %234 = getelementptr inbounds %struct.BF_PartHolder, ptr %231, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !20
  %236 = load i32, ptr %235, align 8, !tbaa !16
  %237 = add i32 %236, 1
  %238 = load i32, ptr %231, align 8, !tbaa !18
  %239 = icmp sgt i32 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %229
  %241 = add i32 %236, 9
  %242 = tail call ptr @BF_resizePartHolder(ptr noundef nonnull %231, i32 noundef %241)
  br label %243

243:                                              ; preds = %240, %229
  %244 = phi ptr [ %242, %240 ], [ %231, %229 ]
  %245 = getelementptr inbounds %struct.BF_PartHolder, ptr %244, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !20
  %247 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %246, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !21
  %249 = load i32, ptr %246, align 8, !tbaa !16
  %250 = add i32 %249, 1
  store i32 %250, ptr %246, align 8, !tbaa !16
  %251 = zext i32 %249 to i64
  %252 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %248, i64 %251
  %253 = load i64, ptr %233, align 4
  store i64 %253, ptr %252, align 4
  %254 = add nuw nsw i64 %230, 1
  %255 = load i32, ptr %222, align 8, !tbaa !16
  %256 = zext i32 %255 to i64
  %257 = icmp ult i64 %254, %256
  br i1 %257, label %229, label %258, !llvm.loop !35

258:                                              ; preds = %243, %216
  %259 = phi ptr [ %220, %216 ], [ %244, %243 ]
  store ptr %259, ptr %219, align 8, !tbaa !9
  %260 = load ptr, ptr %221, align 8, !tbaa !9
  %261 = load i32, ptr %260, align 8, !tbaa !16
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %277, label %263

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %260, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !21
  br label %266

266:                                              ; preds = %266, %263
  %267 = phi i32 [ %273, %266 ], [ 0, %263 ]
  %268 = phi i32 [ %274, %266 ], [ 0, %263 ]
  %269 = phi ptr [ %275, %266 ], [ %265, %263 ]
  %270 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %269, i64 0, i32 1
  %271 = load i16, ptr %270, align 4, !tbaa !36
  %272 = zext i16 %271 to i32
  %273 = add nuw nsw i32 %267, %272
  %274 = add nuw i32 %268, 1
  %275 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %269, i64 1
  %276 = icmp eq i32 %274, %261
  br i1 %276, label %277, label %266, !llvm.loop !39

277:                                              ; preds = %266, %258
  %278 = phi i32 [ 0, %258 ], [ %273, %266 ]
  %279 = add nsw i32 %278, %218
  %280 = add nuw nsw i64 %217, 1
  %281 = load i32, ptr %86, align 8, !tbaa !25
  %282 = sext i32 %281 to i64
  %283 = icmp slt i64 %280, %282
  br i1 %283, label %216, label %212, !llvm.loop !40

284:                                              ; preds = %212, %357
  %285 = phi i64 [ %359, %357 ], [ 0, %212 ]
  %286 = phi i32 [ %358, %357 ], [ %213, %212 ]
  %287 = load i32, ptr %86, align 8, !tbaa !25
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %357

289:                                              ; preds = %284, %350
  %290 = phi i64 [ %353, %350 ], [ 0, %284 ]
  %291 = phi i32 [ %352, %350 ], [ %286, %284 ]
  %292 = getelementptr inbounds %struct.side_info_link, ptr %80, i64 0, i32 1, i32 7, i64 %285, i64 %290
  %293 = load ptr, ptr %292, align 8, !tbaa !9
  %294 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 6, i64 %285, i64 %290
  %295 = load ptr, ptr %294, align 8, !tbaa !9
  %296 = getelementptr inbounds %struct.BF_PartHolder, ptr %293, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !20
  store i32 0, ptr %297, align 8, !tbaa !16
  %298 = load i32, ptr %295, align 8, !tbaa !16
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %331, label %300

300:                                              ; preds = %289
  %301 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %295, i64 0, i32 1
  br label %302

302:                                              ; preds = %316, %300
  %303 = phi i64 [ 0, %300 ], [ %327, %316 ]
  %304 = phi ptr [ %293, %300 ], [ %317, %316 ]
  %305 = load ptr, ptr %301, align 8, !tbaa !21
  %306 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %305, i64 %303
  %307 = getelementptr inbounds %struct.BF_PartHolder, ptr %304, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !20
  %309 = load i32, ptr %308, align 8, !tbaa !16
  %310 = add i32 %309, 1
  %311 = load i32, ptr %304, align 8, !tbaa !18
  %312 = icmp sgt i32 %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %302
  %314 = add i32 %309, 9
  %315 = tail call ptr @BF_resizePartHolder(ptr noundef nonnull %304, i32 noundef %314)
  br label %316

316:                                              ; preds = %313, %302
  %317 = phi ptr [ %315, %313 ], [ %304, %302 ]
  %318 = getelementptr inbounds %struct.BF_PartHolder, ptr %317, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !20
  %320 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %319, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !21
  %322 = load i32, ptr %319, align 8, !tbaa !16
  %323 = add i32 %322, 1
  store i32 %323, ptr %319, align 8, !tbaa !16
  %324 = zext i32 %322 to i64
  %325 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %321, i64 %324
  %326 = load i64, ptr %306, align 4
  store i64 %326, ptr %325, align 4
  %327 = add nuw nsw i64 %303, 1
  %328 = load i32, ptr %295, align 8, !tbaa !16
  %329 = zext i32 %328 to i64
  %330 = icmp ult i64 %327, %329
  br i1 %330, label %302, label %331, !llvm.loop !35

331:                                              ; preds = %316, %289
  %332 = phi ptr [ %293, %289 ], [ %317, %316 ]
  store ptr %332, ptr %292, align 8, !tbaa !9
  %333 = load ptr, ptr %294, align 8, !tbaa !9
  %334 = load i32, ptr %333, align 8, !tbaa !16
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %350, label %336

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %333, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !21
  br label %339

339:                                              ; preds = %339, %336
  %340 = phi i32 [ %346, %339 ], [ 0, %336 ]
  %341 = phi i32 [ %347, %339 ], [ 0, %336 ]
  %342 = phi ptr [ %348, %339 ], [ %338, %336 ]
  %343 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %342, i64 0, i32 1
  %344 = load i16, ptr %343, align 4, !tbaa !36
  %345 = zext i16 %344 to i32
  %346 = add nuw nsw i32 %340, %345
  %347 = add nuw i32 %341, 1
  %348 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %342, i64 1
  %349 = icmp eq i32 %347, %334
  br i1 %349, label %350, label %339, !llvm.loop !39

350:                                              ; preds = %339, %331
  %351 = phi i32 [ 0, %331 ], [ %346, %339 ]
  %352 = add nsw i32 %351, %291
  %353 = add nuw nsw i64 %290, 1
  %354 = load i32, ptr %86, align 8, !tbaa !25
  %355 = sext i32 %354 to i64
  %356 = icmp slt i64 %353, %355
  br i1 %356, label %289, label %357, !llvm.loop !41

357:                                              ; preds = %350, %284
  %358 = phi i32 [ %286, %284 ], [ %352, %350 ]
  %359 = add nuw nsw i64 %285, 1
  %360 = load i32, ptr %83, align 4, !tbaa !26
  %361 = sext i32 %360 to i64
  %362 = icmp slt i64 %359, %361
  br i1 %362, label %284, label %363, !llvm.loop !42

363:                                              ; preds = %357, %212
  %364 = phi i32 [ %213, %212 ], [ %358, %357 ]
  %365 = getelementptr inbounds %struct.side_info_link, ptr %80, i64 0, i32 1, i32 1
  store i32 %364, ptr %365, align 4, !tbaa !43
  %366 = load ptr, ptr @side_queue_head, align 8, !tbaa !9
  %367 = icmp eq ptr %366, null
  br i1 %367, label %372, label %368

368:                                              ; preds = %363, %368
  %369 = phi ptr [ %370, %368 ], [ %366, %363 ]
  %370 = load ptr, ptr %369, align 8, !tbaa !11
  %371 = icmp eq ptr %370, null
  br i1 %371, label %372, label %368, !llvm.loop !44

372:                                              ; preds = %368, %363
  %373 = phi ptr [ @side_queue_head, %363 ], [ %369, %368 ]
  store ptr %80, ptr %373, align 8, !tbaa !9
  store i32 %364, ptr %1, align 4, !tbaa !45
  %374 = getelementptr inbounds %struct.BF_FrameResults, ptr %1, i64 0, i32 1
  store i32 0, ptr %374, align 4, !tbaa !47
  %375 = load i32, ptr %83, align 4, !tbaa !26
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %470

377:                                              ; preds = %372, %464
  %378 = phi i64 [ %466, %464 ], [ 0, %372 ]
  %379 = phi i32 [ %465, %464 ], [ 0, %372 ]
  %380 = load i32, ptr %86, align 8, !tbaa !25
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %464

382:                                              ; preds = %377, %457
  %383 = phi i64 [ %460, %457 ], [ 0, %377 ]
  %384 = phi i32 [ %459, %457 ], [ %379, %377 ]
  %385 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 7, i64 %378, i64 %383
  %386 = load ptr, ptr %385, align 8, !tbaa !9
  %387 = load i32, ptr %386, align 8, !tbaa !16
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %407, label %389

389:                                              ; preds = %382
  %390 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %386, i64 0, i32 1
  %391 = load ptr, ptr %390, align 8, !tbaa !21
  br label %392

392:                                              ; preds = %392, %389
  %393 = phi i32 [ %402, %392 ], [ 0, %389 ]
  %394 = phi i32 [ %403, %392 ], [ 0, %389 ]
  %395 = phi ptr [ %404, %392 ], [ %391, %389 ]
  %396 = load i32, ptr %395, align 4, !tbaa !48
  %397 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %395, i64 0, i32 1
  %398 = load i16, ptr %397, align 4, !tbaa !36
  %399 = zext i16 %398 to i32
  tail call fastcc void @WriteMainDataBits(i32 noundef %396, i32 noundef %399)
  %400 = load i16, ptr %397, align 4, !tbaa !36
  %401 = zext i16 %400 to i32
  %402 = add nuw nsw i32 %393, %401
  %403 = add nuw i32 %394, 1
  %404 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %395, i64 1
  %405 = load i32, ptr %386, align 8, !tbaa !16
  %406 = icmp ult i32 %403, %405
  br i1 %406, label %392, label %407, !llvm.loop !49

407:                                              ; preds = %392, %382
  %408 = phi i32 [ 0, %382 ], [ %402, %392 ]
  %409 = add nsw i32 %408, %384
  %410 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 8, i64 %378, i64 %383
  %411 = load ptr, ptr %410, align 8, !tbaa !9
  %412 = load i32, ptr %411, align 8, !tbaa !16
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %432, label %414

414:                                              ; preds = %407
  %415 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %411, i64 0, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !21
  br label %417

417:                                              ; preds = %417, %414
  %418 = phi i32 [ %427, %417 ], [ 0, %414 ]
  %419 = phi i32 [ %428, %417 ], [ 0, %414 ]
  %420 = phi ptr [ %429, %417 ], [ %416, %414 ]
  %421 = load i32, ptr %420, align 4, !tbaa !48
  %422 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %420, i64 0, i32 1
  %423 = load i16, ptr %422, align 4, !tbaa !36
  %424 = zext i16 %423 to i32
  tail call fastcc void @WriteMainDataBits(i32 noundef %421, i32 noundef %424)
  %425 = load i16, ptr %422, align 4, !tbaa !36
  %426 = zext i16 %425 to i32
  %427 = add nuw nsw i32 %418, %426
  %428 = add nuw i32 %419, 1
  %429 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %420, i64 1
  %430 = load i32, ptr %411, align 8, !tbaa !16
  %431 = icmp ult i32 %428, %430
  br i1 %431, label %417, label %432, !llvm.loop !49

432:                                              ; preds = %417, %407
  %433 = phi i32 [ 0, %407 ], [ %427, %417 ]
  %434 = add nsw i32 %409, %433
  %435 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 9, i64 %378, i64 %383
  %436 = load ptr, ptr %435, align 8, !tbaa !9
  %437 = load i32, ptr %436, align 8, !tbaa !16
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %457, label %439

439:                                              ; preds = %432
  %440 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %436, i64 0, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !21
  br label %442

442:                                              ; preds = %442, %439
  %443 = phi i32 [ %452, %442 ], [ 0, %439 ]
  %444 = phi i32 [ %453, %442 ], [ 0, %439 ]
  %445 = phi ptr [ %454, %442 ], [ %441, %439 ]
  %446 = load i32, ptr %445, align 4, !tbaa !48
  %447 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %445, i64 0, i32 1
  %448 = load i16, ptr %447, align 4, !tbaa !36
  %449 = zext i16 %448 to i32
  tail call fastcc void @WriteMainDataBits(i32 noundef %446, i32 noundef %449)
  %450 = load i16, ptr %447, align 4, !tbaa !36
  %451 = zext i16 %450 to i32
  %452 = add nuw nsw i32 %443, %451
  %453 = add nuw i32 %444, 1
  %454 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %445, i64 1
  %455 = load i32, ptr %436, align 8, !tbaa !16
  %456 = icmp ult i32 %453, %455
  br i1 %456, label %442, label %457, !llvm.loop !49

457:                                              ; preds = %442, %432
  %458 = phi i32 [ 0, %432 ], [ %452, %442 ]
  %459 = add nsw i32 %434, %458
  %460 = add nuw nsw i64 %383, 1
  %461 = load i32, ptr %86, align 8, !tbaa !25
  %462 = sext i32 %461 to i64
  %463 = icmp slt i64 %460, %462
  br i1 %463, label %382, label %464, !llvm.loop !50

464:                                              ; preds = %457, %377
  %465 = phi i32 [ %379, %377 ], [ %459, %457 ]
  %466 = add nuw nsw i64 %378, 1
  %467 = load i32, ptr %83, align 4, !tbaa !26
  %468 = sext i32 %467 to i64
  %469 = icmp slt i64 %466, %468
  br i1 %469, label %377, label %470, !llvm.loop !51

470:                                              ; preds = %464, %372
  %471 = phi i32 [ 0, %372 ], [ %465, %464 ]
  %472 = getelementptr inbounds %struct.BF_FrameData, ptr %0, i64 0, i32 10
  %473 = load ptr, ptr %472, align 8, !tbaa !52
  %474 = load i32, ptr %473, align 8, !tbaa !16
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %494, label %476

476:                                              ; preds = %470
  %477 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %473, i64 0, i32 1
  %478 = load ptr, ptr %477, align 8, !tbaa !21
  br label %479

479:                                              ; preds = %479, %476
  %480 = phi i32 [ %489, %479 ], [ 0, %476 ]
  %481 = phi i32 [ %490, %479 ], [ 0, %476 ]
  %482 = phi ptr [ %491, %479 ], [ %478, %476 ]
  %483 = load i32, ptr %482, align 4, !tbaa !48
  %484 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %482, i64 0, i32 1
  %485 = load i16, ptr %484, align 4, !tbaa !36
  %486 = zext i16 %485 to i32
  tail call fastcc void @WriteMainDataBits(i32 noundef %483, i32 noundef %486)
  %487 = load i16, ptr %484, align 4, !tbaa !36
  %488 = zext i16 %487 to i32
  %489 = add nuw nsw i32 %480, %488
  %490 = add nuw i32 %481, 1
  %491 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %482, i64 1
  %492 = load i32, ptr %473, align 8, !tbaa !16
  %493 = icmp ult i32 %490, %492
  br i1 %493, label %479, label %494, !llvm.loop !49

494:                                              ; preds = %479, %470
  %495 = phi i32 [ 0, %470 ], [ %489, %479 ]
  %496 = add nsw i32 %495, %471
  store i32 %496, ptr %374, align 4, !tbaa !47
  store i32 0, ptr @forwardFrameLength, align 4, !tbaa !5
  %497 = load ptr, ptr @side_queue_head, align 8, !tbaa !9
  %498 = icmp eq ptr %497, null
  br i1 %498, label %514, label %499

499:                                              ; preds = %494, %499
  %500 = phi ptr [ %511, %499 ], [ %497, %494 ]
  %501 = phi i32 [ %504, %499 ], [ 0, %494 ]
  %502 = phi i32 [ %510, %499 ], [ 0, %494 ]
  %503 = phi i32 [ %507, %499 ], [ 0, %494 ]
  %504 = add nuw nsw i32 %501, 1
  %505 = getelementptr inbounds %struct.side_info_link, ptr %500, i64 0, i32 1
  %506 = load i32, ptr %505, align 8, !tbaa !32
  %507 = add nsw i32 %506, %503
  %508 = getelementptr inbounds %struct.side_info_link, ptr %500, i64 0, i32 1, i32 1
  %509 = load i32, ptr %508, align 4, !tbaa !43
  %510 = add nsw i32 %509, %502
  %511 = load ptr, ptr %500, align 8, !tbaa !9
  %512 = icmp eq ptr %511, null
  br i1 %512, label %513, label %499, !llvm.loop !53

513:                                              ; preds = %499
  store i32 %507, ptr @forwardFrameLength, align 4, !tbaa !5
  br label %514

514:                                              ; preds = %494, %513
  %515 = phi i32 [ %510, %513 ], [ 0, %494 ]
  %516 = phi i32 [ %504, %513 ], [ 0, %494 ]
  store i32 %515, ptr @forwardSILength, align 4, !tbaa !5
  store i32 %516, ptr @elements, align 4, !tbaa !5
  %517 = load i32, ptr @BitsRemaining, align 4, !tbaa !5
  %518 = sdiv i32 %517, 8
  %519 = load i32, ptr @forwardFrameLength, align 4, !tbaa !5
  %520 = sdiv i32 %519, 8
  %521 = sdiv i32 %515, -8
  %522 = add nsw i32 %518, %521
  %523 = add nsw i32 %522, %520
  %524 = getelementptr inbounds %struct.BF_FrameResults, ptr %1, i64 0, i32 2
  store i32 %523, ptr %524, align 4, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BF_FlushBitstream(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = load i32, ptr @elements, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @forwardFrameLength, align 4, !tbaa !5
  %7 = load i32, ptr @forwardSILength, align 4, !tbaa !5
  %8 = sub nsw i32 %6, %7
  %9 = add i32 %8, 31
  %10 = icmp ult i32 %9, 63
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = sdiv i32 %8, 32
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i32 [ %15, %13 ], [ %12, %11 ]
  %15 = add nsw i32 %14, -1
  tail call fastcc void @WriteMainDataBits(i32 noundef 0, i32 noundef 32)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %13, !llvm.loop !55

17:                                               ; preds = %13, %5
  %18 = srem i32 %8, 32
  tail call fastcc void @WriteMainDataBits(i32 noundef 0, i32 noundef %18)
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32, ptr @forwardFrameLength, align 4, !tbaa !5
  %21 = load i32, ptr @forwardSILength, align 4, !tbaa !5
  %22 = sub nsw i32 %20, %21
  %23 = getelementptr inbounds %struct.BF_FrameResults, ptr %1, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !47
  store i32 %21, ptr %1, align 4, !tbaa !45
  %24 = getelementptr inbounds %struct.BF_FrameResults, ptr %1, i64 0, i32 2
  store i32 0, ptr %24, align 4, !tbaa !54
  %25 = load ptr, ptr @side_queue_head, align 8, !tbaa !9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %19, %27
  %28 = phi ptr [ %29, %27 ], [ %25, %19 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  tail call fastcc void @free_side_info_link(ptr noundef nonnull %28)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %27, !llvm.loop !56

31:                                               ; preds = %27, %19
  store ptr null, ptr @side_queue_head, align 8, !tbaa !9
  %32 = load ptr, ptr @side_queue_free, align 8, !tbaa !9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %36, %34 ], [ %32, %31 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !11
  tail call fastcc void @free_side_info_link(ptr noundef nonnull %35)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %34, !llvm.loop !57

38:                                               ; preds = %34, %31
  store ptr null, ptr @side_queue_free, align 8, !tbaa !9
  store i32 0, ptr @BitCount, align 4, !tbaa !5
  store i32 0, ptr @ThisFrameSize, align 4, !tbaa !5
  store i32 0, ptr @BitsRemaining, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @WriteMainDataBits(i32 noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr @BitCount, align 4, !tbaa !5
  %6 = load i32, ptr @ThisFrameSize, align 4, !tbaa !5
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @write_side_info()
  store i32 %9, ptr @BitCount, align 4, !tbaa !5
  %10 = load i32, ptr @ThisFrameSize, align 4, !tbaa !5
  %11 = sub nsw i32 %10, %9
  store i32 %11, ptr @BitsRemaining, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %8, %4
  %13 = load i32, ptr @BitsRemaining, align 4, !tbaa !5
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = sub i32 %1, %13
  %17 = lshr i32 %0, %16
  tail call void @putMyBits(i32 noundef %17, i32 noundef %13) #14
  %18 = tail call fastcc i32 @write_side_info()
  store i32 %18, ptr @BitCount, align 4, !tbaa !5
  %19 = load i32, ptr @ThisFrameSize, align 4, !tbaa !5
  %20 = sub nsw i32 %19, %18
  store i32 %20, ptr @BitsRemaining, align 4, !tbaa !5
  br label %21

21:                                               ; preds = %12, %15
  %22 = phi i32 [ %16, %15 ], [ %1, %12 ]
  tail call void @putMyBits(i32 noundef %0, i32 noundef %22) #14
  %23 = load i32, ptr @BitCount, align 4, !tbaa !5
  %24 = add i32 %23, %22
  store i32 %24, ptr @BitCount, align 4, !tbaa !5
  %25 = load i32, ptr @BitsRemaining, align 4, !tbaa !5
  %26 = sub i32 %25, %22
  store i32 %26, ptr @BitsRemaining, align 4, !tbaa !5
  br label %27

27:                                               ; preds = %2, %21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BF_PartLength(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8, !tbaa !16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %14, %7 ], [ 0, %4 ]
  %9 = phi i32 [ %15, %7 ], [ 0, %4 ]
  %10 = phi ptr [ %16, %7 ], [ %6, %4 ]
  %11 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %10, i64 0, i32 1
  %12 = load i16, ptr %11, align 4, !tbaa !36
  %13 = zext i16 %12 to i32
  %14 = add nuw nsw i32 %8, %13
  %15 = add nuw i32 %9, 1
  %16 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %10, i64 1
  %17 = icmp eq i32 %15, %2
  br i1 %17, label %18, label %7, !llvm.loop !39

18:                                               ; preds = %7, %1
  %19 = phi i32 [ 0, %1 ], [ %14, %7 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @BF_newPartHolder(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  store i32 %0, ptr %2, align 8, !tbaa !18
  %3 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  %4 = getelementptr inbounds %struct.BF_PartHolder, ptr %2, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !20
  %5 = sext i32 %0 to i64
  %6 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 8) #11
  %7 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %3, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !21
  store i32 0, ptr %3, align 8, !tbaa !16
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @BF_NewHolderFromBitstreamPart(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8, !tbaa !16
  %3 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  store i32 %2, ptr %3, align 8, !tbaa !18
  %4 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  %5 = getelementptr inbounds %struct.BF_PartHolder, ptr %3, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !20
  %6 = sext i32 %2 to i64
  %7 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 8) #11
  %8 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !21
  store i32 0, ptr %4, align 8, !tbaa !16
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %0, i64 0, i32 1
  br label %12

12:                                               ; preds = %26, %10
  %13 = phi i64 [ 0, %10 ], [ %37, %26 ]
  %14 = phi ptr [ %3, %10 ], [ %27, %26 ]
  %15 = load ptr, ptr %11, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %15, i64 %13
  %17 = getelementptr inbounds %struct.BF_PartHolder, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = load i32, ptr %18, align 8, !tbaa !16
  %20 = add i32 %19, 1
  %21 = load i32, ptr %14, align 8, !tbaa !18
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = add i32 %19, 9
  %25 = tail call ptr @BF_resizePartHolder(ptr noundef nonnull %14, i32 noundef %24)
  br label %26

26:                                               ; preds = %23, %12
  %27 = phi ptr [ %25, %23 ], [ %14, %12 ]
  %28 = getelementptr inbounds %struct.BF_PartHolder, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !21
  %32 = load i32, ptr %29, align 8, !tbaa !16
  %33 = add i32 %32, 1
  store i32 %33, ptr %29, align 8, !tbaa !16
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %31, i64 %34
  %36 = load i64, ptr %16, align 4
  store i64 %36, ptr %35, align 4
  %37 = add nuw nsw i64 %13, 1
  %38 = load i32, ptr %0, align 8, !tbaa !16
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %12, label %41, !llvm.loop !35

41:                                               ; preds = %26, %1
  %42 = phi ptr [ %3, %1 ], [ %27, %26 ]
  ret ptr %42
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  store i32 0, ptr %4, align 8, !tbaa !16
  %5 = load i32, ptr %1, align 8, !tbaa !16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %1, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %23
  %10 = phi i64 [ 0, %7 ], [ %34, %23 ]
  %11 = phi ptr [ %0, %7 ], [ %24, %23 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %12, i64 %10
  %14 = getelementptr inbounds %struct.BF_PartHolder, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = load i32, ptr %15, align 8, !tbaa !16
  %17 = add i32 %16, 1
  %18 = load i32, ptr %11, align 8, !tbaa !18
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  %21 = add i32 %16, 9
  %22 = tail call ptr @BF_resizePartHolder(ptr noundef nonnull %11, i32 noundef %21)
  br label %23

23:                                               ; preds = %9, %20
  %24 = phi ptr [ %22, %20 ], [ %11, %9 ]
  %25 = getelementptr inbounds %struct.BF_PartHolder, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !20
  %27 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = load i32, ptr %26, align 8, !tbaa !16
  %30 = add i32 %29, 1
  store i32 %30, ptr %26, align 8, !tbaa !16
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %28, i64 %31
  %33 = load i64, ptr %13, align 4
  store i64 %33, ptr %32, align 4
  %34 = add nuw nsw i64 %10, 1
  %35 = load i32, ptr %1, align 8, !tbaa !16
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %9, label %38, !llvm.loop !35

38:                                               ; preds = %23, %2
  %39 = phi ptr [ %0, %2 ], [ %24, %23 ]
  ret ptr %39
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BF_addElement(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = load i32, ptr %4, align 8, !tbaa !16
  %6 = add i32 %5, 1
  %7 = load i32, ptr %0, align 8, !tbaa !18
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = add i32 %5, 9
  %11 = tail call ptr @BF_resizePartHolder(ptr noundef nonnull %0, i32 noundef %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %14 = getelementptr inbounds %struct.BF_PartHolder, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = load i32, ptr %15, align 8, !tbaa !16
  %19 = add i32 %18, 1
  store i32 %19, ptr %15, align 8, !tbaa !16
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %17, i64 %20
  %22 = load i64, ptr %1, align 4
  store i64 %22, ptr %21, align 4
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @BF_resizePartHolder(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  store i32 %1, ptr %3, align 8, !tbaa !18
  %4 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11
  %5 = getelementptr inbounds %struct.BF_PartHolder, ptr %3, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !20
  %6 = sext i32 %1 to i64
  %7 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 8) #11
  %8 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !21
  store i32 0, ptr %4, align 8, !tbaa !16
  %9 = load i32, ptr %0, align 8, !tbaa !18
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 %1)
  store i32 %10, ptr %4, align 8, !tbaa !16
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i64 0, i32 1
  %14 = zext nneg i32 %10 to i64
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %24, %15 ]
  %17 = load ptr, ptr %8, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %17, i64 %16
  %19 = load ptr, ptr %13, align 8, !tbaa !20
  %20 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %21, i64 %16
  %23 = load i64, ptr %22, align 4
  store i64 %23, ptr %18, align 4
  %24 = add nuw nsw i64 %16, 1
  %25 = icmp eq i64 %24, %14
  br i1 %25, label %26, label %15, !llvm.loop !58

26:                                               ; preds = %15, %2
  %27 = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  tail call void @free(ptr noundef %30) #14
  %31 = load ptr, ptr %27, align 8, !tbaa !20
  tail call void @free(ptr noundef %31) #14
  tail call void @free(ptr noundef %0) #14
  ret ptr %3
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local noalias noundef ptr @BF_freePartHolder(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  tail call void @free(ptr noundef %5) #14
  %6 = load ptr, ptr %2, align 8, !tbaa !20
  tail call void @free(ptr noundef %6) #14
  tail call void @free(ptr noundef %0) #14
  ret ptr null
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BF_addEntry(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = load i32, ptr %7, align 8, !tbaa !16
  %9 = add i32 %8, 1
  %10 = load i32, ptr %0, align 8, !tbaa !18
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = add i32 %8, 9
  %14 = tail call ptr @BF_resizePartHolder(ptr noundef nonnull %0, i32 noundef %13)
  br label %15

15:                                               ; preds = %5, %12
  %16 = phi ptr [ %14, %12 ], [ %0, %5 ]
  %17 = getelementptr inbounds %struct.BF_PartHolder, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = load i32, ptr %18, align 8, !tbaa !16
  %22 = add i32 %21, 1
  store i32 %22, ptr %18, align 8, !tbaa !16
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %20, i64 %23
  %25 = and i32 %2, 65535
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 32
  %28 = zext i32 %1 to i64
  %29 = or disjoint i64 %27, %28
  store i64 %29, ptr %24, align 4
  br label %30

30:                                               ; preds = %3, %15
  %31 = phi ptr [ %16, %15 ], [ %0, %3 ]
  ret ptr %31
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @write_side_info() unnamed_addr #1 {
  %1 = load ptr, ptr @side_queue_free, align 8, !tbaa !9
  %2 = load ptr, ptr @side_queue_head, align 8, !tbaa !9
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  store ptr %3, ptr @side_queue_head, align 8, !tbaa !9
  store ptr %2, ptr @side_queue_free, align 8, !tbaa !9
  store ptr %1, ptr %2, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.side_info_link, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !59
  store i32 %5, ptr @ThisFrameSize, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.side_info_link, ptr %2, i64 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.BF_PartHolder, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i32 [ %25, %15 ], [ 0, %12 ]
  %17 = phi i32 [ %26, %15 ], [ 0, %12 ]
  %18 = phi ptr [ %27, %15 ], [ %14, %12 ]
  %19 = load i32, ptr %18, align 4, !tbaa !48
  %20 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %18, i64 0, i32 1
  %21 = load i16, ptr %20, align 4, !tbaa !36
  %22 = zext i16 %21 to i32
  tail call void @putMyBits(i32 noundef %19, i32 noundef %22) #14
  %23 = load i16, ptr %20, align 4, !tbaa !36
  %24 = zext i16 %23 to i32
  %25 = add nuw nsw i32 %16, %24
  %26 = add nuw i32 %17, 1
  %27 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %18, i64 1
  %28 = load i32, ptr %9, align 8, !tbaa !16
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %15, label %30, !llvm.loop !61

30:                                               ; preds = %15, %0
  %31 = phi i32 [ 0, %0 ], [ %25, %15 ]
  %32 = getelementptr inbounds %struct.side_info_link, ptr %2, i64 0, i32 1, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = getelementptr inbounds %struct.BF_PartHolder, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !20
  %36 = load i32, ptr %35, align 8, !tbaa !16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !21
  br label %41

41:                                               ; preds = %41, %38
  %42 = phi i32 [ %51, %41 ], [ 0, %38 ]
  %43 = phi i32 [ %52, %41 ], [ 0, %38 ]
  %44 = phi ptr [ %53, %41 ], [ %40, %38 ]
  %45 = load i32, ptr %44, align 4, !tbaa !48
  %46 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %44, i64 0, i32 1
  %47 = load i16, ptr %46, align 4, !tbaa !36
  %48 = zext i16 %47 to i32
  tail call void @putMyBits(i32 noundef %45, i32 noundef %48) #14
  %49 = load i16, ptr %46, align 4, !tbaa !36
  %50 = zext i16 %49 to i32
  %51 = add nuw nsw i32 %42, %50
  %52 = add nuw i32 %43, 1
  %53 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %44, i64 1
  %54 = load i32, ptr %35, align 8, !tbaa !16
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %41, label %56, !llvm.loop !61

56:                                               ; preds = %41, %30
  %57 = phi i32 [ 0, %30 ], [ %51, %41 ]
  %58 = add nsw i32 %57, %31
  %59 = getelementptr inbounds %struct.side_info_link, ptr %2, i64 0, i32 1, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !63
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %95, %56
  %63 = phi i32 [ %58, %56 ], [ %97, %95 ]
  %64 = getelementptr inbounds %struct.side_info_link, ptr %2, i64 0, i32 1, i32 3
  %65 = getelementptr inbounds %struct.side_info_link, ptr %2, i64 0, i32 1, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !64
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %102, label %147

68:                                               ; preds = %56, %95
  %69 = phi i64 [ %98, %95 ], [ 0, %56 ]
  %70 = phi i32 [ %97, %95 ], [ %58, %56 ]
  %71 = getelementptr inbounds %struct.side_info_link, ptr %2, i64 0, i32 1, i32 6, i64 %69
  %72 = load ptr, ptr %71, align 8, !tbaa !9
  %73 = getelementptr inbounds %struct.BF_PartHolder, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !20
  %75 = load i32, ptr %74, align 8, !tbaa !16
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %95, label %77

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %74, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !21
  br label %80

80:                                               ; preds = %80, %77
  %81 = phi i32 [ %90, %80 ], [ 0, %77 ]
  %82 = phi i32 [ %91, %80 ], [ 0, %77 ]
  %83 = phi ptr [ %92, %80 ], [ %79, %77 ]
  %84 = load i32, ptr %83, align 4, !tbaa !48
  %85 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %83, i64 0, i32 1
  %86 = load i16, ptr %85, align 4, !tbaa !36
  %87 = zext i16 %86 to i32
  tail call void @putMyBits(i32 noundef %84, i32 noundef %87) #14
  %88 = load i16, ptr %85, align 4, !tbaa !36
  %89 = zext i16 %88 to i32
  %90 = add nuw nsw i32 %81, %89
  %91 = add nuw i32 %82, 1
  %92 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %83, i64 1
  %93 = load i32, ptr %74, align 8, !tbaa !16
  %94 = icmp ult i32 %91, %93
  br i1 %94, label %80, label %95, !llvm.loop !61

95:                                               ; preds = %80, %68
  %96 = phi i32 [ 0, %68 ], [ %90, %80 ]
  %97 = add nsw i32 %96, %70
  %98 = add nuw nsw i64 %69, 1
  %99 = load i32, ptr %59, align 4, !tbaa !63
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %68, label %62, !llvm.loop !65

102:                                              ; preds = %62, %141
  %103 = phi i64 [ %143, %141 ], [ 0, %62 ]
  %104 = phi i32 [ %142, %141 ], [ %63, %62 ]
  %105 = load i32, ptr %64, align 4, !tbaa !63
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %102, %134
  %108 = phi i64 [ %137, %134 ], [ 0, %102 ]
  %109 = phi i32 [ %136, %134 ], [ %104, %102 ]
  %110 = getelementptr inbounds %struct.side_info_link, ptr %2, i64 0, i32 1, i32 7, i64 %103, i64 %108
  %111 = load ptr, ptr %110, align 8, !tbaa !9
  %112 = getelementptr inbounds %struct.BF_PartHolder, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !20
  %114 = load i32, ptr %113, align 8, !tbaa !16
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %134, label %116

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %113, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !21
  br label %119

119:                                              ; preds = %119, %116
  %120 = phi i32 [ %129, %119 ], [ 0, %116 ]
  %121 = phi i32 [ %130, %119 ], [ 0, %116 ]
  %122 = phi ptr [ %131, %119 ], [ %118, %116 ]
  %123 = load i32, ptr %122, align 4, !tbaa !48
  %124 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %122, i64 0, i32 1
  %125 = load i16, ptr %124, align 4, !tbaa !36
  %126 = zext i16 %125 to i32
  tail call void @putMyBits(i32 noundef %123, i32 noundef %126) #14
  %127 = load i16, ptr %124, align 4, !tbaa !36
  %128 = zext i16 %127 to i32
  %129 = add nuw nsw i32 %120, %128
  %130 = add nuw i32 %121, 1
  %131 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %122, i64 1
  %132 = load i32, ptr %113, align 8, !tbaa !16
  %133 = icmp ult i32 %130, %132
  br i1 %133, label %119, label %134, !llvm.loop !61

134:                                              ; preds = %119, %107
  %135 = phi i32 [ 0, %107 ], [ %129, %119 ]
  %136 = add nsw i32 %135, %109
  %137 = add nuw nsw i64 %108, 1
  %138 = load i32, ptr %64, align 4, !tbaa !63
  %139 = sext i32 %138 to i64
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %107, label %141, !llvm.loop !66

141:                                              ; preds = %134, %102
  %142 = phi i32 [ %104, %102 ], [ %136, %134 ]
  %143 = add nuw nsw i64 %103, 1
  %144 = load i32, ptr %65, align 8, !tbaa !64
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %143, %145
  br i1 %146, label %102, label %147, !llvm.loop !67

147:                                              ; preds = %141, %62
  %148 = phi i32 [ %63, %62 ], [ %142, %141 ]
  ret i32 %148
}

declare void @putMyBits(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @free_side_info_link(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.side_info_link, ptr %0, i64 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.BF_PartHolder, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  tail call void @free(ptr noundef %7) #14
  %8 = load ptr, ptr %4, align 8, !tbaa !20
  tail call void @free(ptr noundef %8) #14
  tail call void @free(ptr noundef %3) #14
  store ptr null, ptr %2, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.side_info_link, ptr %0, i64 0, i32 1, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.BF_PartHolder, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  %13 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  tail call void @free(ptr noundef %14) #14
  %15 = load ptr, ptr %11, align 8, !tbaa !20
  tail call void @free(ptr noundef %15) #14
  tail call void @free(ptr noundef %10) #14
  store ptr null, ptr %9, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.side_info_link, ptr %0, i64 0, i32 1, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !34
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %24, %1
  %20 = getelementptr inbounds %struct.side_info_link, ptr %0, i64 0, i32 1, i32 3
  %21 = getelementptr inbounds %struct.side_info_link, ptr %0, i64 0, i32 1, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !33
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %37, label %59

24:                                               ; preds = %1, %24
  %25 = phi i64 [ %33, %24 ], [ 0, %1 ]
  %26 = getelementptr inbounds %struct.side_info_link, ptr %0, i64 0, i32 1, i32 6, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  %28 = getelementptr inbounds %struct.BF_PartHolder, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !21
  tail call void @free(ptr noundef %31) #14
  %32 = load ptr, ptr %28, align 8, !tbaa !20
  tail call void @free(ptr noundef %32) #14
  tail call void @free(ptr noundef %27) #14
  store ptr null, ptr %26, align 8, !tbaa !9
  %33 = add nuw nsw i64 %25, 1
  %34 = load i32, ptr %16, align 4, !tbaa !34
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %24, label %19, !llvm.loop !68

37:                                               ; preds = %19, %54
  %38 = phi i64 [ %55, %54 ], [ 0, %19 ]
  %39 = load i32, ptr %20, align 4, !tbaa !34
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37, %41
  %42 = phi i64 [ %50, %41 ], [ 0, %37 ]
  %43 = getelementptr inbounds %struct.side_info_link, ptr %0, i64 0, i32 1, i32 7, i64 %38, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.BF_PartHolder, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !20
  %47 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !21
  tail call void @free(ptr noundef %48) #14
  %49 = load ptr, ptr %45, align 8, !tbaa !20
  tail call void @free(ptr noundef %49) #14
  tail call void @free(ptr noundef %44) #14
  store ptr null, ptr %43, align 8, !tbaa !9
  %50 = add nuw nsw i64 %42, 1
  %51 = load i32, ptr %20, align 4, !tbaa !34
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %41, label %54, !llvm.loop !69

54:                                               ; preds = %41, %37
  %55 = add nuw nsw i64 %38, 1
  %56 = load i32, ptr %21, align 8, !tbaa !33
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %37, label %59, !llvm.loop !70

59:                                               ; preds = %54, %19
  tail call void @free(ptr noundef %0) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"side_info_link", !10, i64 0, !13, i64 8}
!13 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !10, i64 16, !10, i64 24, !7, i64 32, !7, i64 48}
!14 = !{!15, !10, i64 16}
!15 = !{!"BF_FrameData", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !7, i64 48, !7, i64 80, !7, i64 112, !7, i64 144, !10, i64 176}
!16 = !{!17, !6, i64 0}
!17 = !{!"", !6, i64 0, !10, i64 8}
!18 = !{!19, !6, i64 0}
!19 = !{!"BF_PartHolder", !6, i64 0, !10, i64 8}
!20 = !{!19, !10, i64 8}
!21 = !{!17, !10, i64 8}
!22 = !{!12, !10, i64 24}
!23 = !{!15, !10, i64 24}
!24 = !{!12, !10, i64 32}
!25 = !{!15, !6, i64 8}
!26 = !{!15, !6, i64 4}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = !{!15, !6, i64 0}
!32 = !{!12, !6, i64 8}
!33 = !{!12, !6, i64 16}
!34 = !{!12, !6, i64 20}
!35 = distinct !{!35, !28}
!36 = !{!37, !38, i64 4}
!37 = !{!"", !6, i64 0, !38, i64 4}
!38 = !{!"short", !7, i64 0}
!39 = distinct !{!39, !28}
!40 = distinct !{!40, !28}
!41 = distinct !{!41, !28}
!42 = distinct !{!42, !28}
!43 = !{!12, !6, i64 12}
!44 = distinct !{!44, !28}
!45 = !{!46, !6, i64 0}
!46 = !{!"BF_FrameResults", !6, i64 0, !6, i64 4, !6, i64 8}
!47 = !{!46, !6, i64 4}
!48 = !{!37, !6, i64 0}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = !{!15, !10, i64 176}
!53 = distinct !{!53, !28}
!54 = !{!46, !6, i64 8}
!55 = distinct !{!55, !28}
!56 = distinct !{!56, !28}
!57 = distinct !{!57, !28}
!58 = distinct !{!58, !28}
!59 = !{!13, !6, i64 0}
!60 = !{!13, !10, i64 16}
!61 = distinct !{!61, !28}
!62 = !{!13, !10, i64 24}
!63 = !{!13, !6, i64 12}
!64 = !{!13, !6, i64 8}
!65 = distinct !{!65, !28}
!66 = distinct !{!66, !28}
!67 = distinct !{!67, !28}
!68 = distinct !{!68, !28}
!69 = distinct !{!69, !28}
!70 = distinct !{!70, !28}
