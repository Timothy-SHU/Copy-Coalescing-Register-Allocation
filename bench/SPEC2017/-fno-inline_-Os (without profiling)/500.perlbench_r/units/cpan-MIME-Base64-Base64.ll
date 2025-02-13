; ModuleID = 'cpan/MIME-Base64/Base64.c'
source_filename = "cpan/MIME-Base64/Base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu, %union._xnvu }
%union.anon.2 = type { i64 }
%union._xnvu = type { double }

@.str = private unnamed_addr constant [26 x i8] c"cpan/MIME-Base64/Base64.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"MIME::Base64::encode_base64\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"MIME::Base64::decode_base64\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"MIME::Base64::encoded_base64_length\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"MIME::Base64::decoded_base64_length\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"MIME::QuotedPrint::encode_qp\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"$;$$\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"MIME::QuotedPrint::decode_qp\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"sv, ...\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@basis_64 = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@.str.13 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@index_64 = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FE\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"=%02X\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_MIME__Base64(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_MIME__Base64_encode_base64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #5
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_MIME__Base64_decode_base64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #5
  %5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_MIME__Base64_encoded_base64_length, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #5
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_MIME__Base64_decoded_base64_length, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #5
  %7 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_MIME__QuotedPrint_encode_qp, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 0) #5
  %8 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_MIME__QuotedPrint_decode_qp, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #5
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_MIME__Base64_encode_base64(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %7 = load i32, ptr %5, align 4, !tbaa !9
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.11) #5
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %8, %1 ]
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !11
  %27 = and i32 %26, 536870912
  %28 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %24, i1 noundef zeroext false) #5
  %29 = load i32, ptr %25, align 4, !tbaa !11
  %30 = and i32 %29, 2098176
  %31 = icmp eq i32 %30, 1024
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !13
  %34 = getelementptr inbounds %struct.xpv, ptr %33, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !14
  store i64 %35, ptr %3, align 8, !tbaa !17
  %36 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !18
  br label %41

38:                                               ; preds = %20
  %39 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %24, ptr noundef nonnull %3, i32 noundef 2) #5
  %40 = load i64, ptr %3, align 8, !tbaa !17
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi i64 [ %35, %32 ], [ %40, %38 ]
  %43 = phi ptr [ %37, %32 ], [ %39, %38 ]
  %44 = icmp sgt i32 %16, 1
  br i1 %44, label %45, label %71

45:                                               ; preds = %41
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %47 = getelementptr ptr, ptr %46, i64 %10
  %48 = getelementptr ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !11
  %52 = and i32 %51, 65280
  %53 = icmp ne i32 %52, 0
  %54 = and i32 %51, 255
  %55 = icmp eq i32 %54, 8
  %56 = or i1 %53, %55
  %57 = and i32 %51, 16777471
  %58 = icmp eq i32 %57, 16777226
  %59 = or i1 %58, %56
  br i1 %59, label %60, label %71

60:                                               ; preds = %45
  %61 = and i32 %51, 2098176
  %62 = icmp eq i32 %61, 1024
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load ptr, ptr %49, align 8, !tbaa !13
  %65 = getelementptr inbounds %struct.xpv, ptr %64, i64 0, i32 2
  %66 = load i64, ptr %65, align 8, !tbaa !14
  store i64 %66, ptr %2, align 8, !tbaa !17
  %67 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !18
  br label %72

69:                                               ; preds = %60
  %70 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %49, ptr noundef nonnull %2, i32 noundef 2) #5
  br label %72

71:                                               ; preds = %45, %41
  store i64 1, ptr %2, align 8, !tbaa !17
  br label %72

72:                                               ; preds = %63, %69, %71
  %73 = phi ptr [ @.str.12, %71 ], [ %68, %63 ], [ %70, %69 ]
  %74 = add nsw i64 %42, 2
  %75 = sdiv i64 %74, 3
  %76 = shl nsw i64 %75, 2
  store i64 %76, ptr %3, align 8, !tbaa !17
  %77 = add i64 %42, 4
  %78 = icmp ult i64 %77, 5
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = add i64 %76, -1
  %81 = udiv i64 %80, 76
  %82 = add nuw nsw i64 %81, 1
  %83 = load i64, ptr %2, align 8, !tbaa !17
  %84 = mul i64 %83, %82
  %85 = add i64 %84, %76
  store i64 %85, ptr %3, align 8, !tbaa !17
  br label %86

86:                                               ; preds = %79, %72
  %87 = phi i64 [ %85, %79 ], [ %76, %72 ]
  %88 = call i64 @llvm.umax.i64(i64 %87, i64 1)
  %89 = call ptr @Perl_newSV(i64 noundef %88) #5
  %90 = getelementptr inbounds %struct.sv, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !11
  %92 = or i32 %91, 17408
  store i32 %92, ptr %90, align 4, !tbaa !11
  %93 = load i64, ptr %3, align 8, !tbaa !17
  %94 = load ptr, ptr %89, align 8, !tbaa !13
  %95 = getelementptr inbounds %struct.xpv, ptr %94, i64 0, i32 2
  store i64 %93, ptr %95, align 8, !tbaa !14
  %96 = getelementptr inbounds %struct.sv, ptr %89, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !18
  %98 = icmp sgt i64 %42, 0
  br i1 %98, label %99, label %179

99:                                               ; preds = %86, %156
  %100 = phi ptr [ %157, %156 ], [ %43, %86 ]
  %101 = phi i64 [ %173, %156 ], [ %42, %86 ]
  %102 = phi ptr [ %172, %156 ], [ %97, %86 ]
  %103 = phi i32 [ %174, %156 ], [ 0, %86 ]
  %104 = icmp eq i32 %103, 19
  br i1 %104, label %105, label %116

105:                                              ; preds = %99
  %106 = load i64, ptr %2, align 8, !tbaa !17
  %107 = getelementptr inbounds i8, ptr %73, i64 %106
  %108 = icmp sgt i64 %106, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105, %109
  %110 = phi ptr [ %112, %109 ], [ %73, %105 ]
  %111 = phi ptr [ %114, %109 ], [ %102, %105 ]
  %112 = getelementptr inbounds i8, ptr %110, i64 1
  %113 = load i8, ptr %110, align 1, !tbaa !18
  %114 = getelementptr inbounds i8, ptr %111, i64 1
  store i8 %113, ptr %111, align 1, !tbaa !18
  %115 = icmp ult ptr %112, %107
  br i1 %115, label %109, label %116, !llvm.loop !19

116:                                              ; preds = %109, %105, %99
  %117 = phi i32 [ %103, %99 ], [ 0, %105 ], [ 0, %109 ]
  %118 = phi ptr [ %102, %99 ], [ %102, %105 ], [ %114, %109 ]
  %119 = getelementptr inbounds i8, ptr %100, i64 1
  %120 = load i8, ptr %100, align 1, !tbaa !18
  %121 = icmp eq i64 %101, 1
  br i1 %121, label %125, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds i8, ptr %100, i64 2
  %124 = load i8, ptr %119, align 1, !tbaa !18
  br label %125

125:                                              ; preds = %116, %122
  %126 = phi ptr [ %123, %122 ], [ %119, %116 ]
  %127 = phi i8 [ %124, %122 ], [ 0, %116 ]
  %128 = zext i8 %120 to i32
  %129 = lshr i32 %128, 2
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds [65 x i8], ptr @basis_64, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !18
  %133 = getelementptr inbounds i8, ptr %118, i64 1
  store i8 %132, ptr %118, align 1, !tbaa !18
  %134 = shl nuw nsw i32 %128, 4
  %135 = and i32 %134, 48
  %136 = zext i8 %127 to i32
  %137 = lshr i32 %136, 4
  %138 = or disjoint i32 %137, %135
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds [65 x i8], ptr @basis_64, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !18
  %142 = getelementptr inbounds i8, ptr %118, i64 2
  store i8 %141, ptr %133, align 1, !tbaa !18
  %143 = icmp sgt i64 %101, 2
  br i1 %143, label %156, label %144

144:                                              ; preds = %125
  %145 = icmp eq i64 %101, 2
  br i1 %145, label %146, label %152

146:                                              ; preds = %144
  %147 = shl nuw nsw i32 %136, 2
  %148 = and i32 %147, 60
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds [65 x i8], ptr @basis_64, i64 0, i64 %149
  %151 = load i8, ptr %150, align 4, !tbaa !18
  br label %152

152:                                              ; preds = %144, %146
  %153 = phi i8 [ %151, %146 ], [ 61, %144 ]
  %154 = getelementptr inbounds i8, ptr %118, i64 3
  store i8 %153, ptr %142, align 1, !tbaa !18
  store i8 61, ptr %154, align 1, !tbaa !18
  %155 = getelementptr inbounds i8, ptr %118, i64 4
  br label %176

156:                                              ; preds = %125
  %157 = getelementptr inbounds i8, ptr %126, i64 1
  %158 = load i8, ptr %126, align 1, !tbaa !18
  %159 = shl nuw nsw i32 %136, 2
  %160 = and i32 %159, 60
  %161 = zext i8 %158 to i32
  %162 = lshr i32 %161, 6
  %163 = or disjoint i32 %162, %160
  %164 = zext nneg i32 %163 to i64
  %165 = getelementptr inbounds [65 x i8], ptr @basis_64, i64 0, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !18
  %167 = getelementptr inbounds i8, ptr %118, i64 3
  store i8 %166, ptr %142, align 1, !tbaa !18
  %168 = and i32 %161, 63
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds [65 x i8], ptr @basis_64, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !18
  store i8 %171, ptr %167, align 1, !tbaa !18
  %172 = getelementptr inbounds i8, ptr %118, i64 4
  %173 = add nsw i64 %101, -3
  %174 = add nsw i32 %117, 1
  %175 = icmp eq i64 %101, 3
  br i1 %175, label %176, label %99, !llvm.loop !21

176:                                              ; preds = %156, %152
  %177 = phi ptr [ %155, %152 ], [ %172, %156 ]
  %178 = load i64, ptr %3, align 8, !tbaa !17
  br label %179

179:                                              ; preds = %176, %86
  %180 = phi i64 [ %93, %86 ], [ %178, %176 ]
  %181 = phi ptr [ %97, %86 ], [ %177, %176 ]
  %182 = icmp eq i64 %180, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %179
  %184 = load i64, ptr %2, align 8, !tbaa !17
  %185 = getelementptr inbounds i8, ptr %73, i64 %184
  %186 = icmp sgt i64 %184, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %183, %187
  %188 = phi ptr [ %190, %187 ], [ %73, %183 ]
  %189 = phi ptr [ %192, %187 ], [ %181, %183 ]
  %190 = getelementptr inbounds i8, ptr %188, i64 1
  %191 = load i8, ptr %188, align 1, !tbaa !18
  %192 = getelementptr inbounds i8, ptr %189, i64 1
  store i8 %191, ptr %189, align 1, !tbaa !18
  %193 = icmp ult ptr %190, %185
  br i1 %193, label %187, label %194, !llvm.loop !22

194:                                              ; preds = %187, %183, %179
  %195 = phi ptr [ %181, %179 ], [ %181, %183 ], [ %192, %187 ]
  store i8 0, ptr %195, align 1, !tbaa !18
  %196 = icmp eq i32 %27, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %194
  %198 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %24, i32 noundef 2, i64 noundef 0) #5
  br label %199

199:                                              ; preds = %197, %194
  %200 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %89) #5
  %201 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %202 = getelementptr inbounds ptr, ptr %201, i64 %22
  store ptr %200, ptr %202, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %203 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %204 = getelementptr inbounds ptr, ptr %203, i64 %22
  store ptr %204, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_MIME__Base64_decode_base64(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [4 x i8], align 1
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %7 = load i32, ptr %5, align 4, !tbaa !9
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = and i64 %14, 34359738360
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.13) #5
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi ptr [ %18, %17 ], [ %8, %1 ]
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !11
  %26 = and i32 %25, 2098176
  %27 = icmp eq i32 %26, 1024
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load ptr, ptr %23, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !14
  store i64 %31, ptr %2, align 8, !tbaa !17
  %32 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  br label %37

34:                                               ; preds = %19
  %35 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %23, ptr noundef nonnull %2, i32 noundef 2) #5
  %36 = load i64, ptr %2, align 8, !tbaa !17
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i64 [ %31, %28 ], [ %36, %34 ]
  %39 = phi ptr [ %33, %28 ], [ %35, %34 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %41 = mul i64 %38, 3
  %42 = lshr i64 %41, 2
  %43 = icmp ult i64 %41, 4
  %44 = select i1 %43, i64 1, i64 %42
  %45 = call ptr @Perl_newSV(i64 noundef %44) #5
  %46 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !11
  %48 = or i32 %47, 17408
  store i32 %48, ptr %46, align 4, !tbaa !11
  %49 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !18
  %51 = icmp sgt i64 %38, 0
  br i1 %51, label %52, label %115

52:                                               ; preds = %37
  %53 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %54 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %55 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  br label %56

56:                                               ; preds = %52, %107
  %57 = phi ptr [ %39, %52 ], [ %85, %107 ]
  %58 = phi ptr [ %50, %52 ], [ %110, %107 ]
  br label %59

59:                                               ; preds = %56, %83
  %60 = phi i32 [ %73, %83 ], [ 0, %56 ]
  %61 = phi ptr [ %62, %83 ], [ %57, %56 ]
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = load i8, ptr %61, align 1, !tbaa !18
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [256 x i8], ptr @index_64, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !18
  %67 = icmp eq i8 %66, -1
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = add nsw i32 %60, 1
  %70 = sext i32 %60 to i64
  %71 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 %70
  store i8 %66, ptr %71, align 1, !tbaa !18
  br label %72

72:                                               ; preds = %68, %59
  %73 = phi i32 [ %69, %68 ], [ %60, %59 ]
  %74 = icmp eq ptr %62, %40
  %75 = icmp slt i32 %73, 4
  br i1 %74, label %76, label %83

76:                                               ; preds = %72
  br i1 %75, label %77, label %84

77:                                               ; preds = %76
  %78 = icmp slt i32 %73, 2
  br i1 %78, label %112, label %79

79:                                               ; preds = %77
  %80 = icmp eq i32 %73, 2
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  store i8 -2, ptr %53, align 1, !tbaa !18
  br label %82

82:                                               ; preds = %81, %79
  store i8 -2, ptr %54, align 1, !tbaa !18
  br label %84

83:                                               ; preds = %72
  br i1 %75, label %59, label %84, !llvm.loop !23

84:                                               ; preds = %83, %76, %82
  %85 = phi ptr [ %40, %76 ], [ %40, %82 ], [ %62, %83 ]
  %86 = load i8, ptr %3, align 1, !tbaa !18
  %87 = icmp eq i8 %86, -2
  %88 = load i8, ptr %55, align 1
  %89 = icmp eq i8 %88, -2
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %112, label %91

91:                                               ; preds = %84
  %92 = shl i8 %86, 2
  %93 = lshr i8 %88, 4
  %94 = and i8 %93, 3
  %95 = or disjoint i8 %94, %92
  %96 = getelementptr inbounds i8, ptr %58, i64 1
  store i8 %95, ptr %58, align 1, !tbaa !18
  %97 = load i8, ptr %53, align 1, !tbaa !18
  %98 = icmp eq i8 %97, -2
  br i1 %98, label %112, label %99

99:                                               ; preds = %91
  %100 = shl i8 %88, 4
  %101 = lshr i8 %97, 2
  %102 = and i8 %101, 15
  %103 = or disjoint i8 %100, %102
  %104 = getelementptr inbounds i8, ptr %58, i64 2
  store i8 %103, ptr %96, align 1, !tbaa !18
  %105 = load i8, ptr %54, align 1, !tbaa !18
  %106 = icmp eq i8 %105, -2
  br i1 %106, label %112, label %107

107:                                              ; preds = %99
  %108 = shl i8 %97, 6
  %109 = or i8 %108, %105
  %110 = getelementptr inbounds i8, ptr %58, i64 3
  store i8 %109, ptr %104, align 1, !tbaa !18
  %111 = icmp ult ptr %85, %40
  br i1 %111, label %56, label %112

112:                                              ; preds = %77, %99, %91, %84, %107
  %113 = phi ptr [ %110, %107 ], [ %58, %84 ], [ %96, %91 ], [ %104, %99 ], [ %58, %77 ]
  %114 = load ptr, ptr %49, align 8, !tbaa !18
  br label %115

115:                                              ; preds = %112, %37
  %116 = phi ptr [ %50, %37 ], [ %114, %112 ]
  %117 = phi ptr [ %50, %37 ], [ %113, %112 ]
  %118 = ptrtoint ptr %117 to i64
  %119 = ptrtoint ptr %116 to i64
  %120 = sub i64 %118, %119
  %121 = load ptr, ptr %45, align 8, !tbaa !13
  %122 = getelementptr inbounds %struct.xpv, ptr %121, i64 0, i32 2
  store i64 %120, ptr %122, align 8, !tbaa !14
  store i8 0, ptr %117, align 1, !tbaa !18
  %123 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %45) #5
  %124 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %125 = getelementptr inbounds ptr, ptr %124, i64 %21
  store ptr %123, ptr %125, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %126 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %127 = getelementptr inbounds ptr, ptr %126, i64 %21
  store ptr %127, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_MIME__Base64_encoded_base64_length(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %5 = load i32, ptr %3, align 4, !tbaa !9
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.11) #5
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %6, %1 ]
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.op, ptr %23, i64 0, i32 6
  %25 = load i8, ptr %24, align 1, !tbaa !24
  %26 = and i8 %25, 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.op, ptr %23, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !26
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  br label %36

34:                                               ; preds = %18
  %35 = tail call ptr @Perl_sv_newmortal() #5
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi ptr [ %33, %28 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !11
  %40 = and i32 %39, 536870912
  %41 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %22, i1 noundef zeroext false) #5
  %42 = load ptr, ptr %22, align 8, !tbaa !13
  %43 = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !14
  %45 = icmp eq i32 %40, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %36
  %47 = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef nonnull %22, i32 noundef 2, i64 noundef 0) #5
  br label %48

48:                                               ; preds = %46, %36
  %49 = icmp sgt i32 %14, 1
  br i1 %49, label %50, label %70

50:                                               ; preds = %48
  %51 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %52 = getelementptr ptr, ptr %51, i64 %8
  %53 = getelementptr ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !11
  %57 = and i32 %56, 65280
  %58 = icmp ne i32 %57, 0
  %59 = and i32 %56, 255
  %60 = icmp eq i32 %59, 8
  %61 = or i1 %58, %60
  %62 = and i32 %56, 16777471
  %63 = icmp eq i32 %62, 16777226
  %64 = or i1 %63, %61
  br i1 %64, label %65, label %70

65:                                               ; preds = %50
  %66 = load ptr, ptr %54, align 8, !tbaa !13
  %67 = getelementptr inbounds %struct.xpv, ptr %66, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !14
  %69 = trunc i64 %68 to i32
  br label %70

70:                                               ; preds = %48, %50, %65
  %71 = phi i32 [ %69, %65 ], [ 1, %50 ], [ 1, %48 ]
  %72 = add nsw i64 %44, 2
  %73 = sdiv i64 %72, 3
  %74 = trunc i64 %73 to i32
  %75 = shl i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = add nsw i32 %75, -1
  %79 = sdiv i32 %78, 76
  %80 = add nsw i32 %79, 1
  %81 = mul i32 %71, %80
  %82 = add i32 %81, %75
  %83 = sext i32 %82 to i64
  br label %84

84:                                               ; preds = %77, %70
  %85 = phi i64 [ %83, %77 ], [ 0, %70 ]
  %86 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  tail call void @Perl_sv_setiv(ptr noundef %37, i64 noundef %85) #5
  %87 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !11
  %89 = and i32 %88, 4194304
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %84
  %92 = tail call i32 @Perl_mg_set(ptr noundef nonnull %37) #5
  br label %93

93:                                               ; preds = %84, %91
  %94 = getelementptr inbounds ptr, ptr %86, i64 %20
  store ptr %37, ptr %94, align 8, !tbaa !5
  %95 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %96 = getelementptr inbounds ptr, ptr %95, i64 %20
  store ptr %96, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_MIME__Base64_decoded_base64_length(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %6 = load i32, ptr %4, align 4, !tbaa !9
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.13) #5
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %7, %1 ]
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !11
  %25 = and i32 %24, 2098176
  %26 = icmp eq i32 %25, 1024
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load ptr, ptr %22, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.xpv, ptr %28, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !14
  store i64 %30, ptr %2, align 8, !tbaa !17
  %31 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !18
  br label %36

33:                                               ; preds = %18
  %34 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %22, ptr noundef nonnull %2, i32 noundef 2) #5
  %35 = load i64, ptr %2, align 8, !tbaa !17
  br label %36

36:                                               ; preds = %33, %27
  %37 = phi i64 [ %30, %27 ], [ %35, %33 ]
  %38 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 %37
  %40 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.op, ptr %40, i64 0, i32 6
  %42 = load i8, ptr %41, align 1, !tbaa !24
  %43 = and i8 %42, 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %36
  %46 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.op, ptr %40, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !26
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  br label %53

51:                                               ; preds = %36
  %52 = call ptr @Perl_sv_newmortal() #5
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi ptr [ %50, %45 ], [ %52, %51 ]
  %55 = icmp sgt i64 %37, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %53, %75
  %57 = phi ptr [ %60, %75 ], [ %38, %53 ]
  %58 = phi i32 [ %77, %75 ], [ 0, %53 ]
  %59 = phi i32 [ %76, %75 ], [ 0, %53 ]
  %60 = getelementptr inbounds i8, ptr %57, i64 1
  %61 = load i8, ptr %57, align 1, !tbaa !18
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds [256 x i8], ptr @index_64, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !18
  %65 = icmp eq i8 %64, -1
  br i1 %65, label %75, label %66, !llvm.loop !27

66:                                               ; preds = %56
  %67 = icmp eq i8 %61, 61
  br i1 %67, label %79, label %68

68:                                               ; preds = %66
  %69 = add nsw i32 %59, 1
  %70 = icmp ne i32 %59, 0
  %71 = icmp eq i32 %69, 4
  %72 = select i1 %71, i32 0, i32 %69
  %73 = zext i1 %70 to i32
  %74 = add nsw i32 %58, %73
  br label %75

75:                                               ; preds = %56, %68
  %76 = phi i32 [ %72, %68 ], [ %59, %56 ]
  %77 = phi i32 [ %74, %68 ], [ %58, %56 ]
  %78 = icmp ult ptr %60, %39
  br i1 %78, label %56, label %79

79:                                               ; preds = %66, %75
  %80 = phi i32 [ %77, %75 ], [ %58, %66 ]
  %81 = sext i32 %80 to i64
  br label %82

82:                                               ; preds = %79, %53
  %83 = phi i64 [ 0, %53 ], [ %81, %79 ]
  %84 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  call void @Perl_sv_setiv(ptr noundef %54, i64 noundef %83) #5
  %85 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !11
  %87 = and i32 %86, 4194304
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = call i32 @Perl_mg_set(ptr noundef nonnull %54) #5
  br label %91

91:                                               ; preds = %82, %89
  %92 = getelementptr inbounds ptr, ptr %84, i64 %20
  store ptr %54, ptr %92, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %93 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %94 = getelementptr inbounds ptr, ptr %93, i64 %20
  store ptr %94, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_MIME__QuotedPrint_encode_qp(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %7 = load i32, ptr %5, align 4, !tbaa !9
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.11) #5
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %8, %1 ]
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !11
  %27 = and i32 %26, 536870912
  %28 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %24, i1 noundef zeroext false) #5
  %29 = icmp sgt i32 %16, 1
  br i1 %29, label %30, label %56

30:                                               ; preds = %20
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %32 = getelementptr ptr, ptr %31, i64 %10
  %33 = getelementptr ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !11
  %37 = and i32 %36, 65280
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %36, 255
  %40 = icmp eq i32 %39, 8
  %41 = or i1 %38, %40
  %42 = and i32 %36, 16777471
  %43 = icmp eq i32 %42, 16777226
  %44 = or i1 %43, %41
  br i1 %44, label %45, label %56

45:                                               ; preds = %30
  %46 = and i32 %36, 2098176
  %47 = icmp eq i32 %46, 1024
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load ptr, ptr %34, align 8, !tbaa !13
  %50 = getelementptr inbounds %struct.xpv, ptr %49, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !14
  store i64 %51, ptr %2, align 8, !tbaa !17
  %52 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !18
  br label %57

54:                                               ; preds = %45
  %55 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %34, ptr noundef nonnull %2, i32 noundef 2) #5
  br label %57

56:                                               ; preds = %30, %20
  store i64 1, ptr %2, align 8, !tbaa !17
  br label %57

57:                                               ; preds = %48, %54, %56
  %58 = phi ptr [ @.str.12, %56 ], [ %53, %48 ], [ %55, %54 ]
  %59 = icmp sgt i32 %16, 2
  br i1 %59, label %60, label %122

60:                                               ; preds = %57
  %61 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %62 = getelementptr ptr, ptr %61, i64 %10
  %63 = getelementptr ptr, ptr %62, i64 3
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = icmp eq ptr %64, null
  br i1 %65, label %122, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !11
  %69 = and i32 %68, 2097152
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %64, i32 noundef 2) #5
  br label %122

73:                                               ; preds = %66
  %74 = and i32 %68, 65280
  %75 = icmp ne i32 %74, 0
  %76 = and i32 %68, 255
  %77 = icmp eq i32 %76, 8
  %78 = or i1 %75, %77
  %79 = and i32 %68, 16777471
  %80 = icmp eq i32 %79, 16777226
  %81 = or i1 %80, %78
  br i1 %81, label %82, label %122

82:                                               ; preds = %73
  %83 = and i32 %68, 1024
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %64, align 8, !tbaa !13
  %87 = icmp eq ptr %86, null
  br i1 %87, label %122, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.xpv, ptr %86, i64 0, i32 2
  %90 = load i64, ptr %89, align 8, !tbaa !14
  %91 = icmp ugt i64 %90, 1
  br i1 %91, label %122, label %92

92:                                               ; preds = %88
  %93 = icmp eq i64 %90, 0
  br i1 %93, label %122, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !18
  %97 = load i8, ptr %96, align 1, !tbaa !18
  %98 = icmp ne i8 %97, 48
  br label %122

99:                                               ; preds = %82
  %100 = and i32 %68, 768
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %120, label %102

102:                                              ; preds = %99
  %103 = and i32 %68, 256
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %64, align 8, !tbaa !13
  %107 = getelementptr inbounds %struct.xpviv, ptr %106, i64 0, i32 4
  %108 = load i64, ptr %107, align 8, !tbaa !18
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105, %102
  %111 = and i32 %68, 512
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %64, align 8, !tbaa !13
  %115 = getelementptr inbounds %struct.xpvnv, ptr %114, i64 0, i32 5
  %116 = load double, ptr %115, align 8, !tbaa !18
  %117 = fcmp uno double %116, 0.000000e+00
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = fcmp une double %116, 0.000000e+00
  br label %122

120:                                              ; preds = %99
  %121 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %64, i32 noundef 0) #5
  br label %122

122:                                              ; preds = %71, %120, %73, %88, %94, %92, %85, %110, %118, %113, %105, %60, %57
  %123 = phi i1 [ false, %57 ], [ false, %60 ], [ %72, %71 ], [ %121, %120 ], [ false, %73 ], [ false, %85 ], [ true, %88 ], [ false, %92 ], [ %98, %94 ], [ true, %105 ], [ false, %110 ], [ true, %113 ], [ %119, %118 ]
  %124 = load i32, ptr %25, align 4, !tbaa !11
  %125 = and i32 %124, 2098176
  %126 = icmp eq i32 %125, 1024
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load ptr, ptr %24, align 8, !tbaa !13
  %129 = getelementptr inbounds %struct.xpv, ptr %128, i64 0, i32 2
  %130 = load i64, ptr %129, align 8, !tbaa !14
  store i64 %130, ptr %3, align 8, !tbaa !17
  %131 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !18
  br label %136

133:                                              ; preds = %122
  %134 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %24, ptr noundef nonnull %3, i32 noundef 2) #5
  %135 = load i64, ptr %3, align 8, !tbaa !17
  br label %136

136:                                              ; preds = %133, %127
  %137 = phi i64 [ %130, %127 ], [ %135, %133 ]
  %138 = phi ptr [ %132, %127 ], [ %134, %133 ]
  %139 = getelementptr inbounds i8, ptr %138, i64 %137
  %140 = add i64 %137, 1
  %141 = call ptr @Perl_newSV(i64 noundef %140) #5
  call void @Perl_sv_setpv(ptr noundef %141, ptr noundef nonnull @.str.14) #5
  %142 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 3
  %143 = ptrtoint ptr %138 to i64
  %144 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 2
  br label %145

145:                                              ; preds = %283, %136
  %146 = phi ptr [ %138, %136 ], [ %260, %283 ]
  %147 = phi i64 [ 0, %136 ], [ %259, %283 ]
  %148 = icmp ult ptr %146, %139
  br i1 %148, label %149, label %176

149:                                              ; preds = %145, %157
  %150 = phi ptr [ %158, %157 ], [ %146, %145 ]
  %151 = load i8, ptr %150, align 1, !tbaa !18
  %152 = freeze i8 %151
  %153 = icmp eq i8 %152, 9
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = icmp slt i8 %152, 32
  br i1 %155, label %160, label %156

156:                                              ; preds = %154
  switch i8 %152, label %157 [
    i8 127, label %160
    i8 61, label %160
  ]

157:                                              ; preds = %156, %149
  %158 = getelementptr inbounds i8, ptr %150, i64 1
  %159 = icmp ult ptr %158, %139
  br i1 %159, label %149, label %160, !llvm.loop !28

160:                                              ; preds = %157, %154, %156, %156
  %161 = phi ptr [ %158, %157 ], [ %150, %154 ], [ %150, %156 ], [ %150, %156 ]
  %162 = icmp eq ptr %161, %139
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = load i8, ptr %161, align 1, !tbaa !18
  %165 = icmp eq i8 %164, 10
  %166 = icmp ugt ptr %161, %146
  %167 = and i1 %165, %166
  br i1 %167, label %169, label %176

168:                                              ; preds = %160
  br i1 %148, label %169, label %176

169:                                              ; preds = %168, %163
  br label %170

170:                                              ; preds = %169, %174
  %171 = phi ptr [ %172, %174 ], [ %161, %169 ]
  %172 = getelementptr inbounds i8, ptr %171, i64 -1
  %173 = load i8, ptr %172, align 1, !tbaa !18
  switch i8 %173, label %176 [
    i8 9, label %174
    i8 32, label %174
  ]

174:                                              ; preds = %170, %170
  %175 = icmp ugt ptr %172, %146
  br i1 %175, label %170, label %176, !llvm.loop !29

176:                                              ; preds = %174, %170, %145, %168, %163
  %177 = phi ptr [ %161, %163 ], [ %139, %168 ], [ %146, %145 ], [ %172, %174 ], [ %171, %170 ]
  %178 = ptrtoint ptr %177 to i64
  %179 = ptrtoint ptr %146 to i64
  %180 = sub i64 %178, %179
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %203, label %182

182:                                              ; preds = %176
  %183 = load i64, ptr %2, align 8, !tbaa !17
  %184 = icmp ne i64 %183, 0
  %185 = sub i64 75, %147
  %186 = icmp ugt i64 %180, %185
  %187 = select i1 %184, i1 %186, i1 false
  br i1 %187, label %188, label %198

188:                                              ; preds = %182, %188
  %189 = phi i64 [ 75, %188 ], [ %185, %182 ]
  %190 = phi ptr [ %192, %188 ], [ %146, %182 ]
  %191 = phi i64 [ %193, %188 ], [ %180, %182 ]
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef %190, i64 noundef %189, i32 noundef 2) #5
  %192 = getelementptr inbounds i8, ptr %190, i64 %189
  %193 = sub i64 %191, %189
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef nonnull @.str.15, i64 noundef 1, i32 noundef 2) #5
  %194 = load i64, ptr %2, align 8, !tbaa !17
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef %58, i64 noundef %194, i32 noundef 2) #5
  %195 = icmp ugt i64 %193, 75
  br i1 %195, label %188, label %196, !llvm.loop !30

196:                                              ; preds = %188
  %197 = icmp eq i64 %193, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %182, %196
  %199 = phi i64 [ 0, %196 ], [ %147, %182 ]
  %200 = phi ptr [ %192, %196 ], [ %146, %182 ]
  %201 = phi i64 [ %193, %196 ], [ %180, %182 ]
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef %200, i64 noundef %201, i32 noundef 2) #5
  %202 = add i64 %201, %199
  br label %203

203:                                              ; preds = %196, %198, %176
  %204 = phi i64 [ %202, %198 ], [ 0, %196 ], [ %147, %176 ]
  %205 = icmp eq ptr %177, %139
  br i1 %205, label %284, label %206

206:                                              ; preds = %203
  %207 = load i8, ptr %177, align 1, !tbaa !18
  %208 = icmp eq i8 %207, 10
  %209 = load i64, ptr %2, align 8
  %210 = icmp ne i64 %209, 0
  %211 = select i1 %208, i1 %210, i1 false
  %212 = xor i1 %211, true
  %213 = select i1 %212, i1 true, i1 %123
  br i1 %213, label %238, label %214

214:                                              ; preds = %206
  %215 = icmp eq i64 %204, 1
  br i1 %215, label %216, label %237

216:                                              ; preds = %214
  %217 = load ptr, ptr %141, align 8, !tbaa !13
  %218 = getelementptr inbounds %struct.xpv, ptr %217, i64 0, i32 2
  %219 = load i64, ptr %218, align 8, !tbaa !14
  %220 = add i64 %209, 1
  %221 = icmp ugt i64 %219, %220
  br i1 %221, label %222, label %237

222:                                              ; preds = %216
  %223 = load ptr, ptr %142, align 8, !tbaa !18
  %224 = getelementptr inbounds i8, ptr %223, i64 %219
  %225 = sub i64 0, %209
  %226 = getelementptr inbounds i8, ptr %224, i64 %225
  %227 = getelementptr inbounds i8, ptr %226, i64 -2
  %228 = load i8, ptr %227, align 1, !tbaa !18
  %229 = icmp eq i8 %228, 61
  br i1 %229, label %230, label %237

230:                                              ; preds = %222
  %231 = getelementptr inbounds i8, ptr %224, i64 -1
  %232 = load i8, ptr %231, align 1, !tbaa !18
  store i8 %232, ptr %227, align 1, !tbaa !18
  %233 = load ptr, ptr %141, align 8, !tbaa !13
  %234 = getelementptr inbounds %struct.xpv, ptr %233, i64 0, i32 2
  %235 = load i64, ptr %234, align 8, !tbaa !14
  %236 = add i64 %235, -1
  store i64 %236, ptr %234, align 8, !tbaa !14
  br label %258

237:                                              ; preds = %222, %216, %214
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef %58, i64 noundef %209, i32 noundef 2) #5
  br label %258

238:                                              ; preds = %206
  %239 = icmp ugt i64 %204, 72
  %240 = select i1 %210, i1 %239, i1 false
  br i1 %240, label %241, label %253

241:                                              ; preds = %238
  %242 = icmp eq i64 %204, 73
  br i1 %242, label %243, label %250

243:                                              ; preds = %241
  %244 = getelementptr inbounds i8, ptr %177, i64 1
  %245 = icmp ult ptr %244, %139
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = load i8, ptr %244, align 1, !tbaa !18
  %248 = icmp ne i8 %247, 10
  %249 = select i1 %248, i1 true, i1 %123
  br i1 %249, label %250, label %253

250:                                              ; preds = %246, %243, %241
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef nonnull @.str.15, i64 noundef 1, i32 noundef 2) #5
  %251 = load i64, ptr %2, align 8, !tbaa !17
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef %58, i64 noundef %251, i32 noundef 2) #5
  %252 = load i8, ptr %177, align 1, !tbaa !18
  br label %253

253:                                              ; preds = %246, %250, %238
  %254 = phi i8 [ %252, %250 ], [ %207, %246 ], [ %207, %238 ]
  %255 = phi i64 [ 0, %250 ], [ 73, %246 ], [ %204, %238 ]
  %256 = zext i8 %254 to i32
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %141, ptr noundef nonnull @.str.16, i32 noundef %256) #5
  %257 = add i64 %255, 3
  br label %258

258:                                              ; preds = %230, %237, %253
  %259 = phi i64 [ %257, %253 ], [ 0, %237 ], [ 0, %230 ]
  %260 = getelementptr inbounds i8, ptr %177, i64 1
  %261 = load ptr, ptr %141, align 8, !tbaa !13
  %262 = getelementptr inbounds %struct.xpv, ptr %261, i64 0, i32 3
  %263 = load i64, ptr %262, align 8, !tbaa !18
  %264 = icmp ugt i64 %263, 80
  br i1 %264, label %265, label %283

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.xpv, ptr %261, i64 0, i32 2
  %267 = load i64, ptr %266, align 8, !tbaa !14
  %268 = sub i64 %263, %267
  %269 = icmp ult i64 %268, 3
  br i1 %269, label %270, label %283

270:                                              ; preds = %265
  %271 = load i64, ptr %3, align 8, !tbaa !17
  %272 = mul i64 %271, %267
  %273 = ptrtoint ptr %260 to i64
  %274 = sub i64 %273, %143
  %275 = udiv i64 %272, %274
  %276 = load i32, ptr %144, align 4, !tbaa !11
  %277 = and i32 %276, 268435456
  %278 = icmp ne i32 %277, 0
  %279 = icmp ult i64 %263, %275
  %280 = select i1 %278, i1 true, i1 %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %270
  %282 = call ptr @Perl_sv_grow(ptr noundef nonnull %141, i64 noundef %275) #5
  br label %283

283:                                              ; preds = %281, %270, %265, %258
  br label %145

284:                                              ; preds = %203
  %285 = load ptr, ptr %141, align 8, !tbaa !13
  %286 = getelementptr inbounds %struct.xpv, ptr %285, i64 0, i32 2
  %287 = load i64, ptr %286, align 8, !tbaa !14
  %288 = icmp ne i64 %287, 0
  %289 = load i64, ptr %2, align 8
  %290 = icmp ne i64 %289, 0
  %291 = select i1 %288, i1 %290, i1 false
  %292 = icmp ne i64 %204, 0
  %293 = select i1 %291, i1 %292, i1 false
  br i1 %293, label %294, label %296

294:                                              ; preds = %284
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %141, ptr noundef nonnull @.str.15, i64 noundef 1, i32 noundef 2) #5
  %295 = load i64, ptr %2, align 8, !tbaa !17
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %141, ptr noundef %58, i64 noundef %295, i32 noundef 2) #5
  br label %296

296:                                              ; preds = %294, %284
  %297 = icmp eq i32 %27, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %296
  %299 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %24, i32 noundef 2, i64 noundef 0) #5
  br label %300

300:                                              ; preds = %298, %296
  %301 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %141) #5
  %302 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %303 = getelementptr inbounds ptr, ptr %302, i64 %22
  store ptr %301, ptr %303, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %304 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %305 = getelementptr inbounds ptr, ptr %304, i64 %22
  store ptr %305, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_MIME__QuotedPrint_decode_qp(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [3 x i8], align 1
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %7 = load i32, ptr %5, align 4, !tbaa !9
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = and i64 %14, 34359738360
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.13) #5
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi ptr [ %18, %17 ], [ %8, %1 ]
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !11
  %26 = and i32 %25, 538969088
  %27 = icmp eq i32 %26, 1024
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load ptr, ptr %23, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !14
  store i64 %31, ptr %2, align 8, !tbaa !17
  %32 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  br label %37

34:                                               ; preds = %19
  %35 = call ptr @Perl_sv_2pvbyte(ptr noundef nonnull %23, ptr noundef nonnull %2) #5
  %36 = load i64, ptr %2, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i64 [ %31, %28 ], [ %36, %34 ]
  %39 = phi ptr [ %33, %28 ], [ %35, %34 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 %38
  %41 = call i64 @llvm.umax.i64(i64 %38, i64 1)
  %42 = call ptr @Perl_newSV(i64 noundef %41) #5
  %43 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !11
  %45 = or i32 %44, 17408
  store i32 %45, ptr %43, align 4, !tbaa !11
  %46 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !18
  %48 = icmp sgt i64 %38, 0
  br i1 %48, label %49, label %164

49:                                               ; preds = %37
  %50 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 1
  %51 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 2
  br label %52

52:                                               ; preds = %49, %143
  %53 = phi ptr [ %39, %49 ], [ %146, %143 ]
  %54 = phi ptr [ null, %49 ], [ %145, %143 ]
  %55 = phi ptr [ %47, %49 ], [ %144, %143 ]
  %56 = ptrtoint ptr %53 to i64
  %57 = ptrtoint ptr %54 to i64
  %58 = load i8, ptr %53, align 1, !tbaa !18
  switch i8 %58, label %72 [
    i8 32, label %59
    i8 9, label %59
    i8 13, label %63
    i8 10, label %69
  ]

59:                                               ; preds = %52, %52
  %60 = icmp eq ptr %54, null
  %61 = select i1 %60, ptr %53, ptr %54
  %62 = getelementptr inbounds i8, ptr %53, i64 1
  br label %143

63:                                               ; preds = %52
  %64 = getelementptr inbounds i8, ptr %53, i64 1
  %65 = icmp ult ptr %64, %40
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i8, ptr %64, align 1, !tbaa !18
  %68 = icmp eq i8 %67, 10
  br i1 %68, label %143, label %72

69:                                               ; preds = %52
  %70 = getelementptr inbounds i8, ptr %53, i64 1
  %71 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 10, ptr %55, align 1, !tbaa !18
  br label %143

72:                                               ; preds = %52, %63, %66
  %73 = icmp ne ptr %54, null
  %74 = icmp ult ptr %54, %53
  %75 = and i1 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = sub i64 %56, %57
  %78 = getelementptr i8, ptr %54, i64 %77
  br label %79

79:                                               ; preds = %76, %79
  %80 = phi ptr [ %82, %79 ], [ %54, %76 ]
  %81 = phi ptr [ %84, %79 ], [ %55, %76 ]
  %82 = getelementptr inbounds i8, ptr %80, i64 1
  %83 = load i8, ptr %80, align 1, !tbaa !18
  %84 = getelementptr inbounds i8, ptr %81, i64 1
  store i8 %83, ptr %81, align 1, !tbaa !18
  %85 = icmp eq ptr %82, %78
  br i1 %85, label %86, label %79, !llvm.loop !31

86:                                               ; preds = %79
  %87 = load i8, ptr %53, align 1, !tbaa !18
  br label %88

88:                                               ; preds = %86, %72
  %89 = phi i8 [ %58, %72 ], [ %87, %86 ]
  %90 = phi ptr [ %55, %72 ], [ %84, %86 ]
  %91 = icmp eq i8 %89, 61
  br i1 %91, label %92, label %140

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, ptr %53, i64 2
  %94 = icmp ult ptr %93, %40
  br i1 %94, label %95, label %115

95:                                               ; preds = %92
  %96 = getelementptr inbounds i8, ptr %53, i64 1
  %97 = load i8, ptr %96, align 1, !tbaa !18
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !9
  %101 = and i32 %100, 4096
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %95
  %104 = load i8, ptr %93, align 1, !tbaa !18
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !9
  %108 = and i32 %107, 4096
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #6
  store i8 %97, ptr %3, align 1, !tbaa !18
  %111 = getelementptr inbounds i8, ptr %53, i64 3
  store i8 %104, ptr %50, align 1, !tbaa !18
  store i8 0, ptr %51, align 1, !tbaa !18
  %112 = call i64 @strtol(ptr nocapture noundef nonnull %3, ptr noundef null, i32 noundef 16) #5
  %113 = trunc i64 %112 to i8
  %114 = getelementptr inbounds i8, ptr %90, i64 1
  store i8 %113, ptr %90, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #6
  br label %143

115:                                              ; preds = %103, %95, %92
  %116 = getelementptr inbounds i8, ptr %53, i64 1
  %117 = icmp ult ptr %116, %40
  br i1 %117, label %118, label %126

118:                                              ; preds = %115, %121
  %119 = phi ptr [ %122, %121 ], [ %116, %115 ]
  %120 = load i8, ptr %119, align 1, !tbaa !18
  switch i8 %120, label %126 [
    i8 32, label %121
    i8 9, label %121
    i8 10, label %124
  ]

121:                                              ; preds = %118, %118
  %122 = getelementptr inbounds i8, ptr %119, i64 1
  %123 = icmp ult ptr %122, %40
  br i1 %123, label %118, label %126, !llvm.loop !32

124:                                              ; preds = %118
  %125 = getelementptr inbounds i8, ptr %119, i64 1
  br label %143

126:                                              ; preds = %121, %118, %115
  %127 = phi ptr [ %116, %115 ], [ %119, %118 ], [ %122, %121 ]
  %128 = getelementptr inbounds i8, ptr %127, i64 1
  %129 = icmp ult ptr %128, %40
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load i8, ptr %127, align 1, !tbaa !18
  %132 = icmp eq i8 %131, 13
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i8, ptr %128, align 1, !tbaa !18
  %135 = icmp eq i8 %134, 10
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = getelementptr inbounds i8, ptr %127, i64 2
  br label %143

138:                                              ; preds = %133, %130, %126
  %139 = getelementptr inbounds i8, ptr %90, i64 1
  store i8 61, ptr %90, align 1, !tbaa !18
  br label %143

140:                                              ; preds = %88
  %141 = getelementptr inbounds i8, ptr %53, i64 1
  %142 = getelementptr inbounds i8, ptr %90, i64 1
  store i8 %89, ptr %90, align 1, !tbaa !18
  br label %143

143:                                              ; preds = %124, %138, %136, %66, %140, %110, %69, %59
  %144 = phi ptr [ %55, %59 ], [ %71, %69 ], [ %114, %110 ], [ %142, %140 ], [ %55, %66 ], [ %90, %124 ], [ %90, %136 ], [ %139, %138 ]
  %145 = phi ptr [ %61, %59 ], [ null, %69 ], [ null, %110 ], [ null, %140 ], [ %54, %66 ], [ null, %124 ], [ null, %136 ], [ null, %138 ]
  %146 = phi ptr [ %62, %59 ], [ %70, %69 ], [ %111, %110 ], [ %141, %140 ], [ %64, %66 ], [ %125, %124 ], [ %137, %136 ], [ %116, %138 ]
  %147 = icmp ult ptr %146, %40
  br i1 %147, label %52, label %148, !llvm.loop !33

148:                                              ; preds = %143
  %149 = icmp ne ptr %145, null
  %150 = icmp ult ptr %145, %146
  %151 = and i1 %149, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = ptrtoint ptr %145 to i64
  %154 = ptrtoint ptr %146 to i64
  %155 = sub i64 %154, %153
  %156 = getelementptr i8, ptr %145, i64 %155
  br label %157

157:                                              ; preds = %152, %157
  %158 = phi ptr [ %160, %157 ], [ %145, %152 ]
  %159 = phi ptr [ %162, %157 ], [ %144, %152 ]
  %160 = getelementptr inbounds i8, ptr %158, i64 1
  %161 = load i8, ptr %158, align 1, !tbaa !18
  %162 = getelementptr inbounds i8, ptr %159, i64 1
  store i8 %161, ptr %159, align 1, !tbaa !18
  %163 = icmp eq ptr %160, %156
  br i1 %163, label %164, label %157, !llvm.loop !34

164:                                              ; preds = %157, %37, %148
  %165 = phi ptr [ %144, %148 ], [ %47, %37 ], [ %162, %157 ]
  store i8 0, ptr %165, align 1, !tbaa !18
  %166 = load ptr, ptr %46, align 8, !tbaa !18
  %167 = ptrtoint ptr %165 to i64
  %168 = ptrtoint ptr %166 to i64
  %169 = sub i64 %167, %168
  %170 = load ptr, ptr %42, align 8, !tbaa !13
  %171 = getelementptr inbounds %struct.xpv, ptr %170, i64 0, i32 2
  store i64 %169, ptr %171, align 8, !tbaa !14
  %172 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %42) #5
  %173 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %174 = getelementptr inbounds ptr, ptr %173, i64 %21
  store ptr %172, ptr %174, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %175 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %176 = getelementptr inbounds ptr, ptr %175, i64 %21
  store ptr %176, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pvbyte(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 12}
!12 = !{!"sv", !6, i64 0, !10, i64 8, !10, i64 12, !7, i64 16}
!13 = !{!12, !6, i64 0}
!14 = !{!15, !16, i64 16}
!15 = !{!"xpv", !6, i64 0, !7, i64 8, !16, i64 16, !7, i64 24}
!16 = !{!"long", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!7, !7, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = !{!25, !7, i64 35}
!25 = !{!"op", !6, i64 0, !6, i64 8, !6, i64 16, !16, i64 24, !10, i64 32, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !7, i64 34, !7, i64 35}
!26 = !{!25, !16, i64 24}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
