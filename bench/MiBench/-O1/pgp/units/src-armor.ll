; ModuleID = 'src/armor.c'
source_filename = "src/armor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@crctable = internal unnamed_addr global [256 x i64] zeroinitializer, align 16
@pem_lines = dso_local local_unnamed_addr global i32 720, align 4
@.str = private unnamed_addr constant [8 x i8] c"MESSAGE\00", align 1
@verbose = external local_unnamed_addr global i8, align 1
@pgpout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"armor_file: infile = %s, outfile = %s, filename = %s, clearname = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"value for \22armorlines\22 is too low, using %d\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@ASC_EXTENSION = external global [0 x i8], align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"-----BEGIN PGP SIGNED MESSAGE-----\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"SIGNATURE\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"PUBLIC KEY BLOCK\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"SECRET KEY BLOCK\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"-----BEGIN PGP %s-----\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"-----BEGIN PGP MESSAGE, PART %02d/%02d-----\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1
@rel_version = external global [0 x i8], align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Charset: %s\0A\00", align 1
@charset = external global [0 x i8], align 1
@globalCommentString = external global [128 x i8], align 16
@.str.17 = private unnamed_addr constant [13 x i8] c"Comment: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"-----END PGP MESSAGE, PART %02d/%02d-----\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"-----END PGP %s-----\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"-----END PGP MESSAGE, PART %02d/%02d-----\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"\0AClear signature file: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"\0ATransport armor file: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"\0ATransport armor files: \00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"de_armor_file: infile = %s, outfile = %s, curline = %ld\0A\00", align 1
@infile_line = internal unnamed_addr global i64 0, align 8
@numFilename.fnamenum = internal global [256 x i8] zeroinitializer, align 16
@bintoasc = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@.str.27 = private unnamed_addr constant [27 x i8] c"ERROR: Can't find file %s\0A\00", align 1
@armorfilename = internal global [256 x i8] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [37 x i8] c"ERROR: No ASCII armor `BEGIN' line!\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"-----BEGIN PGP \00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"-----BEGIN PGP SIGNED MESSAGE-----\00", align 1
@charset_header = external global [0 x i8], align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"ERROR: ASCII armor decode input ended unexpectedly!\0A\00", align 1
@.str.32 = private unnamed_addr constant [70 x i8] c"ERROR: Header line added to ASCII armor: \22%s\22\0AASCII armor corrupted.\0A\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"\0A\07Unable to write ciphertext output file '%s'.\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"ERROR: Hit EOF in header.\0A\00", align 1
@strip_spaces = external local_unnamed_addr global i8, align 1
@.str.35 = private unnamed_addr constant [65 x i8] c"Invalid ASCII armor header line: \22%.40s\22\0AASCII armor corrupted.\0A\00", align 1
@.str.36 = private unnamed_addr constant [65 x i8] c"Warning: Unrecognized ASCII armor header label \22%.*s:\22 ignored.\0A\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"Charset\00", align 1
@use_charset_header = external local_unnamed_addr global i8, align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"Comment\00", align 1
@asctobin = internal unnamed_addr constant [128 x i8] c"\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80>\80\80\80?456789:;<=\80\80\80\80\80\80\80\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\80\80\80\80\80\80\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\80\80\80\80\80", align 16
@.str.40 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"=3D=3D\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"=3D\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"-----END PGP MESSAGE,\00", align 1
@.str.45 = private unnamed_addr constant [48 x i8] c"ERROR: Bad ASCII armor checksum in section %d.\0A\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"Can't find section %d.\0A\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"-----BEGIN PGP MESSAGE\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"-----BEGIN PGP MESSAGE, PART %d/%d\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"Badly formed section delimiter, part %d.\0A\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"Sections out of order, expected part %d\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c", got part %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"ERROR: Hit EOF in header of section %d.\0A\00", align 1
@.str.53 = private unnamed_addr constant [52 x i8] c"ERROR: Badly formed ASCII armor checksum, line %d.\0A\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"WARNING: No ASCII armor `END' line.\0A\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"-----END PGP \00", align 1
@.str.56 = private unnamed_addr constant [44 x i8] c"ERROR: Bad ASCII armor character, line %d.\0A\00", align 1
@.str.57 = private unnamed_addr constant [51 x i8] c"ERROR: Bad ASCII armor line length %d on line %d.\0A\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"ERROR: Bad ASCII armor checksum\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c" in section %d\00", align 1
@.str.60 = private unnamed_addr constant [44 x i8] c"Warning: Transport armor lacks a checksum.\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @crcbytes(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %11, %4 ]
  %6 = phi i32 [ %1, %3 ], [ %18, %4 ]
  %7 = phi i64 [ %2, %3 ], [ %17, %4 ]
  %8 = shl i64 %7, 8
  %9 = lshr i64 %7, 16
  %10 = and i64 %9, 255
  %11 = getelementptr inbounds i8, ptr %5, i64 1
  %12 = load i8, ptr %5, align 1, !tbaa !5
  %13 = zext i8 %12 to i64
  %14 = xor i64 %10, %13
  %15 = getelementptr inbounds [256 x i64], ptr @crctable, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !8
  %17 = xor i64 %16, %8
  %18 = add i32 %6, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %4, !llvm.loop !10

20:                                               ; preds = %4
  %21 = and i64 %17, 16777215
  ret i64 %21
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @init_crc() local_unnamed_addr #1 {
  store i64 0, ptr @crctable, align 16, !tbaa !8
  store i64 8801531, ptr getelementptr inbounds ([256 x i64], ptr @crctable, i64 0, i64 1), align 8, !tbaa !8
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi ptr [ getelementptr inbounds ([256 x i64], ptr @crctable, i64 0, i64 2), %0 ], [ %17, %16 ]
  %3 = phi ptr [ @crctable, %0 ], [ %5, %16 ]
  %4 = phi i32 [ 1, %0 ], [ %18, %16 ]
  %5 = getelementptr inbounds i64, ptr %3, i64 1
  %6 = load i64, ptr %5, align 8, !tbaa !8
  %7 = and i64 %6, 8388608
  %8 = icmp eq i64 %7, 0
  %9 = shl i64 %6, 1
  br i1 %8, label %13, label %10

10:                                               ; preds = %1
  %11 = xor i64 %9, 8801531
  %12 = getelementptr inbounds i64, ptr %2, i64 1
  store i64 %11, ptr %2, align 8, !tbaa !8
  store i64 %9, ptr %12, align 8, !tbaa !8
  br label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds i64, ptr %2, i64 1
  store i64 %9, ptr %2, align 8, !tbaa !8
  %15 = xor i64 %9, 8801531
  store i64 %15, ptr %14, align 8, !tbaa !8
  br label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds i64, ptr %2, i64 2
  %18 = add nuw nsw i32 %4, 1
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %1, !llvm.loop !12

20:                                               ; preds = %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @armor_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = alloca [80 x i8], align 16
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #14
  %8 = load i8, ptr @verbose, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %12 = icmp eq ptr %3, null
  %13 = select i1 %12, ptr @.str.2, ptr %3
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %13)
  br label %15

15:                                               ; preds = %10, %5
  %16 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.3)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %548, label %18

18:                                               ; preds = %15
  %19 = icmp eq ptr %1, null
  %20 = load i32, ptr @pem_lines, align 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %49, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @fseek(ptr noundef nonnull %16, i64 noundef 0, i32 noundef 2)
  %25 = tail call i64 @ftell(ptr noundef nonnull %16)
  tail call void @rewind(ptr noundef nonnull %16)
  %26 = load i32, ptr @pem_lines, align 4, !tbaa !15
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, 48
  %29 = add i64 %25, -1
  %30 = add i64 %29, %28
  %31 = sdiv i64 %30, %28
  %32 = trunc i64 %31 to i32
  %33 = icmp sgt i32 %32, 99
  br i1 %33, label %34, label %49

34:                                               ; preds = %23
  %35 = add nsw i64 %25, 47
  %36 = sdiv i64 %35, 48
  %37 = add nsw i64 %36, 98
  %38 = sdiv i64 %37, 99
  %39 = trunc i64 %38 to i32
  store i32 %39, ptr @pem_lines, align 4, !tbaa !15
  %40 = shl i64 %38, 32
  %41 = ashr exact i64 %40, 32
  %42 = mul nsw i64 %41, 48
  %43 = add i64 %25, -1
  %44 = add i64 %43, %42
  %45 = sdiv i64 %44, %42
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.4, i32 noundef %39)
  br label %49

49:                                               ; preds = %18, %23, %34
  %50 = phi i32 [ %46, %34 ], [ %32, %23 ], [ 1, %18 ]
  %51 = icmp eq ptr %3, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call ptr @tempfile(i32 noundef 1) #14
  br label %54

54:                                               ; preds = %49, %52
  %55 = phi ptr [ %53, %52 ], [ %1, %49 ]
  br i1 %19, label %56, label %58

56:                                               ; preds = %54
  %57 = load ptr, ptr @stdout, align 8, !tbaa !13
  br label %90

58:                                               ; preds = %54
  %59 = icmp sgt i32 %50, 1
  br i1 %59, label %60, label %88

60:                                               ; preds = %58, %84
  tail call void @force_extension(ptr noundef nonnull %1, ptr noundef nonnull @ASC_EXTENSION) #14
  %61 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @numFilename.fnamenum, ptr noundef nonnull dereferenceable(1) %1) #14
  %62 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @numFilename.fnamenum) #15
  %63 = shl i64 %62, 32
  %64 = ashr exact i64 %63, 32
  br label %65

65:                                               ; preds = %65, %60
  %66 = phi i64 [ %72, %65 ], [ 1, %60 ]
  %67 = phi i32 [ %71, %65 ], [ %50, %60 ]
  %68 = phi i8 [ 48, %65 ], [ 49, %60 ]
  %69 = sub nsw i64 %64, %66
  %70 = getelementptr inbounds [256 x i8], ptr @numFilename.fnamenum, i64 0, i64 %69
  store i8 %68, ptr %70, align 1, !tbaa !5
  %71 = sdiv i32 %67, 10
  %72 = add nuw nsw i64 %66, 1
  %73 = icmp sgt i32 %67, 9
  %74 = icmp ult i64 %66, 3
  %75 = and i1 %74, %73
  br i1 %75, label %65, label %76, !llvm.loop !17

76:                                               ; preds = %65
  %77 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @numFilename.fnamenum) #14
  %78 = tail call zeroext i8 @file_exists(ptr noundef nonnull %1) #14
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = tail call ptr @ck_dup_output(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #14
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  tail call void @user_error() #14
  br label %84

84:                                               ; preds = %83, %80
  %85 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %81) #14
  br i1 %79, label %86, label %60

86:                                               ; preds = %76, %84
  %87 = tail call noalias ptr @fopen(ptr noundef %55, ptr noundef nonnull @.str.5)
  br label %90

88:                                               ; preds = %58
  %89 = tail call noalias ptr @fopen(ptr noundef %55, ptr noundef nonnull @.str.5)
  br label %90

90:                                               ; preds = %86, %88, %56
  %91 = phi ptr [ %57, %56 ], [ %87, %86 ], [ %89, %88 ]
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = tail call i32 @fclose(ptr noundef nonnull %16)
  br label %548

95:                                               ; preds = %90
  br i1 %51, label %173, label %96

96:                                               ; preds = %95
  %97 = tail call noalias ptr @fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str.3)
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = tail call i32 @fclose(ptr noundef nonnull %16)
  %101 = load ptr, ptr @stdout, align 8, !tbaa !13
  %102 = icmp eq ptr %91, %101
  br i1 %102, label %548, label %103

103:                                              ; preds = %99
  %104 = tail call i32 @fclose(ptr noundef nonnull %91)
  br label %548

105:                                              ; preds = %96
  %106 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 36, i64 1, ptr nonnull %91)
  br label %107

107:                                              ; preds = %168, %105
  %108 = call i32 @getc(ptr noundef nonnull %97)
  %109 = icmp eq i32 %108, 10
  br i1 %109, label %110, label %112

110:                                              ; preds = %132, %107
  %111 = phi ptr [ %6, %107 ], [ %135, %132 ]
  store i8 0, ptr %111, align 1, !tbaa !5
  br label %138

112:                                              ; preds = %107, %132
  %113 = phi i32 [ %136, %132 ], [ %108, %107 ]
  %114 = phi ptr [ %135, %132 ], [ %6, %107 ]
  %115 = phi i32 [ %134, %132 ], [ 0, %107 ]
  %116 = phi i32 [ %133, %132 ], [ 80, %107 ]
  %117 = icmp eq i32 %115, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = call i32 @ungetc(i32 noundef %113, ptr noundef nonnull %97)
  store i8 0, ptr %114, align 1, !tbaa !5
  br label %138

120:                                              ; preds = %112
  switch i32 %113, label %124 [
    i32 -1, label %121
    i32 13, label %132
  ]

121:                                              ; preds = %120
  store i8 0, ptr %114, align 1, !tbaa !5
  %122 = icmp eq ptr %114, %6
  %123 = sext i1 %122 to i32
  br label %138

124:                                              ; preds = %120
  %125 = icmp sgt i32 %116, 1
  br i1 %125, label %126, label %130

126:                                              ; preds = %124
  %127 = add nsw i32 %116, -1
  %128 = trunc i32 %113 to i8
  %129 = getelementptr inbounds i8, ptr %114, i64 1
  store i8 %128, ptr %114, align 1, !tbaa !5
  br label %132

130:                                              ; preds = %124
  %131 = call i32 @ungetc(i32 noundef %113, ptr noundef nonnull %97)
  store i8 0, ptr %114, align 1, !tbaa !5
  br label %138

132:                                              ; preds = %126, %120
  %133 = phi i32 [ %127, %126 ], [ %116, %120 ]
  %134 = phi i32 [ 0, %126 ], [ 1, %120 ]
  %135 = phi ptr [ %129, %126 ], [ %114, %120 ]
  %136 = call i32 @getc(ptr noundef nonnull %97)
  %137 = icmp eq i32 %136, 10
  br i1 %137, label %110, label %112, !llvm.loop !18

138:                                              ; preds = %110, %118, %121, %130
  %139 = phi i32 [ 1, %110 ], [ 1, %118 ], [ %123, %121 ], [ 0, %130 ]
  %140 = icmp sgt i32 %139, -1
  br i1 %140, label %141, label %170

141:                                              ; preds = %138
  %142 = load i8, ptr %6, align 16, !tbaa !5
  %143 = icmp eq i8 %142, 45
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %6, ptr noundef nonnull dereferenceable(5) @.str.7, i64 5)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144, %141
  %148 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr nonnull %91)
  br label %149

149:                                              ; preds = %147, %144
  %150 = call i32 @fputs(ptr noundef nonnull %6, ptr noundef nonnull %91)
  %151 = icmp eq i32 %139, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %149
  %153 = call i32 @getc(ptr noundef nonnull %97)
  %154 = icmp eq i32 %153, 10
  br i1 %154, label %168, label %155

155:                                              ; preds = %152, %164
  %156 = phi i32 [ %166, %164 ], [ %153, %152 ]
  %157 = phi i32 [ %165, %164 ], [ 0, %152 ]
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %155
  %160 = call i32 @ungetc(i32 noundef %156, ptr noundef nonnull %97)
  br label %168

161:                                              ; preds = %155
  switch i32 %156, label %162 [
    i32 -1, label %170
    i32 13, label %164
  ]

162:                                              ; preds = %161
  %163 = call i32 @putc(i32 noundef %156, ptr noundef nonnull %91)
  br label %164

164:                                              ; preds = %162, %161
  %165 = phi i32 [ 0, %162 ], [ 1, %161 ]
  %166 = call i32 @getc(ptr noundef nonnull %97)
  %167 = icmp eq i32 %166, 10
  br i1 %167, label %168, label %155, !llvm.loop !19

168:                                              ; preds = %164, %159, %152, %149
  %169 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %91)
  br label %107, !llvm.loop !20

170:                                              ; preds = %138, %161
  %171 = call i32 @fclose(ptr noundef nonnull %97)
  %172 = call i32 @putc(i32 noundef 10, ptr noundef nonnull %91)
  br label %173

173:                                              ; preds = %170, %95
  %174 = phi ptr [ @.str.9, %170 ], [ @.str, %95 ]
  %175 = icmp eq i32 %50, 1
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !tbaa !15
  %177 = call i32 @getc(ptr noundef nonnull %16)
  %178 = and i32 %177, 124
  switch i32 %178, label %187 [
    i32 24, label %179
    i32 20, label %181
  ]

179:                                              ; preds = %176
  %180 = icmp eq i8 %4, 0
  br i1 %180, label %187, label %183

181:                                              ; preds = %176
  %182 = icmp eq i8 %4, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %181, %179
  %184 = phi ptr [ @.str.10, %179 ], [ @.str.12, %181 ]
  call void @kv_title(ptr noundef nonnull %91) #14
  call void @rewind(ptr noundef nonnull %16)
  %185 = call i32 @kvformat_keypacket(ptr noundef nonnull %16, ptr noundef nonnull %91, i8 noundef zeroext 1, ptr noundef nonnull @.str.2, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %7) #14
  %186 = call i32 @fputc(i32 10, ptr nonnull %91)
  br label %187

187:                                              ; preds = %183, %176, %181, %179
  %188 = phi ptr [ @.str.10, %179 ], [ @.str.12, %181 ], [ %174, %176 ], [ %184, %183 ]
  %189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %91, ptr noundef nonnull @.str.13, ptr noundef nonnull %188)
  call void @rewind(ptr noundef nonnull %16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br label %192

190:                                              ; preds = %173
  %191 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %91, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef %50)
  br label %192

192:                                              ; preds = %190, %187
  %193 = phi ptr [ %188, %187 ], [ %174, %190 ]
  %194 = call ptr @LANG(ptr noundef nonnull @rel_version) #14
  %195 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %91, ptr noundef nonnull @.str.15, ptr noundef %194)
  br i1 %51, label %198, label %196

196:                                              ; preds = %192
  %197 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %91, ptr noundef nonnull @.str.16, ptr noundef nonnull @charset)
  br label %198

198:                                              ; preds = %196, %192
  %199 = load i8, ptr @globalCommentString, align 16, !tbaa !5
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %198
  %202 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %91, ptr noundef nonnull @.str.17, ptr noundef nonnull @globalCommentString)
  br label %203

203:                                              ; preds = %201, %198
  %204 = call i32 @fputc(i32 10, ptr nonnull %91)
  store i64 0, ptr @crctable, align 16, !tbaa !8
  store i64 8801531, ptr getelementptr inbounds ([256 x i64], ptr @crctable, i64 0, i64 1), align 8, !tbaa !8
  br label %205

205:                                              ; preds = %220, %203
  %206 = phi ptr [ getelementptr inbounds ([256 x i64], ptr @crctable, i64 0, i64 2), %203 ], [ %221, %220 ]
  %207 = phi ptr [ @crctable, %203 ], [ %209, %220 ]
  %208 = phi i32 [ 1, %203 ], [ %222, %220 ]
  %209 = getelementptr inbounds i64, ptr %207, i64 1
  %210 = load i64, ptr %209, align 8, !tbaa !8
  %211 = and i64 %210, 8388608
  %212 = icmp eq i64 %211, 0
  %213 = shl i64 %210, 1
  br i1 %212, label %217, label %214

214:                                              ; preds = %205
  %215 = xor i64 %213, 8801531
  %216 = getelementptr inbounds i64, ptr %206, i64 1
  store i64 %215, ptr %206, align 8, !tbaa !8
  store i64 %213, ptr %216, align 8, !tbaa !8
  br label %220

217:                                              ; preds = %205
  %218 = getelementptr inbounds i64, ptr %206, i64 1
  store i64 %213, ptr %206, align 8, !tbaa !8
  %219 = xor i64 %213, 8801531
  store i64 %219, ptr %218, align 8, !tbaa !8
  br label %220

220:                                              ; preds = %217, %214
  %221 = getelementptr inbounds i64, ptr %206, i64 2
  %222 = add nuw nsw i32 %208, 1
  %223 = icmp eq i32 %222, 128
  br i1 %223, label %224, label %205, !llvm.loop !12

224:                                              ; preds = %220
  %225 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 48, ptr noundef nonnull %16)
  %226 = trunc i64 %225 to i32
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %449

228:                                              ; preds = %224, %441
  %229 = phi i32 [ %447, %441 ], [ %226, %224 ]
  %230 = phi i64 [ %446, %441 ], [ %225, %224 ]
  %231 = phi ptr [ %445, %441 ], [ %91, %224 ]
  %232 = phi i32 [ %444, %441 ], [ 0, %224 ]
  %233 = phi i64 [ %443, %441 ], [ 11994318, %224 ]
  %234 = phi i32 [ %442, %441 ], [ 1, %224 ]
  %235 = and i64 %230, 4294967295
  %236 = icmp ult i64 %235, 48
  br i1 %236, label %237, label %240

237:                                              ; preds = %228
  %238 = getelementptr inbounds i8, ptr %6, i64 %235
  %239 = sub nuw nsw i64 48, %235
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %238, i8 0, i64 %239, i1 false)
  br label %240

240:                                              ; preds = %237, %228
  br label %241

241:                                              ; preds = %240, %241
  %242 = phi ptr [ %248, %241 ], [ %6, %240 ]
  %243 = phi i32 [ %255, %241 ], [ %229, %240 ]
  %244 = phi i64 [ %254, %241 ], [ %233, %240 ]
  %245 = shl i64 %244, 8
  %246 = lshr i64 %244, 16
  %247 = and i64 %246, 255
  %248 = getelementptr inbounds i8, ptr %242, i64 1
  %249 = load i8, ptr %242, align 1, !tbaa !5
  %250 = zext i8 %249 to i64
  %251 = xor i64 %247, %250
  %252 = getelementptr inbounds [256 x i64], ptr @crctable, i64 0, i64 %251
  %253 = load i64, ptr %252, align 8, !tbaa !8
  %254 = xor i64 %253, %245
  %255 = add i32 %243, -1
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %241, !llvm.loop !10

257:                                              ; preds = %241
  %258 = and i64 %254, 16777215
  %259 = add nsw i32 %229, -3
  %260 = icmp ugt i32 %229, 3
  br i1 %260, label %261, label %309

261:                                              ; preds = %257, %261
  %262 = phi i64 [ %304, %261 ], [ 0, %257 ]
  %263 = getelementptr inbounds i8, ptr %6, i64 %262
  %264 = load i8, ptr %263, align 1, !tbaa !5
  %265 = sext i8 %264 to i32
  %266 = lshr i32 %265, 2
  %267 = shl nsw i32 %265, 4
  %268 = and i32 %267, 48
  %269 = getelementptr inbounds i8, ptr %263, i64 1
  %270 = load i8, ptr %269, align 1, !tbaa !5
  %271 = sext i8 %270 to i32
  %272 = lshr i32 %271, 4
  %273 = and i32 %272, 15
  %274 = or disjoint i32 %273, %268
  %275 = getelementptr inbounds i8, ptr %263, i64 2
  %276 = load i8, ptr %275, align 1, !tbaa !5
  %277 = zext i8 %276 to i32
  %278 = and i32 %277, 63
  %279 = and i32 %266, 63
  %280 = zext nneg i32 %279 to i64
  %281 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !5
  %283 = zext i8 %282 to i32
  %284 = call i32 @putc(i32 noundef %283, ptr noundef %231)
  %285 = zext nneg i32 %274 to i64
  %286 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !5
  %288 = zext i8 %287 to i32
  %289 = call i32 @putc(i32 noundef %288, ptr noundef %231)
  %290 = shl nsw i32 %271, 2
  %291 = and i32 %290, 60
  %292 = lshr i32 %277, 6
  %293 = or disjoint i32 %292, %291
  %294 = zext nneg i32 %293 to i64
  %295 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !5
  %297 = zext i8 %296 to i32
  %298 = call i32 @putc(i32 noundef %297, ptr noundef %231)
  %299 = zext nneg i32 %278 to i64
  %300 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !5
  %302 = zext i8 %301 to i32
  %303 = call i32 @putc(i32 noundef %302, ptr noundef %231)
  %304 = add nuw i64 %262, 3
  %305 = trunc i64 %304 to i32
  %306 = icmp sgt i32 %259, %305
  br i1 %306, label %261, label %307, !llvm.loop !21

307:                                              ; preds = %261
  %308 = trunc i64 %304 to i32
  br label %309

309:                                              ; preds = %307, %257
  %310 = phi i32 [ 0, %257 ], [ %308, %307 ]
  %311 = zext nneg i32 %310 to i64
  %312 = getelementptr inbounds i8, ptr %6, i64 %311
  %313 = sub nsw i32 %229, %310
  %314 = load i8, ptr %312, align 1, !tbaa !5
  %315 = sext i8 %314 to i32
  %316 = lshr i32 %315, 2
  %317 = shl nsw i32 %315, 4
  %318 = and i32 %317, 48
  %319 = getelementptr inbounds i8, ptr %312, i64 1
  %320 = load i8, ptr %319, align 1, !tbaa !5
  %321 = sext i8 %320 to i32
  %322 = lshr i32 %321, 4
  %323 = and i32 %322, 15
  %324 = or disjoint i32 %323, %318
  %325 = getelementptr inbounds i8, ptr %312, i64 2
  %326 = load i8, ptr %325, align 1, !tbaa !5
  %327 = zext i8 %326 to i32
  %328 = and i32 %327, 63
  %329 = and i32 %316, 63
  %330 = zext nneg i32 %329 to i64
  %331 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !5
  %333 = zext i8 %332 to i32
  %334 = call i32 @putc(i32 noundef %333, ptr noundef %231)
  %335 = zext nneg i32 %324 to i64
  %336 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %335
  %337 = load i8, ptr %336, align 1, !tbaa !5
  %338 = zext i8 %337 to i32
  %339 = call i32 @putc(i32 noundef %338, ptr noundef %231)
  %340 = icmp eq i32 %313, 1
  br i1 %340, label %341, label %343

341:                                              ; preds = %309
  %342 = call i32 @putc(i32 noundef 61, ptr noundef %231)
  br label %359

343:                                              ; preds = %309
  %344 = shl nsw i32 %321, 2
  %345 = and i32 %344, 60
  %346 = lshr i32 %327, 6
  %347 = or disjoint i32 %346, %345
  %348 = zext nneg i32 %347 to i64
  %349 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %348
  %350 = load i8, ptr %349, align 1, !tbaa !5
  %351 = zext i8 %350 to i32
  %352 = call i32 @putc(i32 noundef %351, ptr noundef %231)
  %353 = icmp eq i32 %313, 2
  br i1 %353, label %359, label %354

354:                                              ; preds = %343
  %355 = zext nneg i32 %328 to i64
  %356 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %355
  %357 = load i8, ptr %356, align 1, !tbaa !5
  %358 = zext i8 %357 to i32
  br label %359

359:                                              ; preds = %343, %341, %354
  %360 = phi i32 [ 61, %341 ], [ %358, %354 ], [ 61, %343 ]
  %361 = call i32 @putc(i32 noundef %360, ptr noundef %231)
  %362 = call i32 @putc(i32 noundef 10, ptr noundef %231)
  %363 = add nsw i32 %232, 1
  %364 = load i32, ptr @pem_lines, align 4, !tbaa !15
  %365 = icmp eq i32 %363, %364
  %366 = icmp slt i32 %234, %50
  %367 = select i1 %365, i1 %366, i1 false
  br i1 %367, label %368, label %441

368:                                              ; preds = %359
  %369 = trunc i64 %258 to i32
  %370 = call i32 @putc(i32 noundef 61, ptr noundef %231)
  %371 = shl nuw i32 %369, 8
  %372 = ashr i32 %371, 24
  %373 = lshr i32 %372, 2
  %374 = shl nsw i32 %372, 4
  %375 = and i32 %374, 48
  %376 = shl i32 %369, 16
  %377 = ashr i32 %376, 24
  %378 = lshr i32 %377, 4
  %379 = and i32 %378, 15
  %380 = or disjoint i32 %379, %375
  %381 = and i64 %253, 63
  %382 = and i32 %373, 63
  %383 = zext nneg i32 %382 to i64
  %384 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %383
  %385 = load i8, ptr %384, align 1, !tbaa !5
  %386 = zext i8 %385 to i32
  %387 = call i32 @putc(i32 noundef %386, ptr noundef %231)
  %388 = zext nneg i32 %380 to i64
  %389 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !5
  %391 = zext i8 %390 to i32
  %392 = call i32 @putc(i32 noundef %391, ptr noundef %231)
  %393 = shl nsw i32 %377, 2
  %394 = and i32 %393, 60
  %395 = lshr i32 %369, 6
  %396 = and i32 %395, 3
  %397 = or disjoint i32 %394, %396
  %398 = zext nneg i32 %397 to i64
  %399 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %398
  %400 = load i8, ptr %399, align 1, !tbaa !5
  %401 = zext i8 %400 to i32
  %402 = call i32 @putc(i32 noundef %401, ptr noundef %231)
  %403 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %381
  %404 = load i8, ptr %403, align 1, !tbaa !5
  %405 = zext i8 %404 to i32
  %406 = call i32 @putc(i32 noundef %405, ptr noundef %231)
  %407 = call i32 @putc(i32 noundef 10, ptr noundef %231)
  %408 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %231, ptr noundef nonnull @.str.18, i32 noundef %234, i32 noundef %50)
  %409 = call i32 @write_error(ptr noundef %231) #14
  %410 = icmp eq i32 %409, 0
  %411 = call i32 @fclose(ptr noundef %231)
  br i1 %410, label %412, label %548

412:                                              ; preds = %368
  %413 = add nsw i32 %234, 1
  %414 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @numFilename.fnamenum, ptr noundef nonnull dereferenceable(1) %1) #14
  %415 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @numFilename.fnamenum) #15
  %416 = shl i64 %415, 32
  %417 = ashr exact i64 %416, 32
  br label %418

418:                                              ; preds = %418, %412
  %419 = phi i64 [ %429, %418 ], [ 1, %412 ]
  %420 = phi i32 [ %428, %418 ], [ %50, %412 ]
  %421 = phi i32 [ %427, %418 ], [ %413, %412 ]
  %422 = srem i32 %421, 10
  %423 = trunc i32 %422 to i8
  %424 = add nsw i8 %423, 48
  %425 = sub nsw i64 %417, %419
  %426 = getelementptr inbounds [256 x i8], ptr @numFilename.fnamenum, i64 0, i64 %425
  store i8 %424, ptr %426, align 1, !tbaa !5
  %427 = sdiv i32 %421, 10
  %428 = sdiv i32 %420, 10
  %429 = add nuw nsw i64 %419, 1
  %430 = icmp sgt i32 %420, 9
  %431 = icmp ult i64 %419, 3
  %432 = and i1 %431, %430
  br i1 %432, label %418, label %433, !llvm.loop !17

433:                                              ; preds = %418
  %434 = call noalias ptr @fopen(ptr noundef nonnull @numFilename.fnamenum, ptr noundef nonnull @.str.5)
  %435 = icmp eq ptr %434, null
  br i1 %435, label %436, label %438

436:                                              ; preds = %433
  %437 = call i32 @fclose(ptr noundef nonnull %16)
  br label %548

438:                                              ; preds = %433
  %439 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %434, ptr noundef nonnull @.str.14, i32 noundef %413, i32 noundef %50)
  %440 = call i32 @fputc(i32 10, ptr nonnull %434)
  br label %441

441:                                              ; preds = %438, %359
  %442 = phi i32 [ %413, %438 ], [ %234, %359 ]
  %443 = phi i64 [ 11994318, %438 ], [ %258, %359 ]
  %444 = phi i32 [ 0, %438 ], [ %363, %359 ]
  %445 = phi ptr [ %434, %438 ], [ %231, %359 ]
  %446 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 48, ptr noundef nonnull %16)
  %447 = trunc i64 %446 to i32
  %448 = icmp sgt i32 %447, 0
  br i1 %448, label %228, label %449, !llvm.loop !22

449:                                              ; preds = %441, %224
  %450 = phi i64 [ 11994318, %224 ], [ %443, %441 ]
  %451 = phi ptr [ %91, %224 ], [ %445, %441 ]
  %452 = trunc i64 %450 to i32
  %453 = call i32 @putc(i32 noundef 61, ptr noundef %451)
  %454 = shl nuw i32 %452, 8
  %455 = ashr i32 %454, 24
  %456 = lshr i32 %455, 2
  %457 = shl nsw i32 %455, 4
  %458 = and i32 %457, 48
  %459 = shl i32 %452, 16
  %460 = ashr i32 %459, 24
  %461 = lshr i32 %460, 4
  %462 = and i32 %461, 15
  %463 = or disjoint i32 %462, %458
  %464 = and i64 %450, 63
  %465 = and i32 %456, 63
  %466 = zext nneg i32 %465 to i64
  %467 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %466
  %468 = load i8, ptr %467, align 1, !tbaa !5
  %469 = zext i8 %468 to i32
  %470 = call i32 @putc(i32 noundef %469, ptr noundef %451)
  %471 = zext nneg i32 %463 to i64
  %472 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %471
  %473 = load i8, ptr %472, align 1, !tbaa !5
  %474 = zext i8 %473 to i32
  %475 = call i32 @putc(i32 noundef %474, ptr noundef %451)
  %476 = shl nsw i32 %460, 2
  %477 = and i32 %476, 60
  %478 = lshr i32 %452, 6
  %479 = and i32 %478, 3
  %480 = or disjoint i32 %477, %479
  %481 = zext nneg i32 %480 to i64
  %482 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %481
  %483 = load i8, ptr %482, align 1, !tbaa !5
  %484 = zext i8 %483 to i32
  %485 = call i32 @putc(i32 noundef %484, ptr noundef %451)
  %486 = getelementptr inbounds [65 x i8], ptr @bintoasc, i64 0, i64 %464
  %487 = load i8, ptr %486, align 1, !tbaa !5
  %488 = zext i8 %487 to i32
  %489 = call i32 @putc(i32 noundef %488, ptr noundef %451)
  %490 = call i32 @putc(i32 noundef 10, ptr noundef %451)
  br i1 %175, label %491, label %493

491:                                              ; preds = %449
  %492 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %451, ptr noundef nonnull @.str.19, ptr noundef %193)
  br label %495

493:                                              ; preds = %449
  %494 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %451, ptr noundef nonnull @.str.20, i32 noundef %50, i32 noundef %50)
  br label %495

495:                                              ; preds = %493, %491
  %496 = call i32 @fclose(ptr noundef nonnull %16)
  %497 = call i32 @write_error(ptr noundef %451) #14
  %498 = load ptr, ptr @stdout, align 8, !tbaa !13
  %499 = icmp eq ptr %451, %498
  br i1 %499, label %548, label %500

500:                                              ; preds = %495
  %501 = call i32 @fclose(ptr noundef %451)
  br i1 %51, label %505, label %502

502:                                              ; preds = %500
  %503 = call i32 @remove(ptr noundef %1) #14
  %504 = call ptr @savetemp(ptr noundef %55, ptr noundef %1) #14
  br label %505

505:                                              ; preds = %502, %500
  %506 = icmp eq i32 %497, 0
  br i1 %506, label %507, label %548

507:                                              ; preds = %505
  %508 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %51, label %512, label %509

509:                                              ; preds = %507
  %510 = call ptr @LANG(ptr noundef nonnull @.str.21) #14
  %511 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %508, ptr noundef %510, ptr noundef %1)
  br label %548

512:                                              ; preds = %507
  br i1 %175, label %513, label %516

513:                                              ; preds = %512
  %514 = call ptr @LANG(ptr noundef nonnull @.str.22) #14
  %515 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %508, ptr noundef %514, ptr noundef %1)
  br label %548

516:                                              ; preds = %512
  %517 = call ptr @LANG(ptr noundef nonnull @.str.23) #14
  %518 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %508, ptr noundef %517)
  %519 = icmp slt i32 %50, 1
  br i1 %519, label %548, label %520

520:                                              ; preds = %516, %542
  %521 = phi i32 [ %546, %542 ], [ 1, %516 ]
  %522 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %523 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @numFilename.fnamenum, ptr noundef nonnull dereferenceable(1) %1) #14
  %524 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @numFilename.fnamenum) #15
  %525 = shl i64 %524, 32
  %526 = ashr exact i64 %525, 32
  br label %527

527:                                              ; preds = %527, %520
  %528 = phi i64 [ %538, %527 ], [ 1, %520 ]
  %529 = phi i32 [ %537, %527 ], [ %50, %520 ]
  %530 = phi i32 [ %536, %527 ], [ %521, %520 ]
  %531 = srem i32 %530, 10
  %532 = trunc i32 %531 to i8
  %533 = add nsw i8 %532, 48
  %534 = sub nsw i64 %526, %528
  %535 = getelementptr inbounds [256 x i8], ptr @numFilename.fnamenum, i64 0, i64 %534
  store i8 %533, ptr %535, align 1, !tbaa !5
  %536 = sdiv i32 %530, 10
  %537 = sdiv i32 %529, 10
  %538 = add nuw nsw i64 %528, 1
  %539 = icmp sgt i32 %529, 9
  %540 = icmp ult i64 %528, 3
  %541 = and i1 %540, %539
  br i1 %541, label %527, label %542, !llvm.loop !17

542:                                              ; preds = %527
  %543 = icmp eq i32 %521, %50
  %544 = select i1 %543, ptr @.str.11, ptr @.str.25
  %545 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %522, ptr noundef nonnull @.str.24, ptr noundef nonnull @numFilename.fnamenum, ptr noundef nonnull %544)
  %546 = add nuw i32 %521, 1
  %547 = icmp eq i32 %521, %50
  br i1 %547, label %548, label %520, !llvm.loop !23

548:                                              ; preds = %368, %542, %516, %509, %513, %505, %495, %99, %103, %15, %436, %93
  %549 = phi i32 [ 1, %93 ], [ -1, %436 ], [ 1, %15 ], [ 1, %103 ], [ 1, %99 ], [ %497, %495 ], [ -1, %505 ], [ 0, %513 ], [ 0, %509 ], [ 0, %516 ], [ 0, %542 ], [ -1, %368 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #14
  ret i32 %549
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #4

declare ptr @tempfile(i32 noundef) local_unnamed_addr #5

declare void @force_extension(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

declare zeroext i8 @file_exists(ptr noundef) local_unnamed_addr #5

declare ptr @ck_dup_output(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

declare void @user_error() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #4

declare void @kv_title(ptr noundef) local_unnamed_addr #5

declare i32 @kvformat_keypacket(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare ptr @LANG(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare i32 @write_error(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #4

declare ptr @savetemp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @de_armor_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca [80 x i8], align 16
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i8], align 1
  %10 = alloca [80 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca [16 x i8], align 16
  %13 = alloca i64, align 8
  %14 = load i8, ptr @verbose, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %18 = load i64, ptr %2, align 8, !tbaa !8
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.26, ptr noundef %0, ptr noundef %1, i64 noundef %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = icmp eq ptr %2, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = load i64, ptr %2, align 8, !tbaa !8
  br label %24

24:                                               ; preds = %20, %22
  %25 = phi i64 [ %23, %22 ], [ 0, %20 ]
  store i64 %25, ptr @infile_line, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 0, ptr %11, align 4, !tbaa !15
  %26 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.3)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %30 = tail call ptr @LANG(ptr noundef nonnull @.str.27) #14
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef %30, ptr noundef %0)
  br label %519

32:                                               ; preds = %24
  %33 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @armorfilename, ptr noundef nonnull dereferenceable(1) %0) #14
  %34 = load i64, ptr @infile_line, align 8, !tbaa !8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %37, %32
  br label %47

37:                                               ; preds = %41
  %38 = add nuw nsw i64 %42, 1
  %39 = load i64, ptr @infile_line, align 8, !tbaa !8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %36, !llvm.loop !24

41:                                               ; preds = %32, %37
  %42 = phi i64 [ %38, %37 ], [ 0, %32 ]
  %43 = call fastcc ptr @get_armor_line(ptr noundef nonnull %10, ptr noundef nonnull %26)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %37

45:                                               ; preds = %41
  %46 = call i32 @fclose(ptr noundef nonnull %26)
  br label %519

47:                                               ; preds = %36, %57
  %48 = load i64, ptr @infile_line, align 8, !tbaa !8
  %49 = add nsw i64 %48, 1
  store i64 %49, ptr @infile_line, align 8, !tbaa !8
  %50 = call fastcc ptr @get_armor_line(ptr noundef nonnull %10, ptr noundef nonnull %26)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %54 = call ptr @LANG(ptr noundef nonnull @.str.28) #14
  %55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef %54)
  %56 = call i32 @fclose(ptr noundef nonnull %26)
  br label %519

57:                                               ; preds = %47
  %58 = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %10, ptr noundef nonnull dereferenceable(15) @.str.29, i64 15)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %47, !llvm.loop !25

60:                                               ; preds = %57
  %61 = call i32 @bcmp(ptr noundef nonnull dereferenceable(34) %10, ptr noundef nonnull dereferenceable(34) @.str.30, i64 34)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %179

63:                                               ; preds = %60
  store i8 0, ptr @charset_header, align 1, !tbaa !5
  %64 = call fastcc ptr @get_armor_line(ptr noundef nonnull %10, ptr noundef nonnull %26)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %68 = call ptr @LANG(ptr noundef nonnull @.str.31) #14
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef %68)
  %70 = call i32 @fclose(ptr noundef nonnull %26)
  br label %175

71:                                               ; preds = %63
  %72 = load i8, ptr %10, align 16, !tbaa !5
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %76 = call ptr @LANG(ptr noundef nonnull @.str.32) #14
  %77 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef %76, ptr noundef nonnull %10)
  %78 = call i32 @fclose(ptr noundef nonnull %26)
  br label %175

79:                                               ; preds = %71
  %80 = call ptr @tempfile(i32 noundef 5) #14
  %81 = call noalias ptr @fopen(ptr noundef %80, ptr noundef nonnull @.str.5)
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds [80 x i8], ptr %10, i64 0, i64 1
  br label %90

85:                                               ; preds = %79
  %86 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %87 = call ptr @LANG(ptr noundef nonnull @.str.33) #14
  %88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef %87, ptr noundef %80)
  %89 = call i32 @fclose(ptr noundef nonnull %26)
  br label %175

90:                                               ; preds = %166, %83
  %91 = phi i32 [ %167, %166 ], [ 0, %83 ]
  %92 = load i64, ptr @infile_line, align 8, !tbaa !8
  %93 = add nsw i64 %92, 1
  store i64 %93, ptr @infile_line, align 8, !tbaa !8
  %94 = call i32 @getc(ptr noundef %26)
  %95 = icmp eq i32 %94, 10
  br i1 %95, label %96, label %98

96:                                               ; preds = %118, %90
  %97 = phi ptr [ %10, %90 ], [ %121, %118 ]
  store i8 0, ptr %97, align 1, !tbaa !5
  br label %124

98:                                               ; preds = %90, %118
  %99 = phi i32 [ %122, %118 ], [ %94, %90 ]
  %100 = phi ptr [ %121, %118 ], [ %10, %90 ]
  %101 = phi i32 [ %120, %118 ], [ 0, %90 ]
  %102 = phi i32 [ %119, %118 ], [ 80, %90 ]
  %103 = icmp eq i32 %101, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %98
  %105 = call i32 @ungetc(i32 noundef %99, ptr noundef %26)
  store i8 0, ptr %100, align 1, !tbaa !5
  br label %124

106:                                              ; preds = %98
  switch i32 %99, label %110 [
    i32 -1, label %107
    i32 13, label %118
  ]

107:                                              ; preds = %106
  store i8 0, ptr %100, align 1, !tbaa !5
  %108 = icmp eq ptr %100, %10
  %109 = sext i1 %108 to i32
  br label %124

110:                                              ; preds = %106
  %111 = icmp sgt i32 %102, 1
  br i1 %111, label %112, label %116

112:                                              ; preds = %110
  %113 = add nsw i32 %102, -1
  %114 = trunc i32 %99 to i8
  %115 = getelementptr inbounds i8, ptr %100, i64 1
  store i8 %114, ptr %100, align 1, !tbaa !5
  br label %118

116:                                              ; preds = %110
  %117 = call i32 @ungetc(i32 noundef %99, ptr noundef %26)
  store i8 0, ptr %100, align 1, !tbaa !5
  br label %124

118:                                              ; preds = %112, %106
  %119 = phi i32 [ %113, %112 ], [ %102, %106 ]
  %120 = phi i32 [ 0, %112 ], [ 1, %106 ]
  %121 = phi ptr [ %115, %112 ], [ %100, %106 ]
  %122 = call i32 @getc(ptr noundef %26)
  %123 = icmp eq i32 %122, 10
  br i1 %123, label %96, label %98, !llvm.loop !18

124:                                              ; preds = %116, %107, %104, %96
  %125 = phi i32 [ 1, %96 ], [ 1, %104 ], [ %109, %107 ], [ 0, %116 ]
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %129 = call ptr @LANG(ptr noundef nonnull @.str.31) #14
  %130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef %129)
  %131 = call i32 @fclose(ptr noundef nonnull %26)
  %132 = call i32 @fclose(ptr noundef nonnull %81)
  call void @rmtemp(ptr noundef %80) #14
  br label %175

133:                                              ; preds = %124
  %134 = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %10, ptr noundef nonnull dereferenceable(15) @.str.29, i64 15)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %168, label %136

136:                                              ; preds = %133
  %137 = icmp eq i32 %91, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %136
  %139 = call i32 @putc(i32 noundef 10, ptr noundef nonnull %81)
  br label %140

140:                                              ; preds = %138, %136
  %141 = load i8, ptr %10, align 16, !tbaa !5
  %142 = icmp eq i8 %141, 45
  %143 = load i8, ptr %84, align 1
  %144 = icmp eq i8 %143, 32
  %145 = select i1 %142, i1 %144, i1 false
  %146 = select i1 %145, i64 2, i64 0
  %147 = getelementptr inbounds i8, ptr %10, i64 %146
  %148 = call i32 @fputs(ptr noundef nonnull %147, ptr noundef nonnull %81)
  %149 = icmp eq i32 %125, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %140
  %151 = call i32 @getc(ptr noundef %26)
  %152 = icmp eq i32 %151, 10
  br i1 %152, label %166, label %153

153:                                              ; preds = %150, %162
  %154 = phi i32 [ %164, %162 ], [ %151, %150 ]
  %155 = phi i32 [ %163, %162 ], [ 0, %150 ]
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = call i32 @ungetc(i32 noundef %154, ptr noundef %26)
  br label %166

159:                                              ; preds = %153
  switch i32 %154, label %160 [
    i32 -1, label %166
    i32 13, label %162
  ]

160:                                              ; preds = %159
  %161 = call i32 @putc(i32 noundef %154, ptr noundef nonnull %81)
  br label %162

162:                                              ; preds = %160, %159
  %163 = phi i32 [ 0, %160 ], [ 1, %159 ]
  %164 = call i32 @getc(ptr noundef %26)
  %165 = icmp eq i32 %164, 10
  br i1 %165, label %166, label %153, !llvm.loop !19

166:                                              ; preds = %162, %159, %157, %150, %140
  %167 = phi i32 [ 1, %140 ], [ 1, %157 ], [ 1, %150 ], [ 0, %159 ], [ 1, %162 ]
  br label %90, !llvm.loop !26

168:                                              ; preds = %133
  %169 = call i32 @fflush(ptr noundef nonnull %81)
  %170 = call i32 @ferror(ptr noundef nonnull %81) #14
  %171 = icmp eq i32 %170, 0
  %172 = call i32 @fclose(ptr noundef nonnull %81)
  br i1 %171, label %175, label %173

173:                                              ; preds = %168
  %174 = call i32 @fclose(ptr noundef nonnull %26)
  call void @rmtemp(ptr noundef %80) #14
  br label %175

175:                                              ; preds = %168, %173, %127, %85, %74, %66
  %176 = phi i1 [ false, %66 ], [ false, %74 ], [ false, %85 ], [ false, %127 ], [ false, %173 ], [ true, %168 ]
  %177 = phi ptr [ null, %66 ], [ null, %74 ], [ %80, %85 ], [ %80, %127 ], [ %80, %173 ], [ %80, %168 ]
  %178 = phi i32 [ 12, %66 ], [ -1, %74 ], [ -1, %85 ], [ 12, %127 ], [ -1, %173 ], [ undef, %168 ]
  br i1 %176, label %179, label %519

179:                                              ; preds = %175, %60
  %180 = phi ptr [ %177, %175 ], [ null, %60 ]
  %181 = call fastcc i32 @skipheaders(ptr noundef nonnull %26, ptr noundef nonnull %10, ptr noundef nonnull %11)
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = call i32 @fclose(ptr noundef nonnull %26)
  br label %519

185:                                              ; preds = %179
  %186 = call i32 @feof(ptr noundef nonnull %26) #14
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %185
  %189 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %190 = call ptr @LANG(ptr noundef nonnull @.str.34) #14
  %191 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef %190)
  %192 = call i32 @fclose(ptr noundef nonnull %26)
  br label %519

193:                                              ; preds = %185
  %194 = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.5)
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %198 = call ptr @LANG(ptr noundef nonnull @.str.33) #14
  %199 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef %198, ptr noundef %1)
  %200 = call i32 @fclose(ptr noundef nonnull %26)
  br label %519

201:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i64 0, ptr @crctable, align 16, !tbaa !8
  store i64 8801531, ptr getelementptr inbounds ([256 x i64], ptr @crctable, i64 0, i64 1), align 8, !tbaa !8
  br label %202

202:                                              ; preds = %217, %201
  %203 = phi ptr [ getelementptr inbounds ([256 x i64], ptr @crctable, i64 0, i64 2), %201 ], [ %218, %217 ]
  %204 = phi ptr [ @crctable, %201 ], [ %206, %217 ]
  %205 = phi i32 [ 1, %201 ], [ %219, %217 ]
  %206 = getelementptr inbounds i64, ptr %204, i64 1
  %207 = load i64, ptr %206, align 8, !tbaa !8
  %208 = and i64 %207, 8388608
  %209 = icmp eq i64 %208, 0
  %210 = shl i64 %207, 1
  br i1 %209, label %214, label %211

211:                                              ; preds = %202
  %212 = xor i64 %210, 8801531
  %213 = getelementptr inbounds i64, ptr %203, i64 1
  store i64 %212, ptr %203, align 8, !tbaa !8
  store i64 %210, ptr %213, align 8, !tbaa !8
  br label %217

214:                                              ; preds = %202
  %215 = getelementptr inbounds i64, ptr %203, i64 1
  store i64 %210, ptr %203, align 8, !tbaa !8
  %216 = xor i64 %210, 8801531
  store i64 %216, ptr %215, align 8, !tbaa !8
  br label %217

217:                                              ; preds = %214, %211
  %218 = getelementptr inbounds i64, ptr %203, i64 2
  %219 = add nuw nsw i32 %205, 1
  %220 = icmp eq i32 %219, 128
  br i1 %220, label %221, label %202, !llvm.loop !12

221:                                              ; preds = %217
  %222 = getelementptr inbounds [80 x i8], ptr %4, i64 0, i64 1
  %223 = getelementptr inbounds [80 x i8], ptr %4, i64 0, i64 2
  %224 = getelementptr inbounds i8, ptr %4, i64 3
  %225 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 1
  %226 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 2
  br label %227

227:                                              ; preds = %446, %221
  %228 = phi i32 [ %453, %446 ], [ 1, %221 ]
  %229 = phi i32 [ %447, %446 ], [ 1, %221 ]
  %230 = phi i32 [ %448, %446 ], [ 0, %221 ]
  %231 = phi i64 [ %449, %446 ], [ 11994318, %221 ]
  %232 = phi i64 [ %450, %446 ], [ -1, %221 ]
  %233 = phi i32 [ %451, %446 ], [ 0, %221 ]
  %234 = phi ptr [ %452, %446 ], [ %26, %221 ]
  %235 = call fastcc ptr @get_armor_line(ptr noundef nonnull %4, ptr noundef %234)
  %236 = icmp eq ptr %235, null
  br i1 %236, label %242, label %237

237:                                              ; preds = %227
  %238 = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %4, ptr noundef nonnull dereferenceable(21) @.str.44, i64 21)
  %239 = icmp eq i32 %238, 0
  %240 = load i64, ptr @infile_line, align 8, !tbaa !8
  %241 = add nsw i64 %240, 1
  store i64 %241, ptr @infile_line, align 8, !tbaa !8
  br label %242

242:                                              ; preds = %237, %227
  %243 = phi i1 [ %239, %237 ], [ true, %227 ]
  %244 = load i32, ptr %8, align 4, !tbaa !15
  %245 = icmp ne i32 %229, %244
  %246 = select i1 %245, i1 %243, i1 false
  br i1 %246, label %247, label %368

247:                                              ; preds = %242
  %248 = icmp eq i32 %230, 0
  %249 = icmp eq i64 %232, %231
  %250 = select i1 %248, i1 true, i1 %249
  br i1 %250, label %255, label %251

251:                                              ; preds = %247
  %252 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %253 = call ptr @LANG(ptr noundef nonnull @.str.45) #14
  %254 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %252, ptr noundef %253, i32 noundef %229)
  br label %255

255:                                              ; preds = %251, %247
  %256 = phi i32 [ -1, %251 ], [ %233, %247 ]
  store i32 0, ptr %7, align 4, !tbaa !15
  br label %257

257:                                              ; preds = %329, %255
  %258 = phi ptr [ %234, %255 ], [ %330, %329 ]
  %259 = call fastcc ptr @get_armor_line(ptr noundef nonnull %4, ptr noundef %258)
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %326

261:                                              ; preds = %257
  %262 = icmp eq ptr %258, %26
  br i1 %262, label %265, label %263

263:                                              ; preds = %261
  %264 = call i32 @fclose(ptr noundef %258)
  br label %265

265:                                              ; preds = %263, %261
  %266 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @armorfilename) #15
  %267 = getelementptr inbounds i8, ptr @armorfilename, i64 %266
  %268 = getelementptr inbounds i8, ptr %267, i64 -1
  %269 = icmp ult ptr %268, @armorfilename
  br i1 %269, label %303, label %270

270:                                              ; preds = %265
  %271 = tail call ptr @__ctype_b_loc() #16
  %272 = load ptr, ptr %271, align 8, !tbaa !13
  %273 = load i8, ptr %268, align 1, !tbaa !5
  %274 = sext i8 %273 to i64
  %275 = getelementptr inbounds i16, ptr %272, i64 %274
  %276 = load i16, ptr %275, align 2, !tbaa !27
  %277 = and i16 %276, 2048
  %278 = icmp eq i16 %277, 0
  br i1 %278, label %296, label %287

279:                                              ; preds = %293
  %280 = load ptr, ptr %271, align 8, !tbaa !13
  %281 = load i8, ptr %294, align 1, !tbaa !5
  %282 = sext i8 %281 to i64
  %283 = getelementptr inbounds i16, ptr %280, i64 %282
  %284 = load i16, ptr %283, align 2, !tbaa !27
  %285 = and i16 %284, 2048
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %296, label %287, !llvm.loop !29

287:                                              ; preds = %270, %279
  %288 = phi i8 [ %281, %279 ], [ %273, %270 ]
  %289 = phi ptr [ %294, %279 ], [ %268, %270 ]
  %290 = icmp eq i8 %288, 57
  br i1 %290, label %293, label %291

291:                                              ; preds = %287
  %292 = add i8 %288, 1
  store i8 %292, ptr %289, align 1, !tbaa !5
  br label %316

293:                                              ; preds = %287
  store i8 48, ptr %289, align 1, !tbaa !5
  %294 = getelementptr inbounds i8, ptr %289, i64 -1
  %295 = icmp ult ptr %294, @armorfilename
  br i1 %295, label %303, label %279, !llvm.loop !29

296:                                              ; preds = %279, %270
  %297 = phi ptr [ %268, %270 ], [ %294, %279 ]
  %298 = phi ptr [ %267, %270 ], [ %289, %279 ]
  %299 = phi i8 [ %273, %270 ], [ %281, %279 ]
  store i8 49, ptr %297, align 1, !tbaa !5
  %300 = call noalias ptr @fopen(ptr noundef nonnull @armorfilename, ptr noundef nonnull @.str.3)
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %318

302:                                              ; preds = %296
  store i8 %299, ptr %297, align 1, !tbaa !5
  br label %303

303:                                              ; preds = %293, %302, %265
  %304 = phi ptr [ %298, %302 ], [ %267, %265 ], [ @armorfilename, %293 ]
  %305 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %304) #15
  %306 = icmp slt i64 %305, 0
  br i1 %306, label %315, label %307

307:                                              ; preds = %303
  %308 = getelementptr inbounds i8, ptr %304, i64 %305
  br label %309

309:                                              ; preds = %309, %307
  %310 = phi ptr [ %313, %309 ], [ %308, %307 ]
  %311 = load i8, ptr %310, align 1, !tbaa !5
  %312 = getelementptr inbounds i8, ptr %310, i64 1
  store i8 %311, ptr %312, align 1, !tbaa !5
  %313 = getelementptr inbounds i8, ptr %310, i64 -1
  %314 = icmp ult ptr %313, %304
  br i1 %314, label %315, label %309, !llvm.loop !30

315:                                              ; preds = %309, %303
  store i8 49, ptr %304, align 1, !tbaa !5
  br label %316

316:                                              ; preds = %291, %315
  %317 = call noalias ptr @fopen(ptr noundef nonnull @armorfilename, ptr noundef nonnull @.str.3)
  br label %318

318:                                              ; preds = %316, %296
  %319 = phi ptr [ %300, %296 ], [ %317, %316 ]
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %329

321:                                              ; preds = %318
  %322 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %323 = call ptr @LANG(ptr noundef nonnull @.str.46) #14
  %324 = add nsw i32 %229, 1
  %325 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %322, ptr noundef %323, i32 noundef %324)
  br label %488

326:                                              ; preds = %257
  %327 = load i64, ptr @infile_line, align 8, !tbaa !8
  %328 = add nsw i64 %327, 1
  store i64 %328, ptr @infile_line, align 8, !tbaa !8
  br label %329

329:                                              ; preds = %326, %318
  %330 = phi ptr [ %319, %318 ], [ %258, %326 ]
  %331 = call i32 @bcmp(ptr noundef nonnull dereferenceable(22) %4, ptr noundef nonnull dereferenceable(22) @.str.47, i64 22)
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %257, !llvm.loop !31

333:                                              ; preds = %329
  %334 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.48, ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %335 = icmp eq i32 %334, 2
  br i1 %335, label %341, label %336

336:                                              ; preds = %333
  %337 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %338 = call ptr @LANG(ptr noundef nonnull @.str.49) #14
  %339 = add nsw i32 %229, 1
  %340 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %337, ptr noundef %338, i32 noundef %339)
  br label %483

341:                                              ; preds = %333
  %342 = load i32, ptr %7, align 4, !tbaa !15
  %343 = add nsw i32 %229, 1
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %358, label %345

345:                                              ; preds = %341
  %346 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %347 = call ptr @LANG(ptr noundef nonnull @.str.50) #14
  %348 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %346, ptr noundef %347, i32 noundef %343)
  %349 = load i32, ptr %7, align 4, !tbaa !15
  %350 = icmp eq i32 %349, 0
  %351 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %350, label %356, label %352

352:                                              ; preds = %345
  %353 = call ptr @LANG(ptr noundef nonnull @.str.51) #14
  %354 = load i32, ptr %7, align 4, !tbaa !15
  %355 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %351, ptr noundef %353, i32 noundef %354)
  br label %483

356:                                              ; preds = %345
  %357 = call i32 @fputc(i32 noundef 10, ptr noundef %351)
  br label %483

358:                                              ; preds = %341
  %359 = call fastcc i32 @skipheaders(ptr noundef %330, ptr noundef nonnull %4, ptr noundef nonnull %11)
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %483, label %361

361:                                              ; preds = %358
  %362 = call i32 @feof(ptr noundef %330) #14
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %446, label %364

364:                                              ; preds = %361
  %365 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %366 = call ptr @LANG(ptr noundef nonnull @.str.52) #14
  %367 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %365, ptr noundef %366, i32 noundef %343)
  br label %483

368:                                              ; preds = %242
  %369 = load i8, ptr %4, align 16, !tbaa !5
  switch i8 %369, label %406 [
    i8 61, label %370
    i8 0, label %402
  ]

370:                                              ; preds = %368
  %371 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #15
  %372 = icmp eq i64 %371, 7
  %373 = load i8, ptr %222, align 1
  %374 = icmp eq i8 %373, 51
  %375 = select i1 %372, i1 %374, i1 false
  %376 = load i8, ptr %223, align 2
  %377 = icmp eq i8 %376, 68
  %378 = select i1 %375, i1 %377, i1 false
  %379 = select i1 %378, ptr %224, ptr %222
  %380 = call fastcc i32 @darmor_buffer(ptr noundef nonnull %379, ptr noundef nonnull %9, ptr noundef nonnull %6), !range !32
  %381 = icmp slt i32 %380, 0
  %382 = load i32, ptr %6, align 4
  %383 = icmp ne i32 %382, 3
  %384 = select i1 %381, i1 true, i1 %383
  br i1 %384, label %385, label %389

385:                                              ; preds = %370
  %386 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %387 = call ptr @LANG(ptr noundef nonnull @.str.53) #14
  %388 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %386, ptr noundef %387, i32 noundef %228)
  br label %483

389:                                              ; preds = %370
  %390 = load i8, ptr %9, align 1, !tbaa !5
  %391 = sext i8 %390 to i64
  %392 = shl nsw i64 %391, 16
  %393 = and i64 %392, 16711680
  %394 = load i8, ptr %225, align 1, !tbaa !5
  %395 = sext i8 %394 to i64
  %396 = shl nsw i64 %395, 8
  %397 = and i64 %396, 65280
  %398 = load i8, ptr %226, align 1, !tbaa !5
  %399 = zext i8 %398 to i64
  %400 = or disjoint i64 %393, %399
  %401 = or disjoint i64 %400, %397
  br label %446

402:                                              ; preds = %368
  %403 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %404 = call ptr @LANG(ptr noundef nonnull @.str.54) #14
  %405 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %403, ptr noundef %404)
  br label %454

406:                                              ; preds = %368
  %407 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %4, ptr noundef nonnull dereferenceable(13) @.str.55, i64 13)
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %454, label %409

409:                                              ; preds = %406
  %410 = call fastcc i32 @darmor_buffer(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6), !range !32
  %411 = icmp eq i32 %410, -1
  br i1 %411, label %412, label %416

412:                                              ; preds = %409
  %413 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %414 = call ptr @LANG(ptr noundef nonnull @.str.56) #14
  %415 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %413, ptr noundef %414, i32 noundef %228)
  br label %416

416:                                              ; preds = %412, %409
  %417 = phi i32 [ 1, %412 ], [ %230, %409 ]
  %418 = phi i32 [ -1, %412 ], [ %233, %409 ]
  %419 = load i32, ptr %6, align 4, !tbaa !15
  %420 = icmp ugt i32 %419, 80
  br i1 %420, label %421, label %425

421:                                              ; preds = %416
  %422 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %423 = call ptr @LANG(ptr noundef nonnull @.str.57) #14
  %424 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %422, ptr noundef %423, i32 noundef %419, i32 noundef %228)
  br label %483

425:                                              ; preds = %416, %425
  %426 = phi ptr [ %432, %425 ], [ %5, %416 ]
  %427 = phi i32 [ %439, %425 ], [ %419, %416 ]
  %428 = phi i64 [ %438, %425 ], [ %231, %416 ]
  %429 = shl i64 %428, 8
  %430 = lshr i64 %428, 16
  %431 = and i64 %430, 255
  %432 = getelementptr inbounds i8, ptr %426, i64 1
  %433 = load i8, ptr %426, align 1, !tbaa !5
  %434 = zext i8 %433 to i64
  %435 = xor i64 %431, %434
  %436 = getelementptr inbounds [256 x i64], ptr @crctable, i64 0, i64 %435
  %437 = load i64, ptr %436, align 8, !tbaa !8
  %438 = xor i64 %437, %429
  %439 = add i32 %427, -1
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %425, !llvm.loop !10

441:                                              ; preds = %425
  %442 = and i64 %438, 16777215
  %443 = zext nneg i32 %419 to i64
  %444 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 1, i64 noundef %443, ptr noundef nonnull %194)
  %445 = icmp eq i64 %444, %443
  br i1 %445, label %446, label %454

446:                                              ; preds = %441, %389, %361
  %447 = phi i32 [ %343, %361 ], [ %229, %389 ], [ %229, %441 ]
  %448 = phi i32 [ 0, %361 ], [ 1, %389 ], [ %417, %441 ]
  %449 = phi i64 [ 11994318, %361 ], [ %231, %389 ], [ %442, %441 ]
  %450 = phi i64 [ %232, %361 ], [ %401, %389 ], [ %232, %441 ]
  %451 = phi i32 [ %256, %361 ], [ %233, %389 ], [ %418, %441 ]
  %452 = phi ptr [ %330, %361 ], [ %234, %389 ], [ %234, %441 ]
  %453 = add nuw nsw i32 %228, 1
  br label %227, !llvm.loop !33

454:                                              ; preds = %441, %406, %402
  %455 = phi i32 [ %230, %402 ], [ %230, %406 ], [ %417, %441 ]
  %456 = phi i64 [ %231, %402 ], [ %231, %406 ], [ %442, %441 ]
  %457 = phi i32 [ %233, %402 ], [ %233, %406 ], [ -1, %441 ]
  %458 = icmp eq i32 %455, 0
  br i1 %458, label %475, label %459

459:                                              ; preds = %454
  %460 = icmp eq i64 %232, %456
  br i1 %460, label %479, label %461

461:                                              ; preds = %459
  %462 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %463 = call ptr @LANG(ptr noundef nonnull @.str.58) #14
  %464 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %462, ptr noundef %463)
  %465 = load i32, ptr %8, align 4, !tbaa !15
  %466 = icmp sgt i32 %465, 0
  br i1 %466, label %467, label %472

467:                                              ; preds = %461
  %468 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %469 = call ptr @LANG(ptr noundef nonnull @.str.59) #14
  %470 = load i32, ptr %8, align 4, !tbaa !15
  %471 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %468, ptr noundef %469, i32 noundef %470)
  br label %472

472:                                              ; preds = %467, %461
  %473 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %474 = call i32 @fputc(i32 noundef 10, ptr noundef %473)
  br label %483

475:                                              ; preds = %454
  %476 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %477 = call ptr @LANG(ptr noundef nonnull @.str.60) #14
  %478 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %476, ptr noundef %477)
  br label %479

479:                                              ; preds = %475, %459
  %480 = icmp eq ptr %234, %26
  br i1 %480, label %488, label %481

481:                                              ; preds = %479
  %482 = call i32 @fclose(ptr noundef %234)
  br label %488

483:                                              ; preds = %358, %472, %421, %385, %364, %356, %352, %336
  %484 = phi ptr [ %330, %336 ], [ %330, %352 ], [ %330, %356 ], [ %330, %364 ], [ %234, %385 ], [ %234, %472 ], [ %234, %421 ], [ %330, %358 ]
  %485 = icmp eq ptr %484, %26
  br i1 %485, label %488, label %486

486:                                              ; preds = %483
  %487 = call i32 @fclose(ptr noundef %484)
  br label %488

488:                                              ; preds = %321, %479, %481, %483, %486
  %489 = phi i32 [ -1, %321 ], [ %457, %481 ], [ %457, %479 ], [ -1, %486 ], [ -1, %483 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #14
  %490 = icmp eq ptr %180, null
  br i1 %490, label %513, label %491

491:                                              ; preds = %488
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  store i64 0, ptr %13, align 8, !tbaa !8
  %492 = call ptr @tempfile(i32 noundef 5) #14
  store i8 1, ptr @strip_spaces, align 1, !tbaa !5
  %493 = load i8, ptr @charset_header, align 1, !tbaa !5
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %498, label %495

495:                                              ; preds = %491
  %496 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @charset) #14
  %497 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @charset, ptr noundef nonnull dereferenceable(1) @charset_header) #14
  call void @init_charset() #14
  br label %498

498:                                              ; preds = %495, %491
  %499 = call i32 @make_canonical(ptr noundef nonnull %180, ptr noundef %492) #14
  call void @rmtemp(ptr noundef nonnull %180) #14
  %500 = load i8, ptr @charset_header, align 1, !tbaa !5
  %501 = icmp eq i8 %500, 0
  br i1 %501, label %504, label %502

502:                                              ; preds = %498
  %503 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @charset, ptr noundef nonnull dereferenceable(1) %12) #14
  call void @init_charset() #14
  br label %504

504:                                              ; preds = %502, %498
  %505 = call noalias ptr @fopen(ptr noundef %492, ptr noundef nonnull @.str.3)
  %506 = call i64 @fsize(ptr noundef %505) #14
  %507 = add i64 %506, 6
  call void @write_ctb_len(ptr noundef nonnull %194, i8 noundef zeroext 11, i64 noundef %507, i8 noundef zeroext 0) #14
  %508 = call i32 @fputc(i32 116, ptr nonnull %194)
  %509 = call i32 @fputc(i32 noundef 0, ptr noundef nonnull %194)
  %510 = call i64 @fwrite(ptr noundef nonnull %13, i64 noundef 1, i64 noundef 8, ptr noundef nonnull %194)
  %511 = call i32 @copyfile(ptr noundef %505, ptr noundef nonnull %194, i64 noundef -1) #14
  %512 = call i32 @fclose(ptr noundef %505)
  call void @rmtemp(ptr noundef %492) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  br label %513

513:                                              ; preds = %504, %488
  %514 = call i32 @write_error(ptr noundef nonnull %194) #14
  %515 = icmp eq i32 %514, 0
  %516 = select i1 %515, i32 %489, i32 -1
  %517 = call i32 @fclose(ptr noundef nonnull %194)
  %518 = call i32 @fclose(ptr noundef nonnull %26)
  br label %519

519:                                              ; preds = %28, %45, %52, %175, %183, %188, %196, %513
  %520 = phi i32 [ 10, %28 ], [ -1, %45 ], [ 12, %52 ], [ -1, %183 ], [ 13, %188 ], [ -1, %196 ], [ %516, %513 ], [ %178, %175 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %10) #14
  br i1 %21, label %523, label %521

521:                                              ; preds = %519
  %522 = load i64, ptr @infile_line, align 8, !tbaa !8
  store i64 %522, ptr %2, align 8, !tbaa !8
  br label %523

523:                                              ; preds = %521, %519
  ret i32 %520
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @is_armor_file(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [80 x i8], align 16
  %4 = alloca [80 x i8], align 16
  %5 = alloca i32, align 4
  store i64 %1, ptr @infile_line, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %6 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %2
  %9 = load i64, ptr @infile_line, align 8, !tbaa !8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %12, %8
  br label %20

12:                                               ; preds = %16
  %13 = add nuw nsw i64 %17, 1
  %14 = load i64, ptr @infile_line, align 8, !tbaa !8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %11, !llvm.loop !34

16:                                               ; preds = %8, %12
  %17 = phi i64 [ %13, %12 ], [ 0, %8 ]
  %18 = call fastcc ptr @get_armor_line(ptr noundef nonnull %3, ptr noundef nonnull %6)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %12

20:                                               ; preds = %11, %23
  %21 = call fastcc ptr @get_armor_line(ptr noundef nonnull %3, ptr noundef nonnull %6)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %3, ptr noundef nonnull dereferenceable(15) @.str.29, i64 15)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %20, !llvm.loop !35

26:                                               ; preds = %23
  %27 = call i32 @bcmp(ptr noundef nonnull dereferenceable(34) %3, ptr noundef nonnull dereferenceable(34) @.str.30, i64 34)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  store i32 1, ptr %5, align 4, !tbaa !15
  %30 = call fastcc i32 @skipheaders(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %5)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = call fastcc ptr @get_armor_line(ptr noundef nonnull %3, ptr noundef nonnull %6)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = call fastcc i32 @darmor_buffer(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5), !range !32
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %20, %35, %32, %29
  br label %39

39:                                               ; preds = %16, %35, %26, %38
  %40 = phi i8 [ 0, %38 ], [ 1, %26 ], [ 1, %35 ], [ 0, %16 ]
  %41 = call i32 @fclose(ptr noundef nonnull %6)
  br label %42

42:                                               ; preds = %39, %2
  %43 = phi i8 [ 0, %2 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #14
  ret i8 %43
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef ptr @get_armor_line(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi i32 [ 79, %2 ], [ %10, %7 ]
  %5 = phi ptr [ %0, %2 ], [ %9, %7 ]
  %6 = tail call i32 @getc(ptr noundef %1)
  switch i32 %6, label %7 [
    i32 -1, label %12
    i32 13, label %12
    i32 10, label %12
  ]

7:                                                ; preds = %3
  %8 = trunc i32 %6 to i8
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %8, ptr %5, align 1, !tbaa !5
  %10 = add nsw i32 %4, -1
  %11 = icmp ugt i32 %4, 1
  br i1 %11, label %3, label %12, !llvm.loop !36

12:                                               ; preds = %3, %3, %3, %7
  %13 = phi ptr [ %5, %3 ], [ %9, %7 ], [ %5, %3 ], [ %5, %3 ]
  %14 = icmp eq i32 %6, -1
  %15 = icmp eq ptr %13, %0
  %16 = and i1 %14, %15
  br i1 %16, label %38, label %17

17:                                               ; preds = %12, %20
  %18 = phi i32 [ %23, %20 ], [ %6, %12 ]
  %19 = phi i32 [ %22, %20 ], [ 0, %12 ]
  switch i32 %18, label %20 [
    i32 13, label %24
    i32 10, label %29
    i32 -1, label %29
  ]

20:                                               ; preds = %17
  %21 = xor i32 %18, 32
  %22 = or i32 %19, %21
  %23 = tail call i32 @getc(ptr noundef %1)
  br label %17, !llvm.loop !37

24:                                               ; preds = %17
  %25 = tail call i32 @getc(ptr noundef %1)
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @ungetc(i32 noundef %25, ptr noundef %1)
  br label %29

29:                                               ; preds = %17, %17, %27, %24
  %30 = icmp eq i32 %19, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %29, %34
  %32 = phi ptr [ %35, %34 ], [ %13, %29 ]
  %33 = icmp ugt ptr %32, %0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %32, i64 -1
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = icmp eq i8 %36, 32
  br i1 %37, label %31, label %38, !llvm.loop !38

38:                                               ; preds = %31, %34, %29, %12
  %39 = phi ptr [ %0, %12 ], [ %13, %29 ], [ %32, %34 ], [ %32, %31 ]
  %40 = phi ptr [ null, %12 ], [ %0, %29 ], [ %0, %34 ], [ %0, %31 ]
  store i8 0, ptr %39, align 1, !tbaa !5
  ret ptr %40
}

declare void @rmtemp(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @skipheaders(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #2 {
  %4 = alloca [60 x i8], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %6 = getelementptr i8, ptr %1, i64 1
  %7 = load i64, ptr @infile_line, align 8, !tbaa !8
  %8 = add nsw i64 %7, 1
  store i64 %8, ptr @infile_line, align 8, !tbaa !8
  %9 = tail call i64 @ftell(ptr noundef %0)
  %10 = tail call fastcc ptr @get_armor_line(ptr noundef %1, ptr noundef %0)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %95, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, ptr %1, i64 9
  br label %14

14:                                               ; preds = %12, %21
  %15 = phi i64 [ %9, %12 ], [ %24, %21 ]
  %16 = phi i1 [ true, %12 ], [ false, %21 ]
  %17 = load i8, ptr %1, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %95, label %19

19:                                               ; preds = %14
  br i1 %16, label %27, label %20

20:                                               ; preds = %19
  switch i8 %17, label %27 [
    i8 32, label %21
    i8 9, label %21
  ]

21:                                               ; preds = %86, %88, %91, %20, %20
  %22 = load i64, ptr @infile_line, align 8, !tbaa !8
  %23 = add nsw i64 %22, 1
  store i64 %23, ptr @infile_line, align 8, !tbaa !8
  %24 = tail call i64 @ftell(ptr noundef %0)
  %25 = tail call fastcc ptr @get_armor_line(ptr noundef nonnull %1, ptr noundef %0)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %95, label %14, !llvm.loop !39

27:                                               ; preds = %20, %19
  %28 = tail call ptr @__ctype_b_loc() #16
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = sext i8 %17 to i64
  %31 = getelementptr inbounds i16, ptr %29, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !27
  %33 = and i16 %32, 1024
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %27, %35
  %36 = phi i64 [ %46, %35 ], [ 1, %27 ]
  %37 = getelementptr inbounds i8, ptr %1, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = sext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %29, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !27
  %42 = and i16 %41, 8
  %43 = icmp ne i16 %42, 0
  %44 = icmp eq i64 %36, 45
  %45 = or i1 %44, %43
  %46 = add nuw i64 %36, 1
  br i1 %45, label %35, label %47, !llvm.loop !40

47:                                               ; preds = %35
  %48 = trunc i64 %36 to i32
  %49 = icmp eq i8 %38, 58
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %6, i64 %36
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = icmp eq i8 %52, 32
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.37, i64 %36)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8, ptr @use_charset_header, align 1, !tbaa !5
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @charset_header, ptr noundef nonnull dereferenceable(1) %13) #14
  br label %69

62:                                               ; preds = %54
  %63 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.38, i64 %36)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.39, i64 %36)
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 0, i32 %48
  br label %69

69:                                               ; preds = %27, %47, %50, %57, %60, %62, %65
  %70 = phi i32 [ -1, %27 ], [ -1, %50 ], [ -1, %47 ], [ 0, %60 ], [ 0, %57 ], [ 0, %62 ], [ %68, %65 ]
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = call fastcc i32 @darmor_buffer(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !range !32
  %74 = icmp eq i32 %73, 0
  %75 = load i32, ptr %5, align 4
  %76 = icmp eq i32 %75, 48
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = tail call i32 @fseek(ptr noundef %0, i64 noundef %15, i32 noundef 0)
  %80 = load i64, ptr @infile_line, align 8, !tbaa !8
  %81 = add nsw i64 %80, -1
  store i64 %81, ptr @infile_line, align 8, !tbaa !8
  br label %95

82:                                               ; preds = %72
  %83 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %84 = tail call ptr @LANG(ptr noundef nonnull @.str.35) #14
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef %84, ptr noundef nonnull %1)
  br label %95

86:                                               ; preds = %69
  %87 = icmp eq i32 %70, 0
  br i1 %87, label %21, label %88

88:                                               ; preds = %86
  %89 = load i32, ptr %2, align 4, !tbaa !15
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %21

91:                                               ; preds = %88
  %92 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %93 = tail call ptr @LANG(ptr noundef nonnull @.str.36) #14
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef %93, i32 noundef %70, ptr noundef nonnull %1)
  store i32 1, ptr %2, align 4, !tbaa !15
  br label %21

95:                                               ; preds = %21, %14, %3, %82, %78
  %96 = phi i32 [ 0, %78 ], [ -1, %82 ], [ 0, %3 ], [ 0, %14 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #14
  ret i32 %96
}

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #4

declare void @init_charset() local_unnamed_addr #5

declare i32 @make_canonical(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @write_ctb_len(ptr noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #5

declare i64 @fsize(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i32 @copyfile(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @darmor_buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = load i8, ptr %0, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %100, label %6

6:                                                ; preds = %3, %79
  %7 = phi i8 [ %98, %79 ], [ %4, %3 ]
  %8 = phi ptr [ %97, %79 ], [ %1, %3 ]
  %9 = phi ptr [ %84, %79 ], [ %0, %3 ]
  %10 = phi i32 [ %80, %79 ], [ 0, %3 ]
  %11 = icmp sgt i8 %7, -1
  br i1 %11, label %12, label %102

12:                                               ; preds = %6
  %13 = zext nneg i8 %7 to i64
  %14 = getelementptr inbounds [128 x i8], ptr @asctobin, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = icmp sgt i8 %15, -1
  br i1 %16, label %17, label %102

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %9, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = icmp sgt i8 %19, -1
  br i1 %20, label %21, label %102

21:                                               ; preds = %17
  %22 = zext nneg i8 %19 to i64
  %23 = getelementptr inbounds [128 x i8], ptr @asctobin, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = zext i8 %24 to i32
  %26 = icmp sgt i8 %24, -1
  br i1 %26, label %27, label %102

27:                                               ; preds = %21
  %28 = getelementptr inbounds i8, ptr %9, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !5
  %30 = icmp eq i8 %29, 61
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = add nsw i32 %10, 1
  %33 = and i32 %25, 15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %102

35:                                               ; preds = %31
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(3) @.str.40) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %9, i64 3
  br label %79

40:                                               ; preds = %35
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(7) @.str.41) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %102

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, ptr %9, i64 7
  br label %79

45:                                               ; preds = %27
  %46 = icmp sgt i8 %29, -1
  br i1 %46, label %47, label %102

47:                                               ; preds = %45
  %48 = zext nneg i8 %29 to i64
  %49 = getelementptr inbounds [128 x i8], ptr @asctobin, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = zext i8 %50 to i32
  %52 = icmp sgt i8 %50, -1
  br i1 %52, label %53, label %102

53:                                               ; preds = %47
  %54 = getelementptr inbounds i8, ptr %9, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !5
  %56 = icmp eq i8 %55, 61
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = add nsw i32 %10, 2
  %59 = and i32 %51, 3
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %102

61:                                               ; preds = %57
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(2) @.str.42) #15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(4) @.str.43) #15
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %9, i64 5
  br label %79

69:                                               ; preds = %53
  %70 = icmp sgt i8 %55, -1
  br i1 %70, label %71, label %102

71:                                               ; preds = %69
  %72 = zext nneg i8 %55 to i64
  %73 = getelementptr inbounds [128 x i8], ptr @asctobin, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = icmp sgt i8 %74, -1
  br i1 %75, label %76, label %102

76:                                               ; preds = %71
  %77 = zext nneg i8 %74 to i32
  %78 = add nsw i32 %10, 3
  br label %79

79:                                               ; preds = %67, %61, %76, %38, %43
  %80 = phi i32 [ %32, %38 ], [ %32, %43 ], [ %58, %61 ], [ %58, %67 ], [ %78, %76 ]
  %81 = phi ptr [ %39, %38 ], [ %44, %43 ], [ %54, %61 ], [ %68, %67 ], [ %54, %76 ]
  %82 = phi i32 [ 0, %38 ], [ 0, %43 ], [ %51, %61 ], [ %51, %67 ], [ %51, %76 ]
  %83 = phi i32 [ 0, %38 ], [ 0, %43 ], [ 0, %61 ], [ 0, %67 ], [ %77, %76 ]
  %84 = getelementptr inbounds i8, ptr %81, i64 1
  %85 = shl i8 %15, 2
  %86 = lshr i8 %24, 4
  %87 = or i8 %86, %85
  %88 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %87, ptr %8, align 1, !tbaa !5
  %89 = shl nuw nsw i32 %25, 4
  %90 = lshr i32 %82, 2
  %91 = or i32 %90, %89
  %92 = trunc i32 %91 to i8
  %93 = getelementptr inbounds i8, ptr %8, i64 2
  store i8 %92, ptr %88, align 1, !tbaa !5
  %94 = shl nuw nsw i32 %82, 6
  %95 = or i32 %94, %83
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds i8, ptr %8, i64 3
  store i8 %96, ptr %93, align 1, !tbaa !5
  %98 = load i8, ptr %84, align 1, !tbaa !5
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %6, !llvm.loop !41

100:                                              ; preds = %79, %3
  %101 = phi i32 [ 0, %3 ], [ %80, %79 ]
  store i32 %101, ptr %2, align 4, !tbaa !15
  br label %102

102:                                              ; preds = %69, %71, %64, %57, %45, %47, %40, %31, %17, %21, %6, %12, %100
  %103 = phi i32 [ 0, %100 ], [ -1, %12 ], [ -1, %6 ], [ -1, %21 ], [ -1, %17 ], [ -1, %31 ], [ -1, %40 ], [ -1, %47 ], [ -1, %45 ], [ -1, %57 ], [ -1, %64 ], [ -1, %71 ], [ -1, %69 ]
  ret i32 %103
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }

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
!9 = !{!"long", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !6, i64 0}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !6, i64 0}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = !{i32 -1, i32 1}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
