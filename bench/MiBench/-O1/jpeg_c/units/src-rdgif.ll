; ModuleID = 'src/rdgif.c'
source_filename = "src/rdgif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gif_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, [260 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jinit_read_gif(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 440) #4
  %6 = getelementptr inbounds %struct.gif_source_struct, ptr %5, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !16
  store ptr @start_input_gif, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %5, i64 0, i32 2
  store ptr @finish_input_gif, ptr %7, align 8, !tbaa !20
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_input_gif(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = tail call ptr %8(ptr noundef %0, i32 noundef 1, i32 noundef 256, i32 noundef 3) #4
  %10 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 6, ptr noundef %12)
  %14 = icmp eq i64 %13, 6
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 5
  store i32 1016, ptr %17, align 8, !tbaa !25
  %18 = load ptr, ptr %16, align 8, !tbaa !27
  tail call void %18(ptr noundef nonnull %0) #4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i8, ptr %4, align 1, !tbaa !28
  %21 = icmp ne i8 %20, 71
  %22 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 1
  %23 = load i8, ptr %22, align 1
  %24 = icmp ne i8 %23, 73
  %25 = select i1 %21, i1 true, i1 %24
  %26 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 2
  %27 = load i8, ptr %26, align 1
  %28 = icmp ne i8 %27, 70
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load ptr, ptr %0, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 1016, ptr %32, align 8, !tbaa !25
  %33 = load ptr, ptr %31, align 8, !tbaa !27
  tail call void %33(ptr noundef nonnull %0) #4
  br label %34

34:                                               ; preds = %19, %30
  %35 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !28
  %37 = sext i8 %36 to i32
  %38 = icmp ne i8 %36, 56
  %39 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 4
  %40 = load i8, ptr %39, align 1
  %41 = icmp ne i8 %40, 55
  %42 = select i1 %38, i1 true, i1 %41
  %43 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 5
  %44 = load i8, ptr %43, align 1
  %45 = icmp ne i8 %44, 97
  %46 = select i1 %42, i1 true, i1 %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %34
  %48 = icmp ne i8 %40, 57
  %49 = select i1 %38, i1 true, i1 %48
  %50 = select i1 %49, i1 true, i1 %45
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !24
  %53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 6
  store i32 %37, ptr %53, align 4, !tbaa !29
  %54 = sext i8 %40 to i32
  %55 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 6, i32 0, i64 1
  store i32 %54, ptr %55, align 4, !tbaa !29
  %56 = sext i8 %44 to i32
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 6, i32 0, i64 2
  store i32 %56, ptr %57, align 4, !tbaa !29
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 5
  store i32 1018, ptr %58, align 8, !tbaa !25
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !30
  tail call void %60(ptr noundef nonnull %0, i32 noundef 1) #4
  br label %61

61:                                               ; preds = %47, %34, %51
  %62 = load ptr, ptr %11, align 8, !tbaa !23
  %63 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 7, ptr noundef %62)
  %64 = icmp eq i64 %63, 7
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %0, align 8, !tbaa !24
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 5
  store i32 42, ptr %67, align 8, !tbaa !25
  %68 = load ptr, ptr %66, align 8, !tbaa !27
  tail call void %68(ptr noundef nonnull %0) #4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i8, ptr %39, align 1, !tbaa !28
  %71 = and i8 %70, 7
  %72 = zext nneg i8 %71 to i32
  %73 = shl nuw nsw i32 2, %72
  %74 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 6
  %75 = load i8, ptr %74, align 1, !tbaa !28
  switch i8 %75, label %76 [
    i8 49, label %81
    i8 0, label %81
  ]

76:                                               ; preds = %69
  %77 = load ptr, ptr %0, align 8, !tbaa !24
  %78 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %77, i64 0, i32 5
  store i32 1020, ptr %78, align 8, !tbaa !25
  %79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %77, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !30
  tail call void %80(ptr noundef nonnull %0, i32 noundef 1) #4
  br label %81

81:                                               ; preds = %69, %69, %76
  %82 = icmp sgt i8 %70, -1
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr %10, align 8, !tbaa !22
  tail call fastcc void @ReadColorMap(ptr noundef %1, i32 noundef %73, ptr noundef %84)
  br label %85

85:                                               ; preds = %83, %81
  %86 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 1
  %87 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 1
  %88 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 1
  br label %89

89:                                               ; preds = %135, %85
  %90 = load ptr, ptr %11, align 8, !tbaa !23
  %91 = tail call i32 @getc(ptr noundef %90)
  switch i32 %91, label %142 [
    i32 -1, label %92
    i32 59, label %136
    i32 33, label %94
    i32 44, label %149
  ]

92:                                               ; preds = %89
  %93 = load ptr, ptr %88, align 8, !tbaa !16
  br label %136

94:                                               ; preds = %89
  %95 = load ptr, ptr %11, align 8, !tbaa !23
  %96 = tail call i32 @getc(ptr noundef %95)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load ptr, ptr %86, align 8, !tbaa !16
  %100 = load ptr, ptr %99, align 8, !tbaa !24
  %101 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %100, i64 0, i32 5
  store i32 42, ptr %101, align 8, !tbaa !25
  %102 = load ptr, ptr %100, align 8, !tbaa !27
  tail call void %102(ptr noundef nonnull %99) #4
  br label %103

103:                                              ; preds = %98, %94
  %104 = load ptr, ptr %87, align 8, !tbaa !16
  %105 = load ptr, ptr %104, align 8, !tbaa !24
  %106 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %105, i64 0, i32 5
  store i32 1019, ptr %106, align 8, !tbaa !25
  %107 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %105, i64 0, i32 6
  store i32 %96, ptr %107, align 4, !tbaa !28
  %108 = load ptr, ptr %87, align 8, !tbaa !16
  %109 = load ptr, ptr %108, align 8, !tbaa !24
  %110 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !30
  tail call void %111(ptr noundef nonnull %108, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #4
  br label %112

112:                                              ; preds = %133, %103
  %113 = load ptr, ptr %11, align 8, !tbaa !23
  %114 = tail call i32 @getc(ptr noundef %113)
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load ptr, ptr %87, align 8, !tbaa !16
  %118 = load ptr, ptr %117, align 8, !tbaa !24
  %119 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %118, i64 0, i32 5
  store i32 42, ptr %119, align 8, !tbaa !25
  %120 = load ptr, ptr %118, align 8, !tbaa !27
  tail call void %120(ptr noundef nonnull %117) #4
  br label %121

121:                                              ; preds = %116, %112
  %122 = icmp sgt i32 %114, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %121
  %124 = zext nneg i32 %114 to i64
  %125 = load ptr, ptr %11, align 8, !tbaa !23
  %126 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef %124, ptr noundef %125)
  %127 = icmp eq i64 %126, %124
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %87, align 8, !tbaa !16
  %130 = load ptr, ptr %129, align 8, !tbaa !24
  %131 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %130, i64 0, i32 5
  store i32 42, ptr %131, align 8, !tbaa !25
  %132 = load ptr, ptr %130, align 8, !tbaa !27
  tail call void %132(ptr noundef nonnull %129) #4
  br label %133

133:                                              ; preds = %128, %123
  br label %112, !llvm.loop !31

134:                                              ; preds = %121
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #4
  br label %135

135:                                              ; preds = %134, %142
  br label %89, !llvm.loop !33

136:                                              ; preds = %89, %92
  %137 = phi ptr [ %93, %92 ], [ %0, %89 ]
  %138 = phi i32 [ 42, %92 ], [ 1015, %89 ]
  %139 = load ptr, ptr %137, align 8, !tbaa !24
  %140 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %139, i64 0, i32 5
  store i32 %138, ptr %140, align 8, !tbaa !25
  %141 = load ptr, ptr %139, align 8, !tbaa !27
  tail call void %141(ptr noundef nonnull %137) #4
  br label %142

142:                                              ; preds = %136, %89
  %143 = load ptr, ptr %0, align 8, !tbaa !24
  %144 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %143, i64 0, i32 5
  store i32 1022, ptr %144, align 8, !tbaa !25
  %145 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %143, i64 0, i32 6
  store i32 %91, ptr %145, align 4, !tbaa !28
  %146 = load ptr, ptr %0, align 8, !tbaa !24
  %147 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !30
  tail call void %148(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %135

149:                                              ; preds = %89
  %150 = load ptr, ptr %11, align 8, !tbaa !23
  %151 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 9, ptr noundef %150)
  %152 = icmp eq i64 %151, 9
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr %0, align 8, !tbaa !24
  %155 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %154, i64 0, i32 5
  store i32 42, ptr %155, align 8, !tbaa !25
  %156 = load ptr, ptr %154, align 8, !tbaa !27
  tail call void %156(ptr noundef nonnull %0) #4
  br label %157

157:                                              ; preds = %153, %149
  %158 = load i8, ptr %43, align 1, !tbaa !28
  %159 = zext i8 %158 to i32
  %160 = shl nuw nsw i32 %159, 8
  %161 = load i8, ptr %39, align 1, !tbaa !28
  %162 = zext i8 %161 to i32
  %163 = or disjoint i32 %160, %162
  %164 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 7
  %165 = load i8, ptr %164, align 1, !tbaa !28
  %166 = zext i8 %165 to i32
  %167 = shl nuw nsw i32 %166, 8
  %168 = load i8, ptr %74, align 1, !tbaa !28
  %169 = zext i8 %168 to i32
  %170 = or disjoint i32 %167, %169
  %171 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 8
  %172 = load i8, ptr %171, align 1, !tbaa !28
  %173 = and i8 %172, 64
  %174 = zext nneg i8 %173 to i32
  %175 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 21
  store i32 %174, ptr %175, align 8, !tbaa !34
  %176 = icmp sgt i8 %172, -1
  br i1 %176, label %182, label %177

177:                                              ; preds = %157
  %178 = and i8 %172, 7
  %179 = zext nneg i8 %178 to i32
  %180 = shl nuw nsw i32 2, %179
  %181 = load ptr, ptr %10, align 8, !tbaa !22
  tail call fastcc void @ReadColorMap(ptr noundef %1, i32 noundef %180, ptr noundef %181)
  br label %182

182:                                              ; preds = %177, %157
  %183 = phi i32 [ %180, %177 ], [ %73, %157 ]
  %184 = load ptr, ptr %11, align 8, !tbaa !23
  %185 = tail call i32 @getc(ptr noundef %184)
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !16
  %190 = load ptr, ptr %189, align 8, !tbaa !24
  %191 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %190, i64 0, i32 5
  store i32 42, ptr %191, align 8, !tbaa !25
  %192 = load ptr, ptr %190, align 8, !tbaa !27
  tail call void %192(ptr noundef nonnull %189) #4
  br label %193

193:                                              ; preds = %182, %187
  %194 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 8
  store i32 %185, ptr %194, align 4, !tbaa !35
  %195 = add i32 %185, -12
  %196 = icmp ult i32 %195, -10
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load ptr, ptr %0, align 8, !tbaa !24
  %199 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %198, i64 0, i32 5
  store i32 1013, ptr %199, align 8, !tbaa !25
  %200 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %198, i64 0, i32 6
  store i32 %185, ptr %200, align 4, !tbaa !28
  %201 = load ptr, ptr %0, align 8, !tbaa !24
  %202 = load ptr, ptr %201, align 8, !tbaa !27
  tail call void %202(ptr noundef nonnull %0) #4
  br label %203

203:                                              ; preds = %193, %197
  %204 = load ptr, ptr %5, align 8, !tbaa !5
  %205 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %204, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !36
  %207 = tail call ptr %206(ptr noundef %0, i32 noundef 1, i64 noundef 8192) #4
  %208 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 17
  store ptr %207, ptr %208, align 8, !tbaa !37
  %209 = load ptr, ptr %5, align 8, !tbaa !5
  %210 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %209, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !36
  %212 = tail call ptr %211(ptr noundef %0, i32 noundef 1, i64 noundef 4096) #4
  %213 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 18
  store ptr %212, ptr %213, align 8, !tbaa !38
  %214 = load ptr, ptr %5, align 8, !tbaa !5
  %215 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %214, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !36
  %217 = tail call ptr %216(ptr noundef %0, i32 noundef 1, i64 noundef 4096) #4
  %218 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 19
  store ptr %217, ptr %218, align 8, !tbaa !39
  %219 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 4
  store i32 2, ptr %219, align 4, !tbaa !40
  %220 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 5
  store i32 0, ptr %220, align 8, !tbaa !41
  %221 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 6
  store i32 0, ptr %221, align 4, !tbaa !42
  %222 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 7
  store i32 0, ptr %222, align 8, !tbaa !43
  %223 = load i32, ptr %194, align 4, !tbaa !35
  %224 = shl nuw i32 1, %223
  %225 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 9
  store i32 %224, ptr %225, align 8, !tbaa !44
  %226 = add nuw nsw i32 %224, 1
  %227 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 10
  store i32 %226, ptr %227, align 4, !tbaa !45
  %228 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 14
  store i32 1, ptr %228, align 4, !tbaa !46
  %229 = add nsw i32 %223, 1
  %230 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 11
  store i32 %229, ptr %230, align 8, !tbaa !47
  %231 = shl i32 2, %223
  %232 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 12
  store i32 %231, ptr %232, align 4, !tbaa !48
  %233 = add nuw nsw i32 %224, 2
  %234 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 13
  store i32 %233, ptr %234, align 8, !tbaa !49
  %235 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 20
  store ptr %217, ptr %235, align 8, !tbaa !50
  %236 = load i32, ptr %175, align 8, !tbaa !34
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %251, label %238

238:                                              ; preds = %203
  %239 = load ptr, ptr %5, align 8, !tbaa !5
  %240 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %239, i64 0, i32 4
  %241 = load ptr, ptr %240, align 8, !tbaa !51
  %242 = tail call ptr %241(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef %163, i32 noundef %170, i32 noundef 1) #4
  %243 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 22
  store ptr %242, ptr %243, align 8, !tbaa !52
  %244 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !53
  %246 = icmp eq ptr %245, null
  br i1 %246, label %251, label %247

247:                                              ; preds = %238
  %248 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %245, i64 0, i32 2
  %249 = load i32, ptr %248, align 4, !tbaa !54
  %250 = add nsw i32 %249, 1
  store i32 %250, ptr %248, align 4, !tbaa !54
  br label %251

251:                                              ; preds = %203, %238, %247
  %252 = phi ptr [ @load_interlaced_image, %247 ], [ @load_interlaced_image, %238 ], [ @get_pixel_rows, %203 ]
  %253 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr %252, ptr %253, align 8, !tbaa !57
  %254 = load ptr, ptr %5, align 8, !tbaa !5
  %255 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %254, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !21
  %257 = mul nuw nsw i32 %163, 3
  %258 = tail call ptr %256(ptr noundef %0, i32 noundef 1, i32 noundef %257, i32 noundef 1) #4
  %259 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %258, ptr %259, align 8, !tbaa !58
  %260 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %260, align 8, !tbaa !59
  %261 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 2, ptr %261, align 4, !tbaa !60
  %262 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 3, ptr %262, align 8, !tbaa !61
  %263 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %263, align 8, !tbaa !62
  %264 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  store i32 %163, ptr %264, align 8, !tbaa !63
  %265 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  store i32 %170, ptr %265, align 4, !tbaa !64
  %266 = load ptr, ptr %0, align 8, !tbaa !24
  %267 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %266, i64 0, i32 6
  store i32 %163, ptr %267, align 4, !tbaa !29
  %268 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %266, i64 0, i32 6, i32 0, i64 1
  store i32 %170, ptr %268, align 4, !tbaa !29
  %269 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %266, i64 0, i32 6, i32 0, i64 2
  store i32 %183, ptr %269, align 4, !tbaa !29
  %270 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %266, i64 0, i32 5
  store i32 1017, ptr %270, align 8, !tbaa !25
  %271 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %266, i64 0, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !30
  tail call void %272(ptr noundef nonnull %0, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @finish_input_gif(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @ReadColorMap(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %53

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds ptr, ptr %2, i64 1
  %10 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds ptr, ptr %2, i64 2
  %12 = zext nneg i32 %1 to i64
  br label %13

13:                                               ; preds = %5, %47
  %14 = phi i64 [ 0, %5 ], [ %51, %47 ]
  %15 = load ptr, ptr %6, align 8, !tbaa !23
  %16 = tail call i32 @getc(ptr noundef %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load ptr, ptr %7, align 8, !tbaa !16
  %20 = load ptr, ptr %19, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 42, ptr %21, align 8, !tbaa !25
  %22 = load ptr, ptr %20, align 8, !tbaa !27
  tail call void %22(ptr noundef nonnull %19) #4
  br label %23

23:                                               ; preds = %13, %18
  %24 = trunc i32 %16 to i8
  %25 = load ptr, ptr %2, align 8, !tbaa !65
  %26 = getelementptr inbounds i8, ptr %25, i64 %14
  store i8 %24, ptr %26, align 1, !tbaa !28
  %27 = load ptr, ptr %6, align 8, !tbaa !23
  %28 = tail call i32 @getc(ptr noundef %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load ptr, ptr %8, align 8, !tbaa !16
  %32 = load ptr, ptr %31, align 8, !tbaa !24
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i64 0, i32 5
  store i32 42, ptr %33, align 8, !tbaa !25
  %34 = load ptr, ptr %32, align 8, !tbaa !27
  tail call void %34(ptr noundef nonnull %31) #4
  br label %35

35:                                               ; preds = %23, %30
  %36 = trunc i32 %28 to i8
  %37 = load ptr, ptr %9, align 8, !tbaa !65
  %38 = getelementptr inbounds i8, ptr %37, i64 %14
  store i8 %36, ptr %38, align 1, !tbaa !28
  %39 = load ptr, ptr %6, align 8, !tbaa !23
  %40 = tail call i32 @getc(ptr noundef %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load ptr, ptr %10, align 8, !tbaa !16
  %44 = load ptr, ptr %43, align 8, !tbaa !24
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %44, i64 0, i32 5
  store i32 42, ptr %45, align 8, !tbaa !25
  %46 = load ptr, ptr %44, align 8, !tbaa !27
  tail call void %46(ptr noundef nonnull %43) #4
  br label %47

47:                                               ; preds = %35, %42
  %48 = trunc i32 %40 to i8
  %49 = load ptr, ptr %11, align 8, !tbaa !65
  %50 = getelementptr inbounds i8, ptr %49, i64 %14
  store i8 %48, ptr %50, align 1, !tbaa !28
  %51 = add nuw nsw i64 %14, 1
  %52 = icmp eq i64 %51, %12
  br i1 %52, label %53, label %13, !llvm.loop !66

53:                                               ; preds = %47, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @load_interlaced_image(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  %10 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %4, i64 0, i32 1
  %11 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %4, i64 0, i32 2
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 22
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  br label %15

15:                                               ; preds = %8, %40
  %16 = phi i64 [ 0, %8 ], [ %41, %40 ]
  %17 = phi i32 [ %6, %8 ], [ %42, %40 ]
  br i1 %9, label %21, label %18

18:                                               ; preds = %15
  store i64 %16, ptr %10, align 8, !tbaa !67
  %19 = zext i32 %17 to i64
  store i64 %19, ptr %11, align 8, !tbaa !68
  %20 = load ptr, ptr %4, align 8, !tbaa !69
  tail call void %20(ptr noundef %0) #4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load ptr, ptr %12, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = load ptr, ptr %13, align 8, !tbaa !52
  %26 = trunc i64 %16 to i32
  %27 = tail call ptr %24(ptr noundef %0, ptr noundef %25, i32 noundef %26, i32 noundef 1, i32 noundef 1) #4
  %28 = load i32, ptr %14, align 8, !tbaa !63
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %21
  %31 = load ptr, ptr %27, align 8, !tbaa !65
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi ptr [ %37, %32 ], [ %31, %30 ]
  %34 = phi i32 [ %38, %32 ], [ %28, %30 ]
  %35 = tail call fastcc i32 @LZWReadByte(ptr noundef %1)
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %36, ptr %33, align 1, !tbaa !28
  %38 = add i32 %34, -1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %32, !llvm.loop !71

40:                                               ; preds = %32, %21
  %41 = add nuw nsw i64 %16, 1
  %42 = load i32, ptr %5, align 4, !tbaa !64
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %15, label %45, !llvm.loop !72

45:                                               ; preds = %40, %2
  %46 = phi i32 [ %6, %2 ], [ %42, %40 ]
  %47 = icmp eq ptr %4, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %4, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !73
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %49, align 8, !tbaa !73
  br label %52

52:                                               ; preds = %48, %45
  %53 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_interlaced_row, ptr %53, align 8, !tbaa !57
  %54 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 23
  store i32 0, ptr %54, align 8, !tbaa !74
  %55 = add i32 %46, 7
  %56 = lshr i32 %55, 3
  %57 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 24
  store i32 %56, ptr %57, align 4, !tbaa !75
  %58 = add i32 %46, 3
  %59 = lshr i32 %58, 3
  %60 = add nuw nsw i32 %56, %59
  %61 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 25
  store i32 %60, ptr %61, align 8, !tbaa !76
  %62 = add i32 %46, 1
  %63 = lshr i32 %62, 2
  %64 = add nuw nsw i32 %60, %63
  %65 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 26
  store i32 %64, ptr %65, align 4, !tbaa !77
  %66 = tail call i32 @get_interlaced_row(ptr noundef %0, ptr noundef %1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_pixel_rows(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !63
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %4, i64 1
  %13 = getelementptr inbounds ptr, ptr %4, i64 2
  br label %14

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %11, %8 ], [ %30, %14 ]
  %16 = phi i32 [ %6, %8 ], [ %31, %14 ]
  %17 = tail call fastcc i32 @LZWReadByte(ptr noundef %1)
  %18 = load ptr, ptr %4, align 8, !tbaa !65
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !28
  %22 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %21, ptr %15, align 1, !tbaa !28
  %23 = load ptr, ptr %12, align 8, !tbaa !65
  %24 = getelementptr inbounds i8, ptr %23, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !28
  %26 = getelementptr inbounds i8, ptr %15, i64 2
  store i8 %25, ptr %22, align 1, !tbaa !28
  %27 = load ptr, ptr %13, align 8, !tbaa !65
  %28 = getelementptr inbounds i8, ptr %27, i64 %19
  %29 = load i8, ptr %28, align 1, !tbaa !28
  %30 = getelementptr inbounds i8, ptr %15, i64 3
  store i8 %29, ptr %26, align 1, !tbaa !28
  %31 = add i32 %16, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %14, !llvm.loop !78

33:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LZWReadByte(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [256 x i8], align 16
  %3 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 4, !tbaa !46
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  store i32 0, ptr %3, align 4, !tbaa !46
  %7 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !44
  br label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = icmp ugt ptr %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, ptr %11, i64 -1
  store ptr %16, ptr %10, align 8, !tbaa !50
  %17 = load i8, ptr %16, align 1, !tbaa !28
  %18 = zext i8 %17 to i32
  br label %174

19:                                               ; preds = %9
  %20 = tail call fastcc i32 @GetCode(ptr noundef %0)
  br label %21

21:                                               ; preds = %19, %6
  %22 = phi i32 [ %8, %6 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !44
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 8
  %28 = load i32, ptr %27, align 4, !tbaa !35
  %29 = add nsw i32 %28, 1
  %30 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 11
  store i32 %29, ptr %30, align 8, !tbaa !47
  %31 = shl i32 %24, 1
  %32 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 12
  store i32 %31, ptr %32, align 4, !tbaa !48
  %33 = add nsw i32 %24, 2
  %34 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 13
  store i32 %33, ptr %34, align 8, !tbaa !49
  %35 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  %37 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 20
  store ptr %36, ptr %37, align 8, !tbaa !50
  br label %38

38:                                               ; preds = %38, %26
  %39 = tail call fastcc i32 @GetCode(ptr noundef %0)
  %40 = load i32, ptr %23, align 8, !tbaa !44
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %38, label %42, !llvm.loop !79

42:                                               ; preds = %38
  %43 = icmp sgt i32 %39, %40
  br i1 %43, label %44, label %51

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  %47 = load ptr, ptr %46, align 8, !tbaa !24
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %47, i64 0, i32 5
  store i32 1021, ptr %48, align 8, !tbaa !25
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %47, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !30
  tail call void %50(ptr noundef nonnull %46, i32 noundef -1) #4
  br label %51

51:                                               ; preds = %44, %42
  %52 = phi i32 [ 0, %44 ], [ %39, %42 ]
  %53 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 15
  store i32 %52, ptr %53, align 8, !tbaa !80
  %54 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 16
  store i32 %52, ptr %54, align 4, !tbaa !81
  br label %174

55:                                               ; preds = %21
  %56 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 10
  %57 = load i32, ptr %56, align 4, !tbaa !45
  %58 = icmp eq i32 %22, %57
  br i1 %58, label %59, label %96

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !43
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #4
  %64 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %0, i64 0, i32 3
  %65 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  br label %66

66:                                               ; preds = %87, %63
  %67 = load ptr, ptr %64, align 8, !tbaa !23
  %68 = tail call i32 @getc(ptr noundef %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load ptr, ptr %65, align 8, !tbaa !16
  %72 = load ptr, ptr %71, align 8, !tbaa !24
  %73 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %72, i64 0, i32 5
  store i32 42, ptr %73, align 8, !tbaa !25
  %74 = load ptr, ptr %72, align 8, !tbaa !27
  tail call void %74(ptr noundef nonnull %71) #4
  br label %75

75:                                               ; preds = %70, %66
  %76 = icmp sgt i32 %68, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %75
  %78 = zext nneg i32 %68 to i64
  %79 = load ptr, ptr %64, align 8, !tbaa !23
  %80 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef %78, ptr noundef %79)
  %81 = icmp eq i64 %80, %78
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %65, align 8, !tbaa !16
  %84 = load ptr, ptr %83, align 8, !tbaa !24
  %85 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i64 0, i32 5
  store i32 42, ptr %85, align 8, !tbaa !25
  %86 = load ptr, ptr %84, align 8, !tbaa !27
  tail call void %86(ptr noundef nonnull %83) #4
  br label %87

87:                                               ; preds = %82, %77
  br label %66, !llvm.loop !31

88:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #4
  store i32 1, ptr %60, align 8, !tbaa !43
  br label %89

89:                                               ; preds = %88, %59
  %90 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !16
  %92 = load ptr, ptr %91, align 8, !tbaa !24
  %93 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 5
  store i32 1023, ptr %93, align 8, !tbaa !25
  %94 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !30
  tail call void %95(ptr noundef nonnull %91, i32 noundef -1) #4
  br label %174

96:                                               ; preds = %55
  %97 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 13
  %98 = load i32, ptr %97, align 8, !tbaa !49
  %99 = icmp slt i32 %22, %98
  br i1 %99, label %119, label %100

100:                                              ; preds = %96
  %101 = icmp sgt i32 %22, %98
  br i1 %101, label %102, label %109

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !16
  %105 = load ptr, ptr %104, align 8, !tbaa !24
  %106 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %105, i64 0, i32 5
  store i32 1021, ptr %106, align 8, !tbaa !25
  %107 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %105, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !30
  tail call void %108(ptr noundef nonnull %104, i32 noundef -1) #4
  br label %109

109:                                              ; preds = %102, %100
  %110 = phi i32 [ 0, %102 ], [ %22, %100 ]
  %111 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 16
  %112 = load i32, ptr %111, align 4, !tbaa !81
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 20
  %115 = load ptr, ptr %114, align 8, !tbaa !50
  %116 = getelementptr inbounds i8, ptr %115, i64 1
  store ptr %116, ptr %114, align 8, !tbaa !50
  store i8 %113, ptr %115, align 1, !tbaa !28
  %117 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 15
  %118 = load i32, ptr %117, align 8, !tbaa !80
  br label %119

119:                                              ; preds = %109, %96
  %120 = phi i32 [ %118, %109 ], [ %22, %96 ]
  %121 = phi i32 [ %110, %109 ], [ %22, %96 ]
  %122 = load i32, ptr %23, align 8, !tbaa !44
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %142, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 18
  %126 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 20
  %127 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 17
  br label %128

128:                                              ; preds = %124, %128
  %129 = phi i32 [ %120, %124 ], [ %139, %128 ]
  %130 = load ptr, ptr %125, align 8, !tbaa !38
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, ptr %130, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !28
  %134 = load ptr, ptr %126, align 8, !tbaa !50
  %135 = getelementptr inbounds i8, ptr %134, i64 1
  store ptr %135, ptr %126, align 8, !tbaa !50
  store i8 %133, ptr %134, align 1, !tbaa !28
  %136 = load ptr, ptr %127, align 8, !tbaa !37
  %137 = getelementptr inbounds i16, ptr %136, i64 %131
  %138 = load i16, ptr %137, align 2, !tbaa !82
  %139 = zext i16 %138 to i32
  %140 = load i32, ptr %23, align 8, !tbaa !44
  %141 = icmp sgt i32 %140, %139
  br i1 %141, label %142, label %128, !llvm.loop !83

142:                                              ; preds = %128, %119
  %143 = phi i32 [ %120, %119 ], [ %139, %128 ]
  %144 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 16
  store i32 %143, ptr %144, align 4, !tbaa !81
  %145 = load i32, ptr %97, align 8, !tbaa !49
  %146 = icmp slt i32 %145, 4096
  br i1 %146, label %147, label %171

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 15
  %149 = load i32, ptr %148, align 8, !tbaa !80
  %150 = trunc i32 %149 to i16
  %151 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 17
  %152 = load ptr, ptr %151, align 8, !tbaa !37
  %153 = sext i32 %145 to i64
  %154 = getelementptr inbounds i16, ptr %152, i64 %153
  store i16 %150, ptr %154, align 2, !tbaa !82
  %155 = trunc i32 %143 to i8
  %156 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 18
  %157 = load ptr, ptr %156, align 8, !tbaa !38
  %158 = getelementptr inbounds i8, ptr %157, i64 %153
  store i8 %155, ptr %158, align 1, !tbaa !28
  %159 = load i32, ptr %97, align 8, !tbaa !49
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr %97, align 8, !tbaa !49
  %161 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 12
  %162 = load i32, ptr %161, align 4, !tbaa !48
  %163 = icmp slt i32 %160, %162
  br i1 %163, label %171, label %164

164:                                              ; preds = %147
  %165 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 11
  %166 = load i32, ptr %165, align 8, !tbaa !47
  %167 = icmp slt i32 %166, 12
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = add nsw i32 %166, 1
  store i32 %169, ptr %165, align 8, !tbaa !47
  %170 = shl i32 %162, 1
  store i32 %170, ptr %161, align 4, !tbaa !48
  br label %171

171:                                              ; preds = %147, %164, %168, %142
  %172 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 15
  store i32 %121, ptr %172, align 8, !tbaa !80
  %173 = load i32, ptr %144, align 4, !tbaa !81
  br label %174

174:                                              ; preds = %171, %89, %51, %15
  %175 = phi i32 [ %52, %51 ], [ 0, %89 ], [ %173, %171 ], [ %18, %15 ]
  ret i32 %175
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_interlaced_row(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 23
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = and i32 %6, 7
  switch i32 %7, label %20 [
    i32 0, label %8
    i32 4, label %10
    i32 2, label %15
    i32 6, label %15
  ]

8:                                                ; preds = %2
  %9 = lshr i32 %6, 3
  br label %25

10:                                               ; preds = %2
  %11 = lshr i32 %6, 3
  %12 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 24
  %13 = load i32, ptr %12, align 4, !tbaa !75
  %14 = add i32 %13, %11
  br label %25

15:                                               ; preds = %2, %2
  %16 = lshr i32 %6, 2
  %17 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 25
  %18 = load i32, ptr %17, align 8, !tbaa !76
  %19 = add i32 %18, %16
  br label %25

20:                                               ; preds = %2
  %21 = lshr i32 %6, 1
  %22 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 26
  %23 = load i32, ptr %22, align 4, !tbaa !77
  %24 = add i32 %23, %21
  br label %25

25:                                               ; preds = %20, %15, %10, %8
  %26 = phi i32 [ %24, %20 ], [ %19, %15 ], [ %14, %10 ], [ %9, %8 ]
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  %31 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 22
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = tail call ptr %30(ptr noundef %0, ptr noundef %32, i32 noundef %26, i32 noundef 1, i32 noundef 0) #4
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !63
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !58
  %40 = load ptr, ptr %39, align 8, !tbaa !65
  %41 = load ptr, ptr %33, align 8, !tbaa !65
  %42 = getelementptr inbounds ptr, ptr %4, i64 1
  %43 = getelementptr inbounds ptr, ptr %4, i64 2
  br label %44

44:                                               ; preds = %37, %44
  %45 = phi ptr [ %41, %37 ], [ %48, %44 ]
  %46 = phi i32 [ %35, %37 ], [ %63, %44 ]
  %47 = phi ptr [ %40, %37 ], [ %62, %44 ]
  %48 = getelementptr inbounds i8, ptr %45, i64 1
  %49 = load i8, ptr %45, align 1, !tbaa !28
  %50 = load ptr, ptr %4, align 8, !tbaa !65
  %51 = zext i8 %49 to i64
  %52 = getelementptr inbounds i8, ptr %50, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !28
  %54 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %53, ptr %47, align 1, !tbaa !28
  %55 = load ptr, ptr %42, align 8, !tbaa !65
  %56 = getelementptr inbounds i8, ptr %55, i64 %51
  %57 = load i8, ptr %56, align 1, !tbaa !28
  %58 = getelementptr inbounds i8, ptr %47, i64 2
  store i8 %57, ptr %54, align 1, !tbaa !28
  %59 = load ptr, ptr %43, align 8, !tbaa !65
  %60 = getelementptr inbounds i8, ptr %59, i64 %51
  %61 = load i8, ptr %60, align 1, !tbaa !28
  %62 = getelementptr inbounds i8, ptr %47, i64 3
  store i8 %61, ptr %58, align 1, !tbaa !28
  %63 = add i32 %46, -1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %44, !llvm.loop !84

65:                                               ; preds = %44, %25
  %66 = load i32, ptr %5, align 8, !tbaa !74
  %67 = add i32 %66, 1
  store i32 %67, ptr %5, align 8, !tbaa !74
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetCode(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 6
  %3 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 11
  %4 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %2, align 4, !tbaa !42
  %6 = load i32, ptr %3, align 8, !tbaa !47
  %7 = add nsw i32 %6, %5
  %8 = load i32, ptr %4, align 8, !tbaa !41
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %83

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 1
  %15 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 2
  %16 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  br label %19

19:                                               ; preds = %10, %73
  %20 = load i32, ptr %11, align 8, !tbaa !43
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 5
  store i32 1024, ptr %26, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !30
  tail call void %28(ptr noundef nonnull %24, i32 noundef -1) #4
  %29 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 10
  %30 = load i32, ptr %29, align 4, !tbaa !45
  br label %111

31:                                               ; preds = %19
  %32 = load i32, ptr %13, align 4, !tbaa !40
  %33 = add nsw i32 %32, -2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !28
  store i8 %36, ptr %12, align 8, !tbaa !28
  %37 = add nsw i32 %32, -1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !28
  store i8 %40, ptr %14, align 1, !tbaa !28
  %41 = load ptr, ptr %16, align 8, !tbaa !23
  %42 = tail call i32 @getc(ptr noundef %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load ptr, ptr %17, align 8, !tbaa !16
  %46 = load ptr, ptr %45, align 8, !tbaa !24
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 5
  store i32 42, ptr %47, align 8, !tbaa !25
  %48 = load ptr, ptr %46, align 8, !tbaa !27
  tail call void %48(ptr noundef nonnull %45) #4
  br label %49

49:                                               ; preds = %44, %31
  %50 = icmp sgt i32 %42, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %49
  %52 = zext nneg i32 %42 to i64
  %53 = load ptr, ptr %16, align 8, !tbaa !23
  %54 = tail call i64 @fread(ptr noundef nonnull %15, i64 noundef 1, i64 noundef %52, ptr noundef %53)
  %55 = icmp eq i64 %54, %52
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %18, align 8, !tbaa !16
  %58 = load ptr, ptr %57, align 8, !tbaa !24
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 5
  store i32 42, ptr %59, align 8, !tbaa !25
  %60 = load ptr, ptr %58, align 8, !tbaa !27
  tail call void %60(ptr noundef nonnull %57) #4
  br label %61

61:                                               ; preds = %49, %51, %56
  %62 = icmp eq i32 %42, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 7
  store i32 1, ptr %64, align 8, !tbaa !43
  %65 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !16
  %67 = load ptr, ptr %66, align 8, !tbaa !24
  %68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i64 0, i32 5
  store i32 1024, ptr %68, align 8, !tbaa !25
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !30
  tail call void %70(ptr noundef nonnull %66, i32 noundef -1) #4
  %71 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 10
  %72 = load i32, ptr %71, align 4, !tbaa !45
  br label %111

73:                                               ; preds = %61
  %74 = load i32, ptr %2, align 4, !tbaa !42
  %75 = load i32, ptr %4, align 8, !tbaa !41
  %76 = add i32 %74, 16
  %77 = sub i32 %76, %75
  store i32 %77, ptr %2, align 4, !tbaa !42
  %78 = add nsw i32 %42, 2
  store i32 %78, ptr %13, align 4, !tbaa !40
  %79 = shl nsw i32 %78, 3
  store i32 %79, ptr %4, align 8, !tbaa !41
  %80 = load i32, ptr %3, align 8, !tbaa !47
  %81 = add nsw i32 %80, %77
  %82 = icmp sgt i32 %81, %79
  br i1 %82, label %19, label %83, !llvm.loop !85

83:                                               ; preds = %73, %1
  %84 = phi i32 [ %5, %1 ], [ %77, %73 ]
  %85 = phi i32 [ %6, %1 ], [ %80, %73 ]
  %86 = phi i32 [ %7, %1 ], [ %81, %73 ]
  %87 = ashr i32 %84, 3
  %88 = add nsw i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !28
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %87, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !28
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %92, 16
  %99 = shl nuw nsw i32 %97, 8
  %100 = or disjoint i32 %99, %98
  %101 = sext i32 %87 to i64
  %102 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !28
  %104 = zext i8 %103 to i32
  %105 = or disjoint i32 %100, %104
  %106 = and i32 %84, 7
  %107 = lshr i32 %105, %106
  %108 = shl nsw i32 -1, %85
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  store i32 %86, ptr %2, align 4, !tbaa !42
  br label %111

111:                                              ; preds = %83, %63, %22
  %112 = phi i32 [ %30, %22 ], [ %72, %63 ], [ %110, %83 ]
  ret i32 %112
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!17, !7, i64 48}
!17 = !{!"", !18, i64 0, !7, i64 48, !7, i64 56, !8, i64 64, !10, i64 324, !10, i64 328, !10, i64 332, !10, i64 336, !10, i64 340, !10, i64 344, !10, i64 348, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !10, i64 368, !10, i64 372, !7, i64 376, !7, i64 384, !7, i64 392, !7, i64 400, !10, i64 408, !7, i64 416, !10, i64 424, !10, i64 428, !10, i64 432, !10, i64 436}
!18 = !{!"cjpeg_source_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40}
!19 = !{!17, !7, i64 0}
!20 = !{!17, !7, i64 16}
!21 = !{!14, !7, i64 16}
!22 = !{!17, !7, i64 56}
!23 = !{!17, !7, i64 24}
!24 = !{!6, !7, i64 0}
!25 = !{!26, !10, i64 40}
!26 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!27 = !{!26, !7, i64 0}
!28 = !{!8, !8, i64 0}
!29 = !{!10, !10, i64 0}
!30 = !{!26, !7, i64 8}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !32}
!34 = !{!17, !10, i64 408}
!35 = !{!17, !10, i64 340}
!36 = !{!14, !7, i64 8}
!37 = !{!17, !7, i64 376}
!38 = !{!17, !7, i64 384}
!39 = !{!17, !7, i64 392}
!40 = !{!17, !10, i64 324}
!41 = !{!17, !10, i64 328}
!42 = !{!17, !10, i64 332}
!43 = !{!17, !10, i64 336}
!44 = !{!17, !10, i64 344}
!45 = !{!17, !10, i64 348}
!46 = !{!17, !10, i64 364}
!47 = !{!17, !10, i64 352}
!48 = !{!17, !10, i64 356}
!49 = !{!17, !10, i64 360}
!50 = !{!17, !7, i64 400}
!51 = !{!14, !7, i64 32}
!52 = !{!17, !7, i64 416}
!53 = !{!6, !7, i64 16}
!54 = !{!55, !10, i64 36}
!55 = !{!"cdjpeg_progress_mgr", !56, i64 0, !10, i64 32, !10, i64 36, !10, i64 40}
!56 = !{!"jpeg_progress_mgr", !7, i64 0, !15, i64 8, !15, i64 16, !10, i64 24, !10, i64 28}
!57 = !{!17, !7, i64 8}
!58 = !{!17, !7, i64 32}
!59 = !{!17, !10, i64 40}
!60 = !{!6, !10, i64 52}
!61 = !{!6, !10, i64 48}
!62 = !{!6, !10, i64 64}
!63 = !{!6, !10, i64 40}
!64 = !{!6, !10, i64 44}
!65 = !{!7, !7, i64 0}
!66 = distinct !{!66, !32}
!67 = !{!55, !15, i64 8}
!68 = !{!55, !15, i64 16}
!69 = !{!55, !7, i64 0}
!70 = !{!14, !7, i64 56}
!71 = distinct !{!71, !32}
!72 = distinct !{!72, !32}
!73 = !{!55, !10, i64 32}
!74 = !{!17, !10, i64 424}
!75 = !{!17, !10, i64 428}
!76 = !{!17, !10, i64 432}
!77 = !{!17, !10, i64 436}
!78 = distinct !{!78, !32}
!79 = distinct !{!79, !32}
!80 = !{!17, !10, i64 368}
!81 = !{!17, !10, i64 372}
!82 = !{!12, !12, i64 0}
!83 = distinct !{!83, !32}
!84 = distinct !{!84, !32}
!85 = distinct !{!85, !32}
