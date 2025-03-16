; ModuleID = 'src/z32.c'
source_filename = "src/z32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"word %s is too long\00", align 1
@xx_res = external local_unnamed_addr global ptr, align 8
@xx_hold = external local_unnamed_addr global ptr, align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Next:\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @Next(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #6
  %6 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !5
  switch i8 %7, label %186 [
    i8 11, label %8
    i8 12, label %8
    i8 94, label %191
    i8 95, label %191
    i8 1, label %191
    i8 2, label %191
    i8 5, label %191
    i8 4, label %191
    i8 6, label %191
    i8 7, label %191
    i8 44, label %191
    i8 42, label %191
    i8 43, label %191
    i8 45, label %191
    i8 46, label %191
    i8 21, label %191
    i8 23, label %191
    i8 20, label %147
    i8 22, label %147
    i8 24, label %147
    i8 25, label %147
    i8 26, label %147
    i8 27, label %147
    i8 28, label %147
    i8 29, label %147
    i8 36, label %147
    i8 37, label %147
    i8 38, label %147
    i8 39, label %147
    i8 40, label %147
    i8 41, label %147
    i8 47, label %147
    i8 48, label %147
    i8 49, label %147
    i8 30, label %147
    i8 31, label %147
    i8 32, label %147
    i8 33, label %147
    i8 50, label %147
    i8 51, label %147
    i8 34, label %147
    i8 35, label %147
    i8 9, label %147
    i8 96, label %147
    i8 97, label %147
    i8 98, label %147
    i8 99, label %147
    i8 17, label %158
    i8 16, label %158
    i8 15, label %158
    i8 18, label %158
    i8 19, label %158
  ]

8:                                                ; preds = %3, %3
  %9 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #7
  %11 = and i64 %10, 4294967295
  br label %12

12:                                               ; preds = %16, %8
  %13 = phi i64 [ %17, %16 ], [ %11, %8 ]
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %191

16:                                               ; preds = %12
  %17 = add nsw i64 %13, -1
  %18 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = add i8 %19, -48
  %21 = icmp ult i8 %20, 10
  br i1 %21, label %22, label %12

22:                                               ; preds = %16
  %23 = icmp eq i32 %14, 1
  br i1 %23, label %40, label %24

24:                                               ; preds = %22
  %25 = add nsw i32 %14, -2
  br label %26

26:                                               ; preds = %24, %33
  %27 = phi i32 [ %34, %33 ], [ %25, %24 ]
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !5
  %31 = add i8 %30, -48
  %32 = icmp ult i8 %31, 10
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = add nsw i32 %27, -1
  %35 = icmp sgt i32 %27, 0
  br i1 %35, label %26, label %36

36:                                               ; preds = %33, %26
  %37 = phi i32 [ %27, %26 ], [ -1, %33 ]
  %38 = add nsw i32 %37, 1
  %39 = zext nneg i32 %38 to i64
  br label %40

40:                                               ; preds = %36, %22
  %41 = phi i64 [ 0, %22 ], [ %39, %36 ]
  %42 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 %41
  %43 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %42, ptr noundef nonnull @.str, ptr noundef nonnull %4) #6
  store i8 0, ptr %42, align 1, !tbaa !5
  %44 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %9) #6
  %45 = load i32, ptr %4, align 4, !tbaa !8
  %46 = add nsw i32 %45, %1
  %47 = call ptr @StringInt(i32 noundef %46) #6
  %48 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %47) #6
  %49 = and i64 %13, 4294967295
  %50 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 %49
  %51 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %50) #6
  %52 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #7
  %53 = icmp ugt i64 %52, 511
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 32, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  br label %56

56:                                               ; preds = %54, %40
  %57 = load i8, ptr %6, align 8, !tbaa !5
  %58 = zext i8 %57 to i32
  %59 = call ptr @MakeWord(i32 noundef %58, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %60 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 4095
  %63 = getelementptr inbounds %struct.word_type, ptr %59, i64 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, -4096
  %66 = or disjoint i32 %65, %62
  store i32 %66, ptr %63, align 8
  %67 = load i32, ptr %60, align 8
  %68 = and i32 %67, 4190208
  %69 = and i32 %66, -4190209
  %70 = or disjoint i32 %69, %68
  store i32 %70, ptr %63, align 8
  %71 = load i32, ptr %60, align 8
  %72 = and i32 %71, 4194304
  %73 = and i32 %70, -4194305
  %74 = or disjoint i32 %73, %72
  store i32 %74, ptr %63, align 8
  %75 = load i32, ptr %60, align 8
  %76 = and i32 %75, 528482304
  %77 = and i32 %74, -528482305
  %78 = or disjoint i32 %77, %76
  store i32 %78, ptr %63, align 8
  %79 = load i32, ptr %60, align 8
  %80 = and i32 %79, -2147483648
  %81 = and i32 %78, 2147483647
  %82 = or disjoint i32 %81, %80
  store i32 %82, ptr %63, align 8
  %83 = load i32, ptr %60, align 8
  %84 = and i32 %83, 1610612736
  %85 = and i32 %82, -1610612737
  %86 = or disjoint i32 %85, %84
  store i32 %86, ptr %63, align 8
  store ptr %59, ptr @xx_res, align 8, !tbaa !10
  store ptr %0, ptr @xx_hold, align 8, !tbaa !10
  %87 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %100, label %90

90:                                               ; preds = %56
  store ptr %88, ptr @zz_res, align 8, !tbaa !10
  %91 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !5
  %93 = getelementptr inbounds [2 x %struct.LIST], ptr %88, i64 0, i64 1
  store ptr %92, ptr %93, align 8, !tbaa !5
  %94 = getelementptr inbounds [2 x %struct.LIST], ptr %92, i64 0, i64 1, i32 1
  store ptr %88, ptr %94, align 8, !tbaa !5
  store ptr %0, ptr %87, align 8, !tbaa !5
  store ptr %0, ptr %91, align 8, !tbaa !5
  %95 = load ptr, ptr %93, align 8, !tbaa !5
  store ptr %95, ptr @zz_tmp, align 8, !tbaa !10
  %96 = getelementptr inbounds [2 x %struct.LIST], ptr %59, i64 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  store ptr %97, ptr %93, align 8, !tbaa !5
  %98 = getelementptr inbounds [2 x %struct.LIST], ptr %97, i64 0, i64 1, i32 1
  store ptr %88, ptr %98, align 8, !tbaa !5
  store ptr %95, ptr %96, align 8, !tbaa !5
  %99 = getelementptr inbounds [2 x %struct.LIST], ptr %95, i64 0, i64 1, i32 1
  store ptr %59, ptr %99, align 8, !tbaa !5
  br label %100

100:                                              ; preds = %56, %90
  %101 = phi ptr [ %88, %90 ], [ null, %56 ]
  store ptr %101, ptr @xx_tmp, align 8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !10
  %102 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = icmp eq ptr %103, %0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store ptr null, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %59, ptr @zz_res, align 8, !tbaa !10
  br label %128

106:                                              ; preds = %100
  store ptr %103, ptr @zz_res, align 8, !tbaa !10
  %107 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %107, ptr %103, align 8, !tbaa !5
  %108 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %109 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = getelementptr inbounds %struct.LIST, ptr %110, i64 0, i32 1
  store ptr %108, ptr %111, align 8, !tbaa !5
  %112 = getelementptr inbounds %struct.LIST, ptr %109, i64 0, i32 1
  store ptr %109, ptr %112, align 8, !tbaa !5
  store ptr %109, ptr %109, align 8, !tbaa !5
  %113 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %114 = load ptr, ptr @xx_res, align 8, !tbaa !10
  store ptr %113, ptr @xx_tmp, align 8, !tbaa !10
  store ptr %114, ptr @zz_res, align 8, !tbaa !10
  store ptr %113, ptr @zz_hold, align 8, !tbaa !10
  %115 = icmp eq ptr %113, null
  %116 = icmp eq ptr %114, null
  %117 = select i1 %115, i1 true, i1 %116
  br i1 %117, label %128, label %118

118:                                              ; preds = %106
  %119 = load ptr, ptr %113, align 8, !tbaa !5
  store ptr %119, ptr @zz_tmp, align 8, !tbaa !10
  %120 = load ptr, ptr %114, align 8, !tbaa !5
  store ptr %120, ptr %113, align 8, !tbaa !5
  %121 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %122 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %124 = getelementptr inbounds %struct.LIST, ptr %123, i64 0, i32 1
  store ptr %121, ptr %124, align 8, !tbaa !5
  %125 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %125, ptr %122, align 8, !tbaa !5
  %126 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %127 = getelementptr inbounds %struct.LIST, ptr %125, i64 0, i32 1
  store ptr %126, ptr %127, align 8, !tbaa !5
  br label %128

128:                                              ; preds = %105, %106, %118
  %129 = load ptr, ptr @xx_hold, align 8, !tbaa !10
  store ptr %129, ptr @zz_hold, align 8, !tbaa !10
  %130 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 1
  %131 = load i8, ptr %130, align 8, !tbaa !5
  %132 = add i8 %131, -11
  %133 = icmp ult i8 %132, 2
  %134 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 1, i32 0, i32 1
  %135 = zext i8 %131 to i64
  %136 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %135
  %137 = select i1 %133, ptr %134, ptr %136
  %138 = load i8, ptr %137, align 1, !tbaa !5
  %139 = zext i8 %138 to i32
  store i32 %139, ptr @zz_size, align 4, !tbaa !8
  %140 = zext i8 %138 to i64
  %141 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !10
  store ptr %142, ptr %129, align 8, !tbaa !5
  %143 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %144 = load i32, ptr @zz_size, align 4, !tbaa !8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %145
  store ptr %143, ptr %146, align 8, !tbaa !10
  store i32 1, ptr %2, align 4, !tbaa !8
  br label %191

147:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %148 = load ptr, ptr %0, align 8, !tbaa !5
  br label %149

149:                                              ; preds = %149, %147
  %150 = phi ptr [ %148, %147 ], [ %152, %149 ]
  %151 = getelementptr inbounds [2 x %struct.LIST], ptr %150, i64 0, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !5
  %153 = getelementptr inbounds %struct.word_type, ptr %152, i64 0, i32 1
  %154 = load i8, ptr %153, align 8, !tbaa !5
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %149, label %156

156:                                              ; preds = %149
  %157 = tail call ptr @Next(ptr noundef nonnull %152, i32 noundef %1, ptr noundef %2)
  br label %191

158:                                              ; preds = %3, %3, %3, %3, %3
  %159 = load ptr, ptr %0, align 8, !tbaa !5
  %160 = icmp eq ptr %159, %0
  br i1 %160, label %191, label %161

161:                                              ; preds = %158, %183
  %162 = phi ptr [ %184, %183 ], [ %159, %158 ]
  %163 = load i32, ptr %2, align 4, !tbaa !8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %191

165:                                              ; preds = %161, %172
  %166 = phi ptr [ %173, %172 ], [ %162, %161 ]
  %167 = getelementptr inbounds [2 x %struct.LIST], ptr %166, i64 0, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !5
  %169 = getelementptr inbounds %struct.word_type, ptr %168, i64 0, i32 1
  %170 = load i8, ptr %169, align 8, !tbaa !5
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165, %174
  %173 = phi ptr [ %168, %165 ], [ %162, %174 ]
  br label %165

174:                                              ; preds = %165
  %175 = add i8 %170, -119
  %176 = icmp ult i8 %175, 20
  br i1 %176, label %172, label %177

177:                                              ; preds = %174
  %178 = tail call ptr @Next(ptr noundef nonnull %168, i32 noundef %1, ptr noundef nonnull %2)
  %179 = load i32, ptr %2, align 4, !tbaa !8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load ptr, ptr %162, align 8, !tbaa !5
  br label %183

183:                                              ; preds = %181, %177
  %184 = phi ptr [ %162, %177 ], [ %182, %181 ]
  %185 = icmp eq ptr %184, %0
  br i1 %185, label %191, label %161

186:                                              ; preds = %3
  %187 = zext i8 %7 to i32
  %188 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %189 = tail call ptr @Image(i32 noundef %187) #6
  %190 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %188, ptr noundef nonnull @.str.3, ptr noundef %189) #6
  br label %191

191:                                              ; preds = %161, %183, %12, %158, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %186, %156, %128
  %192 = phi ptr [ %0, %186 ], [ %0, %156 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %59, %128 ], [ %0, %158 ], [ %0, %12 ], [ %0, %183 ], [ %0, %161 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret ptr %192
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

declare ptr @StringInt(i32 noundef) local_unnamed_addr #5

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Image(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
