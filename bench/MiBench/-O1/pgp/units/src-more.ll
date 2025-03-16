; ModuleID = 'src/more.c'
source_filename = "src/more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.winsize = type { i16, i16, i16, i16 }

@pager = dso_local global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@pgpout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"\0A\07File '%s' is not a text file; cannot display.\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"PAGER\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s '%s'\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@screen_columns = internal unnamed_addr global i32 80, align 4
@screen_lines = internal unnamed_addr global i32 24, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"\0ADone...hit any key\0D\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"More -- %d%% -- Space: next screen, Enter: next line, 'B': back, 'Q': quit --\0D\00", align 1
@mfile = internal unnamed_addr global ptr null, align 8
@piping = internal unnamed_addr global i1 false, align 1
@savepgpout = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"popen\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Just a moment...\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@str = private unnamed_addr constant [12 x i8] c"...skipping\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @more_file(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.winsize, align 2
  %4 = alloca [256 x i8], align 16
  %5 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %6 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %249, label %8

8:                                                ; preds = %2
  %9 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 16, ptr noundef nonnull %6)
  %10 = call i32 @compressSignature(ptr noundef nonnull %5) #12
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %14 = call ptr @LANG(ptr noundef nonnull @.str.1) #12
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef %14, ptr noundef %0)
  br label %249

16:                                               ; preds = %8
  %17 = load i8, ptr @pager, align 16, !tbaa !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = call ptr @getenv(ptr noundef nonnull @.str.2) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @pager, ptr noundef nonnull dereferenceable(1) %20, i64 noundef 79) #12
  br label %24

24:                                               ; preds = %19, %22, %16
  %25 = load i32, ptr @pager, align 16
  %26 = icmp eq i32 %25, 7627107
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call i32 @fclose(ptr noundef nonnull %6)
  %29 = call i32 @writePhantomOutput(ptr noundef %0) #12
  br label %249

30:                                               ; preds = %24
  %31 = icmp ne i8 %1, 0
  %32 = load i8, ptr @pager, align 16
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %31, i1 true, i1 %33
  %35 = load i32, ptr @pager, align 16
  %36 = icmp eq i32 %35, 7366512
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %30
  %39 = call i32 @fclose(ptr noundef nonnull %6)
  %40 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 39) #13
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %249

42:                                               ; preds = %38
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @pager, ptr noundef %0) #12
  %44 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %45 = call i32 @fflush(ptr noundef %44)
  %46 = call i32 @system(ptr noundef nonnull %4) #12
  br label %249

47:                                               ; preds = %30
  %48 = load ptr, ptr @stdout, align 8, !tbaa !5
  %49 = call i32 @fileno(ptr noundef %48) #12
  %50 = call i32 @isatty(i32 noundef %49) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = call i32 @fclose(ptr noundef nonnull %6)
  %54 = call i32 @writePhantomOutput(ptr noundef %0) #12
  br label %249

55:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %56 = load ptr, ptr @stderr, align 8, !tbaa !5
  %57 = call i32 @fileno(ptr noundef %56) #12
  %58 = call i32 @isatty(i32 noundef %57) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 24, ptr @screen_lines, align 4, !tbaa !10
  br label %112

61:                                               ; preds = %55
  store i32 0, ptr @screen_columns, align 4, !tbaa !10
  store i32 0, ptr @screen_lines, align 4, !tbaa !10
  %62 = call ptr @getenv(ptr noundef nonnull @.str.13) #12
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = call i64 @strtol(ptr nocapture noundef nonnull %62, ptr noundef null, i32 noundef 10) #12
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = trunc i64 %65 to i32
  store i32 %68, ptr @screen_lines, align 4, !tbaa !10
  br label %69

69:                                               ; preds = %67, %64, %61
  %70 = call ptr @getenv(ptr noundef nonnull @.str.14) #12
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = call i64 @strtol(ptr nocapture noundef nonnull %70, ptr noundef null, i32 noundef 10) #12
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = trunc i64 %73 to i32
  store i32 %76, ptr @screen_columns, align 4, !tbaa !10
  br label %77

77:                                               ; preds = %75, %72, %69
  %78 = load i32, ptr @screen_lines, align 4, !tbaa !10
  %79 = icmp ne i32 %78, 0
  %80 = load i32, ptr @screen_columns, align 4
  %81 = icmp ne i32 %80, 0
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %105, label %83

83:                                               ; preds = %77
  %84 = load ptr, ptr @stderr, align 8, !tbaa !5
  %85 = call i32 @fileno(ptr noundef %84) #12
  %86 = call i32 (i32, i64, ...) @ioctl(i32 noundef %85, i64 noundef 21523, ptr noundef nonnull %3) #12
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %105, label %88

88:                                               ; preds = %83
  %89 = load i32, ptr @screen_lines, align 4, !tbaa !10
  %90 = icmp eq i32 %89, 0
  %91 = load i16, ptr %3, align 2
  %92 = icmp ne i16 %91, 0
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = zext i16 %91 to i32
  store i32 %95, ptr @screen_lines, align 4, !tbaa !10
  br label %96

96:                                               ; preds = %94, %88
  %97 = load i32, ptr @screen_columns, align 4, !tbaa !10
  %98 = icmp eq i32 %97, 0
  %99 = getelementptr inbounds %struct.winsize, ptr %3, i64 0, i32 1
  %100 = load i16, ptr %99, align 2
  %101 = icmp ne i16 %100, 0
  %102 = select i1 %98, i1 %101, i1 false
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = zext i16 %100 to i32
  store i32 %104, ptr @screen_columns, align 4, !tbaa !10
  br label %105

105:                                              ; preds = %103, %96, %83, %77
  %106 = load i32, ptr @screen_lines, align 4, !tbaa !10
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 24, ptr @screen_lines, align 4, !tbaa !10
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i32, ptr @screen_columns, align 4, !tbaa !10
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %60
  store i32 80, ptr @screen_columns, align 4, !tbaa !10
  br label %113

113:                                              ; preds = %112, %109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  %114 = call i32 @fseek(ptr noundef nonnull %6, i64 noundef 0, i32 noundef 2)
  %115 = call i64 @ftell(ptr noundef nonnull %6)
  call void @rewind(ptr noundef nonnull %6)
  call void (...) @ttycbreak() #12
  %116 = load ptr, ptr @stdout, align 8, !tbaa !5
  %117 = call i32 @putc(i32 noundef 10, ptr noundef %116)
  br label %121

118:                                              ; preds = %238, %163
  %119 = phi i32 [ %153, %163 ], [ %239, %238 ]
  %120 = phi i32 [ %155, %163 ], [ %241, %238 ]
  br label %121, !llvm.loop !12

121:                                              ; preds = %118, %113
  %122 = phi i32 [ 0, %113 ], [ %164, %118 ]
  %123 = phi i32 [ 1, %113 ], [ %119, %118 ]
  %124 = phi i32 [ 0, %113 ], [ %120, %118 ]
  %125 = call i32 @getc(ptr noundef nonnull %6)
  switch i32 %125, label %139 [
    i32 10, label %126
    i32 13, label %131
  ]

126:                                              ; preds = %121
  %127 = add nsw i32 %124, 1
  %128 = load ptr, ptr @stdout, align 8, !tbaa !5
  %129 = call i32 @putc(i32 noundef 10, ptr noundef %128)
  %130 = add nsw i32 %123, 1
  br label %151

131:                                              ; preds = %121
  %132 = add nsw i32 %124, 1
  %133 = load ptr, ptr @stdout, align 8, !tbaa !5
  %134 = call i32 @putc(i32 noundef 10, ptr noundef %133)
  %135 = add nsw i32 %123, 1
  %136 = call i32 @getc(ptr noundef nonnull %6)
  switch i32 %136, label %137 [
    i32 -1, label %151
    i32 10, label %151
  ]

137:                                              ; preds = %131
  %138 = call i32 @ungetc(i32 noundef %136, ptr noundef nonnull %6)
  br label %151

139:                                              ; preds = %121
  %140 = and i32 %125, 224
  %141 = icmp ne i32 %140, 0
  %142 = icmp ne i32 %125, -1
  %143 = and i1 %142, %141
  %144 = icmp eq i32 %125, 9
  %145 = or i1 %144, %143
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load ptr, ptr @stdout, align 8, !tbaa !5
  %148 = call i32 @putc(i32 noundef %125, ptr noundef %147)
  %149 = select i1 %144, i32 8, i32 1
  %150 = add nsw i32 %149, %122
  br label %151

151:                                              ; preds = %131, %131, %137, %139, %146, %126
  %152 = phi i32 [ 0, %126 ], [ 0, %137 ], [ 0, %131 ], [ %150, %146 ], [ %122, %139 ], [ 0, %131 ]
  %153 = phi i32 [ %130, %126 ], [ %135, %137 ], [ %135, %131 ], [ %123, %146 ], [ %123, %139 ], [ %135, %131 ]
  %154 = phi i32 [ 10, %126 ], [ %136, %137 ], [ %136, %131 ], [ %125, %146 ], [ %125, %139 ], [ %136, %131 ]
  %155 = phi i32 [ %127, %126 ], [ %132, %137 ], [ %132, %131 ], [ %124, %146 ], [ %124, %139 ], [ %132, %131 ]
  %156 = load i32, ptr @screen_columns, align 4, !tbaa !10
  %157 = add nsw i32 %156, -1
  %158 = icmp eq i32 %152, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %151, %159
  %160 = call i32 @getc(ptr noundef nonnull %6)
  switch i32 %160, label %159 [
    i32 -1, label %163
    i32 10, label %161
    i32 13, label %161
  ]

161:                                              ; preds = %159, %159
  %162 = call i32 @ungetc(i32 noundef %160, ptr noundef nonnull %6)
  br label %163

163:                                              ; preds = %159, %161, %151
  %164 = phi i32 [ 0, %161 ], [ %152, %151 ], [ 0, %159 ]
  %165 = phi i32 [ %160, %161 ], [ %154, %151 ], [ %160, %159 ]
  %166 = icmp eq i32 %165, -1
  %167 = load i32, ptr @screen_lines, align 4
  %168 = add nsw i32 %167, -1
  %169 = icmp eq i32 %155, %168
  %170 = select i1 %166, i1 true, i1 %169
  br i1 %170, label %171, label %118

171:                                              ; preds = %163, %238
  %172 = phi i1 [ %242, %238 ], [ %166, %163 ]
  %173 = phi i32 [ %241, %238 ], [ %155, %163 ]
  %174 = phi i32 [ %240, %238 ], [ %165, %163 ]
  %175 = phi i32 [ %239, %238 ], [ %153, %163 ]
  br i1 %172, label %176, label %179

176:                                              ; preds = %171
  %177 = call ptr @LANG(ptr noundef nonnull @.str.6) #12
  %178 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %177)
  br label %185

179:                                              ; preds = %171
  %180 = call ptr @LANG(ptr noundef nonnull @.str.7) #12
  %181 = call i64 @ftell(ptr noundef nonnull %6)
  %182 = mul nsw i64 %181, 100
  %183 = sdiv i64 %182, %115
  %184 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %180, i64 noundef %183)
  br label %185

185:                                              ; preds = %179, %176
  %186 = load ptr, ptr @stdout, align 8, !tbaa !5
  %187 = call i32 @fflush(ptr noundef %186)
  %188 = call i32 (...) @getch() #12
  %189 = add i32 %188, 128
  %190 = icmp ult i32 %189, 384
  br i1 %190, label %191, label %197

191:                                              ; preds = %185
  %192 = tail call ptr @__ctype_toupper_loc() #14
  %193 = load ptr, ptr %192, align 8, !tbaa !5
  %194 = sext i32 %188 to i64
  %195 = getelementptr inbounds i32, ptr %193, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !10
  br label %197

197:                                              ; preds = %191, %185
  %198 = phi i32 [ %196, %191 ], [ %188, %185 ]
  br label %199

199:                                              ; preds = %197, %199
  %200 = phi i32 [ 0, %197 ], [ %203, %199 ]
  %201 = load ptr, ptr @stdout, align 8, !tbaa !5
  %202 = call i32 @putc(i32 noundef 32, ptr noundef %201)
  %203 = add nuw nsw i32 %200, 1
  %204 = icmp eq i32 %203, 79
  br i1 %204, label %205, label %199, !llvm.loop !14

205:                                              ; preds = %199
  %206 = load ptr, ptr @stdout, align 8, !tbaa !5
  %207 = call i32 @putc(i32 noundef 13, ptr noundef %206)
  %208 = load ptr, ptr @stdout, align 8, !tbaa !5
  %209 = call i32 @fflush(ptr noundef %208)
  %210 = icmp eq i32 %198, 66
  br i1 %210, label %211, label %228

211:                                              ; preds = %205
  %212 = load i32, ptr @screen_lines, align 4, !tbaa !10
  %213 = icmp sgt i32 %175, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %211
  %215 = shl nsw i32 %212, 1
  %216 = sub nsw i32 %175, %215
  call void @rewind(ptr noundef nonnull %6)
  %217 = icmp sgt i32 %216, -2
  br i1 %217, label %218, label %238

218:                                              ; preds = %214
  %219 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %220 = add nsw i32 %216, 2
  br label %221

221:                                              ; preds = %225, %218
  %222 = phi i32 [ %226, %225 ], [ 1, %218 ]
  br label %223

223:                                              ; preds = %221, %223
  %224 = call i32 @getc(ptr noundef nonnull %6)
  switch i32 %224, label %223 [
    i32 -1, label %238
    i32 10, label %225
  ], !llvm.loop !15

225:                                              ; preds = %223
  %226 = add nuw nsw i32 %222, 1
  %227 = icmp eq i32 %222, %220
  br i1 %227, label %238, label %221, !llvm.loop !15

228:                                              ; preds = %211, %205
  %229 = icmp eq i32 %198, 81
  %230 = or i1 %172, %229
  br i1 %230, label %247, label %231

231:                                              ; preds = %228
  switch i32 %198, label %238 [
    i32 74, label %232
    i32 32, label %232
    i32 13, label %232
    i32 10, label %232
  ]

232:                                              ; preds = %231, %231, %231, %231
  %233 = icmp eq i32 %198, 32
  %234 = load i32, ptr @screen_lines, align 4
  %235 = add nsw i32 %234, -2
  %236 = select i1 %233, i32 %235, i32 1
  %237 = sub nsw i32 %173, %236
  br label %238

238:                                              ; preds = %223, %225, %231, %214, %232
  %239 = phi i32 [ %175, %232 ], [ %175, %231 ], [ 1, %214 ], [ %222, %223 ], [ %226, %225 ]
  %240 = phi i32 [ %174, %232 ], [ %174, %231 ], [ 0, %214 ], [ 0, %225 ], [ 0, %223 ]
  %241 = phi i32 [ %237, %232 ], [ %173, %231 ], [ 0, %214 ], [ 0, %225 ], [ 0, %223 ]
  %242 = icmp eq i32 %240, -1
  %243 = load i32, ptr @screen_lines, align 4
  %244 = add nsw i32 %243, -1
  %245 = icmp eq i32 %241, %244
  %246 = select i1 %242, i1 true, i1 %245
  br i1 %246, label %171, label %118, !llvm.loop !16

247:                                              ; preds = %228
  call void (...) @ttynorm() #12
  %248 = call i32 @fclose(ptr noundef nonnull %6)
  br label %249

249:                                              ; preds = %38, %2, %247, %52, %42, %27, %12
  %250 = phi i32 [ -1, %12 ], [ 0, %27 ], [ 0, %247 ], [ 0, %52 ], [ %46, %42 ], [ -1, %2 ], [ -1, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #12
  ret i32 %250
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

declare i32 @compressSignature(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare ptr @LANG(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

declare i32 @writePhantomOutput(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @system(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #2

declare void @ttycbreak(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare i32 @getch(...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @ttynorm(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @open_more() local_unnamed_addr #0 {
  %1 = load ptr, ptr @mfile, align 8, !tbaa !5
  %2 = icmp ne ptr %1, null
  %3 = load i1, ptr @piping, align 1
  %4 = select i1 %2, i1 true, i1 %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = tail call i32 @close_more()
  br label %7

7:                                                ; preds = %0, %5
  %8 = load ptr, ptr @pgpout, align 8, !tbaa !5
  store ptr %8, ptr @savepgpout, align 8, !tbaa !5
  %9 = tail call i32 @fflush(ptr noundef %8)
  %10 = load i8, ptr @pager, align 16, !tbaa !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.2) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @pager, ptr noundef nonnull dereferenceable(1) %13, i64 noundef 79) #12
  br label %17

17:                                               ; preds = %12, %15, %7
  %18 = load i8, ptr @pager, align 16
  %19 = icmp eq i8 %18, 0
  %20 = load i32, ptr @pager, align 16
  %21 = icmp eq i32 %20, 7366512
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = tail call noalias ptr @popen(ptr noundef nonnull @pager, ptr noundef nonnull @.str.9)
  store ptr %24, ptr @pgpout, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i1 true, ptr @piping, align 1
  br label %43

27:                                               ; preds = %23
  tail call void @perror(ptr noundef nonnull @.str.10) #15
  %28 = load ptr, ptr @savepgpout, align 8, !tbaa !5
  store ptr %28, ptr @pgpout, align 8, !tbaa !5
  br label %29

29:                                               ; preds = %27, %17
  %30 = tail call ptr @tempfile(i32 noundef 5) #12
  store ptr %30, ptr @mfile, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = tail call noalias ptr @fopen(ptr noundef nonnull %30, ptr noundef nonnull @.str.9)
  store ptr %33, ptr @pgpout, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  %35 = load ptr, ptr @savepgpout, align 8, !tbaa !5
  br i1 %34, label %36, label %38

36:                                               ; preds = %32
  store ptr %35, ptr @pgpout, align 8, !tbaa !5
  %37 = load ptr, ptr @mfile, align 8, !tbaa !5
  tail call void @rmtemp(ptr noundef %37) #12
  br label %43

38:                                               ; preds = %32
  %39 = tail call ptr @LANG(ptr noundef nonnull @.str.11) #12
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef %39)
  %41 = load ptr, ptr @savepgpout, align 8, !tbaa !5
  %42 = tail call i32 @fflush(ptr noundef %41)
  br label %43

43:                                               ; preds = %29, %38, %36, %26
  %44 = phi i32 [ 0, %26 ], [ -1, %36 ], [ 0, %38 ], [ -1, %29 ]
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @close_more() local_unnamed_addr #0 {
  %1 = load ptr, ptr @mfile, align 8, !tbaa !5
  %2 = icmp ne ptr %1, null
  %3 = load i1, ptr @piping, align 1
  %4 = select i1 %2, i1 true, i1 %3
  br i1 %4, label %5, label %21

5:                                                ; preds = %0
  %6 = load ptr, ptr @pgpout, align 8, !tbaa !5
  br i1 %3, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call i32 @pclose(ptr noundef %6)
  br label %11

9:                                                ; preds = %5
  %10 = tail call i32 @fclose(ptr noundef %6)
  br label %11

11:                                               ; preds = %9, %7
  %12 = load ptr, ptr @savepgpout, align 8, !tbaa !5
  store ptr %12, ptr @pgpout, align 8, !tbaa !5
  %13 = load ptr, ptr @mfile, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @fputc(i32 10, ptr %12)
  %17 = load ptr, ptr @mfile, align 8, !tbaa !5
  %18 = tail call i32 @more_file(ptr noundef %17, i8 noundef zeroext 0)
  %19 = load ptr, ptr @mfile, align 8, !tbaa !5
  tail call void @rmtemp(ptr noundef %19) #12
  store ptr null, ptr @mfile, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %15, %11
  store i1 false, ptr @piping, align 1
  br label %21

21:                                               ; preds = %0, %20
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @popen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #2

declare ptr @tempfile(i32 noundef) local_unnamed_addr #3

declare void @rmtemp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @pclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
