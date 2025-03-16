; ModuleID = 'src/tree.c'
source_filename = "src/tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.dent = type { ptr, ptr, [1 x i64] }

@.str = private unnamed_addr constant [9 x i8] c"WORDLIST\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@personaldict = internal global [4096 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [9 x i8] c".ispell_\00", align 1
@dictf = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s/%s%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@cbench_print = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lflag = external local_unnamed_addr global i32, align 4
@aflag = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [50 x i8] c"Warning: Cannot update personal dictionary (%s)\0D\0A\00", align 1
@cantexpand = internal unnamed_addr global i1 false, align 4
@pershsize = internal unnamed_addr global i32 0, align 4
@pershtab = internal unnamed_addr global ptr null, align 8
@goodsizes = internal unnamed_addr constant [4 x i32] [i32 53, i32 223, i32 907, i32 3631], align 16
@.str.12 = private unnamed_addr constant [43 x i8] c"Ran out of space for personal dictionary\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Continuing anyway (with reduced performance).\0D\0A\00", align 1
@newwords = internal unnamed_addr global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@hashtbl = external local_unnamed_addr global ptr, align 8
@hashsize = external local_unnamed_addr global i32, align 4
@hashstrings = external local_unnamed_addr global ptr, align 8
@hashheader = external local_unnamed_addr global %struct.hashheader, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"src/tree.c\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @treeinit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8192 x i8], align 16
  %4 = alloca [8192 x i8], align 16
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [8192 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #17
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call ptr @getenv(ptr noundef nonnull @.str) #17
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ %0, %2 ]
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.1) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %178, label %15

15:                                               ; preds = %11
  %16 = icmp eq ptr %12, null
  br i1 %16, label %17, label %106

17:                                               ; preds = %15
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.2, ptr noundef %1) #17
  %19 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i8 0, ptr @personaldict, align 16, !tbaa !5
  br label %22

22:                                               ; preds = %17, %21
  store ptr %19, ptr @dictf, align 8, !tbaa !8
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %13, ptr noundef nonnull @.str.2, ptr noundef %1) #17
  %24 = call noalias ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.7)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8 0, ptr %7, align 16, !tbaa !5
  br label %27

27:                                               ; preds = %22, %26
  %28 = load ptr, ptr @dictf, align 8, !tbaa !8
  %29 = icmp eq ptr %28, null
  %30 = and i1 %25, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  %33 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i8 0, ptr @personaldict, align 16, !tbaa !5
  br label %36

36:                                               ; preds = %31, %35
  store ptr %33, ptr @dictf, align 8, !tbaa !8
  %37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  %38 = call noalias ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.7)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8 0, ptr %7, align 16, !tbaa !5
  br label %41

41:                                               ; preds = %40, %36, %27
  %42 = phi ptr [ %24, %27 ], [ %38, %36 ], [ %38, %40 ]
  %43 = load ptr, ptr @dictf, align 8, !tbaa !8
  %44 = icmp eq ptr %43, null
  %45 = icmp eq ptr %42, null
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.2, ptr noundef %1) #17
  %49 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i8 0, ptr @personaldict, align 16, !tbaa !5
  br label %52

52:                                               ; preds = %47, %51
  store ptr %49, ptr @dictf, align 8, !tbaa !8
  %53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %13, ptr noundef nonnull @.str.2, ptr noundef %1) #17
  %54 = call noalias ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.7)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i8 0, ptr %7, align 16, !tbaa !5
  br label %57

57:                                               ; preds = %56, %52, %41
  %58 = phi ptr [ %42, %41 ], [ %54, %52 ], [ %54, %56 ]
  %59 = load ptr, ptr @dictf, align 8, !tbaa !8
  %60 = icmp eq ptr %59, null
  %61 = icmp eq ptr %58, null
  %62 = and i1 %61, %60
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  %65 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i8 0, ptr @personaldict, align 16, !tbaa !5
  br label %68

68:                                               ; preds = %63, %67
  store ptr %65, ptr @dictf, align 8, !tbaa !8
  %69 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  %70 = call noalias ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.7)
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i8 0, ptr %7, align 16, !tbaa !5
  br label %73

73:                                               ; preds = %72, %68, %57
  %74 = phi ptr [ %58, %57 ], [ %70, %68 ], [ %70, %72 ]
  %75 = load i8, ptr @personaldict, align 16, !tbaa !5
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i8, ptr %7, align 16, !tbaa !5
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) %7) #17
  br label %84

82:                                               ; preds = %77
  %83 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %13, ptr noundef nonnull @.str.2, ptr noundef %1) #17
  br label %84

84:                                               ; preds = %80, %82, %73
  %85 = load ptr, ptr @dictf, align 8, !tbaa !8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %6) #17
  %88 = call ptr @fgets(ptr noundef nonnull %6, i32 noundef 8192, ptr noundef nonnull %85)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %87, %90
  call void @treeinsert(ptr noundef nonnull %6, i32 noundef 8192, i32 noundef 1)
  %91 = call ptr @fgets(ptr noundef nonnull %6, i32 noundef 8192, ptr noundef nonnull %85)
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %90, !llvm.loop !10

93:                                               ; preds = %90, %87
  store i32 0, ptr @newwords, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %6) #17
  %94 = load ptr, ptr @dictf, align 8, !tbaa !8
  %95 = call i32 @fclose(ptr noundef %94)
  br label %96

96:                                               ; preds = %93, %84
  %97 = icmp eq ptr %74, null
  br i1 %97, label %157, label %98

98:                                               ; preds = %96
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #17
  %99 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 8192, ptr noundef nonnull %74)
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98, %101
  call void @treeinsert(ptr noundef nonnull %5, i32 noundef 8192, i32 noundef 1)
  %102 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 8192, ptr noundef nonnull %74)
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %101, !llvm.loop !10

104:                                              ; preds = %101, %98
  store i32 0, ptr @newwords, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #17
  %105 = call i32 @fclose(ptr noundef nonnull %74)
  br label %157

106:                                              ; preds = %15
  %107 = load i8, ptr %12, align 1, !tbaa !5
  %108 = icmp eq i8 %107, 47
  br i1 %108, label %115, label %109

109:                                              ; preds = %106
  %110 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(3) @.str.5, i64 noundef 2) #18
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(4) @.str.6, i64 noundef 3) #18
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %109, %106, %112
  %116 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) %12) #17
  %117 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7)
  store ptr %117, ptr @dictf, align 8, !tbaa !8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %157, label %119

119:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #17
  %120 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 8192, ptr noundef nonnull %117)
  %121 = icmp eq ptr %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %119, %122
  call void @treeinsert(ptr noundef nonnull %4, i32 noundef 8192, i32 noundef 1)
  %123 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 8192, ptr noundef nonnull %117)
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %122, !llvm.loop !10

125:                                              ; preds = %122, %119
  store i32 0, ptr @newwords, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %4) #17
  %126 = load ptr, ptr @dictf, align 8, !tbaa !8
  %127 = call i32 @fclose(ptr noundef %126)
  br label %157

128:                                              ; preds = %112
  %129 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) %12) #17
  %130 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7)
  store ptr %130, ptr @dictf, align 8, !tbaa !8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %139, label %132

132:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #17
  %133 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 8192, ptr noundef nonnull %130)
  %134 = icmp eq ptr %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %132, %135
  call void @treeinsert(ptr noundef nonnull %3, i32 noundef 8192, i32 noundef 1)
  %136 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 8192, ptr noundef nonnull %130)
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %135, !llvm.loop !10

138:                                              ; preds = %135, %132
  store i32 0, ptr @newwords, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #17
  br label %144

139:                                              ; preds = %128
  %140 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %13, ptr noundef nonnull %12) #17
  %141 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7)
  store ptr %141, ptr @dictf, align 8, !tbaa !8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  tail call fastcc void @treeload(ptr noundef nonnull %141)
  br label %144

144:                                              ; preds = %138, %143
  %145 = load ptr, ptr @dictf, align 8, !tbaa !8
  %146 = call i32 @fclose(ptr noundef %145)
  br label %147

147:                                              ; preds = %144, %139
  %148 = load ptr, ptr @dictf, align 8, !tbaa !8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i32, ptr @cbench_print, align 4, !tbaa !12
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr @stderr, align 8, !tbaa !8
  %155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.9, ptr noundef nonnull %12) #19
  br label %156

156:                                              ; preds = %153, %150
  call void @perror(ptr noundef nonnull @.str.10) #19
  br label %178

157:                                              ; preds = %125, %115, %147, %96, %104
  %158 = load i32, ptr @lflag, align 4, !tbaa !12
  %159 = icmp ne i32 %158, 0
  %160 = load i32, ptr @aflag, align 4
  %161 = icmp ne i32 %160, 0
  %162 = select i1 %159, i1 true, i1 %161
  br i1 %162, label %178, label %163

163:                                              ; preds = %157
  %164 = call i32 (ptr, i32, ...) @access(ptr noundef nonnull @personaldict, i32 noundef 2) #17
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = tail call ptr @__errno_location() #20
  %168 = load i32, ptr %167, align 4, !tbaa !12
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %178, label %170

170:                                              ; preds = %166
  %171 = load i32, ptr @cbench_print, align 4, !tbaa !12
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load ptr, ptr @stderr, align 8, !tbaa !8
  %175 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull @.str.11, ptr noundef nonnull @personaldict) #19
  br label %176

176:                                              ; preds = %173, %170
  %177 = call i32 (i32, ...) @sleep(i32 noundef 2) #17
  br label %178

178:                                              ; preds = %157, %163, %166, %176, %11, %156
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @treeload(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %2) #17
  %3 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 8192, ptr noundef %0)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1, %5
  call void @treeinsert(ptr noundef nonnull %2, i32 noundef 8192, i32 noundef 1)
  %6 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 8192, ptr noundef %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %5, !llvm.loop !10

8:                                                ; preds = %5, %1
  store i32 0, ptr @newwords, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #4

declare i32 @access(...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare i32 @sleep(...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @treeinsert(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [120 x i8], align 16
  %5 = alloca %struct.dent, align 8
  %6 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #17
  %7 = load i1, ptr @cantexpand, align 4
  br i1 %7, label %57, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr @pershsize, align 4, !tbaa !12
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %57

11:                                               ; preds = %8
  %12 = load ptr, ptr @pershtab, align 8, !tbaa !8
  br label %13

13:                                               ; preds = %11, %18
  %14 = phi i64 [ 0, %11 ], [ %19, %18 ]
  %15 = getelementptr inbounds [4 x i32], ptr @goodsizes, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !12
  %17 = icmp sgt i32 %16, %9
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, 4
  br i1 %20, label %23, label %13, !llvm.loop !14

21:                                               ; preds = %13
  %22 = trunc i64 %14 to i32
  br label %23

23:                                               ; preds = %18, %21
  %24 = phi i32 [ %22, %21 ], [ 4, %18 ]
  %25 = phi i64 [ %14, %21 ], [ 4, %18 ]
  %26 = icmp ugt i32 %24, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = shl i32 %9, 1
  %29 = or disjoint i32 %28, 1
  br label %33

30:                                               ; preds = %23
  %31 = getelementptr inbounds [4 x i32], ptr @goodsizes, i64 0, i64 %25
  %32 = load i32, ptr %31, align 4, !tbaa !12
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %32, %30 ], [ %29, %27 ]
  store i32 %34, ptr @pershsize, align 4, !tbaa !12
  %35 = zext i32 %34 to i64
  %36 = tail call noalias ptr @calloc(i64 noundef %35, i64 noundef 24) #21
  store ptr %36, ptr @pershtab, align 8, !tbaa !8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i32, ptr @cbench_print, align 4, !tbaa !12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @stderr, align 8, !tbaa !8
  %43 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 42, i64 1, ptr %42) #19
  br label %44

44:                                               ; preds = %41, %38
  %45 = icmp eq ptr %12, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  tail call void @exit(i32 noundef 1) #22
  unreachable

47:                                               ; preds = %44
  %48 = load i32, ptr @cbench_print, align 4, !tbaa !12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @stderr, align 8, !tbaa !8
  %52 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 47, i64 1, ptr %51) #19
  br label %53

53:                                               ; preds = %50, %47
  store i1 true, ptr @cantexpand, align 4
  store i32 %9, ptr @pershsize, align 4, !tbaa !12
  store ptr %12, ptr @pershtab, align 8, !tbaa !8
  store i32 1, ptr @newwords, align 4, !tbaa !12
  br label %57

54:                                               ; preds = %33
  %55 = icmp eq ptr %12, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @free(ptr noundef %12) #17
  br label %57

57:                                               ; preds = %53, %56, %54, %8, %3
  %58 = call i32 @makedent(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #17
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %130, label %60

60:                                               ; preds = %57
  %61 = icmp eq i32 %2, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.dent, ptr %5, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !15
  %65 = or i64 %64, 134217728
  store i64 %65, ptr %63, align 8, !tbaa !15
  br label %66

66:                                               ; preds = %62, %60
  %67 = call i32 @strtoichar(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 120, i32 noundef 1) #17
  call void @upcase(ptr noundef nonnull %6) #17
  %68 = call ptr @lookup(ptr noundef nonnull %6, i32 noundef 1) #17
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = call i32 @combinecaps(ptr noundef nonnull %68, ptr noundef nonnull %5) #17
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %127

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.dent, ptr %5, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !17
  call void @free(ptr noundef %75) #17
  br label %130

76:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #17
  %77 = getelementptr inbounds %struct.dent, ptr %5, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !17
  %79 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %78, i32 noundef 120, i32 noundef 1) #17
  %80 = icmp ne i32 %79, 0
  %81 = load i32, ptr @cbench_print, align 4
  %82 = icmp ne i32 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load ptr, ptr @stderr, align 8, !tbaa !8
  %86 = load ptr, ptr %77, align 8, !tbaa !17
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.17, ptr noundef %86, i32 noundef 446, ptr noundef nonnull @.str.18) #19
  br label %88

88:                                               ; preds = %84, %76
  %89 = load i32, ptr @pershsize, align 4, !tbaa !12
  %90 = call i32 @hash(ptr noundef nonnull %4, i32 noundef %89) #17
  %91 = load ptr, ptr @pershtab, align 8, !tbaa !8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds %struct.dent, ptr %91, i64 %92
  %94 = getelementptr inbounds %struct.dent, ptr %91, i64 %92, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !15
  %96 = and i64 %95, 67108864
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %88
  %99 = icmp eq ptr %91, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %98, %100
  %101 = phi ptr [ %102, %100 ], [ %93, %98 ]
  %102 = load ptr, ptr %101, align 8, !tbaa !19
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %100, !llvm.loop !20

104:                                              ; preds = %100, %98
  %105 = phi ptr [ null, %98 ], [ %101, %100 ]
  %106 = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #21
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32, ptr @cbench_print, align 4, !tbaa !12
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr @stderr, align 8, !tbaa !8
  %113 = call i64 @fwrite(ptr nonnull @.str.12, i64 42, i64 1, ptr %112) #19
  br label %114

114:                                              ; preds = %111, %108
  call void @exit(i32 noundef 1) #22
  unreachable

115:                                              ; preds = %104, %88
  %116 = phi ptr [ %106, %104 ], [ %93, %88 ]
  %117 = phi ptr [ %105, %104 ], [ null, %88 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %116, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !21
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  store ptr %116, ptr %117, align 8, !tbaa !19
  br label %120

120:                                              ; preds = %115, %119
  store ptr null, ptr %116, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #17
  %121 = getelementptr inbounds %struct.dent, ptr %116, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !15
  %123 = and i64 %122, 805306368
  %124 = icmp eq i64 %123, 805306368
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = call i32 @addvheader(ptr noundef nonnull %116) #17
  br label %127

127:                                              ; preds = %120, %125, %70
  %128 = load i32, ptr @newwords, align 4, !tbaa !12
  %129 = or i32 %128, %2
  store i32 %129, ptr @newwords, align 4, !tbaa !12
  br label %130

130:                                              ; preds = %57, %127, %73
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare i32 @makedent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @strtoichar(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @upcase(ptr noundef) local_unnamed_addr #6

declare ptr @lookup(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @combinecaps(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @addvheader(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @treelookup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #17
  %3 = load i32, ptr @pershsize, align 4, !tbaa !12
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %43, label %5

5:                                                ; preds = %1
  %6 = call i32 @ichartostr(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 120, i32 noundef 1) #17
  %7 = load i32, ptr @pershsize, align 4, !tbaa !12
  %8 = call i32 @hash(ptr noundef %0, i32 noundef %7) #17
  %9 = load ptr, ptr @pershtab, align 8, !tbaa !8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %5
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds %struct.dent, ptr %9, i64 %12
  br label %14

14:                                               ; preds = %11, %37
  %15 = phi ptr [ %39, %37 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.dent, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !15
  %18 = and i64 %17, 67108864
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.dent, ptr %15, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  %23 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %22) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.dent, ptr %15, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !15
  %28 = and i64 %27, 1073741824
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %32, %30 ], [ %15, %25 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = getelementptr inbounds %struct.dent, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !15
  %35 = and i64 %34, 1073741824
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %30, !llvm.loop !22

37:                                               ; preds = %30, %25
  %38 = phi ptr [ %15, %25 ], [ %32, %30 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %14, !llvm.loop !23

41:                                               ; preds = %20
  br i1 %19, label %42, label %43

42:                                               ; preds = %37, %14, %5, %41
  br label %43

43:                                               ; preds = %41, %1, %42
  %44 = phi ptr [ null, %42 ], [ null, %1 ], [ %15, %41 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #17
  ret ptr %44
}

declare i32 @ichartostr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @hash(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @treeoutput() local_unnamed_addr #0 {
  %1 = load i32, ptr @newwords, align 4, !tbaa !12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %209, label %3

3:                                                ; preds = %0
  %4 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.14)
  store ptr %4, ptr @dictf, align 8, !tbaa !8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load i32, ptr @cbench_print, align 4, !tbaa !12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %209, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @stderr, align 8, !tbaa !8
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.15, ptr noundef nonnull @personaldict) #19
  br label %209

12:                                               ; preds = %3
  %13 = load ptr, ptr @pershtab, align 8, !tbaa !8
  %14 = load i32, ptr @pershsize, align 4, !tbaa !12
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.dent, ptr %13, i64 %15
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %12, %44
  %19 = phi i32 [ %45, %44 ], [ 0, %12 ]
  %20 = phi ptr [ %46, %44 ], [ %13, %12 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %18, %40
  %23 = phi i32 [ %30, %40 ], [ %19, %18 ]
  %24 = phi ptr [ %42, %40 ], [ %20, %18 ]
  %25 = getelementptr inbounds %struct.dent, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !15
  %27 = and i64 %26, 201326592
  %28 = icmp eq i64 %27, 201326592
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 %23, %29
  %31 = and i64 %26, 1073741824
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %22, %33
  %34 = phi ptr [ %35, %33 ], [ %24, %22 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !19
  %36 = getelementptr inbounds %struct.dent, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !15
  %38 = and i64 %37, 1073741824
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %33, !llvm.loop !24

40:                                               ; preds = %33, %22
  %41 = phi ptr [ %24, %22 ], [ %35, %33 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !19
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %22, !llvm.loop !25

44:                                               ; preds = %40, %18
  %45 = phi i32 [ %19, %18 ], [ %30, %40 ]
  %46 = getelementptr inbounds %struct.dent, ptr %20, i64 1
  %47 = icmp ult ptr %46, %16
  br i1 %47, label %18, label %48, !llvm.loop !26

48:                                               ; preds = %44, %12
  %49 = phi i32 [ 0, %12 ], [ %45, %44 ]
  %50 = load ptr, ptr @hashtbl, align 8, !tbaa !8
  %51 = load i32, ptr @hashsize, align 4, !tbaa !12
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dent, ptr %50, i64 %52
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %48, %71
  %56 = phi i32 [ %72, %71 ], [ %49, %48 ]
  %57 = phi ptr [ %73, %71 ], [ %50, %48 ]
  %58 = getelementptr inbounds %struct.dent, ptr %57, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !15
  %60 = and i64 %59, 201326592
  %61 = icmp ne i64 %60, 201326592
  %62 = and i64 %59, 805306368
  %63 = icmp eq i64 %62, 805306368
  %64 = or i1 %61, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.dent, ptr %57, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !17
  %68 = icmp ne ptr %67, null
  %69 = zext i1 %68 to i32
  %70 = add nsw i32 %56, %69
  br label %71

71:                                               ; preds = %65, %55
  %72 = phi i32 [ %56, %55 ], [ %70, %65 ]
  %73 = getelementptr inbounds %struct.dent, ptr %57, i64 1
  %74 = icmp ult ptr %73, %53
  br i1 %74, label %55, label %75, !llvm.loop !27

75:                                               ; preds = %71, %48
  %76 = phi i32 [ %49, %48 ], [ %72, %71 ]
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %77, 24
  %79 = tail call noalias ptr @malloc(i64 noundef %78) #23
  %80 = icmp eq ptr %79, null
  %81 = icmp sgt i32 %14, 0
  br i1 %80, label %83, label %82

82:                                               ; preds = %75
  br i1 %81, label %137, label %170

83:                                               ; preds = %75
  br i1 %81, label %84, label %113

84:                                               ; preds = %83, %110
  %85 = phi ptr [ %111, %110 ], [ %13, %83 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %110, label %87

87:                                               ; preds = %84, %106
  %88 = phi ptr [ %108, %106 ], [ %85, %84 ]
  %89 = getelementptr inbounds %struct.dent, ptr %88, i64 0, i32 2
  %90 = load i64, ptr %89, align 8, !tbaa !15
  %91 = and i64 %90, 201326592
  %92 = icmp eq i64 %91, 201326592
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load ptr, ptr @dictf, align 8, !tbaa !8
  tail call void @toutent(ptr noundef %94, ptr noundef nonnull %88, i32 noundef 1) #17
  %95 = getelementptr inbounds %struct.dent, ptr %88, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !15
  %97 = and i64 %96, 1073741824
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %93, %99
  %100 = phi ptr [ %101, %99 ], [ %88, %93 ]
  %101 = load ptr, ptr %100, align 8, !tbaa !19
  %102 = getelementptr inbounds %struct.dent, ptr %101, i64 0, i32 2
  %103 = load i64, ptr %102, align 8, !tbaa !15
  %104 = and i64 %103, 1073741824
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %99, !llvm.loop !28

106:                                              ; preds = %99, %93, %87
  %107 = phi ptr [ %88, %87 ], [ %88, %93 ], [ %101, %99 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !19
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %87, !llvm.loop !29

110:                                              ; preds = %106, %84
  %111 = getelementptr inbounds %struct.dent, ptr %85, i64 1
  %112 = icmp ult ptr %111, %16
  br i1 %112, label %84, label %113, !llvm.loop !30

113:                                              ; preds = %110, %83
  %114 = load ptr, ptr @hashtbl, align 8, !tbaa !8
  %115 = load i32, ptr @hashsize, align 4, !tbaa !12
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.dent, ptr %114, i64 %116
  %118 = icmp sgt i32 %115, 0
  br i1 %118, label %119, label %209

119:                                              ; preds = %113, %134
  %120 = phi ptr [ %135, %134 ], [ %114, %113 ]
  %121 = getelementptr inbounds %struct.dent, ptr %120, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !15
  %123 = and i64 %122, 201326592
  %124 = icmp ne i64 %123, 201326592
  %125 = and i64 %122, 805306368
  %126 = icmp eq i64 %125, 805306368
  %127 = or i1 %124, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %119
  %129 = getelementptr inbounds %struct.dent, ptr %120, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !17
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr @dictf, align 8, !tbaa !8
  tail call void @toutent(ptr noundef %133, ptr noundef %120, i32 noundef 1) #17
  br label %134

134:                                              ; preds = %119, %132, %128
  %135 = getelementptr inbounds %struct.dent, ptr %120, i64 1
  %136 = icmp ult ptr %135, %117
  br i1 %136, label %119, label %209, !llvm.loop !31

137:                                              ; preds = %82, %166
  %138 = phi ptr [ %167, %166 ], [ %79, %82 ]
  %139 = phi ptr [ %168, %166 ], [ %13, %82 ]
  %140 = icmp eq ptr %139, null
  br i1 %140, label %166, label %141

141:                                              ; preds = %137, %161
  %142 = phi ptr [ %163, %161 ], [ %138, %137 ]
  %143 = phi ptr [ %164, %161 ], [ %139, %137 ]
  %144 = getelementptr inbounds %struct.dent, ptr %143, i64 0, i32 2
  %145 = load i64, ptr %144, align 8, !tbaa !15
  %146 = and i64 %145, 201326592
  %147 = icmp eq i64 %146, 201326592
  br i1 %147, label %148, label %161

148:                                              ; preds = %141
  %149 = getelementptr inbounds ptr, ptr %142, i64 1
  store ptr %143, ptr %142, align 8, !tbaa !8
  %150 = getelementptr inbounds %struct.dent, ptr %143, i64 0, i32 2
  %151 = load i64, ptr %150, align 8, !tbaa !15
  %152 = and i64 %151, 1073741824
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %148, %154
  %155 = phi ptr [ %156, %154 ], [ %143, %148 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !19
  %157 = getelementptr inbounds %struct.dent, ptr %156, i64 0, i32 2
  %158 = load i64, ptr %157, align 8, !tbaa !15
  %159 = and i64 %158, 1073741824
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %154, !llvm.loop !32

161:                                              ; preds = %154, %148, %141
  %162 = phi ptr [ %143, %141 ], [ %143, %148 ], [ %156, %154 ]
  %163 = phi ptr [ %142, %141 ], [ %149, %148 ], [ %149, %154 ]
  %164 = load ptr, ptr %162, align 8, !tbaa !19
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %141, !llvm.loop !33

166:                                              ; preds = %161, %137
  %167 = phi ptr [ %138, %137 ], [ %163, %161 ]
  %168 = getelementptr inbounds %struct.dent, ptr %139, i64 1
  %169 = icmp ult ptr %168, %16
  br i1 %169, label %137, label %170, !llvm.loop !34

170:                                              ; preds = %166, %82
  %171 = phi ptr [ %79, %82 ], [ %167, %166 ]
  %172 = load ptr, ptr @hashtbl, align 8, !tbaa !8
  %173 = getelementptr inbounds %struct.dent, ptr %172, i64 %52
  %174 = icmp sgt i32 %51, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %170, %191
  %176 = phi ptr [ %192, %191 ], [ %171, %170 ]
  %177 = phi ptr [ %193, %191 ], [ %172, %170 ]
  %178 = getelementptr inbounds %struct.dent, ptr %177, i64 0, i32 2
  %179 = load i64, ptr %178, align 8, !tbaa !15
  %180 = and i64 %179, 201326592
  %181 = icmp ne i64 %180, 201326592
  %182 = and i64 %179, 805306368
  %183 = icmp eq i64 %182, 805306368
  %184 = or i1 %181, %183
  br i1 %184, label %191, label %185

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.dent, ptr %177, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !17
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds ptr, ptr %176, i64 1
  store ptr %177, ptr %176, align 8, !tbaa !8
  br label %191

191:                                              ; preds = %175, %189, %185
  %192 = phi ptr [ %190, %189 ], [ %176, %185 ], [ %176, %175 ]
  %193 = getelementptr inbounds %struct.dent, ptr %177, i64 1
  %194 = icmp ult ptr %193, %173
  br i1 %194, label %175, label %195, !llvm.loop !35

195:                                              ; preds = %191, %170
  %196 = zext i32 %76 to i64
  tail call void @qsort(ptr noundef nonnull %79, i64 noundef %196, i64 noundef 8, ptr noundef nonnull @pdictcmp) #17
  %197 = icmp sgt i32 %76, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %195, %198
  %199 = phi ptr [ %203, %198 ], [ %79, %195 ]
  %200 = phi i32 [ %201, %198 ], [ %76, %195 ]
  %201 = add nsw i32 %200, -1
  %202 = load ptr, ptr @dictf, align 8, !tbaa !8
  %203 = getelementptr inbounds ptr, ptr %199, i64 1
  %204 = load ptr, ptr %199, align 8, !tbaa !8
  tail call void @toutent(ptr noundef %202, ptr noundef %204, i32 noundef 1) #17
  %205 = icmp sgt i32 %200, 1
  br i1 %205, label %198, label %206, !llvm.loop !36

206:                                              ; preds = %198, %195
  tail call void @free(ptr noundef %79) #17
  store i32 0, ptr @newwords, align 4, !tbaa !12
  %207 = load ptr, ptr @dictf, align 8, !tbaa !8
  %208 = tail call i32 @fclose(ptr noundef %207)
  br label %209

209:                                              ; preds = %134, %113, %6, %9, %0, %206
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare void @toutent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal i32 @pdictcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !8
  %4 = getelementptr inbounds %struct.dent, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = load ptr, ptr %1, align 8, !tbaa !8
  %7 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = tail call i32 @casecmp(ptr noundef %5, ptr noundef %8, i32 noundef 1) #17
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @mymalloc(i32 noundef %0) local_unnamed_addr #13 {
  %2 = zext i32 %0 to i64
  %3 = tail call noalias ptr @malloc(i64 noundef %2) #23
  ret ptr %3
}

; Function Attrs: mustprogress nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @myfree(ptr noundef %0) local_unnamed_addr #14 {
  %2 = load ptr, ptr @hashstrings, align 8, !tbaa !8
  %3 = icmp eq ptr %2, null
  %4 = icmp ugt ptr %2, %0
  %5 = or i1 %3, %4
  %6 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %2, i64 %7
  %9 = icmp ult ptr %8, %0
  %10 = select i1 %5, i1 true, i1 %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @free(ptr noundef %0) #17
  br label %12

12:                                               ; preds = %1, %11
  ret void
}

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

declare i32 @casecmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind allocsize(0) }

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
!9 = !{!"any pointer", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = distinct !{!14, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!18, !9, i64 8}
!18 = !{!"dent", !9, i64 0, !9, i64 8, !6, i64 16}
!19 = !{!18, !9, i64 0}
!20 = distinct !{!20, !11}
!21 = !{i64 0, i64 8, !8, i64 8, i64 8, !8, i64 16, i64 8, !5}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
