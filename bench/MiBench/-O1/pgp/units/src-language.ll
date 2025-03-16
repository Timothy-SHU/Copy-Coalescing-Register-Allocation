; ModuleID = 'src/language.c'
source_filename = "src/language.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i64, [16 x i8], i64 }
%struct.indx_ent = type { i64, i64 }

@language = dso_local global [16 x i8] c"en\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@subtitles_available = internal unnamed_addr global i32 0, align 4
@langf = internal unnamed_addr global ptr null, align 8
@strbuf = internal unnamed_addr global ptr null, align 8
@nmsg = internal unnamed_addr global i64 0, align 8
@indx_tbl = internal unnamed_addr global ptr null, align 8
@line = internal unnamed_addr global i32 0, align 4
@lang = internal global [16 x i8] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [31 x i8] c"language.txt:%d: syntax error\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"language.txt:%d: illegal escape sequence: '\\%c'\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"No translation\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"language.txt:%d: bad language identifier: '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"language.txt:%d: extra characters after '\22'\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"language.txt: unexpected EOF\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"language.txt\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"/usr/local/lib/pgp/\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Not enough memory for foreign subtitles\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"language.idx\00", align 1
@indx_hdr = internal global %struct.anon zeroinitializer, align 8
@verbose = external local_unnamed_addr global i8, align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"Creating language index file '%s' for language \22%s\22\0A\00", align 1
@max_msgs = internal unnamed_addr global i32 0, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"language.txt:%d: Message CRC not unique: \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"No translations available for language \22%s\22\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"%d messages, %d translations\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Cannot create %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"error writing %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @LANG(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = load i32, ptr @subtitles_available, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %208

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #14
  %7 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @language, ptr noundef nonnull dereferenceable(3) @.str.6, i64 3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %206, label %9

9:                                                ; preds = %6
  %10 = call ptr @buildfilename(ptr noundef nonnull %3, ptr noundef nonnull @.str.7) #14
  %11 = call noalias ptr @fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str.8)
  store ptr %11, ptr @langf, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %3, ptr noundef nonnull align 1 dereferenceable(20) @.str.9, i64 20, i1 false) #14
  %14 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %15 = getelementptr inbounds i8, ptr %3, i64 %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %15, ptr noundef nonnull align 1 dereferenceable(13) @.str.7, i64 13, i1 false)
  %16 = call noalias ptr @fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str.8)
  store ptr %16, ptr @langf, align 8, !tbaa !9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %206, label %18

18:                                               ; preds = %13, %9
  call void @init_crc() #14
  %19 = call noalias dereferenceable_or_null(2048) ptr @malloc(i64 noundef 2048) #15
  store ptr %19, ptr @strbuf, align 8, !tbaa !9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load ptr, ptr @stderr, align 8, !tbaa !9
  %23 = call i64 @fwrite(ptr nonnull @.str.10, i64 40, i64 1, ptr %22) #16
  %24 = load ptr, ptr @langf, align 8, !tbaa !9
  %25 = call i32 @fclose(ptr noundef %24)
  br label %206

26:                                               ; preds = %18
  br i1 %12, label %27, label %30

27:                                               ; preds = %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %2, ptr noundef nonnull align 1 dereferenceable(20) @.str.9, i64 20, i1 false) #14
  %28 = call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %29, ptr noundef nonnull align 1 dereferenceable(13) @.str.11, i64 13, i1 false)
  br label %32

30:                                               ; preds = %26
  %31 = call ptr @buildfilename(ptr noundef nonnull %2, ptr noundef nonnull @.str.11) #14
  br label %32

32:                                               ; preds = %30, %27
  %33 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.8)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %65, label %35

35:                                               ; preds = %32
  %36 = call i64 @fread(ptr noundef nonnull @indx_hdr, i64 noundef 1, i64 noundef 32, ptr noundef nonnull %33)
  %37 = icmp eq i64 %36, 32
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load i64, ptr @indx_hdr, align 8, !tbaa !11
  %40 = load ptr, ptr @langf, align 8, !tbaa !9
  %41 = call i64 @fsize(ptr noundef %40) #14
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.anon, ptr @indx_hdr, i64 0, i32 1), ptr noundef nonnull dereferenceable(1) @language) #17
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @indx_hdr, i64 0, i32 2), align 8, !tbaa !14
  store i64 %47, ptr @nmsg, align 8, !tbaa !15
  %48 = shl i64 %47, 4
  %49 = call noalias ptr @malloc(i64 noundef %48) #15
  store ptr %49, ptr @indx_tbl, align 8, !tbaa !9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load ptr, ptr @stderr, align 8, !tbaa !9
  %53 = call i64 @fwrite(ptr nonnull @.str.10, i64 40, i64 1, ptr %52) #16
  %54 = call i32 @fclose(ptr noundef nonnull %33)
  %55 = load ptr, ptr @langf, align 8, !tbaa !9
  %56 = call i32 @fclose(ptr noundef %55)
  br label %206

57:                                               ; preds = %46
  %58 = call i64 @fread(ptr noundef nonnull %49, i64 noundef 16, i64 noundef %47, ptr noundef nonnull %33)
  %59 = load i64, ptr @nmsg, align 8, !tbaa !15
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr @indx_tbl, align 8, !tbaa !9
  call void @free(ptr noundef %62) #14
  store ptr null, ptr @indx_tbl, align 8, !tbaa !9
  br label %63

63:                                               ; preds = %61, %57, %43, %38, %35
  %64 = call i32 @fclose(ptr noundef nonnull %33)
  br label %65

65:                                               ; preds = %63, %32
  %66 = load ptr, ptr @indx_tbl, align 8, !tbaa !9
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %206

68:                                               ; preds = %65
  %69 = load i8, ptr @verbose, align 1, !tbaa !16
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr @stderr, align 8, !tbaa !9
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, ptr noundef nonnull @language) #16
  br label %74

74:                                               ; preds = %71, %68
  %75 = load ptr, ptr @langf, align 8, !tbaa !9
  call void @rewind(ptr noundef %75)
  %76 = load ptr, ptr @langf, align 8, !tbaa !9
  %77 = call i64 @fsize(ptr noundef %76) #14
  store i64 %77, ptr @indx_hdr, align 8, !tbaa !11
  %78 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.anon, ptr @indx_hdr, i64 0, i32 1), ptr noundef nonnull dereferenceable(1) @language, i64 noundef 15) #14
  call void @init_crc() #14
  store i32 1, ptr @line, align 4, !tbaa !5
  store i64 0, ptr @nmsg, align 8, !tbaa !15
  %79 = load ptr, ptr @langf, align 8, !tbaa !9
  %80 = load ptr, ptr @strbuf, align 8, !tbaa !9
  %81 = call fastcc ptr @readstr(ptr noundef %79, ptr noundef %80, i32 noundef 0)
  %82 = icmp eq ptr %81, null
  br i1 %82, label %168, label %83

83:                                               ; preds = %74, %163
  %84 = phi i32 [ %106, %163 ], [ 0, %74 ]
  %85 = load i64, ptr @nmsg, align 8, !tbaa !15
  %86 = load i32, ptr @max_msgs, align 4, !tbaa !5
  %87 = sext i32 %86 to i64
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = icmp eq i32 %86, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %89
  %92 = shl nsw i32 %86, 1
  store i32 %92, ptr @max_msgs, align 4, !tbaa !5
  %93 = load ptr, ptr @indx_tbl, align 8, !tbaa !9
  %94 = sext i32 %92 to i64
  %95 = shl nsw i64 %94, 4
  %96 = call ptr @realloc(ptr noundef %93, i64 noundef %95) #18
  br label %99

97:                                               ; preds = %89
  store i32 400, ptr @max_msgs, align 4, !tbaa !5
  %98 = call noalias dereferenceable_or_null(6400) ptr @malloc(i64 noundef 6400) #15
  br label %99

99:                                               ; preds = %97, %91
  %100 = phi ptr [ %98, %97 ], [ %96, %91 ]
  store ptr %100, ptr @indx_tbl, align 8, !tbaa !9
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load ptr, ptr @stderr, align 8, !tbaa !9
  %104 = call i64 @fwrite(ptr nonnull @.str.10, i64 40, i64 1, ptr %103) #16
  br label %203

105:                                              ; preds = %99, %83
  %106 = add nuw nsw i32 %84, 1
  %107 = load ptr, ptr @strbuf, align 8, !tbaa !9
  %108 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %107) #17
  %109 = trunc i64 %108 to i32
  %110 = call i64 @crcbytes(ptr noundef %107, i32 noundef %109, i64 noundef 0) #14
  %111 = load ptr, ptr @indx_tbl, align 8, !tbaa !9
  %112 = load i64, ptr @nmsg, align 8, !tbaa !15
  %113 = getelementptr inbounds %struct.indx_ent, ptr %111, i64 %112
  store i64 %110, ptr %113, align 8, !tbaa !17
  %114 = icmp sgt i64 %112, 0
  br i1 %114, label %118, label %126

115:                                              ; preds = %118
  %116 = add nuw nsw i64 %119, 1
  %117 = icmp eq i64 %116, %112
  br i1 %117, label %126, label %118, !llvm.loop !19

118:                                              ; preds = %105, %115
  %119 = phi i64 [ %116, %115 ], [ 0, %105 ]
  %120 = getelementptr inbounds %struct.indx_ent, ptr %111, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !17
  %122 = icmp eq i64 %121, %110
  br i1 %122, label %123, label %115

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.indx_ent, ptr %111, i64 %119, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !21
  br label %126

126:                                              ; preds = %115, %123, %105
  %127 = phi i64 [ %125, %123 ], [ -1, %105 ], [ -1, %115 ]
  %128 = icmp eq i64 %127, -1
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr @stderr, align 8, !tbaa !9
  %131 = load i32, ptr @line, align 4, !tbaa !5
  %132 = load ptr, ptr @strbuf, align 8, !tbaa !9
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.13, i32 noundef %131, ptr noundef %132) #16
  br label %134

134:                                              ; preds = %129, %126
  br label %135

135:                                              ; preds = %134, %146
  %136 = load ptr, ptr @langf, align 8, !tbaa !9
  %137 = call i64 @ftell(ptr noundef %136)
  %138 = load ptr, ptr @langf, align 8, !tbaa !9
  %139 = load ptr, ptr @strbuf, align 8, !tbaa !9
  %140 = call fastcc ptr @readstr(ptr noundef %138, ptr noundef %139, i32 noundef 1)
  %141 = icmp eq ptr %140, null
  br i1 %141, label %168, label %142

142:                                              ; preds = %135
  %143 = load ptr, ptr @strbuf, align 8, !tbaa !9
  %144 = load i8, ptr %143, align 1, !tbaa !16
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %163, label %146

146:                                              ; preds = %142
  %147 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @language, ptr noundef nonnull dereferenceable(1) @lang) #17
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %135, !llvm.loop !22

149:                                              ; preds = %146
  %150 = load ptr, ptr @indx_tbl, align 8, !tbaa !9
  %151 = load i64, ptr @nmsg, align 8, !tbaa !15
  %152 = getelementptr inbounds %struct.indx_ent, ptr %150, i64 %151, i32 1
  store i64 %137, ptr %152, align 8, !tbaa !21
  %153 = add nsw i64 %151, 1
  store i64 %153, ptr @nmsg, align 8, !tbaa !15
  br label %154

154:                                              ; preds = %159, %149
  %155 = load ptr, ptr @langf, align 8, !tbaa !9
  %156 = load ptr, ptr @strbuf, align 8, !tbaa !9
  %157 = call fastcc ptr @readstr(ptr noundef %155, ptr noundef %156, i32 noundef 1)
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %154
  %160 = load ptr, ptr @strbuf, align 8, !tbaa !9
  %161 = load i8, ptr %160, align 1, !tbaa !16
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %154, !llvm.loop !23

163:                                              ; preds = %142, %159, %154
  %164 = load ptr, ptr @langf, align 8, !tbaa !9
  %165 = load ptr, ptr @strbuf, align 8, !tbaa !9
  %166 = call fastcc ptr @readstr(ptr noundef %164, ptr noundef %165, i32 noundef 0)
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %83, !llvm.loop !24

168:                                              ; preds = %163, %135, %74
  %169 = phi i32 [ 0, %74 ], [ %106, %135 ], [ %106, %163 ]
  store i32 0, ptr @line, align 4, !tbaa !5
  %170 = load i64, ptr @nmsg, align 8, !tbaa !15
  store i64 %170, ptr getelementptr inbounds (%struct.anon, ptr @indx_hdr, i64 0, i32 2), align 8, !tbaa !14
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load ptr, ptr @stderr, align 8, !tbaa !9
  %174 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef nonnull @.str.14, ptr noundef nonnull @language) #16
  br label %203

175:                                              ; preds = %168
  %176 = load i8, ptr @verbose, align 1, !tbaa !16
  %177 = icmp eq i8 %176, 0
  %178 = sext i32 %169 to i64
  %179 = icmp eq i64 %170, %178
  %180 = select i1 %177, i1 %179, i1 false
  br i1 %180, label %184, label %181

181:                                              ; preds = %175
  %182 = load ptr, ptr @stderr, align 8, !tbaa !9
  %183 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef nonnull @.str.15, i32 noundef %169, i64 noundef %170) #16
  br label %184

184:                                              ; preds = %181, %175
  %185 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.16)
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load ptr, ptr @stderr, align 8, !tbaa !9
  %189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %188, ptr noundef nonnull @.str.17, ptr noundef nonnull %2) #16
  br label %206

190:                                              ; preds = %184
  %191 = call i64 @fwrite(ptr noundef nonnull @indx_hdr, i64 noundef 1, i64 noundef 32, ptr noundef nonnull %185)
  %192 = load ptr, ptr @indx_tbl, align 8, !tbaa !9
  %193 = load i64, ptr @nmsg, align 8, !tbaa !15
  %194 = call i64 @fwrite(ptr noundef %192, i64 noundef 16, i64 noundef %193, ptr noundef nonnull %185)
  %195 = call i32 @ferror(ptr noundef nonnull %185) #14
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = call i32 @fclose(ptr noundef nonnull %185)
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %197, %190
  %201 = load ptr, ptr @stderr, align 8, !tbaa !9
  %202 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef nonnull @.str.18, ptr noundef nonnull %2) #16
  br label %206

203:                                              ; preds = %172, %102
  %204 = load ptr, ptr @langf, align 8, !tbaa !9
  %205 = call i32 @fclose(ptr noundef %204)
  br label %206

206:                                              ; preds = %65, %187, %197, %200, %203, %13, %6, %21, %51
  %207 = phi i32 [ -1, %21 ], [ -1, %51 ], [ -1, %6 ], [ -1, %13 ], [ -1, %203 ], [ 1, %65 ], [ 1, %187 ], [ 1, %197 ], [ 1, %200 ]
  store i32 %207, ptr @subtitles_available, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #14
  br label %208

208:                                              ; preds = %206, %1
  %209 = load i32, ptr @subtitles_available, align 4, !tbaa !5
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %254, label %211

211:                                              ; preds = %208
  %212 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %213 = trunc i64 %212 to i32
  %214 = call i64 @crcbytes(ptr noundef %0, i32 noundef %213, i64 noundef 0) #14
  %215 = load i64, ptr @nmsg, align 8, !tbaa !15
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %211
  %218 = load ptr, ptr @indx_tbl, align 8, !tbaa !9
  br label %222

219:                                              ; preds = %222
  %220 = add nuw nsw i64 %223, 1
  %221 = icmp eq i64 %220, %215
  br i1 %221, label %230, label %222, !llvm.loop !19

222:                                              ; preds = %219, %217
  %223 = phi i64 [ 0, %217 ], [ %220, %219 ]
  %224 = getelementptr inbounds %struct.indx_ent, ptr %218, i64 %223
  %225 = load i64, ptr %224, align 8, !tbaa !17
  %226 = icmp eq i64 %225, %214
  br i1 %226, label %227, label %219

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.indx_ent, ptr %218, i64 %223, i32 1
  %229 = load i64, ptr %228, align 8, !tbaa !21
  br label %230

230:                                              ; preds = %219, %211, %227
  %231 = phi i64 [ %229, %227 ], [ -1, %211 ], [ -1, %219 ]
  %232 = icmp eq i64 %231, -1
  br i1 %232, label %254, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr @langf, align 8, !tbaa !9
  %235 = call i32 @fseek(ptr noundef %234, i64 noundef %231, i32 noundef 0)
  %236 = load ptr, ptr @langf, align 8, !tbaa !9
  %237 = load ptr, ptr @strbuf, align 8, !tbaa !9
  %238 = call fastcc ptr @readstr(ptr noundef %236, ptr noundef %237, i32 noundef 1)
  %239 = load ptr, ptr @strbuf, align 8, !tbaa !9
  %240 = load i8, ptr %239, align 1, !tbaa !16
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %254, label %242

242:                                              ; preds = %233
  %243 = load i8, ptr %239, align 1, !tbaa !16
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %242, %245
  %246 = phi i8 [ %250, %245 ], [ %243, %242 ]
  %247 = phi ptr [ %249, %245 ], [ %239, %242 ]
  %248 = call signext i8 @EXT_C(i8 noundef signext %246) #14
  store i8 %248, ptr %247, align 1, !tbaa !16
  %249 = getelementptr inbounds i8, ptr %247, i64 1
  %250 = load i8, ptr %249, align 1, !tbaa !16
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %245, !llvm.loop !25

252:                                              ; preds = %245, %242
  %253 = load ptr, ptr @strbuf, align 8, !tbaa !9
  br label %254

254:                                              ; preds = %233, %230, %208, %252
  %255 = phi ptr [ %253, %252 ], [ %0, %208 ], [ %0, %230 ], [ %0, %233 ]
  ret ptr %255
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef ptr @readstr(ptr nocapture noundef %0, ptr noundef writeonly %1, i32 noundef %2) unnamed_addr #3 {
  %4 = icmp eq i32 %2, 0
  br label %6

5:                                                ; preds = %19
  unreachable

6:                                                ; preds = %138, %3
  %7 = phi ptr [ %1, %3 ], [ %139, %138 ]
  %8 = phi i32 [ 0, %3 ], [ %140, %138 ]
  %9 = phi i32 [ 0, %3 ], [ %141, %138 ]
  br label %10

10:                                               ; preds = %6, %10
  %11 = tail call i32 @getc(ptr noundef %0)
  switch i32 %11, label %12 [
    i32 -1, label %144
    i32 13, label %10
  ]

12:                                               ; preds = %10
  %13 = load i32, ptr @line, align 4, !tbaa !5
  %14 = icmp ne i32 %13, 0
  %15 = icmp eq i32 %11, 10
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = add nsw i32 %13, 1
  store i32 %18, ptr @line, align 4, !tbaa !5
  br label %19

19:                                               ; preds = %17, %12
  switch i32 %8, label %5 [
    i32 0, label %20
    i32 1, label %48
    i32 2, label %51
    i32 3, label %56
    i32 4, label %94
    i32 5, label %120
    i32 6, label %136
    i32 7, label %142
  ], !llvm.loop !26

20:                                               ; preds = %19
  switch i32 %11, label %24 [
    i32 35, label %138
    i32 34, label %21
    i32 10, label %22
  ]

21:                                               ; preds = %20
  br label %138

22:                                               ; preds = %20
  br i1 %4, label %24, label %23

23:                                               ; preds = %22
  store i8 0, ptr %1, align 1, !tbaa !16
  br label %149

24:                                               ; preds = %22, %20
  %25 = icmp eq i32 %9, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %24
  %27 = tail call ptr @__ctype_b_loc() #19
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = sext i32 %11 to i64
  %30 = getelementptr inbounds i16, ptr %28, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !27
  %32 = and i16 %31, 8
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = trunc i32 %11 to i8
  store i8 %35, ptr @lang, align 16, !tbaa !16
  br label %138

36:                                               ; preds = %26, %24
  %37 = tail call ptr @__ctype_b_loc() #19
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  %39 = sext i32 %11 to i64
  %40 = getelementptr inbounds i16, ptr %38, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !27
  %42 = and i16 %41, 8192
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %138

44:                                               ; preds = %36
  %45 = load ptr, ptr @stderr, align 8, !tbaa !9
  %46 = load i32, ptr @line, align 4, !tbaa !5
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str, i32 noundef %46) #16
  br label %138

48:                                               ; preds = %19
  %49 = xor i1 %15, true
  %50 = zext i1 %49 to i32
  br label %138

51:                                               ; preds = %19
  switch i32 %11, label %53 [
    i32 92, label %138
    i32 34, label %52
  ]

52:                                               ; preds = %51
  br label %138

53:                                               ; preds = %51
  %54 = trunc i32 %11 to i8
  %55 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %54, ptr %7, align 1, !tbaa !16
  br label %138

56:                                               ; preds = %19
  switch i32 %11, label %90 [
    i32 110, label %57
    i32 114, label %59
    i32 116, label %61
    i32 101, label %63
    i32 97, label %65
    i32 35, label %67
    i32 34, label %67
    i32 92, label %67
    i32 10, label %138
    i32 48, label %70
    i32 49, label %70
    i32 50, label %70
    i32 51, label %70
    i32 52, label %70
    i32 53, label %70
    i32 54, label %70
    i32 55, label %70
  ]

57:                                               ; preds = %56
  %58 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 10, ptr %7, align 1, !tbaa !16
  br label %138

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 13, ptr %7, align 1, !tbaa !16
  br label %138

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 9, ptr %7, align 1, !tbaa !16
  br label %138

63:                                               ; preds = %56
  %64 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 27, ptr %7, align 1, !tbaa !16
  br label %138

65:                                               ; preds = %56
  %66 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 7, ptr %7, align 1, !tbaa !16
  br label %138

67:                                               ; preds = %56, %56, %56
  %68 = trunc i32 %11 to i8
  %69 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %68, ptr %7, align 1, !tbaa !16
  br label %138

70:                                               ; preds = %56, %56, %56, %56, %56, %56, %56, %56
  %71 = add nsw i32 %11, -48
  %72 = tail call i32 @fgetc(ptr noundef %0)
  %73 = and i32 %72, -8
  %74 = icmp eq i32 %73, 48
  br i1 %74, label %75, label %84

75:                                               ; preds = %70, %75
  %76 = phi i32 [ %81, %75 ], [ %72, %70 ]
  %77 = phi i32 [ %80, %75 ], [ %71, %70 ]
  %78 = shl nsw i32 %77, 3
  %79 = add nsw i32 %78, %76
  %80 = add nsw i32 %79, -48
  %81 = tail call i32 @fgetc(ptr noundef %0)
  %82 = and i32 %81, -8
  %83 = icmp eq i32 %82, 48
  br i1 %83, label %75, label %84, !llvm.loop !29

84:                                               ; preds = %75, %70
  %85 = phi i32 [ %71, %70 ], [ %80, %75 ]
  %86 = phi i32 [ %72, %70 ], [ %81, %75 ]
  %87 = trunc i32 %85 to i8
  %88 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %87, ptr %7, align 1, !tbaa !16
  %89 = tail call i32 @ungetc(i32 noundef %86, ptr noundef %0)
  br label %138

90:                                               ; preds = %56
  %91 = load ptr, ptr @stderr, align 8, !tbaa !9
  %92 = load i32, ptr @line, align 4, !tbaa !5
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.1, i32 noundef %92, i32 noundef %11) #16
  br label %138

94:                                               ; preds = %19
  %95 = icmp eq i32 %11, 58
  br i1 %95, label %138, label %96

96:                                               ; preds = %94
  br i1 %15, label %97, label %100

97:                                               ; preds = %96
  %98 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(14) @lang, ptr noundef nonnull dereferenceable(14) @.str.2, i64 14)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %138, label %100

100:                                              ; preds = %97, %96
  %101 = trunc i32 %11 to i8
  %102 = add nsw i32 %9, 1
  %103 = sext i32 %9 to i64
  %104 = getelementptr inbounds [16 x i8], ptr @lang, i64 0, i64 %103
  store i8 %101, ptr %104, align 1, !tbaa !16
  %105 = icmp eq i32 %102, 15
  br i1 %105, label %114, label %106

106:                                              ; preds = %100
  %107 = tail call ptr @__ctype_b_loc() #19
  %108 = load ptr, ptr %107, align 8, !tbaa !9
  %109 = sext i32 %11 to i64
  %110 = getelementptr inbounds i16, ptr %108, i64 %109
  %111 = load i16, ptr %110, align 2, !tbaa !27
  %112 = and i16 %111, 8200
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %138

114:                                              ; preds = %106, %100
  %115 = sext i32 %102 to i64
  %116 = getelementptr inbounds [16 x i8], ptr @lang, i64 0, i64 %115
  store i8 0, ptr %116, align 1, !tbaa !16
  %117 = load ptr, ptr @stderr, align 8, !tbaa !9
  %118 = load i32, ptr @line, align 4, !tbaa !5
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.3, i32 noundef %118, ptr noundef nonnull @lang) #16
  br label %138

120:                                              ; preds = %19
  br i1 %15, label %121, label %124

121:                                              ; preds = %120
  %122 = sext i32 %9 to i64
  %123 = getelementptr inbounds [16 x i8], ptr @lang, i64 0, i64 %122
  store i8 0, ptr %123, align 1, !tbaa !16
  store i8 0, ptr %7, align 1, !tbaa !16
  br label %149

124:                                              ; preds = %120
  %125 = tail call ptr @__ctype_b_loc() #19
  %126 = load ptr, ptr %125, align 8, !tbaa !9
  %127 = sext i32 %11 to i64
  %128 = getelementptr inbounds i16, ptr %126, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !27
  %130 = and i16 %129, 8192
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load ptr, ptr @stderr, align 8, !tbaa !9
  %134 = load i32, ptr @line, align 4, !tbaa !5
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.4, i32 noundef %134) #16
  br label %138

136:                                              ; preds = %19
  %137 = select i1 %15, i32 7, i32 6
  br label %138

138:                                              ; preds = %136, %48, %97, %94, %57, %59, %61, %63, %65, %67, %56, %84, %90, %51, %20, %124, %132, %106, %114, %52, %53, %21, %34, %44, %36, %142
  %139 = phi ptr [ %7, %142 ], [ %7, %124 ], [ %7, %132 ], [ %7, %114 ], [ %7, %106 ], [ %55, %53 ], [ %7, %52 ], [ %7, %34 ], [ %7, %36 ], [ %7, %44 ], [ %7, %21 ], [ %7, %20 ], [ %7, %48 ], [ %7, %51 ], [ %7, %90 ], [ %88, %84 ], [ %7, %56 ], [ %69, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], [ %7, %94 ], [ %7, %97 ], [ %7, %136 ]
  %140 = phi i32 [ %143, %142 ], [ 5, %124 ], [ 6, %132 ], [ 6, %114 ], [ 4, %106 ], [ 2, %53 ], [ 5, %52 ], [ 4, %34 ], [ 0, %36 ], [ 6, %44 ], [ 2, %21 ], [ 1, %20 ], [ %50, %48 ], [ 3, %51 ], [ 2, %90 ], [ 2, %84 ], [ 2, %56 ], [ 2, %67 ], [ 2, %65 ], [ 2, %63 ], [ 2, %61 ], [ 2, %59 ], [ 2, %57 ], [ 0, %94 ], [ 0, %97 ], [ %137, %136 ]
  %141 = phi i32 [ %9, %142 ], [ %9, %124 ], [ %9, %132 ], [ 0, %114 ], [ %102, %106 ], [ %9, %53 ], [ %9, %52 ], [ 1, %34 ], [ %9, %36 ], [ %9, %44 ], [ %9, %21 ], [ %9, %20 ], [ %9, %48 ], [ %9, %51 ], [ %9, %90 ], [ %9, %84 ], [ %9, %56 ], [ %9, %67 ], [ %9, %65 ], [ %9, %63 ], [ %9, %61 ], [ %9, %59 ], [ %9, %57 ], [ %9, %94 ], [ 0, %97 ], [ %9, %136 ]
  br label %6, !llvm.loop !26

142:                                              ; preds = %19
  %143 = select i1 %15, i32 0, i32 6
  br label %138

144:                                              ; preds = %10
  %145 = icmp eq i32 %8, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %144
  %147 = load ptr, ptr @stderr, align 8, !tbaa !9
  %148 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 29, i64 1, ptr %147) #16
  br label %149

149:                                              ; preds = %144, %146, %121, %23
  %150 = phi ptr [ %1, %121 ], [ %1, %23 ], [ null, %146 ], [ null, %144 ]
  ret ptr %150
}

declare signext i8 @EXT_C(i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i64 @crcbytes(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @buildfilename(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

declare void @init_crc() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

declare i64 @fsize(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind allocsize(1) }
attributes #19 = { nounwind willreturn memory(none) }

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
!11 = !{!12, !13, i64 0}
!12 = !{!"", !13, i64 0, !7, i64 8, !13, i64 24}
!13 = !{!"long", !7, i64 0}
!14 = !{!12, !13, i64 24}
!15 = !{!13, !13, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !13, i64 0}
!18 = !{!"indx_ent", !13, i64 0, !13, i64 8}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!18, !13, i64 8}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !7, i64 0}
!29 = distinct !{!29, !20}
