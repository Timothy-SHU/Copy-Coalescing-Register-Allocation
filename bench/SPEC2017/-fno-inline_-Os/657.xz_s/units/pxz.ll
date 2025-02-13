; ModuleID = 'pxz.c'
source_filename = "pxz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.spec_fd_t = type { i64, i64, i64, i32, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@spec_fd = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [84 x i8] c"requested threads limited to only those that will do actual work: %lu / %lu => %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"work available for up to %lu / %lu => %lu threads\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"context size per thread: %u KB\0A\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"error allocating thread input buffers\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"error in LZMA_RUN\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"writing to temp file failed\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"error in LZMA_FINISH\00", align 1
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@buf = internal global [8192 x i8] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [26 x i8] c"writing to archive failed\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"reading from temporary file failed\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"I/O error in temp file\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"I/O error in input file\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"I/O error in target archive\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"spec_oxz: \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c": %s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @close_stream(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @spec_empty(i32 noundef %0) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @spec_fd, align 8, !tbaa !35
  %6 = tail call i32 @spec_mem_close(ptr noundef %5, i32 noundef 3, i32 noundef %0) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call ptr @__errno_location() #16
  store i32 0, ptr %9, align 4, !tbaa !39
  br label %10

10:                                               ; preds = %1, %4, %8
  %11 = phi i32 [ -1, %8 ], [ -1, %4 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @spec_empty(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @spec_mem_close(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compressStream(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.lzma_options_lzma, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %4, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  %13 = icmp sgt i32 %2, -1
  %14 = select i1 %13, i32 4, i32 10
  store i32 %14, ptr %11, align 4, !tbaa !39
  %15 = call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull %9, i32 noundef %2) #15
  %16 = call i32 @omp_get_max_threads() #17
  %17 = sext i32 %16 to i64
  store i64 %17, ptr %5, align 8, !tbaa !41
  %18 = load i32, ptr %9, align 8, !tbaa !43
  %19 = zext i32 %18 to i64
  %20 = mul nuw nsw i64 %19, 3
  %21 = and i64 %20, 17178820608
  %22 = add nuw nsw i64 %21, 1048576
  store i64 %22, ptr %6, align 8, !tbaa !41
  %23 = mul nsw i64 %22, %17
  %24 = load ptr, ptr @spec_fd, align 8, !tbaa !35
  %25 = call i64 @spec_mem_get_length(ptr noundef %24, i32 noundef 3, i32 noundef %0) #15
  %26 = icmp sgt i64 %23, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %3
  %28 = load ptr, ptr @spec_fd, align 8, !tbaa !35
  %29 = call i64 @spec_mem_get_length(ptr noundef %28, i32 noundef 3, i32 noundef %0) #15
  %30 = sdiv i64 %29, %22
  %31 = add nsw i64 %30, 1
  %32 = icmp slt i64 %31, %17
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load ptr, ptr @spec_fd, align 8, !tbaa !35
  %35 = call i64 @spec_mem_get_length(ptr noundef %34, i32 noundef 3, i32 noundef %0) #15
  %36 = sdiv i64 %35, %22
  %37 = add nsw i64 %36, 1
  store i64 %37, ptr %5, align 8, !tbaa !41
  %38 = load ptr, ptr @stderr, align 8, !tbaa !35
  %39 = load ptr, ptr @spec_fd, align 8, !tbaa !35
  %40 = call i64 @spec_mem_get_length(ptr noundef %39, i32 noundef 3, i32 noundef %0) #15
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str, i64 noundef %40, i64 noundef %22, i64 noundef %37) #18
  br label %51

42:                                               ; preds = %27, %3
  %43 = load ptr, ptr @stderr, align 8, !tbaa !35
  %44 = load ptr, ptr @spec_fd, align 8, !tbaa !35
  %45 = call i64 @spec_mem_get_length(ptr noundef %44, i32 noundef 3, i32 noundef %0) #15
  %46 = load ptr, ptr @spec_fd, align 8, !tbaa !35
  %47 = call i64 @spec_mem_get_length(ptr noundef %46, i32 noundef 3, i32 noundef %0) #15
  %48 = sdiv i64 %47, %22
  %49 = add i64 %48, 1
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.1, i64 noundef %45, i64 noundef %22, i64 noundef %49) #18
  br label %51

51:                                               ; preds = %42, %33
  %52 = phi i64 [ %17, %42 ], [ %37, %33 ]
  %53 = trunc i64 %52 to i32
  %54 = call ptr @spec_mem_alloc_fds(i32 noundef %53) #15
  store ptr %54, ptr %10, align 8, !tbaa !35
  %55 = icmp sgt i64 %52, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %51
  %57 = add nuw i64 %52, 1
  %58 = and i64 %57, -2
  %59 = add nsw i64 %52, -1
  %60 = insertelement <2 x i64> poison, i64 %59, i64 0
  %61 = shufflevector <2 x i64> %60, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %62

62:                                               ; preds = %74, %56
  %63 = phi i64 [ 0, %56 ], [ %75, %74 ]
  %64 = phi <2 x i64> [ <i64 0, i64 1>, %56 ], [ %76, %74 ]
  %65 = icmp ule <2 x i64> %64, %61
  %66 = extractelement <2 x i1> %65, i64 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.spec_fd_t, ptr %54, i64 %63
  store i64 %22, ptr %68, align 8, !tbaa !45
  br label %69

69:                                               ; preds = %67, %62
  %70 = extractelement <2 x i1> %65, i64 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = or disjoint i64 %63, 1
  %73 = getelementptr inbounds %struct.spec_fd_t, ptr %54, i64 %72
  store i64 %22, ptr %73, align 8, !tbaa !45
  br label %74

74:                                               ; preds = %71, %69
  %75 = add i64 %63, 2
  %76 = add <2 x i64> %64, <i64 2, i64 2>
  %77 = icmp eq i64 %75, %58
  br i1 %77, label %78, label %62, !llvm.loop !47

78:                                               ; preds = %74, %51
  %79 = call i32 @spec_mem_init(ptr noundef %54, i32 noundef %53, i32 noundef 0) #15
  %80 = load ptr, ptr @stderr, align 8, !tbaa !35
  %81 = lshr exact i64 %22, 10
  %82 = trunc i64 %81 to i32
  %83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.2, i32 noundef %82) #18
  %84 = load ptr, ptr @spec_fd, align 8, !tbaa !35
  %85 = sext i32 %0 to i64
  %86 = getelementptr inbounds %struct.spec_fd_t, ptr %84, i64 %85, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !51
  store ptr %87, ptr %7, align 8, !tbaa !35
  %88 = call i64 @spec_mem_get_length(ptr noundef %84, i32 noundef 3, i32 noundef %0) #15
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %100, label %200

90:                                               ; preds = %196
  %91 = load ptr, ptr %7, align 8, !tbaa !35
  br label %92

92:                                               ; preds = %90, %144
  %93 = phi ptr [ %150, %144 ], [ %91, %90 ]
  %94 = load ptr, ptr @spec_fd, align 8, !tbaa !35
  %95 = getelementptr inbounds %struct.spec_fd_t, ptr %94, i64 %85, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !51
  %97 = call i64 @spec_mem_get_length(ptr noundef %94, i32 noundef 3, i32 noundef %0) #15
  %98 = getelementptr inbounds i8, ptr %96, i64 %97
  %99 = icmp ult ptr %93, %98
  br i1 %99, label %100, label %200, !llvm.loop !52

100:                                              ; preds = %78, %92
  %101 = load i64, ptr %5, align 8, !tbaa !41
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %100, %103
  %104 = phi i64 [ %116, %103 ], [ %101, %100 ]
  %105 = phi i64 [ %115, %103 ], [ 0, %100 ]
  %106 = load ptr, ptr %10, align 8, !tbaa !35
  %107 = getelementptr inbounds %struct.spec_fd_t, ptr %106, i64 %105, i32 3
  store i32 1, ptr %107, align 8, !tbaa !53
  %108 = trunc i64 %104 to i32
  %109 = trunc i64 %105 to i32
  %110 = call i32 @spec_mem_reset(ptr noundef %106, i32 noundef %108, i32 noundef %109) #15
  %111 = load ptr, ptr %10, align 8, !tbaa !35
  %112 = load i64, ptr %5, align 8, !tbaa !41
  %113 = trunc i64 %112 to i32
  %114 = call i32 @spec_mem_rewind(ptr noundef %111, i32 noundef %113, i32 noundef %109) #15
  %115 = add nuw nsw i64 %105, 1
  %116 = load i64, ptr %5, align 8, !tbaa !41
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %103, label %118, !llvm.loop !54

118:                                              ; preds = %103, %100
  %119 = load ptr, ptr @spec_fd, align 8, !tbaa !35
  %120 = call i64 @spec_mem_get_length(ptr noundef %119, i32 noundef 3, i32 noundef %0) #15
  %121 = load ptr, ptr %7, align 8, !tbaa !35
  %122 = load ptr, ptr @spec_fd, align 8, !tbaa !35
  %123 = getelementptr inbounds %struct.spec_fd_t, ptr %122, i64 %85, i32 4
  %124 = load ptr, ptr %123, align 8, !tbaa !51
  %125 = ptrtoint ptr %121 to i64
  %126 = ptrtoint ptr %124 to i64
  %127 = sub i64 %120, %125
  %128 = add i64 %127, %126
  %129 = load i64, ptr %5, align 8, !tbaa !41
  %130 = load i64, ptr %6, align 8, !tbaa !41
  %131 = mul nsw i64 %130, %129
  %132 = icmp sgt i64 %128, %131
  br i1 %132, label %144, label %133

133:                                              ; preds = %118
  %134 = call i64 @spec_mem_get_length(ptr noundef nonnull %122, i32 noundef 3, i32 noundef %0) #15
  %135 = load ptr, ptr %7, align 8, !tbaa !35
  %136 = load ptr, ptr @spec_fd, align 8, !tbaa !35
  %137 = getelementptr inbounds %struct.spec_fd_t, ptr %136, i64 %85, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !51
  %139 = ptrtoint ptr %135 to i64
  %140 = ptrtoint ptr %138 to i64
  %141 = sub i64 %134, %139
  %142 = add i64 %141, %140
  %143 = load i64, ptr %5, align 8, !tbaa !41
  br label %144

144:                                              ; preds = %118, %133
  %145 = phi i64 [ %143, %133 ], [ %129, %118 ]
  %146 = phi i64 [ %142, %133 ], [ %131, %118 ]
  store i64 %146, ptr %8, align 8, !tbaa !41
  %147 = trunc i64 %145 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %147)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @compressStream.omp_outlined, ptr nonnull %8, ptr nonnull %6, ptr nonnull %9, ptr nonnull %4, ptr nonnull %11, ptr nonnull %7, ptr nonnull %10, ptr nonnull %5)
  %148 = load i64, ptr %8, align 8, !tbaa !41
  %149 = load ptr, ptr %7, align 8, !tbaa !35
  %150 = getelementptr inbounds i8, ptr %149, i64 %148
  store ptr %150, ptr %7, align 8, !tbaa !35
  %151 = load i64, ptr %5, align 8, !tbaa !41
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %92

153:                                              ; preds = %144, %196
  %154 = phi i64 [ %198, %196 ], [ %151, %144 ]
  %155 = phi i64 [ %197, %196 ], [ 0, %144 ]
  %156 = load ptr, ptr %10, align 8, !tbaa !35
  %157 = trunc i64 %154 to i32
  %158 = trunc i64 %155 to i32
  %159 = call i32 @spec_mem_rewind(ptr noundef %156, i32 noundef %157, i32 noundef %158) #15
  %160 = load ptr, ptr %10, align 8, !tbaa !35
  %161 = load i64, ptr %5, align 8, !tbaa !41
  %162 = trunc i64 %161 to i32
  %163 = call i64 @spec_mem_fread(ptr noundef %160, i32 noundef %162, ptr noundef nonnull @buf, i64 noundef 1, i32 noundef 8192, i32 noundef %158) #15
  store i64 %163, ptr %8, align 8, !tbaa !41
  %164 = icmp sgt i64 %163, 0
  br i1 %164, label %171, label %181

165:                                              ; preds = %171
  %166 = load ptr, ptr %10, align 8, !tbaa !35
  %167 = load i64, ptr %5, align 8, !tbaa !41
  %168 = trunc i64 %167 to i32
  %169 = call i64 @spec_mem_fread(ptr noundef %166, i32 noundef %168, ptr noundef nonnull @buf, i64 noundef 1, i32 noundef 8192, i32 noundef %158) #15
  store i64 %169, ptr %8, align 8, !tbaa !41
  %170 = icmp sgt i64 %169, 0
  br i1 %170, label %171, label %181, !llvm.loop !55

171:                                              ; preds = %153, %165
  %172 = phi i64 [ %169, %165 ], [ %163, %153 ]
  %173 = load ptr, ptr @spec_fd, align 8, !tbaa !35
  %174 = trunc i64 %172 to i32
  %175 = call i64 @spec_mem_fwrite(ptr noundef %173, i32 noundef 3, ptr noundef nonnull @buf, i64 noundef 1, i32 noundef %174, i32 noundef %1) #15
  %176 = load i64, ptr %8, align 8, !tbaa !41
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %165, label %178

178:                                              ; preds = %171
  %179 = tail call ptr @__errno_location() #16
  %180 = load i32, ptr %179, align 4, !tbaa !39
  call void (i32, i32, ptr, ...) @pxz_error(i32 noundef 0, i32 noundef %180, ptr noundef nonnull @.str.7) #17
  call void @exit(i32 noundef 1) #19
  unreachable

181:                                              ; preds = %165, %153
  %182 = phi i64 [ %163, %153 ], [ %169, %165 ]
  %183 = icmp slt i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = tail call ptr @__errno_location() #16
  %186 = load i32, ptr %185, align 4, !tbaa !39
  call void (i32, i32, ptr, ...) @pxz_error(i32 noundef 0, i32 noundef %186, ptr noundef nonnull @.str.8) #17
  call void @exit(i32 noundef 1) #19
  unreachable

187:                                              ; preds = %181
  %188 = load ptr, ptr %10, align 8, !tbaa !35
  %189 = load i64, ptr %5, align 8, !tbaa !41
  %190 = trunc i64 %189 to i32
  %191 = call i32 @spec_mem_close(ptr noundef %188, i32 noundef %190, i32 noundef %158) #15
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %187
  %194 = tail call ptr @__errno_location() #16
  %195 = load i32, ptr %194, align 4, !tbaa !39
  call void (i32, i32, ptr, ...) @pxz_error(i32 noundef 0, i32 noundef %195, ptr noundef nonnull @.str.9) #17
  br label %196

196:                                              ; preds = %187, %193
  %197 = add nuw nsw i64 %155, 1
  %198 = load i64, ptr %5, align 8, !tbaa !41
  %199 = icmp slt i64 %197, %198
  br i1 %199, label %153, label %90, !llvm.loop !56

200:                                              ; preds = %92, %78
  %201 = call i32 @close_stream(i32 noundef %0) #17, !range !57
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = tail call ptr @__errno_location() #16
  %205 = load i32, ptr %204, align 4, !tbaa !39
  call void (i32, i32, ptr, ...) @pxz_error(i32 noundef 0, i32 noundef %205, ptr noundef nonnull @.str.10) #17
  br label %206

206:                                              ; preds = %203, %200
  %207 = load ptr, ptr %10, align 8, !tbaa !35
  %208 = load i64, ptr %5, align 8, !tbaa !41
  %209 = trunc i64 %208 to i32
  call void @spec_mem_free_fds(ptr noundef %207, i32 noundef %209) #15
  %210 = call i32 @close_stream(i32 noundef %1) #17, !range !57
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %206
  %213 = tail call ptr @__errno_location() #16
  %214 = load i32, ptr %213, align 4, !tbaa !39
  call void (i32, i32, ptr, ...) @pxz_error(i32 noundef 0, i32 noundef %214, ptr noundef nonnull @.str.11) #17
  br label %215

215:                                              ; preds = %212, %206
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @omp_get_max_threads() local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @spec_mem_get_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @spec_mem_alloc_fds(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @spec_mem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @spec_mem_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @spec_mem_rewind(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @compressStream.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9) #6 !PGOFuncName !58 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.lzma_stream, align 8
  %16 = load i64, ptr %2, align 8, !tbaa !41
  %17 = load i64, ptr %3, align 8, !tbaa !41
  %18 = add i64 %16, -1
  %19 = add i64 %18, %17
  %20 = sdiv i64 %19, %17
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %114

22:                                               ; preds = %10
  %23 = add nsw i64 %20, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  store i64 0, ptr %11, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  store i64 %23, ptr %12, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7
  store i64 1, ptr %13, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #7
  store i32 0, ptr %14, align 4, !tbaa !39
  %24 = load i32, ptr %0, align 4, !tbaa !39
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %24, i32 34, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 1)
  %25 = load i64, ptr %12, align 8
  %26 = call i64 @llvm.smin.i64(i64 %25, i64 %23)
  store i64 %26, ptr %12, align 8, !tbaa !41
  %27 = load i64, ptr %11, align 8, !tbaa !41
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %113, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.lzma_stream, ptr %15, i64 0, i32 1
  %31 = getelementptr inbounds %struct.lzma_stream, ptr %15, i64 0, i32 3
  %32 = getelementptr inbounds %struct.lzma_stream, ptr %15, i64 0, i32 4
  br label %33

33:                                               ; preds = %29, %109
  %34 = phi i64 [ %27, %29 ], [ %110, %109 ]
  %35 = load i64, ptr %2, align 8, !tbaa !41
  %36 = load i64, ptr %3, align 8, !tbaa !41
  %37 = mul nsw i64 %36, %34
  %38 = sub nsw i64 %35, %37
  %39 = call i64 @llvm.smin.i64(i64 %38, i64 %36)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %15) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %15, i8 0, i64 136, i1 false)
  %40 = call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = tail call ptr @__errno_location() #16
  %44 = load i32, ptr %43, align 4, !tbaa !39
  call void (i32, i32, ptr, ...) @pxz_error(i32 noundef 1, i32 noundef %44, ptr noundef nonnull @.str.3) #17
  br label %45

45:                                               ; preds = %42, %33
  %46 = load i32, ptr %5, align 4, !tbaa !39
  %47 = load i32, ptr %6, align 4, !tbaa !39
  %48 = call zeroext i1 @init_encoder(ptr noundef nonnull %15, ptr noundef nonnull %4, i32 noundef %46, i32 noundef %47) #15
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = icmp sgt i64 %39, 0
  %51 = trunc i64 %34 to i32
  br i1 %50, label %53, label %87

52:                                               ; preds = %45
  call void @exit(i32 noundef 1) #19
  unreachable

53:                                               ; preds = %49, %84
  %54 = phi i64 [ %85, %84 ], [ 0, %49 ]
  %55 = load ptr, ptr %7, align 8, !tbaa !35
  %56 = load i64, ptr %3, align 8, !tbaa !41
  %57 = mul nsw i64 %56, %34
  %58 = getelementptr i8, ptr %55, i64 %57
  %59 = getelementptr i8, ptr %58, i64 %54
  store ptr %59, ptr %15, align 8, !tbaa !59
  %60 = sub nsw i64 %39, %54
  %61 = call i64 @llvm.smin.i64(i64 %60, i64 1048576)
  store i64 %61, ptr %30, align 8, !tbaa !61
  store ptr %40, ptr %31, align 8, !tbaa !62
  store i64 1048576, ptr %32, align 8, !tbaa !63
  br label %62

62:                                               ; preds = %81, %53
  %63 = call i32 @lzma_code(ptr noundef nonnull %15, i32 noundef 0) #15
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  call void (i32, i32, ptr, ...) @pxz_error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.4) #17
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i64, ptr %32, align 8, !tbaa !63
  %68 = icmp eq i64 %67, 1048576
  br i1 %68, label %81, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %8, align 8, !tbaa !35
  %71 = load i64, ptr %9, align 8, !tbaa !41
  %72 = trunc i64 %71 to i32
  %73 = trunc i64 %67 to i32
  %74 = sub i32 1048576, %73
  %75 = call i64 @spec_mem_fwrite(ptr noundef %70, i32 noundef %72, ptr noundef %40, i64 noundef 1, i32 noundef %74, i32 noundef %51) #15
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = tail call ptr @__errno_location() #16
  %79 = load i32, ptr %78, align 4, !tbaa !39
  call void (i32, i32, ptr, ...) @pxz_error(i32 noundef 1, i32 noundef %79, ptr noundef nonnull @.str.5) #17
  br label %80

80:                                               ; preds = %77, %69
  store ptr %40, ptr %31, align 8, !tbaa !62
  store i64 1048576, ptr %32, align 8, !tbaa !63
  br label %81

81:                                               ; preds = %66, %80
  %82 = load i64, ptr %30, align 8, !tbaa !61
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %62, !llvm.loop !64

84:                                               ; preds = %81
  %85 = add nuw nsw i64 %54, 1048576
  %86 = icmp slt i64 %85, %39
  br i1 %86, label %53, label %87, !llvm.loop !65

87:                                               ; preds = %84, %49
  store ptr %40, ptr %31, align 8, !tbaa !62
  store i64 1048576, ptr %32, align 8, !tbaa !63
  br label %88

88:                                               ; preds = %107, %87
  %89 = call i32 @lzma_code(ptr noundef nonnull %15, i32 noundef 3) #15
  %90 = icmp ugt i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  call void (i32, i32, ptr, ...) @pxz_error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.6) #17
  br label %92

92:                                               ; preds = %91, %88
  %93 = load i64, ptr %32, align 8, !tbaa !63
  %94 = icmp eq i64 %93, 1048576
  br i1 %94, label %107, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %8, align 8, !tbaa !35
  %97 = load i64, ptr %9, align 8, !tbaa !41
  %98 = trunc i64 %97 to i32
  %99 = trunc i64 %93 to i32
  %100 = sub i32 1048576, %99
  %101 = call i64 @spec_mem_fwrite(ptr noundef %96, i32 noundef %98, ptr noundef %40, i64 noundef 1, i32 noundef %100, i32 noundef %51) #15
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = tail call ptr @__errno_location() #16
  %105 = load i32, ptr %104, align 4, !tbaa !39
  call void (i32, i32, ptr, ...) @pxz_error(i32 noundef 1, i32 noundef %105, ptr noundef nonnull @.str.5) #17
  br label %106

106:                                              ; preds = %103, %95
  store ptr %40, ptr %31, align 8, !tbaa !62
  store i64 1048576, ptr %32, align 8, !tbaa !63
  br label %107

107:                                              ; preds = %92, %106
  %108 = icmp eq i32 %89, 0
  br i1 %108, label %88, label %109, !llvm.loop !66

109:                                              ; preds = %107
  call void @lzma_end(ptr noundef nonnull %15) #15
  call void @free(ptr noundef %40) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %15) #7
  %110 = add nsw i64 %34, 1
  %111 = load i64, ptr %12, align 8, !tbaa !41
  %112 = icmp slt i64 %34, %111
  br i1 %112, label %33, label %113

113:                                              ; preds = %109, %22
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  br label %114

114:                                              ; preds = %113, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pxz_error(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !35
  %6 = call i64 @fwrite(ptr nonnull @.str.12, i64 10, i64 1, ptr %5) #21
  %7 = load ptr, ptr @stderr, align 8, !tbaa !35
  %8 = call i32 @vfprintf(ptr noundef %7, ptr noundef %2, ptr noundef nonnull %4) #18
  call void @llvm.va_end(ptr nonnull %4)
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @stderr, align 8, !tbaa !35
  %12 = call ptr @strerror(i32 noundef %1) #15
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.13, ptr noundef %12) #18
  br label %14

14:                                               ; preds = %10, %3
  %15 = load ptr, ptr @stderr, align 8, !tbaa !35
  %16 = call i32 @fputc(i32 10, ptr %15)
  %17 = icmp eq i32 %0, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call void @exit(i32 noundef %0) #19
  unreachable

19:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @init_encoder(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @spec_mem_fwrite(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !67 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @spec_mem_fread(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @spec_mem_free_fds(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind optsize willreturn memory(none) }
attributes #17 = { optsize }
attributes #18 = { cold optsize }
attributes #19 = { noreturn nounwind optsize }
attributes #20 = { nounwind optsize allocsize(0) }
attributes #21 = { cold }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 0}
!4 = !{!"MaxCount", i64 0}
!5 = !{!"MaxInternalCount", i64 0}
!6 = !{!"MaxFunctionCount", i64 0}
!7 = !{!"NumCounts", i64 0}
!8 = !{!"NumFunctions", i64 0}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 0, i32 0}
!14 = !{i32 100000, i64 0, i32 0}
!15 = !{i32 200000, i64 0, i32 0}
!16 = !{i32 300000, i64 0, i32 0}
!17 = !{i32 400000, i64 0, i32 0}
!18 = !{i32 500000, i64 0, i32 0}
!19 = !{i32 600000, i64 0, i32 0}
!20 = !{i32 700000, i64 0, i32 0}
!21 = !{i32 800000, i64 0, i32 0}
!22 = !{i32 900000, i64 0, i32 0}
!23 = !{i32 950000, i64 0, i32 0}
!24 = !{i32 990000, i64 0, i32 0}
!25 = !{i32 999000, i64 0, i32 0}
!26 = !{i32 999900, i64 0, i32 0}
!27 = !{i32 999990, i64 0, i32 0}
!28 = !{i32 999999, i64 0, i32 0}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!44, !40, i64 0}
!44 = !{!"", !40, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !36, i64 96, !36, i64 104}
!45 = !{!46, !42, i64 0}
!46 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !40, i64 24, !36, i64 32}
!47 = distinct !{!47, !48, !49, !50}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = !{!46, !36, i64 32}
!52 = distinct !{!52, !48}
!53 = !{!46, !40, i64 24}
!54 = distinct !{!54, !48}
!55 = distinct !{!55, !48}
!56 = distinct !{!56, !48}
!57 = !{i32 -1, i32 1}
!58 = !{!"pxz.c:compressStream.omp_outlined"}
!59 = !{!60, !36, i64 0}
!60 = !{!"", !36, i64 0, !42, i64 8, !42, i64 16, !36, i64 24, !42, i64 32, !42, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !40, i64 128, !40, i64 132}
!61 = !{!60, !42, i64 8}
!62 = !{!60, !36, i64 24}
!63 = !{!60, !42, i64 32}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !48}
!67 = !{!68}
!68 = !{i64 2, i64 -1, i64 -1, i1 true}
