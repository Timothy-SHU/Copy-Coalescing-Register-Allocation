; ModuleID = 'spec.c'
source_filename = "spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.spec_fd_t = type { i64, i64, i64, i32, ptr }

@.str = private unnamed_addr constant [46 x i8] c"main: Error mallocing memory for SHA-%d sum!\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"Error: Supplied original hash value is not the correct length to be SHA-%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [127 x i8] c"Usage: %s <input filename> <input size> <input raw SHA-%d> <compressed minimum> <compressed maximum> <compression level, ...>\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"SPEC CPU XZ driver: input=%s insize=%ld\0A\00", align 1
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Error allocating in-memory file descriptors\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Input data %ld bytes in length\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Error: compression level '%s' is not valid\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Compressing Input Data, level %d%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" (extreme)\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Compressed data %ld bytes in length\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Compressed data length is %ld bytes in length\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Compressed data is between %ld and %ld bytes in length\0A\00", align 1
@.str.14 = private unnamed_addr constant [75 x i8] c"Compressed data length of %ld does not match expected length of %ld bytes\0A\00", align 1
@.str.15 = private unnamed_addr constant [82 x i8] c"Compressed data length of %ld is outside the allowable range of %ld to %ld bytes\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Uncompressed data %ld bytes in length\0A\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"Computed SHA-%d sum for decompression step did not match expected\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"  Generated: \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"   Expected: \00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Tested %ld MiB buffer: OK!\0A\00", align 1
@str = private unnamed_addr constant [19 x i8] c"Loading Input Data\00", align 1
@str.25 = private unnamed_addr constant [26 x i8] c"Finished compressing data\00", align 1
@str.26 = private unnamed_addr constant [41 x i8] c"Uncompressing previously compressed data\00", align 1
@str.27 = private unnamed_addr constant [37 x i8] c"Uncompressed data compared correctly\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !55 {
  %3 = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !56

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 512)
  tail call void @exit(i32 noundef 1) #9
  unreachable

7:                                                ; preds = %2
  %8 = icmp sgt i32 %0, 1
  br i1 %8, label %9, label %12, !prof !57

9:                                                ; preds = %7
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %11, %9 ], [ null, %7 ]
  %14 = icmp sgt i32 %0, 2
  br i1 %14, label %15, label %19, !prof !57

15:                                               ; preds = %12
  %16 = getelementptr inbounds ptr, ptr %1, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = tail call i64 @strtol(ptr nocapture noundef %17, ptr noundef null, i32 noundef 10) #10
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i64 [ %18, %15 ], [ 0, %12 ]
  %21 = icmp sgt i32 %0, 3
  br i1 %21, label %22, label %33, !prof !57

22:                                               ; preds = %19
  %23 = getelementptr inbounds ptr, ptr %1, i64 3
  %24 = load ptr, ptr %23, align 8, !tbaa !58
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #11
  %26 = and i64 %25, 4611686018427387903
  %27 = icmp eq i64 %26, 128
  br i1 %27, label %31, label %28, !prof !57

28:                                               ; preds = %22
  %29 = load ptr, ptr @stderr, align 8, !tbaa !58
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.1, i32 noundef 512) #12
  tail call void @exit(i32 noundef 1) #9
  unreachable

31:                                               ; preds = %22
  %32 = tail call ptr @sum_str_to_hex(ptr noundef %24, i32 noundef 512) #10
  br label %33

33:                                               ; preds = %31, %19
  %34 = phi ptr [ %32, %31 ], [ null, %19 ]
  %35 = icmp sgt i32 %0, 4
  br i1 %35, label %36, label %40, !prof !57

36:                                               ; preds = %33
  %37 = getelementptr inbounds ptr, ptr %1, i64 4
  %38 = load ptr, ptr %37, align 8, !tbaa !58
  %39 = tail call i64 @strtol(ptr nocapture noundef %38, ptr noundef null, i32 noundef 10) #10
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i64 [ %39, %36 ], [ -1, %33 ]
  %42 = icmp sgt i32 %0, 5
  br i1 %42, label %43, label %47, !prof !57

43:                                               ; preds = %40
  %44 = getelementptr inbounds ptr, ptr %1, i64 5
  %45 = load ptr, ptr %44, align 8, !tbaa !58
  %46 = tail call i64 @strtol(ptr nocapture noundef %45, ptr noundef null, i32 noundef 10) #10
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i64 [ %46, %43 ], [ -1, %40 ]
  %49 = icmp slt i64 %48, 0
  %50 = select i1 %49, i64 %41, i64 %48, !prof !56
  %51 = icmp eq ptr %13, null
  %52 = icmp slt i64 %20, 1
  %53 = select i1 %51, i1 true, i1 %52, !prof !56
  %54 = icmp eq ptr %34, null
  %55 = select i1 %53, i1 true, i1 %54, !prof !56
  %56 = icmp eq i64 %41, 0
  %57 = select i1 %55, i1 true, i1 %56, !prof !56
  %58 = icmp eq i64 %50, 0
  %59 = select i1 %57, i1 true, i1 %58, !prof !56
  %60 = icmp slt i32 %0, 6
  %61 = or i1 %60, %59
  br i1 %61, label %62, label %65, !prof !56

62:                                               ; preds = %47
  %63 = load ptr, ptr %1, align 8, !tbaa !58
  %64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %63, i32 noundef 512)
  tail call void @exit(i32 noundef 1) #9
  unreachable

65:                                               ; preds = %47
  %66 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %13, i64 noundef %20)
  %67 = tail call ptr @spec_mem_alloc_fds(i32 noundef 3) #10
  store ptr %67, ptr @spec_fd, align 8, !tbaa !58
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72, !prof !56

69:                                               ; preds = %65
  %70 = load ptr, ptr @stderr, align 8, !tbaa !58
  %71 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 44, i64 1, ptr %70) #12
  tail call void @exit(i32 noundef 1) #9
  unreachable

72:                                               ; preds = %65
  %73 = shl nsw i64 %20, 20
  %74 = icmp slt i64 %20, 254
  %75 = getelementptr inbounds %struct.spec_fd_t, ptr %67, i64 1
  %76 = select i1 %74, i64 266338304, i64 %73, !prof !57
  store i64 %76, ptr %75, align 8, !tbaa !62
  store i64 %76, ptr %67, align 8, !tbaa !62
  %77 = tail call i32 @spec_mem_init(ptr noundef nonnull %67, i32 noundef 3, i32 noundef 1) #10
  %78 = tail call i32 @debug_time() #10
  %79 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %80 = load ptr, ptr @spec_fd, align 8, !tbaa !58
  %81 = tail call ptr @spec_mem_load(ptr noundef %80, i32 noundef 3, i32 noundef 0, ptr noundef %13, i64 noundef %73, i32 noundef 1, ptr noundef %34, i32 noundef 512) #10
  %82 = load ptr, ptr @spec_fd, align 8, !tbaa !58
  %83 = getelementptr inbounds %struct.spec_fd_t, ptr %82, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !66
  %85 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %84)
  %86 = load ptr, ptr @spec_fd, align 8, !tbaa !58
  %87 = getelementptr inbounds %struct.spec_fd_t, ptr %86, i64 2, i32 3
  store i32 1, ptr %87, align 8, !tbaa !67
  %88 = getelementptr inbounds %struct.spec_fd_t, ptr %86, i64 1, i32 3
  store i32 1, ptr %88, align 8, !tbaa !67
  %89 = getelementptr inbounds %struct.spec_fd_t, ptr %86, i64 0, i32 3
  store i32 1, ptr %89, align 8, !tbaa !67
  tail call void (...) @spec_initbufs() #10
  %90 = icmp sgt i32 %0, 6
  br i1 %90, label %91, label %178, !prof !68

91:                                               ; preds = %72
  %92 = icmp sgt i64 %41, 0
  %93 = icmp eq i64 %41, %50
  %94 = zext nneg i32 %0 to i64
  br label %95

95:                                               ; preds = %91, %166
  %96 = phi i64 [ 6, %91 ], [ %176, %166 ]
  %97 = getelementptr inbounds ptr, ptr %1, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !58
  %99 = load i8, ptr %98, align 1, !tbaa !69
  %100 = add i8 %99, -58
  %101 = icmp ult i8 %100, -10
  br i1 %101, label %102, label %106, !prof !56

102:                                              ; preds = %95
  %103 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %98)
  %104 = load ptr, ptr %1, align 8, !tbaa !58
  %105 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %104, i32 noundef 512)
  tail call void @exit(i32 noundef 1) #9
  unreachable

106:                                              ; preds = %95
  %107 = getelementptr inbounds i8, ptr %98, i64 1
  %108 = load i8, ptr %107, align 1, !tbaa !69
  %109 = icmp eq i8 %108, 101
  %110 = select i1 %109, i32 -2147483648, i32 0, !prof !56
  %111 = zext nneg i8 %99 to i32
  %112 = add nsw i32 %111, -48
  %113 = tail call i32 @debug_time() #10
  %114 = select i1 %109, ptr @.str.9, ptr @.str.10, !prof !56
  %115 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %112, ptr noundef nonnull %114)
  %116 = or disjoint i32 %110, %112
  tail call void @spec_compress(i32 noundef 0, i32 noundef 1, i32 noundef %116) #10
  %117 = tail call i32 @debug_time() #10
  %118 = load ptr, ptr @stderr, align 8, !tbaa !58
  %119 = load ptr, ptr @spec_fd, align 8, !tbaa !58
  %120 = getelementptr inbounds %struct.spec_fd_t, ptr %119, i64 1, i32 1
  %121 = load i64, ptr %120, align 8, !tbaa !66
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef nonnull @.str.11, i64 noundef %121) #12
  br i1 %92, label %123, label %141, !prof !57

123:                                              ; preds = %106
  %124 = load ptr, ptr @spec_fd, align 8, !tbaa !58
  %125 = getelementptr inbounds %struct.spec_fd_t, ptr %124, i64 1, i32 1
  %126 = load i64, ptr %125, align 8, !tbaa !66
  %127 = icmp slt i64 %126, %41
  %128 = icmp sgt i64 %126, %50
  %129 = select i1 %127, i1 true, i1 %128, !prof !56
  br i1 %129, label %135, label %130, !prof !56

130:                                              ; preds = %123
  br i1 %93, label %131, label %133, !prof !56

131:                                              ; preds = %130
  %132 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %41)
  br label %141

133:                                              ; preds = %130
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i64 noundef %41, i64 noundef %50)
  br label %141

135:                                              ; preds = %123
  %136 = icmp eq i64 %41, %50
  br i1 %136, label %137, label %139

137:                                              ; preds = %135
  %138 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i64 noundef %126, i64 noundef %41)
  br label %141

139:                                              ; preds = %135
  %140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %126, i64 noundef %41, i64 noundef %50)
  br label %141

141:                                              ; preds = %133, %131, %139, %137, %106
  %142 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  %143 = load ptr, ptr @spec_fd, align 8, !tbaa !58
  %144 = tail call i32 @spec_mem_reset(ptr noundef %143, i32 noundef 3, i32 noundef 0) #10
  %145 = load ptr, ptr @spec_fd, align 8, !tbaa !58
  %146 = tail call i32 @spec_mem_rewind(ptr noundef %145, i32 noundef 3, i32 noundef 1) #10
  %147 = tail call i32 @debug_time() #10
  %148 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  tail call void @spec_uncompress(i32 noundef 1, i32 noundef 0) #10
  %149 = tail call i32 @debug_time() #10
  %150 = load ptr, ptr @spec_fd, align 8, !tbaa !58
  %151 = getelementptr inbounds %struct.spec_fd_t, ptr %150, i64 0, i32 1
  %152 = load i64, ptr %151, align 8, !tbaa !66
  %153 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %152)
  %154 = load ptr, ptr @spec_fd, align 8, !tbaa !58
  %155 = tail call ptr @spec_mem_sum(ptr noundef %154, ptr noundef nonnull %3, i32 noundef 512) #10
  %156 = tail call i32 @compare_sum(ptr noundef %81, ptr noundef nonnull %3, i32 noundef 512) #10
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %166, label %158, !prof !57

158:                                              ; preds = %141
  %159 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef 512)
  %160 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20)
  %161 = load ptr, ptr @stdout, align 8, !tbaa !58
  tail call void @print_sum(ptr noundef %161, ptr noundef nonnull %3, i32 noundef 512) #10
  %162 = tail call i32 @putchar(i32 10)
  %163 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22)
  %164 = load ptr, ptr @stdout, align 8, !tbaa !58
  tail call void @print_sum(ptr noundef %164, ptr noundef %81, i32 noundef 512) #10
  %165 = tail call i32 @putchar(i32 10)
  tail call void @exit(i32 noundef 0) #9
  unreachable

166:                                              ; preds = %141
  %167 = tail call i32 @debug_time() #10
  %168 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %169 = load ptr, ptr @spec_fd, align 8, !tbaa !58
  %170 = tail call i32 @spec_mem_reset(ptr noundef %169, i32 noundef 3, i32 noundef 1) #10
  %171 = load ptr, ptr @spec_fd, align 8, !tbaa !58
  %172 = tail call i32 @spec_mem_rewind(ptr noundef %171, i32 noundef 3, i32 noundef 0) #10
  %173 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i64 noundef %20)
  %174 = load ptr, ptr @stdout, align 8, !tbaa !58
  %175 = tail call i32 @fflush(ptr noundef %174)
  %176 = add nuw nsw i64 %96, 1
  %177 = icmp eq i64 %176, %94
  br i1 %177, label %178, label %95, !prof !68, !llvm.loop !70

178:                                              ; preds = %166, %72
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare ptr @sum_str_to_hex(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @spec_mem_alloc_fds(i32 noundef) local_unnamed_addr #6

declare i32 @spec_mem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @debug_time() local_unnamed_addr #6

declare ptr @spec_mem_load(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @spec_initbufs(...) local_unnamed_addr #6

declare void @spec_compress(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @spec_mem_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @spec_mem_rewind(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @spec_uncompress(i32 noundef, i32 noundef) local_unnamed_addr #6

declare ptr @spec_mem_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @compare_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @print_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!54}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @main, ptr @malloc, i64 1}
!36 = !{ptr @main, ptr @strtol, i64 3}
!37 = !{ptr @main, ptr @strlen, i64 1}
!38 = !{ptr @main, ptr @sum_str_to_hex, i64 1}
!39 = !{ptr @main, ptr @printf, i64 6}
!40 = !{ptr @main, ptr @spec_mem_alloc_fds, i64 1}
!41 = !{ptr @main, ptr @spec_mem_init, i64 1}
!42 = !{ptr @main, ptr @debug_time, i64 6}
!43 = !{ptr @main, ptr @puts, i64 4}
!44 = !{ptr @main, ptr @spec_mem_load, i64 1}
!45 = !{ptr @main, ptr @spec_initbufs, i64 1}
!46 = !{ptr @main, ptr @spec_compress, i64 1}
!47 = !{ptr @main, ptr @fprintf, i64 1}
!48 = !{ptr @main, ptr @spec_mem_reset, i64 2}
!49 = !{ptr @main, ptr @spec_mem_rewind, i64 2}
!50 = !{ptr @main, ptr @spec_uncompress, i64 1}
!51 = !{ptr @main, ptr @spec_mem_sum, i64 1}
!52 = !{ptr @main, ptr @compare_sum, i64 1}
!53 = !{ptr @main, ptr @fflush, i64 1}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 1}
!56 = !{!"branch_weights", i32 0, i32 1}
!57 = !{!"branch_weights", i32 1, i32 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !{!63, !64, i64 0}
!63 = !{!"", !64, i64 0, !64, i64 8, !64, i64 16, !65, i64 24, !59, i64 32}
!64 = !{!"long", !60, i64 0}
!65 = !{!"int", !60, i64 0}
!66 = !{!63, !64, i64 8}
!67 = !{!63, !65, i64 24}
!68 = !{!"branch_weights", i32 127, i32 1}
!69 = !{!60, !60, i64 0}
!70 = distinct !{!70, !71, !72}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.unroll.disable"}
