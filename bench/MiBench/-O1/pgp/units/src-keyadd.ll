; ModuleID = 'src/keyadd.c'
source_filename = "src/keyadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.newkey = type { [8 x i8], ptr }
%struct.bufpool = type { ptr, [1 x i8] }
%struct.hashent = type { ptr, [8 x i8], i64 }
%struct.sig_list = type { ptr, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@pgpout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"\0A\07Can't open key file '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\0AKey ring file '%s' cannot be created.\0A\00", align 1
@newrvks = internal unnamed_addr global i32 0, align 4
@newids = internal unnamed_addr global i32 0, align 4
@newsigs = internal unnamed_addr global i32 0, align 4
@newkeys = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"\0ALooking for new keys...\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\0A\07Could not read key from file '%s'.\0A\00", align 1
@publickey = internal unnamed_addr global i8 0, align 1
@.str.6 = private unnamed_addr constant [199 x i8] c"\0A\07Warning: Key ID %s matches key ID of key already on \0Akey ring '%s', but the keys themselves differ.\0AThis is highly suspicious.  This key will not be added to ring.\0AAcknowledge by pressing return: \00", align 1
@interactive_add = external local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"\0ADo you want to add this key to keyring '%s' (y/N)? \00", align 1
@batchmode = external local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Key has been revoked.\0A\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"\0A\07Key file contains duplicate keys: cannot be added to keyring\0A\00", align 1
@mykeyID = internal global [8 x i8] zeroinitializer, align 1
@verbose = external local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Merging key ID: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"No new keys or signatures in keyfile.\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"addto_keyring: dokeycheck returned %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"\0AKeyfile contains:\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"%4d new key(s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"%4d new signatures(s)\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%4d new user ID(s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%4d new revocation(s)\0A\00", align 1
@ask_first = internal unnamed_addr global i1 false, align 1
@filter_mode = external local_unnamed_addr global i8, align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"addto_keyring: maint_update returned %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"\0ANo keys found in '%s'.\0A\00", align 1
@gpkf = internal unnamed_addr global ptr null, align 8
@.str.20 = private unnamed_addr constant [24 x i8] c"gpk_open: already open\0A\00", align 1
@PGP_EXTENSION = external global [0 x i8], align 1
@hashtbl = internal unnamed_addr global ptr null, align 8
@.str.21 = private unnamed_addr constant [40 x i8] c"Warning: duplicate key in keyring '%s'\0A\00", align 1
@hashleft = internal unnamed_addr global i32 0, align 4
@hashptr = internal unnamed_addr global ptr null, align 8
@.str.22 = private unnamed_addr constant [39 x i8] c"Key revocation certificate from \22%s\22.\0A\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c"\0A\07WARNING:  File '%s' contains bad revocation certificate.\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"New userid: \22%s\22.\0A\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"\0AWill be added to the following key:\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"\0AAdd this userid (y/N)? \00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"ring: %lx  key: %lx\0A\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"Replacing signature from keyID %s on userid \22%s\22\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Verifying signature from %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"on userid \22%s\22\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"Replacing signature from %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"Verification Failed\0A\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"New signature from keyID %s on userid \22%s\22\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"New signature from %s\0A\00", align 1
@siglist = internal unnamed_addr global ptr null, align 8
@.str.36 = private unnamed_addr constant [112 x i8] c"\0AOne or more of the new keys are not fully certified.\0ADo you want to certify any of these keys yourself (y/N)? \00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"\0ADo you want to certify this key yourself (y/N)? \00", align 1
@my_name = external global [0 x i8], align 1
@bufpool = internal unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @_addto_keyring(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca [130 x i16], align 16
  %7 = alloca [130 x i16], align 16
  %8 = alloca [130 x i16], align 16
  %9 = alloca [8 x i8], align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  %14 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %18 = tail call ptr @LANG(ptr noundef nonnull @.str.1) #8
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef %18, ptr noundef %0)
  br label %378

20:                                               ; preds = %2
  store i8 0, ptr %5, align 1, !tbaa !9
  %21 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %14)
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i8, ptr %5, align 1, !tbaa !9
  %25 = tail call i32 @is_key_ctb(i8 noundef zeroext %24) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %20
  %28 = tail call i32 @fclose(ptr noundef nonnull %14)
  br label %378

29:                                               ; preds = %23
  tail call void @rewind(ptr noundef nonnull %14)
  tail call void @setoutdir(ptr noundef %1) #8
  %30 = tail call ptr @tempfile(i32 noundef 0) #8
  %31 = tail call i32 @setkrent(ptr noundef %1) #8
  %32 = tail call i32 @setkrent(ptr noundef %0) #8
  %33 = tail call i32 @init_userhash() #8
  %34 = tail call zeroext i8 @file_exists(ptr noundef %1) #8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.2)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %41 = tail call ptr @LANG(ptr noundef nonnull @.str.3) #8
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef %41, ptr noundef %1)
  %43 = tail call i32 @fclose(ptr noundef nonnull %14)
  br label %364

44:                                               ; preds = %36
  %45 = tail call i32 @fclose(ptr noundef nonnull %37)
  br label %46

46:                                               ; preds = %44, %29
  %47 = tail call noalias ptr @fopen(ptr noundef %30, ptr noundef nonnull @.str.2)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = tail call i32 @fclose(ptr noundef nonnull %14)
  br label %364

51:                                               ; preds = %46
  store i32 0, ptr @newrvks, align 4, !tbaa !10
  store i32 0, ptr @newids, align 4, !tbaa !10
  store i32 0, ptr @newsigs, align 4, !tbaa !10
  store i32 0, ptr @newkeys, align 4, !tbaa !10
  %52 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %53 = tail call ptr @LANG(ptr noundef nonnull @.str.4) #8
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef %53)
  %55 = tail call i32 @gpk_open(ptr noundef %1), !range !12
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %168

57:                                               ; preds = %51
  %58 = tail call i32 @fclose(ptr noundef nonnull %14)
  %59 = tail call i32 @fclose(ptr noundef nonnull %47)
  br label %364

60:                                               ; preds = %168, %74
  %61 = phi i32 [ 0, %74 ], [ %171, %168 ]
  %62 = call i64 @ftell(ptr noundef nonnull %14)
  %63 = call signext i16 @readkeypacket(ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %64 = icmp eq i16 %63, -1
  br i1 %64, label %173, label %65

65:                                               ; preds = %60
  %66 = add i16 %63, 3
  %67 = icmp ult i16 %66, 2
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  store i64 %62, ptr %3, align 8, !tbaa !13
  %69 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %70 = call ptr @LANG(ptr noundef nonnull @.str.5) #8
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef %70, ptr noundef %0)
  %72 = call i32 @fclose(ptr noundef nonnull %14)
  %73 = call i32 @fclose(ptr noundef nonnull %47)
  br label %364

74:                                               ; preds = %65
  %75 = icmp slt i16 %63, 0
  br i1 %75, label %60, label %76, !llvm.loop !15

76:                                               ; preds = %74
  %77 = load i8, ptr %5, align 1, !tbaa !9
  %78 = call i32 @is_key_ctb(i8 noundef zeroext %77) #8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %127, label %80

80:                                               ; preds = %76
  call void @extract_keyID(ptr noundef nonnull %9, ptr noundef nonnull %6) #8
  %81 = load i8, ptr %5, align 1, !tbaa !9
  %82 = and i8 %81, 124
  %83 = icmp eq i8 %82, 24
  %84 = zext i1 %83 to i8
  store i8 %84, ptr @publickey, align 1, !tbaa !9
  %85 = call i32 @get_publickey(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %7), !range !17
  switch i32 %85, label %127 [
    i32 0, label %86
    i32 -1, label %97
  ]

86:                                               ; preds = %80
  %87 = call signext i16 @mp_compare(ptr noundef nonnull %6, ptr noundef nonnull %8) #8
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %91 = call ptr @LANG(ptr noundef nonnull @.str.6) #8
  %92 = call ptr @keyIDstring(ptr noundef nonnull %9) #8
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef %91, ptr noundef %92, ptr noundef %1)
  %94 = call zeroext i8 @getyesno(i8 noundef signext 110) #8
  br label %127

95:                                               ; preds = %86
  %96 = add nsw i32 %170, 1
  br label %127

97:                                               ; preds = %80
  %98 = load i32, ptr @newkeys, align 4, !tbaa !10
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr @newkeys, align 4, !tbaa !10
  %100 = load i8, ptr @interactive_add, align 1, !tbaa !9
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %97
  %103 = call i32 @show_key(ptr noundef nonnull %14, i64 noundef %62, i32 noundef 3) #8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %107 = call ptr @LANG(ptr noundef nonnull @.str.7) #8
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef %107, ptr noundef %1)
  %109 = call zeroext i8 @getyesno(i8 noundef signext 110) #8
  %110 = zext i8 %109 to i32
  br label %115

111:                                              ; preds = %97
  %112 = call i32 @show_key(ptr noundef nonnull %14, i64 noundef %62, i32 noundef 8) #8
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i32
  br label %115

115:                                              ; preds = %111, %102, %105
  %116 = phi i32 [ %110, %105 ], [ 0, %102 ], [ %114, %111 ]
  %117 = load i8, ptr @batchmode, align 1, !tbaa !9
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = call i32 @show_key(ptr noundef nonnull %14, i64 noundef %62, i32 noundef 16) #8
  br label %121

121:                                              ; preds = %119, %115
  %122 = icmp eq i32 %116, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %121
  %124 = call ptr @xmalloc(i32 noundef 16) #8
  %125 = load i64, ptr %9, align 8
  store i64 %125, ptr %124, align 8
  %126 = getelementptr inbounds %struct.newkey, ptr %124, i64 0, i32 1
  store ptr %172, ptr %126, align 8, !tbaa !18
  br label %127

127:                                              ; preds = %80, %89, %95, %121, %123, %76
  %128 = phi i32 [ %170, %123 ], [ %170, %121 ], [ %170, %76 ], [ %170, %89 ], [ %96, %95 ], [ %170, %80 ]
  %129 = phi i32 [ %116, %123 ], [ 0, %121 ], [ %61, %76 ], [ 0, %89 ], [ 0, %95 ], [ 0, %80 ]
  %130 = phi ptr [ %124, %123 ], [ %172, %121 ], [ %172, %76 ], [ %172, %89 ], [ %172, %95 ], [ %172, %80 ]
  %131 = icmp eq i32 %129, 0
  br i1 %131, label %158, label %132

132:                                              ; preds = %127
  %133 = load i8, ptr %5, align 1, !tbaa !9
  %134 = call i32 @is_key_ctb(i8 noundef zeroext %133) #8
  %135 = icmp ne i32 %134, 0
  %136 = load i8, ptr %5, align 1
  %137 = icmp eq i8 %136, -76
  %138 = select i1 %135, i1 true, i1 %137
  %139 = and i8 %136, 124
  %140 = icmp eq i8 %139, 8
  %141 = select i1 %138, i1 true, i1 %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %132
  %143 = call i64 @ftell(ptr noundef nonnull %14)
  %144 = sub nsw i64 %143, %62
  %145 = shl i64 %144, 32
  %146 = ashr exact i64 %145, 32
  %147 = call i32 @copyfilepos(ptr noundef nonnull %14, ptr noundef nonnull %47, i64 noundef %146, i64 noundef %62) #8
  %148 = load i8, ptr @publickey, align 1, !tbaa !9
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %142
  %151 = load i8, ptr %5, align 1, !tbaa !9
  %152 = call i32 @is_key_ctb(i8 noundef zeroext %151) #8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  call void @write_trust(ptr noundef nonnull %47, i8 noundef zeroext 0) #8
  br label %158

155:                                              ; preds = %150
  %156 = load i8, ptr %5, align 1, !tbaa !9
  %157 = and i8 %156, 124
  switch i8 %157, label %158 [
    i8 8, label %160
    i8 52, label %167
  ]

158:                                              ; preds = %155, %132, %142, %163, %162, %167, %154, %127
  %159 = phi i8 [ 0, %154 ], [ 1, %162 ], [ 0, %163 ], [ 1, %167 ], [ %169, %142 ], [ %169, %127 ], [ %169, %132 ], [ %169, %155 ]
  br label %168, !llvm.loop !15

160:                                              ; preds = %155
  %161 = icmp eq i8 %169, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %160
  call void @write_trust(ptr noundef nonnull %47, i8 noundef zeroext 0) #8
  br label %158

163:                                              ; preds = %160
  %164 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %165 = call ptr @LANG(ptr noundef nonnull @.str.8) #8
  %166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef %165)
  br label %158

167:                                              ; preds = %155
  call void @write_trust(ptr noundef nonnull %47, i8 noundef zeroext 0) #8
  br label %158

168:                                              ; preds = %51, %158
  %169 = phi i8 [ %159, %158 ], [ 0, %51 ]
  %170 = phi i32 [ %128, %158 ], [ 0, %51 ]
  %171 = phi i32 [ %129, %158 ], [ 0, %51 ]
  %172 = phi ptr [ %130, %158 ], [ null, %51 ]
  br label %60

173:                                              ; preds = %60
  store i64 %62, ptr %3, align 8, !tbaa !13
  %174 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %175 = icmp eq ptr %174, null
  br i1 %175, label %186, label %176

176:                                              ; preds = %173
  store i32 0, ptr @hashleft, align 4, !tbaa !10
  store ptr null, ptr @hashtbl, align 8, !tbaa !5
  %177 = load ptr, ptr @bufpool, align 8, !tbaa !5
  %178 = icmp eq ptr %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %176, %179
  %180 = phi ptr [ %181, %179 ], [ %177, %176 ]
  %181 = load ptr, ptr %180, align 8, !tbaa !20
  store ptr %181, ptr @bufpool, align 8, !tbaa !5
  call void @free(ptr noundef %180) #8
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %179, !llvm.loop !22

183:                                              ; preds = %179, %176
  %184 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %185 = call i32 @fclose(ptr noundef %184)
  store ptr null, ptr @gpkf, align 8, !tbaa !5
  br label %186

186:                                              ; preds = %173, %183
  %187 = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str)
  %188 = icmp eq ptr %187, null
  br i1 %188, label %270, label %189

189:                                              ; preds = %186
  %190 = call i32 @gpk_open(ptr noundef %0), !range !12
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %189
  %193 = icmp eq i32 %170, 0
  br i1 %193, label %267, label %198

194:                                              ; preds = %189
  %195 = call i32 @fclose(ptr noundef nonnull %14)
  %196 = call i32 @fclose(ptr noundef nonnull %47)
  %197 = call i32 @fclose(ptr noundef nonnull %187)
  br label %364

198:                                              ; preds = %192, %265
  %199 = phi i32 [ %257, %265 ], [ %61, %192 ]
  %200 = phi i32 [ %256, %265 ], [ %170, %192 ]
  %201 = call i64 @ftell(ptr noundef nonnull %187)
  store i64 %201, ptr %3, align 8, !tbaa !13
  %202 = call signext i16 @readkeypacket(ptr noundef nonnull %187, ptr noundef null, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #8
  switch i16 %202, label %215 [
    i16 -1, label %203
    i16 -3, label %207
  ]

203:                                              ; preds = %198
  %204 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %205 = call ptr @LANG(ptr noundef nonnull @.str.9) #8
  %206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef %205)
  br label %211

207:                                              ; preds = %198
  %208 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %209 = call ptr @LANG(ptr noundef nonnull @.str.5) #8
  %210 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef %209, ptr noundef %1)
  br label %211

211:                                              ; preds = %207, %203
  %212 = call i32 @fclose(ptr noundef nonnull %14)
  %213 = call i32 @fclose(ptr noundef nonnull %47)
  %214 = call i32 @fclose(ptr noundef nonnull %187)
  br label %364

215:                                              ; preds = %198
  call void @PascalToC(ptr noundef nonnull %10) #8
  %216 = call i64 @ftell(ptr noundef nonnull %187)
  %217 = sub nsw i64 %216, %201
  %218 = load i8, ptr %5, align 1, !tbaa !9
  %219 = call i32 @is_key_ctb(i8 noundef zeroext %218) #8
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %255, label %221

221:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  %222 = icmp eq i16 %202, 0
  br i1 %222, label %223, label %251

223:                                              ; preds = %221
  call void @extract_keyID(ptr noundef nonnull %9, ptr noundef nonnull %6) #8
  call void @extract_keyID(ptr noundef nonnull @mykeyID, ptr noundef nonnull %6) #8
  %224 = load i8, ptr %5, align 1, !tbaa !9
  %225 = and i8 %224, 124
  %226 = icmp eq i8 %225, 24
  %227 = zext i1 %226 to i8
  store i8 %227, ptr @publickey, align 1, !tbaa !9
  %228 = call i32 @get_publickey(ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %7), !range !17
  %229 = icmp sgt i32 %228, -1
  br i1 %229, label %230, label %247

230:                                              ; preds = %223
  %231 = load i8, ptr @verbose, align 1, !tbaa !9
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %235 = call ptr @keyIDstring(ptr noundef nonnull %9) #8
  %236 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %234, ptr noundef nonnull @.str.10, ptr noundef %235)
  br label %237

237:                                              ; preds = %233, %230
  %238 = load i64, ptr %13, align 8, !tbaa !13
  %239 = call fastcc i32 @mergekeys(ptr noundef nonnull %14, ptr noundef %0, i64 noundef %238, ptr noundef nonnull %187, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %47)
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = call i32 @fclose(ptr noundef nonnull %14)
  %243 = call i32 @fclose(ptr noundef nonnull %47)
  %244 = call i32 @fclose(ptr noundef nonnull %187)
  br label %251

245:                                              ; preds = %237
  %246 = add nsw i32 %200, -1
  br label %251

247:                                              ; preds = %223
  %248 = icmp eq i32 %228, -3
  %249 = sext i1 %248 to i32
  %250 = add nsw i32 %200, %249
  br label %251

251:                                              ; preds = %247, %221, %245, %241
  %252 = phi i32 [ %200, %241 ], [ %246, %245 ], [ %200, %221 ], [ %250, %247 ]
  %253 = phi i32 [ 1, %241 ], [ 0, %245 ], [ 1, %221 ], [ 1, %247 ]
  %254 = phi i1 [ false, %241 ], [ true, %245 ], [ true, %221 ], [ true, %247 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  br i1 %254, label %255, label %364

255:                                              ; preds = %251, %215
  %256 = phi i32 [ %252, %251 ], [ %200, %215 ]
  %257 = phi i32 [ %253, %251 ], [ %199, %215 ]
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %265, label %259

259:                                              ; preds = %255
  %260 = shl i64 %217, 32
  %261 = ashr exact i64 %260, 32
  %262 = load i64, ptr %3, align 8, !tbaa !13
  %263 = call i32 @copyfilepos(ptr noundef nonnull %187, ptr noundef nonnull %47, i64 noundef %261, i64 noundef %262) #8
  %264 = add nsw i64 %262, %261
  store i64 %264, ptr %3, align 8, !tbaa !13
  br label %265

265:                                              ; preds = %259, %255
  %266 = icmp eq i32 %256, 0
  br i1 %266, label %267, label %198, !llvm.loop !23

267:                                              ; preds = %265, %192
  call void @gpk_close()
  %268 = call i32 @copyfile(ptr noundef nonnull %187, ptr noundef nonnull %47, i64 noundef -1) #8
  %269 = call i32 @fclose(ptr noundef nonnull %187)
  br label %270

270:                                              ; preds = %267, %186
  %271 = call i32 @fclose(ptr noundef nonnull %14)
  %272 = call i32 @write_error(ptr noundef nonnull %47) #8
  %273 = icmp eq i32 %272, 0
  %274 = call i32 @fclose(ptr noundef nonnull %47)
  br i1 %273, label %275, label %364

275:                                              ; preds = %270
  %276 = load i32, ptr @newsigs, align 4, !tbaa !10
  %277 = icmp eq i32 %276, 0
  %278 = load i32, ptr @newkeys, align 4
  %279 = icmp eq i32 %278, 0
  %280 = select i1 %277, i1 %279, i1 false
  %281 = load i32, ptr @newids, align 4
  %282 = icmp eq i32 %281, 0
  %283 = select i1 %280, i1 %282, i1 false
  %284 = load i32, ptr @newrvks, align 4
  %285 = icmp eq i32 %284, 0
  %286 = select i1 %283, i1 %285, i1 false
  br i1 %286, label %287, label %291

287:                                              ; preds = %275
  %288 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %289 = call ptr @LANG(ptr noundef nonnull @.str.11) #8
  %290 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %288, ptr noundef %289)
  call void @rmtemp(ptr noundef %30) #8
  call void @endkrent() #8
  br label %378

291:                                              ; preds = %275
  %292 = call i32 @dokeycheck(ptr noundef null, ptr noundef %30, i32 noundef 1) #8
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %300, label %294

294:                                              ; preds = %291
  %295 = load i8, ptr @verbose, align 1, !tbaa !9
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %364, label %297

297:                                              ; preds = %294
  %298 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %298, ptr noundef nonnull @.str.12, i32 noundef %292)
  br label %364

300:                                              ; preds = %291
  call void @endkrent() #8
  %301 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %302 = call ptr @LANG(ptr noundef nonnull @.str.13) #8
  %303 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %301, ptr noundef %302)
  %304 = load i32, ptr @newkeys, align 4, !tbaa !10
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %300
  %307 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %308 = call ptr @LANG(ptr noundef nonnull @.str.14) #8
  %309 = load i32, ptr @newkeys, align 4, !tbaa !10
  %310 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %307, ptr noundef %308, i32 noundef %309)
  br label %311

311:                                              ; preds = %306, %300
  %312 = load i32, ptr @newsigs, align 4, !tbaa !10
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %319, label %314

314:                                              ; preds = %311
  %315 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %316 = call ptr @LANG(ptr noundef nonnull @.str.15) #8
  %317 = load i32, ptr @newsigs, align 4, !tbaa !10
  %318 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %315, ptr noundef %316, i32 noundef %317)
  br label %319

319:                                              ; preds = %314, %311
  %320 = load i32, ptr @newids, align 4, !tbaa !10
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %327, label %322

322:                                              ; preds = %319
  %323 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %324 = call ptr @LANG(ptr noundef nonnull @.str.16) #8
  %325 = load i32, ptr @newids, align 4, !tbaa !10
  %326 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %323, ptr noundef %324, i32 noundef %325)
  br label %327

327:                                              ; preds = %322, %319
  %328 = load i32, ptr @newrvks, align 4, !tbaa !10
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %335, label %330

330:                                              ; preds = %327
  %331 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %332 = call ptr @LANG(ptr noundef nonnull @.str.17) #8
  %333 = load i32, ptr @newrvks, align 4, !tbaa !10
  %334 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %331, ptr noundef %332, i32 noundef %333)
  br label %335

335:                                              ; preds = %330, %327
  store i1 true, ptr @ask_first, align 1
  %336 = call i32 @maint_update(ptr noundef %30, ptr noundef %172) #8
  %337 = icmp slt i32 %336, 0
  %338 = load i8, ptr @filter_mode, align 1
  %339 = icmp ne i8 %338, 0
  %340 = select i1 %337, i1 true, i1 %339
  %341 = load i8, ptr @batchmode, align 1
  %342 = icmp ne i8 %341, 0
  %343 = select i1 %340, i1 true, i1 %342
  %344 = icmp eq ptr %172, null
  %345 = select i1 %343, i1 true, i1 %344
  br i1 %345, label %354, label %346

346:                                              ; preds = %335, %350
  %347 = phi ptr [ %352, %350 ], [ %172, %335 ]
  %348 = call fastcc i32 @ask_to_sign(ptr noundef nonnull %347, ptr noundef %30), !range !24
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.newkey, ptr %347, i64 0, i32 1
  %352 = load ptr, ptr %351, align 8, !tbaa !18
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %346, !llvm.loop !25

354:                                              ; preds = %346, %350, %335
  %355 = icmp ne i32 %336, 0
  %356 = load i8, ptr @verbose, align 1
  %357 = icmp ne i8 %356, 0
  %358 = select i1 %355, i1 %357, i1 false
  br i1 %358, label %359, label %362

359:                                              ; preds = %354
  %360 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %361 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %360, ptr noundef nonnull @.str.18, i32 noundef %336)
  br label %362

362:                                              ; preds = %359, %354
  call void @free_newkeys(ptr noundef %172) #8
  %363 = call i32 @savetempbak(ptr noundef %30, ptr noundef %1) #8
  br label %378

364:                                              ; preds = %251, %270, %294, %297, %211, %194, %68, %57, %49, %39
  %365 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %366 = icmp eq ptr %365, null
  br i1 %366, label %377, label %367

367:                                              ; preds = %364
  store i32 0, ptr @hashleft, align 4, !tbaa !10
  store ptr null, ptr @hashtbl, align 8, !tbaa !5
  %368 = load ptr, ptr @bufpool, align 8, !tbaa !5
  %369 = icmp eq ptr %368, null
  br i1 %369, label %374, label %370

370:                                              ; preds = %367, %370
  %371 = phi ptr [ %372, %370 ], [ %368, %367 ]
  %372 = load ptr, ptr %371, align 8, !tbaa !20
  store ptr %372, ptr @bufpool, align 8, !tbaa !5
  call void @free(ptr noundef %371) #8
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %370, !llvm.loop !22

374:                                              ; preds = %370, %367
  %375 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %376 = call i32 @fclose(ptr noundef %375)
  store ptr null, ptr @gpkf, align 8, !tbaa !5
  br label %377

377:                                              ; preds = %364, %374
  call void @endkrent() #8
  call void @rmtemp(ptr noundef %30) #8
  br label %378

378:                                              ; preds = %377, %362, %287, %27, %16
  %379 = phi i32 [ -1, %16 ], [ -1, %27 ], [ -1, %377 ], [ 0, %287 ], [ 0, %362 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %379
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare ptr @LANG(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

declare i32 @is_key_ctb(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #2

declare void @setoutdir(ptr noundef) local_unnamed_addr #3

declare ptr @tempfile(i32 noundef) local_unnamed_addr #3

declare i32 @setkrent(ptr noundef) local_unnamed_addr #3

declare i32 @init_userhash() local_unnamed_addr #3

declare zeroext i8 @file_exists(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gpk_open(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [8 x i8], align 8
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  %4 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %8 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 23, i64 1, ptr %7)
  br label %87

9:                                                ; preds = %1
  tail call void @default_extension(ptr noundef %0, ptr noundef nonnull @PGP_EXTENSION) #8
  %10 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  store ptr %10, ptr @gpkf, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %87, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @xmalloc(i32 noundef 2056) #8
  %14 = load ptr, ptr @bufpool, align 8, !tbaa !5
  store ptr %14, ptr %13, align 8, !tbaa !20
  store ptr %13, ptr @bufpool, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.bufpool, ptr %13, i64 0, i32 1
  store ptr %15, ptr @hashtbl, align 8, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %15, i8 0, i64 2048, i1 false)
  %16 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %17 = call i32 @readkpacket(ptr noundef %16, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %2, ptr noundef null) #8
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %87, label %19

19:                                               ; preds = %12, %81
  %20 = phi i32 [ %85, %81 ], [ %17, %12 ]
  %21 = phi i64 [ %83, %81 ], [ 0, %12 ]
  %22 = add i32 %20, 3
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %26 = call ptr @LANG(ptr noundef nonnull @.str.5) #8
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef %26, ptr noundef %0)
  %28 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %29 = call i32 @fclose(ptr noundef %28)
  br label %87

30:                                               ; preds = %19
  %31 = load i8, ptr %3, align 1, !tbaa !9
  %32 = call i32 @is_key_ctb(i8 noundef zeroext %31) #8
  %33 = icmp ne i32 %32, 0
  %34 = icmp ne i32 %20, -4
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %81

36:                                               ; preds = %30
  %37 = load ptr, ptr @hashtbl, align 8, !tbaa !5
  %38 = load i8, ptr %2, align 8, !tbaa !9
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  br label %41

41:                                               ; preds = %45, %36
  %42 = phi ptr [ %40, %36 ], [ %43, %45 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.hashent, ptr %43, i64 0, i32 1
  %47 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %2, ptr noundef nonnull dereferenceable(8) %46, i64 8)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %41, !llvm.loop !26

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.hashent, ptr %43, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !27
  br label %52

52:                                               ; preds = %41, %49
  %53 = phi i64 [ %51, %49 ], [ -1, %41 ]
  %54 = icmp eq i64 %53, -1
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.21, ptr noundef %0)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, ptr @hashleft, align 4, !tbaa !10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = call ptr @xmalloc(i32 noundef 9608) #8
  %63 = load ptr, ptr @bufpool, align 8, !tbaa !5
  store ptr %63, ptr %62, align 8, !tbaa !20
  store ptr %62, ptr @bufpool, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.bufpool, ptr %62, i64 0, i32 1
  store ptr %64, ptr @hashptr, align 8, !tbaa !5
  store i32 400, ptr @hashleft, align 4, !tbaa !10
  br label %65

65:                                               ; preds = %61, %58
  %66 = load ptr, ptr @hashptr, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.hashent, ptr %66, i64 0, i32 1
  %68 = load i64, ptr %2, align 8
  store i64 %68, ptr %67, align 8
  %69 = getelementptr inbounds %struct.hashent, ptr %66, i64 0, i32 2
  store i64 %21, ptr %69, align 8, !tbaa !27
  %70 = load ptr, ptr @hashtbl, align 8, !tbaa !5
  %71 = load i8, ptr %2, align 8, !tbaa !9
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %70, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  store ptr %74, ptr %66, align 8, !tbaa !29
  %75 = load i8, ptr %2, align 8, !tbaa !9
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %70, i64 %76
  store ptr %66, ptr %77, align 8, !tbaa !5
  %78 = getelementptr inbounds %struct.hashent, ptr %66, i64 1
  store ptr %78, ptr @hashptr, align 8, !tbaa !5
  %79 = load i32, ptr @hashleft, align 4, !tbaa !10
  %80 = add nsw i32 %79, -1
  store i32 %80, ptr @hashleft, align 4, !tbaa !10
  br label %81

81:                                               ; preds = %65, %30
  %82 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %83 = call i64 @ftell(ptr noundef %82)
  %84 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %85 = call i32 @readkpacket(ptr noundef %84, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %2, ptr noundef null) #8
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %19, !llvm.loop !30

87:                                               ; preds = %81, %12, %9, %24, %6
  %88 = phi i32 [ -1, %6 ], [ -1, %24 ], [ -1, %9 ], [ 0, %12 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 %88
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

declare signext i16 @readkeypacket(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @extract_keyID(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @get_publickey(ptr noundef writeonly %0, ptr noundef writeonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  %9 = load ptr, ptr @hashtbl, align 8, !tbaa !5
  %10 = load i8, ptr %2, align 1, !tbaa !9
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  br label %13

13:                                               ; preds = %17, %7
  %14 = phi ptr [ %12, %7 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hashent, ptr %15, i64 0, i32 1
  %19 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %2, ptr noundef nonnull dereferenceable(8) %18, i64 8)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %13, !llvm.loop !26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hashent, ptr %15, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !27
  br label %24

24:                                               ; preds = %13, %21
  %25 = phi i64 [ %23, %21 ], [ -1, %13 ]
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %60, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %29 = tail call i32 @fseek(ptr noundef %28, i64 noundef %25, i32 noundef 0)
  %30 = icmp eq ptr %0, null
  %31 = icmp eq ptr %1, null
  br label %32

32:                                               ; preds = %56, %27
  %33 = phi i32 [ -1, %27 ], [ %57, %56 ]
  %34 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %35 = call i64 @ftell(ptr noundef %34)
  %36 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %37 = call signext i16 @readkeypacket(ptr noundef %36, ptr noundef null, ptr noundef nonnull %8, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %38 = freeze i16 %37
  %39 = sext i16 %38 to i32
  %40 = icmp slt i16 %38, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  switch i16 %38, label %60 [
    i16 -4, label %42
    i16 -6, label %42
  ]

42:                                               ; preds = %41, %41, %32
  %43 = load i8, ptr %8, align 1, !tbaa !9
  %44 = call i32 @is_key_ctb(i8 noundef zeroext %43) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  br i1 %30, label %48, label %47

47:                                               ; preds = %46
  store i64 %35, ptr %0, align 8, !tbaa !13
  br label %48

48:                                               ; preds = %47, %46
  br i1 %31, label %54, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %51 = call i64 @ftell(ptr noundef %50)
  %52 = sub nsw i64 %51, %35
  %53 = trunc i64 %52 to i32
  store i32 %53, ptr %1, align 4, !tbaa !10
  br label %54

54:                                               ; preds = %49, %48
  %55 = icmp eq i32 %33, -1
  br i1 %55, label %56, label %60

56:                                               ; preds = %54, %42
  %57 = phi i32 [ %33, %42 ], [ %39, %54 ]
  %58 = load i8, ptr %8, align 1, !tbaa !9
  %59 = icmp eq i8 %58, -76
  br i1 %59, label %60, label %32, !llvm.loop !31

60:                                               ; preds = %56, %54, %41, %24
  %61 = phi i32 [ -1, %24 ], [ %39, %41 ], [ -3, %54 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  ret i32 %61
}

declare signext i16 @mp_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @keyIDstring(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @getyesno(i8 noundef signext) local_unnamed_addr #3

declare i32 @show_key(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i32 noundef) local_unnamed_addr #3

declare i32 @copyfilepos(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @write_trust(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @gpk_close() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  store i32 0, ptr @hashleft, align 4, !tbaa !10
  store ptr null, ptr @hashtbl, align 8, !tbaa !5
  %4 = load ptr, ptr @bufpool, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  store ptr %8, ptr @bufpool, align 8, !tbaa !5
  tail call void @free(ptr noundef %7) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !22

10:                                               ; preds = %6, %3
  %11 = load ptr, ptr @gpkf, align 8, !tbaa !5
  %12 = tail call i32 @fclose(ptr noundef %11)
  store ptr null, ptr @gpkf, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %0, %10
  ret void
}

declare void @PascalToC(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mergekeys(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [8 x i8], align 1
  %13 = alloca [256 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca [256 x i8], align 16
  %21 = alloca i64, align 8
  %22 = alloca i8, align 1
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %20) #8
  %27 = load i64, ptr %5, align 8, !tbaa !13
  %28 = tail call i32 @fseek(ptr noundef %3, i64 noundef %27, i32 noundef 0)
  %29 = call signext i16 @nextkeypacket(ptr noundef %3, ptr noundef nonnull %19) #8
  %30 = call i64 @ftell(ptr noundef %3)
  %31 = sub nsw i64 %30, %27
  %32 = shl i64 %31, 32
  %33 = ashr exact i64 %32, 32
  %34 = call i32 @copyfilepos(ptr noundef %3, ptr noundef %6, i64 noundef %33, i64 noundef %27) #8
  %35 = call i64 @ftell(ptr noundef %3)
  %36 = call signext i16 @nextkeypacket(ptr noundef %3, ptr noundef nonnull %19) #8
  %37 = icmp slt i16 %36, 0
  br i1 %37, label %63, label %38

38:                                               ; preds = %7, %47
  %39 = phi i64 [ %56, %47 ], [ %35, %7 ]
  %40 = phi i8 [ %50, %47 ], [ 0, %7 ]
  %41 = load i8, ptr %19, align 1, !tbaa !9
  %42 = call i32 @is_key_ctb(i8 noundef zeroext %41) #8
  %43 = icmp ne i32 %42, 0
  %44 = load i8, ptr %19, align 1
  %45 = icmp eq i8 %44, -76
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %38
  %48 = and i8 %44, 124
  %49 = icmp eq i8 %48, 8
  %50 = select i1 %49, i8 1, i8 %40
  %51 = call i64 @ftell(ptr noundef %3)
  %52 = sub nsw i64 %51, %39
  %53 = shl i64 %52, 32
  %54 = ashr exact i64 %53, 32
  %55 = call i32 @copyfilepos(ptr noundef %3, ptr noundef %6, i64 noundef %54, i64 noundef %39) #8
  %56 = call i64 @ftell(ptr noundef %3)
  %57 = call signext i16 @nextkeypacket(ptr noundef %3, ptr noundef nonnull %19) #8
  %58 = icmp slt i16 %57, 0
  br i1 %58, label %59, label %38, !llvm.loop !32

59:                                               ; preds = %47, %38
  %60 = phi i8 [ %40, %38 ], [ %50, %47 ]
  %61 = phi i64 [ %39, %38 ], [ %56, %47 ]
  %62 = icmp eq i8 %60, 0
  br label %63

63:                                               ; preds = %59, %7
  %64 = phi i1 [ true, %7 ], [ %62, %59 ]
  %65 = phi i64 [ %35, %7 ], [ %61, %59 ]
  %66 = call i32 @fseek(ptr noundef %3, i64 noundef %65, i32 noundef 0)
  %67 = call i32 @fseek(ptr noundef %0, i64 noundef %2, i32 noundef 0)
  %68 = call signext i16 @nextkeypacket(ptr noundef %0, ptr noundef nonnull %19) #8
  %69 = call i64 @ftell(ptr noundef %0)
  %70 = sub nsw i64 %69, %2
  br label %71

71:                                               ; preds = %71, %63
  %72 = call i64 @ftell(ptr noundef %0)
  %73 = call signext i16 @nextkeypacket(ptr noundef %0, ptr noundef nonnull %19) #8
  %74 = icmp slt i16 %73, 0
  %75 = load i8, ptr %19, align 1
  %76 = icmp eq i8 %75, -76
  %77 = select i1 %74, i1 true, i1 %76
  %78 = and i8 %75, 124
  %79 = icmp eq i8 %78, 8
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %81, label %71, !llvm.loop !33

81:                                               ; preds = %71
  %82 = select i1 %64, i1 %79, i1 false
  br i1 %82, label %83, label %112

83:                                               ; preds = %81
  %84 = trunc i64 %70 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #8
  %85 = call i64 @ftell(ptr noundef %0)
  %86 = call i32 @check_key_sig(ptr noundef %0, i64 noundef %2, i32 noundef %84, ptr noundef nonnull %20, ptr noundef %0, i64 noundef %72, ptr noundef %4, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #8
  %87 = icmp eq i32 %86, 0
  %88 = load i8, ptr %22, align 1
  %89 = icmp eq i8 %88, 32
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %107

91:                                               ; preds = %83
  %92 = sub nsw i64 %85, %72
  call void @PascalToC(ptr noundef nonnull %20) #8
  %93 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %94 = call ptr @LANG(ptr noundef nonnull @.str.22) #8
  %95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef %94, ptr noundef nonnull %20)
  %96 = shl i64 %92, 32
  %97 = ashr exact i64 %96, 32
  %98 = call i32 @copyfilepos(ptr noundef %0, ptr noundef %6, i64 noundef %97, i64 noundef %72) #8
  %99 = load i8, ptr @batchmode, align 1, !tbaa !9
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %91
  %102 = load i64, ptr %5, align 8, !tbaa !13
  %103 = call i32 @show_key(ptr noundef %3, i64 noundef %102, i32 noundef 16) #8
  br label %104

104:                                              ; preds = %101, %91
  %105 = load i32, ptr @newrvks, align 4, !tbaa !10
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr @newrvks, align 4, !tbaa !10
  br label %111

107:                                              ; preds = %83
  %108 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %109 = call ptr @LANG(ptr noundef nonnull @.str.23) #8
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef %109, ptr noundef %1)
  br label %111

111:                                              ; preds = %107, %104
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #8
  br label %112

112:                                              ; preds = %81, %111
  %113 = call i32 @fseek(ptr noundef %0, i64 noundef %72, i32 noundef 0)
  br label %114

114:                                              ; preds = %184, %112
  %115 = phi i32 [ 0, %112 ], [ %169, %184 ]
  br label %116

116:                                              ; preds = %114, %127
  %117 = call i64 @ftell(ptr noundef %0)
  %118 = call signext i16 @readkeypacket(ptr noundef %0, ptr noundef null, ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull %20, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %119 = icmp eq i16 %118, -3
  br i1 %119, label %455, label %120

120:                                              ; preds = %116
  %121 = call i64 @ftell(ptr noundef %0)
  %122 = icmp eq i16 %118, -1
  br i1 %122, label %185, label %123

123:                                              ; preds = %120
  %124 = load i8, ptr %19, align 1, !tbaa !9
  %125 = call i32 @is_key_ctb(i8 noundef zeroext %124) #8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %185

127:                                              ; preds = %123
  %128 = icmp slt i16 %118, 0
  br i1 %128, label %116, label %129, !llvm.loop !34

129:                                              ; preds = %127
  %130 = sub nsw i64 %121, %117
  %131 = load i8, ptr %19, align 1, !tbaa !9
  %132 = icmp eq i8 %131, -76
  br i1 %132, label %133, label %168

133:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #8
  call void @PascalToC(ptr noundef nonnull %20) #8
  %134 = call i32 @getpubuserid(ptr noundef %4, i64 noundef %27, ptr noundef nonnull %20, ptr noundef nonnull %23, ptr noundef nonnull %24, i8 noundef zeroext 1) #8
  %135 = icmp slt i32 %134, 0
  %136 = lshr i32 %134, 31
  br i1 %135, label %137, label %166

137:                                              ; preds = %133
  %138 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %139 = call i32 @putc(i32 noundef 10, ptr noundef %138)
  %140 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %141 = call ptr @LANG(ptr noundef nonnull @.str.24) #8
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef %141, ptr noundef nonnull %20)
  %143 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %144 = call ptr @LANG(ptr noundef nonnull @.str.25) #8
  %145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef %144)
  %146 = load i64, ptr %5, align 8, !tbaa !13
  %147 = call i32 @show_key(ptr noundef %3, i64 noundef %146, i32 noundef 0) #8
  %148 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %149 = call ptr @LANG(ptr noundef nonnull @.str.26) #8
  %150 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef %149)
  %151 = load i8, ptr @batchmode, align 1, !tbaa !9
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %137
  %154 = call zeroext i8 @getyesno(i8 noundef signext 110) #8
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %153, %137
  %157 = load i32, ptr @newids, align 4, !tbaa !10
  %158 = add nsw i32 %157, 1
  store i32 %158, ptr @newids, align 4, !tbaa !10
  %159 = load i8, ptr @batchmode, align 1, !tbaa !9
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %163 = call i32 @fputc(i32 10, ptr %162)
  %164 = load i64, ptr %5, align 8, !tbaa !13
  %165 = call i32 @show_key(ptr noundef %3, i64 noundef %164, i32 noundef 16) #8
  br label %166

166:                                              ; preds = %153, %161, %156, %133
  %167 = phi i32 [ %136, %161 ], [ %136, %156 ], [ %136, %133 ], [ 0, %153 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #8
  br label %168

168:                                              ; preds = %166, %129
  %169 = phi i32 [ %167, %166 ], [ %115, %129 ]
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %184, label %171

171:                                              ; preds = %168
  %172 = load i8, ptr %19, align 1, !tbaa !9
  %173 = icmp eq i8 %172, -76
  %174 = and i8 %172, 124
  %175 = icmp eq i8 %174, 8
  %176 = or i1 %173, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %171
  %178 = shl i64 %130, 32
  %179 = ashr exact i64 %178, 32
  %180 = call i32 @copyfilepos(ptr noundef %0, ptr noundef %6, i64 noundef %179, i64 noundef %117) #8
  %181 = load i8, ptr @publickey, align 1, !tbaa !9
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %177
  call void @write_trust(ptr noundef %6, i8 noundef zeroext 0) #8
  br label %184

184:                                              ; preds = %183, %171, %177, %168
  br label %114, !llvm.loop !34

185:                                              ; preds = %120, %123
  %186 = call i32 @fseek(ptr noundef %3, i64 noundef %65, i32 noundef 0)
  %187 = call signext i16 @readkeypacket(ptr noundef %3, ptr noundef null, ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull %20, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %188 = call i32 @fseek(ptr noundef %3, i64 noundef %65, i32 noundef 0)
  br label %189

189:                                              ; preds = %452, %185
  %190 = phi i32 [ %115, %185 ], [ %445, %452 ]
  %191 = phi i32 [ undef, %185 ], [ %446, %452 ]
  %192 = call i64 @ftell(ptr noundef %3)
  %193 = call signext i16 @readkeypacket(ptr noundef %3, ptr noundef null, ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull %20, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %194 = call i64 @ftell(ptr noundef %3)
  %195 = sub nsw i64 %194, %192
  switch i16 %193, label %196 [
    i16 -3, label %455
    i16 -1, label %453
  ]

196:                                              ; preds = %189
  %197 = load i8, ptr %19, align 1, !tbaa !9
  %198 = call i32 @is_key_ctb(i8 noundef zeroext %197) #8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %453

200:                                              ; preds = %196
  %201 = load i8, ptr %19, align 1, !tbaa !9
  %202 = icmp eq i8 %201, -76
  br i1 %202, label %203, label %443

203:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #8
  call void @PascalToC(ptr noundef nonnull %20) #8
  %204 = call i32 @getpubuserid(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %20, ptr noundef nonnull %25, ptr noundef nonnull %26, i8 noundef zeroext 1) #8
  %205 = icmp sgt i32 %204, -1
  br i1 %205, label %206, label %438

206:                                              ; preds = %203
  %207 = load i64, ptr %25, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %13) #8
  %208 = call i32 @fseek(ptr noundef %3, i64 noundef %192, i32 noundef 0)
  %209 = call signext i16 @readkeypacket(ptr noundef %3, ptr noundef null, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %13, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #8
  call void @PascalToC(ptr noundef nonnull %13) #8
  %210 = call i64 @ftell(ptr noundef %3)
  %211 = sub nsw i64 %210, %192
  %212 = shl i64 %211, 32
  %213 = ashr exact i64 %212, 32
  %214 = call i32 @copyfilepos(ptr noundef %3, ptr noundef %6, i64 noundef %213, i64 noundef %192) #8
  %215 = call i64 @ftell(ptr noundef %3)
  %216 = call signext i16 @nextkeypacket(ptr noundef %3, ptr noundef nonnull %8) #8
  %217 = icmp slt i16 %216, 0
  br i1 %217, label %238, label %218

218:                                              ; preds = %206, %229
  %219 = phi i64 [ %235, %229 ], [ %215, %206 ]
  %220 = load i8, ptr %8, align 1, !tbaa !9
  %221 = call i32 @is_key_ctb(i8 noundef zeroext %220) #8
  %222 = icmp ne i32 %221, 0
  %223 = load i8, ptr %8, align 1
  %224 = icmp eq i8 %223, -76
  %225 = select i1 %222, i1 true, i1 %224
  %226 = and i8 %223, 124
  %227 = icmp eq i8 %226, 8
  %228 = select i1 %225, i1 true, i1 %227
  br i1 %228, label %238, label %229

229:                                              ; preds = %218
  %230 = call i64 @ftell(ptr noundef %3)
  %231 = sub nsw i64 %230, %219
  %232 = shl i64 %231, 32
  %233 = ashr exact i64 %232, 32
  %234 = call i32 @copyfilepos(ptr noundef %3, ptr noundef %6, i64 noundef %233, i64 noundef %219) #8
  %235 = call i64 @ftell(ptr noundef %3)
  %236 = call signext i16 @nextkeypacket(ptr noundef %3, ptr noundef nonnull %8) #8
  %237 = icmp slt i16 %236, 0
  br i1 %237, label %238, label %218, !llvm.loop !35

238:                                              ; preds = %229, %218, %206
  %239 = phi i64 [ %215, %206 ], [ %219, %218 ], [ %235, %229 ]
  %240 = call i32 @fseek(ptr noundef %3, i64 noundef %239, i32 noundef 0)
  %241 = call i32 @fseek(ptr noundef %0, i64 noundef %207, i32 noundef 0)
  %242 = call signext i16 @nextkeypacket(ptr noundef %0, ptr noundef nonnull %8) #8
  br label %243

243:                                              ; preds = %247, %238
  %244 = call i64 @ftell(ptr noundef %0)
  %245 = call signext i16 @nextkeypacket(ptr noundef %0, ptr noundef nonnull %8) #8
  %246 = icmp slt i16 %245, 0
  br i1 %246, label %257, label %247

247:                                              ; preds = %243
  %248 = load i8, ptr %8, align 1, !tbaa !9
  %249 = call i32 @is_key_ctb(i8 noundef zeroext %248) #8
  %250 = icmp ne i32 %249, 0
  %251 = load i8, ptr %8, align 1
  %252 = icmp eq i8 %251, -76
  %253 = select i1 %250, i1 true, i1 %252
  %254 = and i8 %251, 124
  %255 = icmp eq i8 %254, 8
  %256 = select i1 %253, i1 true, i1 %255
  br i1 %256, label %257, label %243, !llvm.loop !36

257:                                              ; preds = %247, %243
  %258 = call i32 @fseek(ptr noundef %0, i64 noundef %244, i32 noundef 0)
  br label %259

259:                                              ; preds = %385, %257
  %260 = phi i32 [ 0, %257 ], [ %372, %385 ]
  br label %261

261:                                              ; preds = %275, %259
  %262 = call i64 @ftell(ptr noundef %0)
  %263 = call signext i16 @readkeypacket(ptr noundef %0, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %12, ptr noundef null) #8
  %264 = icmp eq i16 %263, -3
  br i1 %264, label %434, label %265

265:                                              ; preds = %261
  %266 = call i64 @ftell(ptr noundef %0)
  %267 = icmp eq i16 %263, -1
  br i1 %267, label %386, label %268

268:                                              ; preds = %265
  %269 = load i8, ptr %8, align 1, !tbaa !9
  %270 = call i32 @is_key_ctb(i8 noundef zeroext %269) #8
  %271 = icmp ne i32 %270, 0
  %272 = load i8, ptr %8, align 1
  %273 = icmp eq i8 %272, -76
  %274 = select i1 %271, i1 true, i1 %273
  br i1 %274, label %386, label %275

275:                                              ; preds = %268
  %276 = icmp slt i16 %263, 0
  br i1 %276, label %261, label %277, !llvm.loop !37

277:                                              ; preds = %275
  %278 = sub nsw i64 %266, %262
  %279 = and i8 %272, 124
  %280 = icmp eq i8 %279, 8
  br i1 %280, label %281, label %371

281:                                              ; preds = %277
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  %282 = call i32 @getpubusersig(ptr noundef %4, i64 noundef %192, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %14, ptr noundef nonnull %15) #8
  %283 = icmp slt i32 %282, 0
  %284 = lshr i32 %282, 31
  br i1 %283, label %348, label %285

285:                                              ; preds = %281
  %286 = call i64 @ftell(ptr noundef %0)
  %287 = add nsw i64 %262, 6
  %288 = call i32 @fseek(ptr noundef %0, i64 noundef %287, i32 noundef 0)
  %289 = call i64 @fread(ptr noundef nonnull %10, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %290 = call i32 @fseek(ptr noundef %0, i64 noundef %286, i32 noundef 0)
  call void @hiloswap(ptr noundef nonnull %10, i16 noundef signext 4) #8
  %291 = load i8, ptr @verbose, align 1, !tbaa !9
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %298, label %293

293:                                              ; preds = %285
  %294 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %295 = load i64, ptr %9, align 8, !tbaa !13
  %296 = load i64, ptr %10, align 8, !tbaa !13
  %297 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %294, ptr noundef nonnull @.str.28, i64 noundef %295, i64 noundef %296)
  br label %298

298:                                              ; preds = %293, %285
  %299 = load i64, ptr %10, align 8, !tbaa !13
  %300 = load i64, ptr %9, align 8, !tbaa !13
  %301 = icmp ugt i64 %299, %300
  br i1 %301, label %302, label %369

302:                                              ; preds = %298
  %303 = call ptr @user_from_keyID(ptr noundef nonnull %12) #8
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %310

305:                                              ; preds = %302
  %306 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %307 = call ptr @LANG(ptr noundef nonnull @.str.29) #8
  %308 = call ptr @keyIDstring(ptr noundef nonnull %12) #8
  %309 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %306, ptr noundef %307, ptr noundef %308, ptr noundef nonnull %13)
  br label %369

310:                                              ; preds = %302
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #8
  %311 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %312 = call ptr @LANG(ptr noundef nonnull @.str.30) #8
  %313 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef %312, ptr noundef nonnull %303)
  %314 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %315 = call ptr @LANG(ptr noundef nonnull @.str.31) #8
  %316 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %314, ptr noundef %315, ptr noundef nonnull %13)
  %317 = call i64 @ftell(ptr noundef %0)
  %318 = call i64 @ftell(ptr noundef %3)
  %319 = call i32 @getpublickey(i32 noundef 1, ptr noundef %4, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef null, ptr noundef null, ptr noundef nonnull %13, ptr noundef null, ptr noundef null) #8
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %310
  %322 = load i64, ptr %16, align 8, !tbaa !13
  %323 = load i32, ptr %17, align 4, !tbaa !10
  %324 = call i32 @check_key_sig(ptr noundef %3, i64 noundef %322, i32 noundef %323, ptr noundef nonnull %13, ptr noundef %0, i64 noundef %262, ptr noundef %4, ptr noundef null, ptr noundef nonnull %11, ptr noundef nonnull %18) #8
  br label %325

325:                                              ; preds = %321, %310
  %326 = phi i32 [ %319, %310 ], [ %324, %321 ]
  call void @PascalToC(ptr noundef nonnull %13) #8
  call void @PascalToC(ptr noundef nonnull %303) #8
  %327 = icmp eq i32 %326, 0
  %328 = load ptr, ptr @pgpout, align 8, !tbaa !5
  br i1 %327, label %329, label %341

329:                                              ; preds = %325
  %330 = call ptr @LANG(ptr noundef nonnull @.str.32) #8
  %331 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %328, ptr noundef %330, ptr noundef nonnull %303)
  %332 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %333 = call ptr @LANG(ptr noundef nonnull @.str.31) #8
  %334 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %332, ptr noundef %333, ptr noundef nonnull %13)
  %335 = load i64, ptr %14, align 8, !tbaa !13
  %336 = call ptr @xmalloc(i32 noundef 16) #8
  %337 = getelementptr inbounds %struct.sig_list, ptr %336, i64 0, i32 1
  store i64 %335, ptr %337, align 8, !tbaa !38
  %338 = load ptr, ptr @siglist, align 8, !tbaa !5
  store ptr %338, ptr %336, align 8, !tbaa !40
  store ptr %336, ptr @siglist, align 8, !tbaa !5
  %339 = load i32, ptr @newsigs, align 4, !tbaa !10
  %340 = add nsw i32 %339, 1
  store i32 %340, ptr @newsigs, align 4, !tbaa !10
  br label %344

341:                                              ; preds = %325
  %342 = call ptr @LANG(ptr noundef nonnull @.str.33) #8
  %343 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %328, ptr noundef %342)
  br label %344

344:                                              ; preds = %341, %329
  %345 = phi i32 [ %284, %341 ], [ 1, %329 ]
  %346 = call i32 @fseek(ptr noundef %3, i64 noundef %318, i32 noundef 0)
  %347 = call i32 @fseek(ptr noundef %0, i64 noundef %317, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  br label %369

348:                                              ; preds = %281
  %349 = call ptr @user_from_keyID(ptr noundef nonnull %12) #8
  %350 = icmp eq ptr %349, null
  %351 = load ptr, ptr @pgpout, align 8, !tbaa !5
  br i1 %350, label %352, label %356

352:                                              ; preds = %348
  %353 = call ptr @LANG(ptr noundef nonnull @.str.34) #8
  %354 = call ptr @keyIDstring(ptr noundef nonnull %12) #8
  %355 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %351, ptr noundef %353, ptr noundef %354, ptr noundef nonnull %13)
  br label %362

356:                                              ; preds = %348
  %357 = call ptr @LANG(ptr noundef nonnull @.str.35) #8
  %358 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %351, ptr noundef %357, ptr noundef nonnull %349)
  %359 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %360 = call ptr @LANG(ptr noundef nonnull @.str.31) #8
  %361 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %359, ptr noundef %360, ptr noundef nonnull %13)
  br label %362

362:                                              ; preds = %356, %352
  %363 = load i32, ptr @newsigs, align 4, !tbaa !10
  %364 = add nsw i32 %363, 1
  store i32 %364, ptr @newsigs, align 4, !tbaa !10
  %365 = load i8, ptr @batchmode, align 1, !tbaa !9
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %369, label %367

367:                                              ; preds = %362
  %368 = call ptr @keyIDstring(ptr noundef nonnull @mykeyID) #8
  call void @show_update(ptr noundef %368) #8
  br label %369

369:                                              ; preds = %367, %362, %344, %305, %298
  %370 = phi i32 [ %284, %298 ], [ %284, %305 ], [ %345, %344 ], [ %284, %367 ], [ %284, %362 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  br label %371

371:                                              ; preds = %369, %277
  %372 = phi i32 [ %370, %369 ], [ %260, %277 ]
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %385, label %374

374:                                              ; preds = %371
  %375 = load i8, ptr %8, align 1, !tbaa !9
  %376 = and i8 %375, 124
  %377 = icmp eq i8 %376, 8
  br i1 %377, label %378, label %385

378:                                              ; preds = %374
  %379 = shl i64 %278, 32
  %380 = ashr exact i64 %379, 32
  %381 = call i32 @copyfilepos(ptr noundef %0, ptr noundef %6, i64 noundef %380, i64 noundef %262) #8
  %382 = load i8, ptr @publickey, align 1, !tbaa !9
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %385, label %384

384:                                              ; preds = %378
  call void @write_trust(ptr noundef %6, i8 noundef zeroext 0) #8
  br label %385

385:                                              ; preds = %384, %378, %374, %371
  br label %259, !llvm.loop !37

386:                                              ; preds = %268, %265
  %387 = call i32 @fseek(ptr noundef %3, i64 noundef %239, i32 noundef 0)
  br label %388

388:                                              ; preds = %424, %386
  %389 = call i64 @ftell(ptr noundef %3)
  br label %390

390:                                              ; preds = %394, %388
  %391 = phi ptr [ @siglist, %388 ], [ %392, %394 ]
  %392 = load ptr, ptr %391, align 8, !tbaa !5
  %393 = icmp eq ptr %392, null
  br i1 %393, label %408, label %394

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.sig_list, ptr %392, i64 0, i32 1
  %396 = load i64, ptr %395, align 8, !tbaa !38
  %397 = icmp eq i64 %396, %389
  br i1 %397, label %398, label %390, !llvm.loop !41

398:                                              ; preds = %394
  %399 = call signext i16 @nextkeypacket(ptr noundef %3, ptr noundef nonnull %8) #8
  %400 = call i64 @ftell(ptr noundef %3)
  %401 = call signext i16 @nextkeypacket(ptr noundef %3, ptr noundef nonnull %8) #8
  %402 = icmp slt i16 %401, 0
  %403 = load i8, ptr %8, align 1
  %404 = icmp ne i8 %403, -80
  %405 = select i1 %402, i1 true, i1 %404
  br i1 %405, label %406, label %424

406:                                              ; preds = %398
  %407 = call i32 @fseek(ptr noundef %3, i64 noundef %400, i32 noundef 0)
  br label %424

408:                                              ; preds = %390
  %409 = call signext i16 @nextkeypacket(ptr noundef %3, ptr noundef nonnull %8) #8
  %410 = call i64 @ftell(ptr noundef %3)
  %411 = sub nsw i64 %410, %389
  %412 = icmp slt i16 %409, 0
  br i1 %412, label %425, label %413

413:                                              ; preds = %408
  %414 = load i8, ptr %8, align 1, !tbaa !9
  %415 = call i32 @is_key_ctb(i8 noundef zeroext %414) #8
  %416 = icmp ne i32 %415, 0
  %417 = load i8, ptr %8, align 1
  %418 = icmp eq i8 %417, -76
  %419 = select i1 %416, i1 true, i1 %418
  br i1 %419, label %425, label %420

420:                                              ; preds = %413
  %421 = shl i64 %411, 32
  %422 = ashr exact i64 %421, 32
  %423 = call i32 @copyfilepos(ptr noundef %3, ptr noundef %6, i64 noundef %422, i64 noundef %389) #8
  br label %424

424:                                              ; preds = %420, %406, %398
  br label %388, !llvm.loop !42

425:                                              ; preds = %413, %408
  %426 = load ptr, ptr @siglist, align 8, !tbaa !5
  %427 = icmp eq ptr %426, null
  br i1 %427, label %432, label %428

428:                                              ; preds = %425, %428
  %429 = phi ptr [ %430, %428 ], [ %426, %425 ]
  %430 = load ptr, ptr %429, align 8, !tbaa !40
  call void @free(ptr noundef %429) #8
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %428, !llvm.loop !43

432:                                              ; preds = %428, %425
  store ptr null, ptr @siglist, align 8, !tbaa !5
  %433 = call i32 @fseek(ptr noundef %3, i64 noundef %389, i32 noundef 0)
  br label %434

434:                                              ; preds = %261, %432
  %435 = phi i64 [ %389, %432 ], [ %192, %261 ]
  %436 = phi i32 [ 0, %432 ], [ -3, %261 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  br i1 %264, label %438, label %437

437:                                              ; preds = %434
  br label %438

438:                                              ; preds = %203, %434, %437
  %439 = phi i64 [ %435, %434 ], [ %435, %437 ], [ %192, %203 ]
  %440 = phi i32 [ %190, %434 ], [ 0, %437 ], [ 1, %203 ]
  %441 = phi i32 [ %436, %434 ], [ %191, %437 ], [ %191, %203 ]
  %442 = phi i1 [ false, %434 ], [ true, %437 ], [ true, %203 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #8
  br i1 %442, label %443, label %455

443:                                              ; preds = %438, %200
  %444 = phi i64 [ %439, %438 ], [ %192, %200 ]
  %445 = phi i32 [ %440, %438 ], [ %190, %200 ]
  %446 = phi i32 [ %441, %438 ], [ %191, %200 ]
  %447 = icmp eq i32 %445, 0
  br i1 %447, label %452, label %448

448:                                              ; preds = %443
  %449 = shl i64 %195, 32
  %450 = ashr exact i64 %449, 32
  %451 = call i32 @copyfilepos(ptr noundef %3, ptr noundef %6, i64 noundef %450, i64 noundef %444) #8
  br label %452

452:                                              ; preds = %448, %443
  br label %189, !llvm.loop !44

453:                                              ; preds = %189, %196
  %454 = call i32 @fseek(ptr noundef %3, i64 noundef %192, i32 noundef 0)
  store i64 %192, ptr %5, align 8, !tbaa !13
  br label %455

455:                                              ; preds = %116, %189, %438, %453
  %456 = phi i32 [ 0, %453 ], [ %441, %438 ], [ -3, %189 ], [ -3, %116 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #8
  ret i32 %456
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @copyfile(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @write_error(ptr noundef) local_unnamed_addr #3

declare void @rmtemp(ptr noundef) local_unnamed_addr #3

declare void @endkrent() local_unnamed_addr #3

declare i32 @dokeycheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @maint_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ask_to_sign(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [130 x i16], align 16
  %7 = alloca [130 x i16], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %10 = call i32 @getpublickey(i32 noundef 1, ptr noundef %1, ptr noundef nonnull %9, ptr noundef null, ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %82, label %12

12:                                               ; preds = %2
  %13 = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %82, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %9, align 8, !tbaa !13
  %17 = call i32 @fseek(ptr noundef nonnull %13, i64 noundef %16, i32 noundef 0)
  %18 = call i32 @is_compromised(ptr noundef nonnull %13) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call i32 @fclose(ptr noundef nonnull %13)
  br label %82

22:                                               ; preds = %15
  %23 = call signext i16 @nextkeypacket(ptr noundef nonnull %13, ptr noundef nonnull %4) #8
  %24 = icmp slt i16 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @fclose(ptr noundef nonnull %13)
  br label %82

27:                                               ; preds = %22
  %28 = load i8, ptr %4, align 1, !tbaa !9
  %29 = icmp eq i8 %28, -103
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 @fclose(ptr noundef nonnull %13)
  br label %82

32:                                               ; preds = %27, %35
  %33 = call signext i16 @nextkeypacket(ptr noundef nonnull %13, ptr noundef nonnull %4) #8
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i8, ptr %4, align 1, !tbaa !9
  %37 = call i32 @is_key_ctb(i8 noundef zeroext %36) #8
  %38 = icmp ne i32 %37, 0
  %39 = load i8, ptr %4, align 1
  %40 = icmp eq i8 %39, -76
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %42, label %32, !llvm.loop !45

42:                                               ; preds = %32, %35
  %43 = load i8, ptr %4, align 1, !tbaa !9
  %44 = icmp eq i8 %43, -76
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call i32 @fclose(ptr noundef nonnull %13)
  br label %82

47:                                               ; preds = %42
  %48 = call i32 @read_trust(ptr noundef nonnull %13, ptr noundef nonnull %5) #8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @fclose(ptr noundef nonnull %13)
  br label %82

52:                                               ; preds = %47
  %53 = load i8, ptr %5, align 1, !tbaa !9
  %54 = and i8 %53, 3
  %55 = icmp eq i8 %54, 3
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @fclose(ptr noundef nonnull %13)
  br label %82

58:                                               ; preds = %52
  %59 = load i1, ptr @ask_first, align 1
  br i1 %59, label %60, label %68

60:                                               ; preds = %58
  %61 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %62 = call ptr @LANG(ptr noundef nonnull @.str.36) #8
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef %62)
  %64 = call zeroext i8 @getyesno(i8 noundef signext 110) #8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 @fclose(ptr noundef nonnull %13)
  br label %82

68:                                               ; preds = %60, %58
  store i1 false, ptr @ask_first, align 1
  %69 = load i64, ptr %9, align 8, !tbaa !13
  %70 = call i32 @show_key(ptr noundef nonnull %13, i64 noundef %69, i32 noundef 7) #8
  %71 = call i32 @fclose(ptr noundef nonnull %13)
  call void @PascalToC(ptr noundef nonnull %8) #8
  %72 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %73 = call ptr @LANG(ptr noundef nonnull @.str.37) #8
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef %73)
  %75 = call zeroext i8 @getyesno(i8 noundef signext 110) #8
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %68
  %78 = call i32 @signkey(ptr noundef nonnull %8, ptr noundef nonnull @my_name, ptr noundef %1) #8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @maint_update(ptr noundef %1, ptr noundef null) #8
  br label %82

82:                                               ; preds = %68, %80, %77, %12, %2, %66, %56, %50, %45, %30, %25, %20
  %83 = phi i32 [ 0, %20 ], [ -1, %25 ], [ 0, %30 ], [ -1, %45 ], [ %48, %50 ], [ 0, %56 ], [ 1, %66 ], [ -1, %2 ], [ -1, %12 ], [ 0, %77 ], [ 0, %80 ], [ 0, %68 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %83
}

declare void @free_newkeys(ptr noundef) local_unnamed_addr #3

declare i32 @savetempbak(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @addto_keyring(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !tbaa !13
  %4 = tail call i32 @_addto_keyring(ptr noundef %0, ptr noundef %1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8, !tbaa !13
  %8 = tail call zeroext i8 @is_armor_file(ptr noundef %0, i64 noundef %7) #8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %6, %16
  %11 = phi i32 [ %19, %16 ], [ 0, %6 ]
  %12 = call ptr @tempfile(i32 noundef 5) #8
  %13 = call i32 @de_armor_file(ptr noundef %0, ptr noundef %12, ptr noundef nonnull %3) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  call void @rmtemp(ptr noundef %12) #8
  br label %29

16:                                               ; preds = %10
  %17 = call i32 @_addto_keyring(ptr noundef %12, ptr noundef %1)
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 1, i32 %11
  call void @rmtemp(ptr noundef %12) #8
  %20 = load i64, ptr %3, align 8, !tbaa !13
  %21 = call zeroext i8 @is_armor_file(ptr noundef %0, i64 noundef %20) #8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %10, !llvm.loop !46

23:                                               ; preds = %16
  %24 = icmp eq i32 %19, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %6, %23
  %26 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %27 = call ptr @LANG(ptr noundef nonnull @.str.19) #8
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef %27, ptr noundef %0)
  br label %29

29:                                               ; preds = %23, %2, %25, %15
  %30 = phi i32 [ -1, %15 ], [ -1, %25 ], [ 0, %2 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %30
}

declare zeroext i8 @is_armor_file(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @de_armor_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @default_extension(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @readkpacket(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare signext i16 @nextkeypacket(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @check_key_sig(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @getpubuserid(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

declare i32 @getpubusersig(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @hiloswap(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare ptr @user_from_keyID(ptr noundef) local_unnamed_addr #3

declare i32 @getpublickey(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @show_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

declare i32 @is_compromised(ptr noundef) local_unnamed_addr #3

declare i32 @read_trust(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @signkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind }

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
!12 = !{i32 -1, i32 1}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{i32 -32768, i32 32768}
!18 = !{!19, !6, i64 8}
!19 = !{!"newkey", !7, i64 0, !6, i64 8}
!20 = !{!21, !6, i64 0}
!21 = !{!"bufpool", !6, i64 0, !7, i64 8}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = !{i32 -2147483648, i32 2}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = !{!28, !14, i64 16}
!28 = !{!"hashent", !6, i64 0, !7, i64 8, !14, i64 16}
!29 = !{!28, !6, i64 0}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = !{!39, !14, i64 8}
!39 = !{!"sig_list", !6, i64 0, !14, i64 8}
!40 = !{!39, !6, i64 0}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
