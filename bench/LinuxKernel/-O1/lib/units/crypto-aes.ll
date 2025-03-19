; ModuleID = 'lib/crypto/aes.c'
source_filename = "lib/crypto/aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_aes_sbox: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_aes_sbox ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_crypto_aes_inv_sbox: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad crypto_aes_inv_sbox ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_aes_expandkey: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad aes_expandkey ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_aes_encrypt: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad aes_encrypt ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_aes_decrypt: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad aes_decrypt ; .previous"

%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.anon = type { i32 }
%struct.anon.0 = type { i32 }

@aes_sbox = internal constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\\\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", section ".data..cacheline_aligned", align 64, !dbg !0
@aes_inv_sbox = internal constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\\\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", section ".data..cacheline_aligned", align 64, !dbg !73
@__UNIQUE_ID___addressable_crypto_aes_sbox197 = internal global ptr @crypto_aes_sbox, section ".discard.addressable", align 8, !dbg !41
@__UNIQUE_ID___addressable_crypto_aes_inv_sbox198 = internal global ptr @crypto_aes_inv_sbox, section ".discard.addressable", align 8, !dbg !43
@__UNIQUE_ID___addressable_aes_expandkey199 = internal global ptr @aes_expandkey, section ".discard.addressable", align 8, !dbg !45
@__UNIQUE_ID___addressable_aes_encrypt200 = internal global ptr @aes_encrypt, section ".discard.addressable", align 8, !dbg !47
@__UNIQUE_ID___addressable_aes_decrypt201 = internal global ptr @aes_decrypt, section ".discard.addressable", align 8, !dbg !49
@__UNIQUE_ID_description202 = internal constant [39 x i8] c"libaes.description=Generic AES library\00", section ".modinfo", align 1, !dbg !51
@__UNIQUE_ID_author203 = internal constant [57 x i8] c"libaes.author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1, !dbg !58
@__UNIQUE_ID_file204 = internal constant [30 x i8] c"libaes.file=lib/crypto/libaes\00", section ".modinfo", align 1, !dbg !63
@__UNIQUE_ID_license205 = internal constant [22 x i8] c"libaes.license=GPL v2\00", section ".modinfo", align 1, !dbg !68
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_crypto_aes_sbox197, ptr @__UNIQUE_ID___addressable_crypto_aes_inv_sbox198, ptr @__UNIQUE_ID___addressable_aes_expandkey199, ptr @__UNIQUE_ID___addressable_aes_encrypt200, ptr @__UNIQUE_ID___addressable_aes_decrypt201, ptr @__UNIQUE_ID_description202, ptr @__UNIQUE_ID_author203, ptr @__UNIQUE_ID_file204, ptr @__UNIQUE_ID_license205], section "llvm.metadata"

@crypto_aes_sbox = hidden alias [256 x i8], ptr @aes_sbox
@crypto_aes_inv_sbox = hidden alias [256 x i8], ptr @aes_inv_sbox

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @aes_expandkey(ptr noundef %ctx, ptr noundef %in_key, i32 noundef %key_len) #0 align 16 !dbg !95 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %in_key.addr = alloca ptr, align 8
  %key_len.addr = alloca i32, align 4
  %kwords = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %rki = alloca ptr, align 8
  %rko = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !112, metadata !DIExpression()), !dbg !126
  store ptr %in_key, ptr %in_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_key.addr, metadata !113, metadata !DIExpression()), !dbg !127
  store i32 %key_len, ptr %key_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %key_len.addr, metadata !114, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 4, ptr %kwords) #5, !dbg !129
  call void @llvm.dbg.declare(metadata ptr %kwords, metadata !115, metadata !DIExpression()), !dbg !130
  %0 = load i32, ptr %key_len.addr, align 4, !dbg !131
  %conv = zext i32 %0 to i64, !dbg !131
  %div = udiv i64 %conv, 4, !dbg !132
  %conv1 = trunc i64 %div to i32, !dbg !131
  store i32 %conv1, ptr %kwords, align 4, !dbg !130
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !116, metadata !DIExpression()), !dbg !134
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %i, metadata !117, metadata !DIExpression()), !dbg !135
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %j, metadata !118, metadata !DIExpression()), !dbg !136
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #5, !dbg !137
  call void @llvm.dbg.declare(metadata ptr %err, metadata !119, metadata !DIExpression()), !dbg !138
  %1 = load i32, ptr %key_len.addr, align 4, !dbg !139
  %call = call i32 @aes_check_keylen(i32 noundef %1) #6, !dbg !140
  store i32 %call, ptr %err, align 4, !dbg !141
  %2 = load i32, ptr %err, align 4, !dbg !142
  %tobool = icmp ne i32 %2, 0, !dbg !142
  br i1 %tobool, label %if.then, label %if.end, !dbg !144

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %err, align 4, !dbg !145
  store i32 %3, ptr %retval, align 4, !dbg !146
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup167, !dbg !146

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %key_len.addr, align 4, !dbg !147
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !148
  %key_length = getelementptr inbounds %struct.crypto_aes_ctx, ptr %5, i32 0, i32 2, !dbg !149
  store i32 %4, ptr %key_length, align 4, !dbg !150
  store i32 0, ptr %i, align 4, !dbg !151
  br label %for.cond, !dbg !153

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4, !dbg !154
  %7 = load i32, ptr %kwords, align 4, !dbg !156
  %cmp = icmp ult i32 %6, %7, !dbg !157
  br i1 %cmp, label %for.body, label %for.end, !dbg !158

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %in_key.addr, align 8, !dbg !159
  %9 = load i32, ptr %i, align 4, !dbg !160
  %conv3 = zext i32 %9 to i64, !dbg !160
  %mul = mul i64 %conv3, 4, !dbg !161
  %add.ptr = getelementptr i8, ptr %8, i64 %mul, !dbg !162
  %call4 = call i32 @get_unaligned_le32(ptr noundef %add.ptr) #6, !dbg !163
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !164
  %key_enc = getelementptr inbounds %struct.crypto_aes_ctx, ptr %10, i32 0, i32 0, !dbg !165
  %11 = load i32, ptr %i, align 4, !dbg !166
  %idxprom = zext i32 %11 to i64, !dbg !164
  %arrayidx = getelementptr [60 x i32], ptr %key_enc, i64 0, i64 %idxprom, !dbg !164
  store i32 %call4, ptr %arrayidx, align 4, !dbg !167
  br label %for.inc, !dbg !164

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !168
  %inc = add i32 %12, 1, !dbg !168
  store i32 %inc, ptr %i, align 4, !dbg !168
  br label %for.cond, !dbg !169, !llvm.loop !170

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !174
  store i32 1, ptr %rc, align 4, !dbg !175
  br label %for.cond5, !dbg !176

for.cond5:                                        ; preds = %for.inc75, %for.end
  %13 = load i32, ptr %i, align 4, !dbg !177
  %cmp6 = icmp ult i32 %13, 10, !dbg !178
  br i1 %cmp6, label %for.body8, label %for.end78, !dbg !179

for.body8:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rki) #5, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %rki, metadata !120, metadata !DIExpression()), !dbg !181
  %14 = load ptr, ptr %ctx.addr, align 8, !dbg !182
  %key_enc9 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %14, i32 0, i32 0, !dbg !183
  %arraydecay = getelementptr inbounds [60 x i32], ptr %key_enc9, i64 0, i64 0, !dbg !182
  %15 = load i32, ptr %i, align 4, !dbg !184
  %16 = load i32, ptr %kwords, align 4, !dbg !185
  %mul10 = mul i32 %15, %16, !dbg !186
  %idx.ext = zext i32 %mul10 to i64, !dbg !187
  %add.ptr11 = getelementptr i32, ptr %arraydecay, i64 %idx.ext, !dbg !187
  store ptr %add.ptr11, ptr %rki, align 8, !dbg !181
  call void @llvm.lifetime.start.p0(i64 8, ptr %rko) #5, !dbg !188
  call void @llvm.dbg.declare(metadata ptr %rko, metadata !125, metadata !DIExpression()), !dbg !189
  %17 = load ptr, ptr %rki, align 8, !dbg !190
  %18 = load i32, ptr %kwords, align 4, !dbg !191
  %idx.ext12 = zext i32 %18 to i64, !dbg !192
  %add.ptr13 = getelementptr i32, ptr %17, i64 %idx.ext12, !dbg !192
  store ptr %add.ptr13, ptr %rko, align 8, !dbg !189
  %19 = load ptr, ptr %rki, align 8, !dbg !193
  %20 = load i32, ptr %kwords, align 4, !dbg !194
  %sub = sub i32 %20, 1, !dbg !195
  %idxprom14 = zext i32 %sub to i64, !dbg !193
  %arrayidx15 = getelementptr i32, ptr %19, i64 %idxprom14, !dbg !193
  %21 = load i32, ptr %arrayidx15, align 4, !dbg !193
  %call16 = call i32 @subw(i32 noundef %21) #6, !dbg !196
  %call17 = call i32 @ror32(i32 noundef %call16, i32 noundef 8) #6, !dbg !197
  %22 = load i32, ptr %rc, align 4, !dbg !198
  %xor = xor i32 %call17, %22, !dbg !199
  %23 = load ptr, ptr %rki, align 8, !dbg !200
  %arrayidx18 = getelementptr i32, ptr %23, i64 0, !dbg !200
  %24 = load i32, ptr %arrayidx18, align 4, !dbg !200
  %xor19 = xor i32 %xor, %24, !dbg !201
  %25 = load ptr, ptr %rko, align 8, !dbg !202
  %arrayidx20 = getelementptr i32, ptr %25, i64 0, !dbg !202
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !203
  %26 = load ptr, ptr %rko, align 8, !dbg !204
  %arrayidx21 = getelementptr i32, ptr %26, i64 0, !dbg !204
  %27 = load i32, ptr %arrayidx21, align 4, !dbg !204
  %28 = load ptr, ptr %rki, align 8, !dbg !205
  %arrayidx22 = getelementptr i32, ptr %28, i64 1, !dbg !205
  %29 = load i32, ptr %arrayidx22, align 4, !dbg !205
  %xor23 = xor i32 %27, %29, !dbg !206
  %30 = load ptr, ptr %rko, align 8, !dbg !207
  %arrayidx24 = getelementptr i32, ptr %30, i64 1, !dbg !207
  store i32 %xor23, ptr %arrayidx24, align 4, !dbg !208
  %31 = load ptr, ptr %rko, align 8, !dbg !209
  %arrayidx25 = getelementptr i32, ptr %31, i64 1, !dbg !209
  %32 = load i32, ptr %arrayidx25, align 4, !dbg !209
  %33 = load ptr, ptr %rki, align 8, !dbg !210
  %arrayidx26 = getelementptr i32, ptr %33, i64 2, !dbg !210
  %34 = load i32, ptr %arrayidx26, align 4, !dbg !210
  %xor27 = xor i32 %32, %34, !dbg !211
  %35 = load ptr, ptr %rko, align 8, !dbg !212
  %arrayidx28 = getelementptr i32, ptr %35, i64 2, !dbg !212
  store i32 %xor27, ptr %arrayidx28, align 4, !dbg !213
  %36 = load ptr, ptr %rko, align 8, !dbg !214
  %arrayidx29 = getelementptr i32, ptr %36, i64 2, !dbg !214
  %37 = load i32, ptr %arrayidx29, align 4, !dbg !214
  %38 = load ptr, ptr %rki, align 8, !dbg !215
  %arrayidx30 = getelementptr i32, ptr %38, i64 3, !dbg !215
  %39 = load i32, ptr %arrayidx30, align 4, !dbg !215
  %xor31 = xor i32 %37, %39, !dbg !216
  %40 = load ptr, ptr %rko, align 8, !dbg !217
  %arrayidx32 = getelementptr i32, ptr %40, i64 3, !dbg !217
  store i32 %xor31, ptr %arrayidx32, align 4, !dbg !218
  %41 = load i32, ptr %key_len.addr, align 4, !dbg !219
  %cmp33 = icmp eq i32 %41, 24, !dbg !221
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !222

if.then35:                                        ; preds = %for.body8
  %42 = load i32, ptr %i, align 4, !dbg !223
  %cmp36 = icmp uge i32 %42, 7, !dbg !226
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !227

if.then38:                                        ; preds = %if.then35
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !228

if.end39:                                         ; preds = %if.then35
  %43 = load ptr, ptr %rko, align 8, !dbg !229
  %arrayidx40 = getelementptr i32, ptr %43, i64 3, !dbg !229
  %44 = load i32, ptr %arrayidx40, align 4, !dbg !229
  %45 = load ptr, ptr %rki, align 8, !dbg !230
  %arrayidx41 = getelementptr i32, ptr %45, i64 4, !dbg !230
  %46 = load i32, ptr %arrayidx41, align 4, !dbg !230
  %xor42 = xor i32 %44, %46, !dbg !231
  %47 = load ptr, ptr %rko, align 8, !dbg !232
  %arrayidx43 = getelementptr i32, ptr %47, i64 4, !dbg !232
  store i32 %xor42, ptr %arrayidx43, align 4, !dbg !233
  %48 = load ptr, ptr %rko, align 8, !dbg !234
  %arrayidx44 = getelementptr i32, ptr %48, i64 4, !dbg !234
  %49 = load i32, ptr %arrayidx44, align 4, !dbg !234
  %50 = load ptr, ptr %rki, align 8, !dbg !235
  %arrayidx45 = getelementptr i32, ptr %50, i64 5, !dbg !235
  %51 = load i32, ptr %arrayidx45, align 4, !dbg !235
  %xor46 = xor i32 %49, %51, !dbg !236
  %52 = load ptr, ptr %rko, align 8, !dbg !237
  %arrayidx47 = getelementptr i32, ptr %52, i64 5, !dbg !237
  store i32 %xor46, ptr %arrayidx47, align 4, !dbg !238
  br label %if.end73, !dbg !239

if.else:                                          ; preds = %for.body8
  %53 = load i32, ptr %key_len.addr, align 4, !dbg !240
  %cmp48 = icmp eq i32 %53, 32, !dbg !242
  br i1 %cmp48, label %if.then50, label %if.end72, !dbg !243

if.then50:                                        ; preds = %if.else
  %54 = load i32, ptr %i, align 4, !dbg !244
  %cmp51 = icmp uge i32 %54, 6, !dbg !247
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !248

if.then53:                                        ; preds = %if.then50
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !249

if.end54:                                         ; preds = %if.then50
  %55 = load ptr, ptr %rko, align 8, !dbg !250
  %arrayidx55 = getelementptr i32, ptr %55, i64 3, !dbg !250
  %56 = load i32, ptr %arrayidx55, align 4, !dbg !250
  %call56 = call i32 @subw(i32 noundef %56) #6, !dbg !251
  %57 = load ptr, ptr %rki, align 8, !dbg !252
  %arrayidx57 = getelementptr i32, ptr %57, i64 4, !dbg !252
  %58 = load i32, ptr %arrayidx57, align 4, !dbg !252
  %xor58 = xor i32 %call56, %58, !dbg !253
  %59 = load ptr, ptr %rko, align 8, !dbg !254
  %arrayidx59 = getelementptr i32, ptr %59, i64 4, !dbg !254
  store i32 %xor58, ptr %arrayidx59, align 4, !dbg !255
  %60 = load ptr, ptr %rko, align 8, !dbg !256
  %arrayidx60 = getelementptr i32, ptr %60, i64 4, !dbg !256
  %61 = load i32, ptr %arrayidx60, align 4, !dbg !256
  %62 = load ptr, ptr %rki, align 8, !dbg !257
  %arrayidx61 = getelementptr i32, ptr %62, i64 5, !dbg !257
  %63 = load i32, ptr %arrayidx61, align 4, !dbg !257
  %xor62 = xor i32 %61, %63, !dbg !258
  %64 = load ptr, ptr %rko, align 8, !dbg !259
  %arrayidx63 = getelementptr i32, ptr %64, i64 5, !dbg !259
  store i32 %xor62, ptr %arrayidx63, align 4, !dbg !260
  %65 = load ptr, ptr %rko, align 8, !dbg !261
  %arrayidx64 = getelementptr i32, ptr %65, i64 5, !dbg !261
  %66 = load i32, ptr %arrayidx64, align 4, !dbg !261
  %67 = load ptr, ptr %rki, align 8, !dbg !262
  %arrayidx65 = getelementptr i32, ptr %67, i64 6, !dbg !262
  %68 = load i32, ptr %arrayidx65, align 4, !dbg !262
  %xor66 = xor i32 %66, %68, !dbg !263
  %69 = load ptr, ptr %rko, align 8, !dbg !264
  %arrayidx67 = getelementptr i32, ptr %69, i64 6, !dbg !264
  store i32 %xor66, ptr %arrayidx67, align 4, !dbg !265
  %70 = load ptr, ptr %rko, align 8, !dbg !266
  %arrayidx68 = getelementptr i32, ptr %70, i64 6, !dbg !266
  %71 = load i32, ptr %arrayidx68, align 4, !dbg !266
  %72 = load ptr, ptr %rki, align 8, !dbg !267
  %arrayidx69 = getelementptr i32, ptr %72, i64 7, !dbg !267
  %73 = load i32, ptr %arrayidx69, align 4, !dbg !267
  %xor70 = xor i32 %71, %73, !dbg !268
  %74 = load ptr, ptr %rko, align 8, !dbg !269
  %arrayidx71 = getelementptr i32, ptr %74, i64 7, !dbg !269
  store i32 %xor70, ptr %arrayidx71, align 4, !dbg !270
  br label %if.end72, !dbg !271

if.end72:                                         ; preds = %if.end54, %if.else
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end39
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !272
  br label %cleanup, !dbg !272

cleanup:                                          ; preds = %if.end73, %if.then53, %if.then38
  call void @llvm.lifetime.end.p0(i64 8, ptr %rko) #5, !dbg !272
  call void @llvm.lifetime.end.p0(i64 8, ptr %rki) #5, !dbg !272
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.end78
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc75, !dbg !273

for.inc75:                                        ; preds = %cleanup.cont
  %75 = load i32, ptr %i, align 4, !dbg !274
  %inc76 = add i32 %75, 1, !dbg !274
  store i32 %inc76, ptr %i, align 4, !dbg !274
  %76 = load i32, ptr %rc, align 4, !dbg !275
  %call77 = call i32 @mul_by_x(i32 noundef %76) #6, !dbg !276
  store i32 %call77, ptr %rc, align 4, !dbg !277
  br label %for.cond5, !dbg !278, !llvm.loop !279

for.end78:                                        ; preds = %cleanup, %for.cond5
  %77 = load ptr, ptr %ctx.addr, align 8, !dbg !281
  %key_enc79 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %77, i32 0, i32 0, !dbg !282
  %78 = load i32, ptr %key_len.addr, align 4, !dbg !283
  %add = add i32 %78, 24, !dbg !284
  %idxprom80 = zext i32 %add to i64, !dbg !281
  %arrayidx81 = getelementptr [60 x i32], ptr %key_enc79, i64 0, i64 %idxprom80, !dbg !281
  %79 = load i32, ptr %arrayidx81, align 4, !dbg !281
  %80 = load ptr, ptr %ctx.addr, align 8, !dbg !285
  %key_dec = getelementptr inbounds %struct.crypto_aes_ctx, ptr %80, i32 0, i32 1, !dbg !286
  %arrayidx82 = getelementptr [60 x i32], ptr %key_dec, i64 0, i64 0, !dbg !285
  store i32 %79, ptr %arrayidx82, align 4, !dbg !287
  %81 = load ptr, ptr %ctx.addr, align 8, !dbg !288
  %key_enc83 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %81, i32 0, i32 0, !dbg !289
  %82 = load i32, ptr %key_len.addr, align 4, !dbg !290
  %add84 = add i32 %82, 25, !dbg !291
  %idxprom85 = zext i32 %add84 to i64, !dbg !288
  %arrayidx86 = getelementptr [60 x i32], ptr %key_enc83, i64 0, i64 %idxprom85, !dbg !288
  %83 = load i32, ptr %arrayidx86, align 4, !dbg !288
  %84 = load ptr, ptr %ctx.addr, align 8, !dbg !292
  %key_dec87 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %84, i32 0, i32 1, !dbg !293
  %arrayidx88 = getelementptr [60 x i32], ptr %key_dec87, i64 0, i64 1, !dbg !292
  store i32 %83, ptr %arrayidx88, align 4, !dbg !294
  %85 = load ptr, ptr %ctx.addr, align 8, !dbg !295
  %key_enc89 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %85, i32 0, i32 0, !dbg !296
  %86 = load i32, ptr %key_len.addr, align 4, !dbg !297
  %add90 = add i32 %86, 26, !dbg !298
  %idxprom91 = zext i32 %add90 to i64, !dbg !295
  %arrayidx92 = getelementptr [60 x i32], ptr %key_enc89, i64 0, i64 %idxprom91, !dbg !295
  %87 = load i32, ptr %arrayidx92, align 4, !dbg !295
  %88 = load ptr, ptr %ctx.addr, align 8, !dbg !299
  %key_dec93 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %88, i32 0, i32 1, !dbg !300
  %arrayidx94 = getelementptr [60 x i32], ptr %key_dec93, i64 0, i64 2, !dbg !299
  store i32 %87, ptr %arrayidx94, align 4, !dbg !301
  %89 = load ptr, ptr %ctx.addr, align 8, !dbg !302
  %key_enc95 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %89, i32 0, i32 0, !dbg !303
  %90 = load i32, ptr %key_len.addr, align 4, !dbg !304
  %add96 = add i32 %90, 27, !dbg !305
  %idxprom97 = zext i32 %add96 to i64, !dbg !302
  %arrayidx98 = getelementptr [60 x i32], ptr %key_enc95, i64 0, i64 %idxprom97, !dbg !302
  %91 = load i32, ptr %arrayidx98, align 4, !dbg !302
  %92 = load ptr, ptr %ctx.addr, align 8, !dbg !306
  %key_dec99 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %92, i32 0, i32 1, !dbg !307
  %arrayidx100 = getelementptr [60 x i32], ptr %key_dec99, i64 0, i64 3, !dbg !306
  store i32 %91, ptr %arrayidx100, align 4, !dbg !308
  store i32 4, ptr %i, align 4, !dbg !309
  %93 = load i32, ptr %key_len.addr, align 4, !dbg !311
  %add101 = add i32 %93, 20, !dbg !312
  store i32 %add101, ptr %j, align 4, !dbg !313
  br label %for.cond102, !dbg !314

for.cond102:                                      ; preds = %for.inc140, %for.end78
  %94 = load i32, ptr %j, align 4, !dbg !315
  %cmp103 = icmp ugt i32 %94, 0, !dbg !317
  br i1 %cmp103, label %for.body105, label %for.end143, !dbg !318

for.body105:                                      ; preds = %for.cond102
  %95 = load ptr, ptr %ctx.addr, align 8, !dbg !319
  %key_enc106 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %95, i32 0, i32 0, !dbg !321
  %96 = load i32, ptr %j, align 4, !dbg !322
  %idxprom107 = zext i32 %96 to i64, !dbg !319
  %arrayidx108 = getelementptr [60 x i32], ptr %key_enc106, i64 0, i64 %idxprom107, !dbg !319
  %97 = load i32, ptr %arrayidx108, align 4, !dbg !319
  %call109 = call i32 @inv_mix_columns(i32 noundef %97) #6, !dbg !323
  %98 = load ptr, ptr %ctx.addr, align 8, !dbg !324
  %key_dec110 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %98, i32 0, i32 1, !dbg !325
  %99 = load i32, ptr %i, align 4, !dbg !326
  %idxprom111 = zext i32 %99 to i64, !dbg !324
  %arrayidx112 = getelementptr [60 x i32], ptr %key_dec110, i64 0, i64 %idxprom111, !dbg !324
  store i32 %call109, ptr %arrayidx112, align 4, !dbg !327
  %100 = load ptr, ptr %ctx.addr, align 8, !dbg !328
  %key_enc113 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %100, i32 0, i32 0, !dbg !329
  %101 = load i32, ptr %j, align 4, !dbg !330
  %add114 = add i32 %101, 1, !dbg !331
  %idxprom115 = zext i32 %add114 to i64, !dbg !328
  %arrayidx116 = getelementptr [60 x i32], ptr %key_enc113, i64 0, i64 %idxprom115, !dbg !328
  %102 = load i32, ptr %arrayidx116, align 4, !dbg !328
  %call117 = call i32 @inv_mix_columns(i32 noundef %102) #6, !dbg !332
  %103 = load ptr, ptr %ctx.addr, align 8, !dbg !333
  %key_dec118 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %103, i32 0, i32 1, !dbg !334
  %104 = load i32, ptr %i, align 4, !dbg !335
  %add119 = add i32 %104, 1, !dbg !336
  %idxprom120 = zext i32 %add119 to i64, !dbg !333
  %arrayidx121 = getelementptr [60 x i32], ptr %key_dec118, i64 0, i64 %idxprom120, !dbg !333
  store i32 %call117, ptr %arrayidx121, align 4, !dbg !337
  %105 = load ptr, ptr %ctx.addr, align 8, !dbg !338
  %key_enc122 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %105, i32 0, i32 0, !dbg !339
  %106 = load i32, ptr %j, align 4, !dbg !340
  %add123 = add i32 %106, 2, !dbg !341
  %idxprom124 = zext i32 %add123 to i64, !dbg !338
  %arrayidx125 = getelementptr [60 x i32], ptr %key_enc122, i64 0, i64 %idxprom124, !dbg !338
  %107 = load i32, ptr %arrayidx125, align 4, !dbg !338
  %call126 = call i32 @inv_mix_columns(i32 noundef %107) #6, !dbg !342
  %108 = load ptr, ptr %ctx.addr, align 8, !dbg !343
  %key_dec127 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %108, i32 0, i32 1, !dbg !344
  %109 = load i32, ptr %i, align 4, !dbg !345
  %add128 = add i32 %109, 2, !dbg !346
  %idxprom129 = zext i32 %add128 to i64, !dbg !343
  %arrayidx130 = getelementptr [60 x i32], ptr %key_dec127, i64 0, i64 %idxprom129, !dbg !343
  store i32 %call126, ptr %arrayidx130, align 4, !dbg !347
  %110 = load ptr, ptr %ctx.addr, align 8, !dbg !348
  %key_enc131 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %110, i32 0, i32 0, !dbg !349
  %111 = load i32, ptr %j, align 4, !dbg !350
  %add132 = add i32 %111, 3, !dbg !351
  %idxprom133 = zext i32 %add132 to i64, !dbg !348
  %arrayidx134 = getelementptr [60 x i32], ptr %key_enc131, i64 0, i64 %idxprom133, !dbg !348
  %112 = load i32, ptr %arrayidx134, align 4, !dbg !348
  %call135 = call i32 @inv_mix_columns(i32 noundef %112) #6, !dbg !352
  %113 = load ptr, ptr %ctx.addr, align 8, !dbg !353
  %key_dec136 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %113, i32 0, i32 1, !dbg !354
  %114 = load i32, ptr %i, align 4, !dbg !355
  %add137 = add i32 %114, 3, !dbg !356
  %idxprom138 = zext i32 %add137 to i64, !dbg !353
  %arrayidx139 = getelementptr [60 x i32], ptr %key_dec136, i64 0, i64 %idxprom138, !dbg !353
  store i32 %call135, ptr %arrayidx139, align 4, !dbg !357
  br label %for.inc140, !dbg !358

for.inc140:                                       ; preds = %for.body105
  %115 = load i32, ptr %i, align 4, !dbg !359
  %add141 = add i32 %115, 4, !dbg !359
  store i32 %add141, ptr %i, align 4, !dbg !359
  %116 = load i32, ptr %j, align 4, !dbg !360
  %sub142 = sub i32 %116, 4, !dbg !360
  store i32 %sub142, ptr %j, align 4, !dbg !360
  br label %for.cond102, !dbg !361, !llvm.loop !362

for.end143:                                       ; preds = %for.cond102
  %117 = load ptr, ptr %ctx.addr, align 8, !dbg !364
  %key_enc144 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %117, i32 0, i32 0, !dbg !365
  %arrayidx145 = getelementptr [60 x i32], ptr %key_enc144, i64 0, i64 0, !dbg !364
  %118 = load i32, ptr %arrayidx145, align 4, !dbg !364
  %119 = load ptr, ptr %ctx.addr, align 8, !dbg !366
  %key_dec146 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %119, i32 0, i32 1, !dbg !367
  %120 = load i32, ptr %i, align 4, !dbg !368
  %idxprom147 = zext i32 %120 to i64, !dbg !366
  %arrayidx148 = getelementptr [60 x i32], ptr %key_dec146, i64 0, i64 %idxprom147, !dbg !366
  store i32 %118, ptr %arrayidx148, align 4, !dbg !369
  %121 = load ptr, ptr %ctx.addr, align 8, !dbg !370
  %key_enc149 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %121, i32 0, i32 0, !dbg !371
  %arrayidx150 = getelementptr [60 x i32], ptr %key_enc149, i64 0, i64 1, !dbg !370
  %122 = load i32, ptr %arrayidx150, align 4, !dbg !370
  %123 = load ptr, ptr %ctx.addr, align 8, !dbg !372
  %key_dec151 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %123, i32 0, i32 1, !dbg !373
  %124 = load i32, ptr %i, align 4, !dbg !374
  %add152 = add i32 %124, 1, !dbg !375
  %idxprom153 = zext i32 %add152 to i64, !dbg !372
  %arrayidx154 = getelementptr [60 x i32], ptr %key_dec151, i64 0, i64 %idxprom153, !dbg !372
  store i32 %122, ptr %arrayidx154, align 4, !dbg !376
  %125 = load ptr, ptr %ctx.addr, align 8, !dbg !377
  %key_enc155 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %125, i32 0, i32 0, !dbg !378
  %arrayidx156 = getelementptr [60 x i32], ptr %key_enc155, i64 0, i64 2, !dbg !377
  %126 = load i32, ptr %arrayidx156, align 4, !dbg !377
  %127 = load ptr, ptr %ctx.addr, align 8, !dbg !379
  %key_dec157 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %127, i32 0, i32 1, !dbg !380
  %128 = load i32, ptr %i, align 4, !dbg !381
  %add158 = add i32 %128, 2, !dbg !382
  %idxprom159 = zext i32 %add158 to i64, !dbg !379
  %arrayidx160 = getelementptr [60 x i32], ptr %key_dec157, i64 0, i64 %idxprom159, !dbg !379
  store i32 %126, ptr %arrayidx160, align 4, !dbg !383
  %129 = load ptr, ptr %ctx.addr, align 8, !dbg !384
  %key_enc161 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %129, i32 0, i32 0, !dbg !385
  %arrayidx162 = getelementptr [60 x i32], ptr %key_enc161, i64 0, i64 3, !dbg !384
  %130 = load i32, ptr %arrayidx162, align 4, !dbg !384
  %131 = load ptr, ptr %ctx.addr, align 8, !dbg !386
  %key_dec163 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %131, i32 0, i32 1, !dbg !387
  %132 = load i32, ptr %i, align 4, !dbg !388
  %add164 = add i32 %132, 3, !dbg !389
  %idxprom165 = zext i32 %add164 to i64, !dbg !386
  %arrayidx166 = getelementptr [60 x i32], ptr %key_dec163, i64 0, i64 %idxprom165, !dbg !386
  store i32 %130, ptr %arrayidx166, align 4, !dbg !390
  store i32 0, ptr %retval, align 4, !dbg !391
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup167, !dbg !391

cleanup167:                                       ; preds = %for.end143, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #5, !dbg !392
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5, !dbg !392
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !392
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5, !dbg !392
  call void @llvm.lifetime.end.p0(i64 4, ptr %kwords) #5, !dbg !392
  %133 = load i32, ptr %retval, align 4, !dbg !392
  ret i32 %133, !dbg !392

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @aes_check_keylen(i32 noundef %keylen) #3 align 16 !dbg !393 {
entry:
  %retval = alloca i32, align 4
  %keylen.addr = alloca i32, align 4
  store i32 %keylen, ptr %keylen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keylen.addr, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = load i32, ptr %keylen.addr, align 4, !dbg !399
  switch i32 %0, label %sw.default [
    i32 16, label %sw.bb
    i32 24, label %sw.bb
    i32 32, label %sw.bb
  ], !dbg !400

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog, !dbg !401

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !403
  br label %return, !dbg !403

sw.epilog:                                        ; preds = %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !404
  br label %return, !dbg !404

return:                                           ; preds = %sw.epilog, %sw.default
  %1 = load i32, ptr %retval, align 4, !dbg !405
  ret i32 %1, !dbg !405
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #3 align 16 !dbg !15 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !23, metadata !DIExpression()), !dbg !406
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #5, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !24, metadata !DIExpression()), !dbg !407
  %0 = load ptr, ptr %p.addr, align 8, !dbg !407
  store ptr %0, ptr %__pptr, align 8, !dbg !407
  %1 = load ptr, ptr %__pptr, align 8, !dbg !407
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !407
  %2 = load i32, ptr %x, align 1, !dbg !407
  store i32 %2, ptr %tmp, align 4, !dbg !407
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #5, !dbg !408
  %3 = load i32, ptr %tmp, align 4, !dbg !407
  ret i32 %3, !dbg !409
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ror32(i32 noundef %word, i32 noundef %shift) #3 align 16 !dbg !410 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !415, metadata !DIExpression()), !dbg !417
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !416, metadata !DIExpression()), !dbg !418
  %0 = load i32, ptr %word.addr, align 4, !dbg !419
  %1 = load i32, ptr %shift.addr, align 4, !dbg !420
  %and = and i32 %1, 31, !dbg !421
  %shr = lshr i32 %0, %and, !dbg !422
  %2 = load i32, ptr %word.addr, align 4, !dbg !423
  %3 = load i32, ptr %shift.addr, align 4, !dbg !424
  %sub = sub i32 0, %3, !dbg !425
  %and1 = and i32 %sub, 31, !dbg !426
  %shl = shl i32 %2, %and1, !dbg !427
  %or = or i32 %shr, %shl, !dbg !428
  ret i32 %or, !dbg !429
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @subw(i32 noundef %in) #0 align 16 !dbg !430 {
entry:
  %in.addr = alloca i32, align 4
  store i32 %in, ptr %in.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load i32, ptr %in.addr, align 4, !dbg !436
  %and = and i32 %0, 255, !dbg !437
  %idxprom = zext i32 %and to i64, !dbg !438
  %arrayidx = getelementptr [256 x i8], ptr @aes_sbox, i64 0, i64 %idxprom, !dbg !438
  %1 = load volatile i8, ptr %arrayidx, align 1, !dbg !438
  %conv = zext i8 %1 to i32, !dbg !439
  %2 = load i32, ptr %in.addr, align 4, !dbg !440
  %shr = lshr i32 %2, 8, !dbg !441
  %and1 = and i32 %shr, 255, !dbg !442
  %idxprom2 = zext i32 %and1 to i64, !dbg !443
  %arrayidx3 = getelementptr [256 x i8], ptr @aes_sbox, i64 0, i64 %idxprom2, !dbg !443
  %3 = load volatile i8, ptr %arrayidx3, align 1, !dbg !443
  %conv4 = zext i8 %3 to i32, !dbg !443
  %shl = shl i32 %conv4, 8, !dbg !444
  %xor = xor i32 %conv, %shl, !dbg !445
  %4 = load i32, ptr %in.addr, align 4, !dbg !446
  %shr5 = lshr i32 %4, 16, !dbg !447
  %and6 = and i32 %shr5, 255, !dbg !448
  %idxprom7 = zext i32 %and6 to i64, !dbg !449
  %arrayidx8 = getelementptr [256 x i8], ptr @aes_sbox, i64 0, i64 %idxprom7, !dbg !449
  %5 = load volatile i8, ptr %arrayidx8, align 1, !dbg !449
  %conv9 = zext i8 %5 to i32, !dbg !449
  %shl10 = shl i32 %conv9, 16, !dbg !450
  %xor11 = xor i32 %xor, %shl10, !dbg !451
  %6 = load i32, ptr %in.addr, align 4, !dbg !452
  %shr12 = lshr i32 %6, 24, !dbg !453
  %and13 = and i32 %shr12, 255, !dbg !454
  %idxprom14 = zext i32 %and13 to i64, !dbg !455
  %arrayidx15 = getelementptr [256 x i8], ptr @aes_sbox, i64 0, i64 %idxprom14, !dbg !455
  %7 = load volatile i8, ptr %arrayidx15, align 1, !dbg !455
  %conv16 = zext i8 %7 to i32, !dbg !455
  %shl17 = shl i32 %conv16, 24, !dbg !456
  %xor18 = xor i32 %xor11, %shl17, !dbg !457
  ret i32 %xor18, !dbg !458
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mul_by_x(i32 noundef %w) #0 align 16 !dbg !459 {
entry:
  %w.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %w, ptr %w.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !461, metadata !DIExpression()), !dbg !464
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #5, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %x, metadata !462, metadata !DIExpression()), !dbg !466
  %0 = load i32, ptr %w.addr, align 4, !dbg !467
  %and = and i32 %0, 2139062143, !dbg !468
  store i32 %and, ptr %x, align 4, !dbg !466
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #5, !dbg !469
  call void @llvm.dbg.declare(metadata ptr %y, metadata !463, metadata !DIExpression()), !dbg !470
  %1 = load i32, ptr %w.addr, align 4, !dbg !471
  %and1 = and i32 %1, -2139062144, !dbg !472
  store i32 %and1, ptr %y, align 4, !dbg !470
  %2 = load i32, ptr %x, align 4, !dbg !473
  %shl = shl i32 %2, 1, !dbg !474
  %3 = load i32, ptr %y, align 4, !dbg !475
  %shr = lshr i32 %3, 7, !dbg !476
  %mul = mul i32 %shr, 27, !dbg !477
  %xor = xor i32 %shl, %mul, !dbg !478
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #5, !dbg !479
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #5, !dbg !479
  ret i32 %xor, !dbg !480
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inv_mix_columns(i32 noundef %x) #0 align 16 !dbg !481 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !483, metadata !DIExpression()), !dbg !485
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #5, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %y, metadata !484, metadata !DIExpression()), !dbg !487
  %0 = load i32, ptr %x.addr, align 4, !dbg !488
  %call = call i32 @mul_by_x2(i32 noundef %0) #6, !dbg !489
  store i32 %call, ptr %y, align 4, !dbg !487
  %1 = load i32, ptr %x.addr, align 4, !dbg !490
  %2 = load i32, ptr %y, align 4, !dbg !491
  %xor = xor i32 %1, %2, !dbg !492
  %3 = load i32, ptr %y, align 4, !dbg !493
  %call1 = call i32 @ror32(i32 noundef %3, i32 noundef 16) #6, !dbg !494
  %xor2 = xor i32 %xor, %call1, !dbg !495
  %call3 = call i32 @mix_columns(i32 noundef %xor2) #6, !dbg !496
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #5, !dbg !497
  ret i32 %call3, !dbg !498
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @aes_encrypt(ptr noundef %ctx, ptr noundef %out, ptr noundef %in) #0 align 16 !dbg !499 {
entry:
  %ctx.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %rkp = alloca ptr, align 8
  %rounds = alloca i32, align 4
  %st0 = alloca [4 x i32], align 16
  %st1 = alloca [4 x i32], align 16
  %round = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !506, metadata !DIExpression()), !dbg !519
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !507, metadata !DIExpression()), !dbg !520
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !508, metadata !DIExpression()), !dbg !521
  call void @llvm.lifetime.start.p0(i64 8, ptr %rkp) #5, !dbg !522
  call void @llvm.dbg.declare(metadata ptr %rkp, metadata !509, metadata !DIExpression()), !dbg !523
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !524
  %key_enc = getelementptr inbounds %struct.crypto_aes_ctx, ptr %0, i32 0, i32 0, !dbg !525
  %arraydecay = getelementptr inbounds [60 x i32], ptr %key_enc, i64 0, i64 0, !dbg !524
  %add.ptr = getelementptr i32, ptr %arraydecay, i64 4, !dbg !526
  store ptr %add.ptr, ptr %rkp, align 8, !dbg !523
  call void @llvm.lifetime.start.p0(i64 4, ptr %rounds) #5, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %rounds, metadata !512, metadata !DIExpression()), !dbg !528
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !529
  %key_length = getelementptr inbounds %struct.crypto_aes_ctx, ptr %1, i32 0, i32 2, !dbg !530
  %2 = load i32, ptr %key_length, align 4, !dbg !530
  %div = udiv i32 %2, 4, !dbg !531
  %add = add i32 6, %div, !dbg !532
  store i32 %add, ptr %rounds, align 4, !dbg !528
  call void @llvm.lifetime.start.p0(i64 16, ptr %st0) #5, !dbg !533
  call void @llvm.dbg.declare(metadata ptr %st0, metadata !513, metadata !DIExpression()), !dbg !534
  call void @llvm.lifetime.start.p0(i64 16, ptr %st1) #5, !dbg !533
  call void @llvm.dbg.declare(metadata ptr %st1, metadata !517, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 4, ptr %round) #5, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %round, metadata !518, metadata !DIExpression()), !dbg !537
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !538
  %key_enc1 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %3, i32 0, i32 0, !dbg !539
  %arrayidx = getelementptr [60 x i32], ptr %key_enc1, i64 0, i64 0, !dbg !538
  %4 = load i32, ptr %arrayidx, align 4, !dbg !538
  %5 = load ptr, ptr %in.addr, align 8, !dbg !540
  %call = call i32 @get_unaligned_le32(ptr noundef %5) #6, !dbg !541
  %xor = xor i32 %4, %call, !dbg !542
  %arrayidx2 = getelementptr [4 x i32], ptr %st0, i64 0, i64 0, !dbg !543
  store i32 %xor, ptr %arrayidx2, align 16, !dbg !544
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !545
  %key_enc3 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %6, i32 0, i32 0, !dbg !546
  %arrayidx4 = getelementptr [60 x i32], ptr %key_enc3, i64 0, i64 1, !dbg !545
  %7 = load i32, ptr %arrayidx4, align 4, !dbg !545
  %8 = load ptr, ptr %in.addr, align 8, !dbg !547
  %add.ptr5 = getelementptr i8, ptr %8, i64 4, !dbg !548
  %call6 = call i32 @get_unaligned_le32(ptr noundef %add.ptr5) #6, !dbg !549
  %xor7 = xor i32 %7, %call6, !dbg !550
  %arrayidx8 = getelementptr [4 x i32], ptr %st0, i64 0, i64 1, !dbg !551
  store i32 %xor7, ptr %arrayidx8, align 4, !dbg !552
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !553
  %key_enc9 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %9, i32 0, i32 0, !dbg !554
  %arrayidx10 = getelementptr [60 x i32], ptr %key_enc9, i64 0, i64 2, !dbg !553
  %10 = load i32, ptr %arrayidx10, align 4, !dbg !553
  %11 = load ptr, ptr %in.addr, align 8, !dbg !555
  %add.ptr11 = getelementptr i8, ptr %11, i64 8, !dbg !556
  %call12 = call i32 @get_unaligned_le32(ptr noundef %add.ptr11) #6, !dbg !557
  %xor13 = xor i32 %10, %call12, !dbg !558
  %arrayidx14 = getelementptr [4 x i32], ptr %st0, i64 0, i64 2, !dbg !559
  store i32 %xor13, ptr %arrayidx14, align 8, !dbg !560
  %12 = load ptr, ptr %ctx.addr, align 8, !dbg !561
  %key_enc15 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %12, i32 0, i32 0, !dbg !562
  %arrayidx16 = getelementptr [60 x i32], ptr %key_enc15, i64 0, i64 3, !dbg !561
  %13 = load i32, ptr %arrayidx16, align 4, !dbg !561
  %14 = load ptr, ptr %in.addr, align 8, !dbg !563
  %add.ptr17 = getelementptr i8, ptr %14, i64 12, !dbg !564
  %call18 = call i32 @get_unaligned_le32(ptr noundef %add.ptr17) #6, !dbg !565
  %xor19 = xor i32 %13, %call18, !dbg !566
  %arrayidx20 = getelementptr [4 x i32], ptr %st0, i64 0, i64 3, !dbg !567
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !568
  %15 = load volatile i8, ptr @aes_sbox, align 64, !dbg !569
  %conv = zext i8 %15 to i32, !dbg !569
  %16 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 64), align 64, !dbg !570
  %conv21 = zext i8 %16 to i32, !dbg !570
  %xor22 = xor i32 %conv, %conv21, !dbg !571
  %17 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 134), align 2, !dbg !572
  %conv23 = zext i8 %17 to i32, !dbg !572
  %xor24 = xor i32 %xor22, %conv23, !dbg !573
  %18 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 195), align 1, !dbg !574
  %conv25 = zext i8 %18 to i32, !dbg !574
  %xor26 = xor i32 %xor24, %conv25, !dbg !575
  %arrayidx27 = getelementptr [4 x i32], ptr %st0, i64 0, i64 0, !dbg !576
  %19 = load i32, ptr %arrayidx27, align 16, !dbg !577
  %xor28 = xor i32 %19, %xor26, !dbg !577
  store i32 %xor28, ptr %arrayidx27, align 16, !dbg !577
  %20 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 16), align 16, !dbg !578
  %conv29 = zext i8 %20 to i32, !dbg !578
  %21 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 82), align 2, !dbg !579
  %conv30 = zext i8 %21 to i32, !dbg !579
  %xor31 = xor i32 %conv29, %conv30, !dbg !580
  %22 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 158), align 2, !dbg !581
  %conv32 = zext i8 %22 to i32, !dbg !581
  %xor33 = xor i32 %xor31, %conv32, !dbg !582
  %23 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 221), align 1, !dbg !583
  %conv34 = zext i8 %23 to i32, !dbg !583
  %xor35 = xor i32 %xor33, %conv34, !dbg !584
  %arrayidx36 = getelementptr [4 x i32], ptr %st0, i64 0, i64 1, !dbg !585
  %24 = load i32, ptr %arrayidx36, align 4, !dbg !586
  %xor37 = xor i32 %24, %xor35, !dbg !586
  store i32 %xor37, ptr %arrayidx36, align 4, !dbg !586
  %25 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 32), align 32, !dbg !587
  %conv38 = zext i8 %25 to i32, !dbg !587
  %26 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 96), align 32, !dbg !588
  %conv39 = zext i8 %26 to i32, !dbg !588
  %xor40 = xor i32 %conv38, %conv39, !dbg !589
  %27 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 160), align 32, !dbg !590
  %conv41 = zext i8 %27 to i32, !dbg !590
  %xor42 = xor i32 %xor40, %conv41, !dbg !591
  %28 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 234), align 2, !dbg !592
  %conv43 = zext i8 %28 to i32, !dbg !592
  %xor44 = xor i32 %xor42, %conv43, !dbg !593
  %arrayidx45 = getelementptr [4 x i32], ptr %st0, i64 0, i64 2, !dbg !594
  %29 = load i32, ptr %arrayidx45, align 8, !dbg !595
  %xor46 = xor i32 %29, %xor44, !dbg !595
  store i32 %xor46, ptr %arrayidx45, align 8, !dbg !595
  %30 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 48), align 16, !dbg !596
  %conv47 = zext i8 %30 to i32, !dbg !596
  %31 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 112), align 16, !dbg !597
  %conv48 = zext i8 %31 to i32, !dbg !597
  %xor49 = xor i32 %conv47, %conv48, !dbg !598
  %32 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 186), align 2, !dbg !599
  %conv50 = zext i8 %32 to i32, !dbg !599
  %xor51 = xor i32 %xor49, %conv50, !dbg !600
  %33 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_sbox, i64 0, i64 241), align 1, !dbg !601
  %conv52 = zext i8 %33 to i32, !dbg !601
  %xor53 = xor i32 %xor51, %conv52, !dbg !602
  %arrayidx54 = getelementptr [4 x i32], ptr %st0, i64 0, i64 3, !dbg !603
  %34 = load i32, ptr %arrayidx54, align 4, !dbg !604
  %xor55 = xor i32 %34, %xor53, !dbg !604
  store i32 %xor55, ptr %arrayidx54, align 4, !dbg !604
  store i32 0, ptr %round, align 4, !dbg !605
  br label %for.cond, !dbg !607

for.cond:                                         ; preds = %for.inc, %entry
  %arraydecay56 = getelementptr inbounds [4 x i32], ptr %st0, i64 0, i64 0, !dbg !608
  %call57 = call i32 @subshift(ptr noundef %arraydecay56, i32 noundef 0) #6, !dbg !611
  %call58 = call i32 @mix_columns(i32 noundef %call57) #6, !dbg !612
  %35 = load ptr, ptr %rkp, align 8, !dbg !613
  %arrayidx59 = getelementptr i32, ptr %35, i64 0, !dbg !613
  %36 = load i32, ptr %arrayidx59, align 4, !dbg !613
  %xor60 = xor i32 %call58, %36, !dbg !614
  %arrayidx61 = getelementptr [4 x i32], ptr %st1, i64 0, i64 0, !dbg !615
  store i32 %xor60, ptr %arrayidx61, align 16, !dbg !616
  %arraydecay62 = getelementptr inbounds [4 x i32], ptr %st0, i64 0, i64 0, !dbg !617
  %call63 = call i32 @subshift(ptr noundef %arraydecay62, i32 noundef 1) #6, !dbg !618
  %call64 = call i32 @mix_columns(i32 noundef %call63) #6, !dbg !619
  %37 = load ptr, ptr %rkp, align 8, !dbg !620
  %arrayidx65 = getelementptr i32, ptr %37, i64 1, !dbg !620
  %38 = load i32, ptr %arrayidx65, align 4, !dbg !620
  %xor66 = xor i32 %call64, %38, !dbg !621
  %arrayidx67 = getelementptr [4 x i32], ptr %st1, i64 0, i64 1, !dbg !622
  store i32 %xor66, ptr %arrayidx67, align 4, !dbg !623
  %arraydecay68 = getelementptr inbounds [4 x i32], ptr %st0, i64 0, i64 0, !dbg !624
  %call69 = call i32 @subshift(ptr noundef %arraydecay68, i32 noundef 2) #6, !dbg !625
  %call70 = call i32 @mix_columns(i32 noundef %call69) #6, !dbg !626
  %39 = load ptr, ptr %rkp, align 8, !dbg !627
  %arrayidx71 = getelementptr i32, ptr %39, i64 2, !dbg !627
  %40 = load i32, ptr %arrayidx71, align 4, !dbg !627
  %xor72 = xor i32 %call70, %40, !dbg !628
  %arrayidx73 = getelementptr [4 x i32], ptr %st1, i64 0, i64 2, !dbg !629
  store i32 %xor72, ptr %arrayidx73, align 8, !dbg !630
  %arraydecay74 = getelementptr inbounds [4 x i32], ptr %st0, i64 0, i64 0, !dbg !631
  %call75 = call i32 @subshift(ptr noundef %arraydecay74, i32 noundef 3) #6, !dbg !632
  %call76 = call i32 @mix_columns(i32 noundef %call75) #6, !dbg !633
  %41 = load ptr, ptr %rkp, align 8, !dbg !634
  %arrayidx77 = getelementptr i32, ptr %41, i64 3, !dbg !634
  %42 = load i32, ptr %arrayidx77, align 4, !dbg !634
  %xor78 = xor i32 %call76, %42, !dbg !635
  %arrayidx79 = getelementptr [4 x i32], ptr %st1, i64 0, i64 3, !dbg !636
  store i32 %xor78, ptr %arrayidx79, align 4, !dbg !637
  %43 = load i32, ptr %round, align 4, !dbg !638
  %44 = load i32, ptr %rounds, align 4, !dbg !640
  %sub = sub i32 %44, 2, !dbg !641
  %cmp = icmp eq i32 %43, %sub, !dbg !642
  br i1 %cmp, label %if.then, label %if.end, !dbg !643

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !644

if.end:                                           ; preds = %for.cond
  %arraydecay81 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !645
  %call82 = call i32 @subshift(ptr noundef %arraydecay81, i32 noundef 0) #6, !dbg !646
  %call83 = call i32 @mix_columns(i32 noundef %call82) #6, !dbg !647
  %45 = load ptr, ptr %rkp, align 8, !dbg !648
  %arrayidx84 = getelementptr i32, ptr %45, i64 4, !dbg !648
  %46 = load i32, ptr %arrayidx84, align 4, !dbg !648
  %xor85 = xor i32 %call83, %46, !dbg !649
  %arrayidx86 = getelementptr [4 x i32], ptr %st0, i64 0, i64 0, !dbg !650
  store i32 %xor85, ptr %arrayidx86, align 16, !dbg !651
  %arraydecay87 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !652
  %call88 = call i32 @subshift(ptr noundef %arraydecay87, i32 noundef 1) #6, !dbg !653
  %call89 = call i32 @mix_columns(i32 noundef %call88) #6, !dbg !654
  %47 = load ptr, ptr %rkp, align 8, !dbg !655
  %arrayidx90 = getelementptr i32, ptr %47, i64 5, !dbg !655
  %48 = load i32, ptr %arrayidx90, align 4, !dbg !655
  %xor91 = xor i32 %call89, %48, !dbg !656
  %arrayidx92 = getelementptr [4 x i32], ptr %st0, i64 0, i64 1, !dbg !657
  store i32 %xor91, ptr %arrayidx92, align 4, !dbg !658
  %arraydecay93 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !659
  %call94 = call i32 @subshift(ptr noundef %arraydecay93, i32 noundef 2) #6, !dbg !660
  %call95 = call i32 @mix_columns(i32 noundef %call94) #6, !dbg !661
  %49 = load ptr, ptr %rkp, align 8, !dbg !662
  %arrayidx96 = getelementptr i32, ptr %49, i64 6, !dbg !662
  %50 = load i32, ptr %arrayidx96, align 4, !dbg !662
  %xor97 = xor i32 %call95, %50, !dbg !663
  %arrayidx98 = getelementptr [4 x i32], ptr %st0, i64 0, i64 2, !dbg !664
  store i32 %xor97, ptr %arrayidx98, align 8, !dbg !665
  %arraydecay99 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !666
  %call100 = call i32 @subshift(ptr noundef %arraydecay99, i32 noundef 3) #6, !dbg !667
  %call101 = call i32 @mix_columns(i32 noundef %call100) #6, !dbg !668
  %51 = load ptr, ptr %rkp, align 8, !dbg !669
  %arrayidx102 = getelementptr i32, ptr %51, i64 7, !dbg !669
  %52 = load i32, ptr %arrayidx102, align 4, !dbg !669
  %xor103 = xor i32 %call101, %52, !dbg !670
  %arrayidx104 = getelementptr [4 x i32], ptr %st0, i64 0, i64 3, !dbg !671
  store i32 %xor103, ptr %arrayidx104, align 4, !dbg !672
  br label %for.inc, !dbg !673

for.inc:                                          ; preds = %if.end
  %53 = load i32, ptr %round, align 4, !dbg !674
  %add105 = add i32 %53, 2, !dbg !674
  store i32 %add105, ptr %round, align 4, !dbg !674
  %54 = load ptr, ptr %rkp, align 8, !dbg !675
  %add.ptr106 = getelementptr i32, ptr %54, i64 8, !dbg !675
  store ptr %add.ptr106, ptr %rkp, align 8, !dbg !675
  br label %for.cond, !dbg !676, !llvm.loop !677

for.end:                                          ; preds = %if.then
  %arraydecay107 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !680
  %call108 = call i32 @subshift(ptr noundef %arraydecay107, i32 noundef 0) #6, !dbg !681
  %55 = load ptr, ptr %rkp, align 8, !dbg !682
  %arrayidx109 = getelementptr i32, ptr %55, i64 4, !dbg !682
  %56 = load i32, ptr %arrayidx109, align 4, !dbg !682
  %xor110 = xor i32 %call108, %56, !dbg !683
  %57 = load ptr, ptr %out.addr, align 8, !dbg !684
  call void @put_unaligned_le32(i32 noundef %xor110, ptr noundef %57) #6, !dbg !685
  %arraydecay111 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !686
  %call112 = call i32 @subshift(ptr noundef %arraydecay111, i32 noundef 1) #6, !dbg !687
  %58 = load ptr, ptr %rkp, align 8, !dbg !688
  %arrayidx113 = getelementptr i32, ptr %58, i64 5, !dbg !688
  %59 = load i32, ptr %arrayidx113, align 4, !dbg !688
  %xor114 = xor i32 %call112, %59, !dbg !689
  %60 = load ptr, ptr %out.addr, align 8, !dbg !690
  %add.ptr115 = getelementptr i8, ptr %60, i64 4, !dbg !691
  call void @put_unaligned_le32(i32 noundef %xor114, ptr noundef %add.ptr115) #6, !dbg !692
  %arraydecay116 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !693
  %call117 = call i32 @subshift(ptr noundef %arraydecay116, i32 noundef 2) #6, !dbg !694
  %61 = load ptr, ptr %rkp, align 8, !dbg !695
  %arrayidx118 = getelementptr i32, ptr %61, i64 6, !dbg !695
  %62 = load i32, ptr %arrayidx118, align 4, !dbg !695
  %xor119 = xor i32 %call117, %62, !dbg !696
  %63 = load ptr, ptr %out.addr, align 8, !dbg !697
  %add.ptr120 = getelementptr i8, ptr %63, i64 8, !dbg !698
  call void @put_unaligned_le32(i32 noundef %xor119, ptr noundef %add.ptr120) #6, !dbg !699
  %arraydecay121 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !700
  %call122 = call i32 @subshift(ptr noundef %arraydecay121, i32 noundef 3) #6, !dbg !701
  %64 = load ptr, ptr %rkp, align 8, !dbg !702
  %arrayidx123 = getelementptr i32, ptr %64, i64 7, !dbg !702
  %65 = load i32, ptr %arrayidx123, align 4, !dbg !702
  %xor124 = xor i32 %call122, %65, !dbg !703
  %66 = load ptr, ptr %out.addr, align 8, !dbg !704
  %add.ptr125 = getelementptr i8, ptr %66, i64 12, !dbg !705
  call void @put_unaligned_le32(i32 noundef %xor124, ptr noundef %add.ptr125) #6, !dbg !706
  call void @llvm.lifetime.end.p0(i64 4, ptr %round) #5, !dbg !707
  call void @llvm.lifetime.end.p0(i64 16, ptr %st1) #5, !dbg !707
  call void @llvm.lifetime.end.p0(i64 16, ptr %st0) #5, !dbg !707
  call void @llvm.lifetime.end.p0(i64 4, ptr %rounds) #5, !dbg !707
  call void @llvm.lifetime.end.p0(i64 8, ptr %rkp) #5, !dbg !707
  ret void, !dbg !707
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mix_columns(i32 noundef %x) #0 align 16 !dbg !708 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !710, metadata !DIExpression()), !dbg !712
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #5, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %y, metadata !711, metadata !DIExpression()), !dbg !714
  %0 = load i32, ptr %x.addr, align 4, !dbg !715
  %call = call i32 @mul_by_x(i32 noundef %0) #6, !dbg !716
  %1 = load i32, ptr %x.addr, align 4, !dbg !717
  %call1 = call i32 @ror32(i32 noundef %1, i32 noundef 16) #6, !dbg !718
  %xor = xor i32 %call, %call1, !dbg !719
  store i32 %xor, ptr %y, align 4, !dbg !714
  %2 = load i32, ptr %y, align 4, !dbg !720
  %3 = load i32, ptr %x.addr, align 4, !dbg !721
  %4 = load i32, ptr %y, align 4, !dbg !722
  %xor2 = xor i32 %3, %4, !dbg !723
  %call3 = call i32 @ror32(i32 noundef %xor2, i32 noundef 8) #6, !dbg !724
  %xor4 = xor i32 %2, %call3, !dbg !725
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #5, !dbg !726
  ret i32 %xor4, !dbg !727
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @subshift(ptr noundef %in, i32 noundef %pos) #4 align 16 !dbg !728 {
entry:
  %in.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !732, metadata !DIExpression()), !dbg !734
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !733, metadata !DIExpression()), !dbg !735
  %0 = load ptr, ptr %in.addr, align 8, !dbg !736
  %1 = load i32, ptr %pos.addr, align 4, !dbg !737
  %idxprom = sext i32 %1 to i64, !dbg !736
  %arrayidx = getelementptr i32, ptr %0, i64 %idxprom, !dbg !736
  %2 = load i32, ptr %arrayidx, align 4, !dbg !736
  %and = and i32 %2, 255, !dbg !738
  %idxprom1 = zext i32 %and to i64, !dbg !739
  %arrayidx2 = getelementptr [256 x i8], ptr @aes_sbox, i64 0, i64 %idxprom1, !dbg !739
  %3 = load volatile i8, ptr %arrayidx2, align 1, !dbg !739
  %conv = zext i8 %3 to i32, !dbg !740
  %4 = load ptr, ptr %in.addr, align 8, !dbg !741
  %5 = load i32, ptr %pos.addr, align 4, !dbg !742
  %add = add i32 %5, 1, !dbg !743
  %rem = srem i32 %add, 4, !dbg !744
  %idxprom3 = sext i32 %rem to i64, !dbg !741
  %arrayidx4 = getelementptr i32, ptr %4, i64 %idxprom3, !dbg !741
  %6 = load i32, ptr %arrayidx4, align 4, !dbg !741
  %shr = lshr i32 %6, 8, !dbg !745
  %and5 = and i32 %shr, 255, !dbg !746
  %idxprom6 = zext i32 %and5 to i64, !dbg !747
  %arrayidx7 = getelementptr [256 x i8], ptr @aes_sbox, i64 0, i64 %idxprom6, !dbg !747
  %7 = load volatile i8, ptr %arrayidx7, align 1, !dbg !747
  %conv8 = zext i8 %7 to i32, !dbg !747
  %shl = shl i32 %conv8, 8, !dbg !748
  %xor = xor i32 %conv, %shl, !dbg !749
  %8 = load ptr, ptr %in.addr, align 8, !dbg !750
  %9 = load i32, ptr %pos.addr, align 4, !dbg !751
  %add9 = add i32 %9, 2, !dbg !752
  %rem10 = srem i32 %add9, 4, !dbg !753
  %idxprom11 = sext i32 %rem10 to i64, !dbg !750
  %arrayidx12 = getelementptr i32, ptr %8, i64 %idxprom11, !dbg !750
  %10 = load i32, ptr %arrayidx12, align 4, !dbg !750
  %shr13 = lshr i32 %10, 16, !dbg !754
  %and14 = and i32 %shr13, 255, !dbg !755
  %idxprom15 = zext i32 %and14 to i64, !dbg !756
  %arrayidx16 = getelementptr [256 x i8], ptr @aes_sbox, i64 0, i64 %idxprom15, !dbg !756
  %11 = load volatile i8, ptr %arrayidx16, align 1, !dbg !756
  %conv17 = zext i8 %11 to i32, !dbg !756
  %shl18 = shl i32 %conv17, 16, !dbg !757
  %xor19 = xor i32 %xor, %shl18, !dbg !758
  %12 = load ptr, ptr %in.addr, align 8, !dbg !759
  %13 = load i32, ptr %pos.addr, align 4, !dbg !760
  %add20 = add i32 %13, 3, !dbg !761
  %rem21 = srem i32 %add20, 4, !dbg !762
  %idxprom22 = sext i32 %rem21 to i64, !dbg !759
  %arrayidx23 = getelementptr i32, ptr %12, i64 %idxprom22, !dbg !759
  %14 = load i32, ptr %arrayidx23, align 4, !dbg !759
  %shr24 = lshr i32 %14, 24, !dbg !763
  %and25 = and i32 %shr24, 255, !dbg !764
  %idxprom26 = zext i32 %and25 to i64, !dbg !765
  %arrayidx27 = getelementptr [256 x i8], ptr @aes_sbox, i64 0, i64 %idxprom26, !dbg !765
  %15 = load volatile i8, ptr %arrayidx27, align 1, !dbg !765
  %conv28 = zext i8 %15 to i32, !dbg !765
  %shl29 = shl i32 %conv28, 24, !dbg !766
  %xor30 = xor i32 %xor19, %shl29, !dbg !767
  ret i32 %xor30, !dbg !768
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_unaligned_le32(i32 noundef %val, ptr noundef %p) #3 align 16 !dbg !30 {
entry:
  %val.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !34, metadata !DIExpression()), !dbg !769
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !35, metadata !DIExpression()), !dbg !770
  br label %do.body, !dbg !771

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #5, !dbg !772
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !36, metadata !DIExpression()), !dbg !772
  %0 = load ptr, ptr %p.addr, align 8, !dbg !772
  store ptr %0, ptr %__pptr, align 8, !dbg !772
  %1 = load i32, ptr %val.addr, align 4, !dbg !772
  %2 = load ptr, ptr %__pptr, align 8, !dbg !772
  %x = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 0, !dbg !772
  store i32 %1, ptr %x, align 1, !dbg !772
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #5, !dbg !771
  br label %do.end, !dbg !772

do.end:                                           ; preds = %do.body
  ret void, !dbg !773
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @aes_decrypt(ptr noundef %ctx, ptr noundef %out, ptr noundef %in) #0 align 16 !dbg !774 {
entry:
  %ctx.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %rkp = alloca ptr, align 8
  %rounds = alloca i32, align 4
  %st0 = alloca [4 x i32], align 16
  %st1 = alloca [4 x i32], align 16
  %round = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !776, metadata !DIExpression()), !dbg !784
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !777, metadata !DIExpression()), !dbg !785
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !778, metadata !DIExpression()), !dbg !786
  call void @llvm.lifetime.start.p0(i64 8, ptr %rkp) #5, !dbg !787
  call void @llvm.dbg.declare(metadata ptr %rkp, metadata !779, metadata !DIExpression()), !dbg !788
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !789
  %key_dec = getelementptr inbounds %struct.crypto_aes_ctx, ptr %0, i32 0, i32 1, !dbg !790
  %arraydecay = getelementptr inbounds [60 x i32], ptr %key_dec, i64 0, i64 0, !dbg !789
  %add.ptr = getelementptr i32, ptr %arraydecay, i64 4, !dbg !791
  store ptr %add.ptr, ptr %rkp, align 8, !dbg !788
  call void @llvm.lifetime.start.p0(i64 4, ptr %rounds) #5, !dbg !792
  call void @llvm.dbg.declare(metadata ptr %rounds, metadata !780, metadata !DIExpression()), !dbg !793
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !794
  %key_length = getelementptr inbounds %struct.crypto_aes_ctx, ptr %1, i32 0, i32 2, !dbg !795
  %2 = load i32, ptr %key_length, align 4, !dbg !795
  %div = udiv i32 %2, 4, !dbg !796
  %add = add i32 6, %div, !dbg !797
  store i32 %add, ptr %rounds, align 4, !dbg !793
  call void @llvm.lifetime.start.p0(i64 16, ptr %st0) #5, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %st0, metadata !781, metadata !DIExpression()), !dbg !799
  call void @llvm.lifetime.start.p0(i64 16, ptr %st1) #5, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %st1, metadata !782, metadata !DIExpression()), !dbg !800
  call void @llvm.lifetime.start.p0(i64 4, ptr %round) #5, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %round, metadata !783, metadata !DIExpression()), !dbg !802
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !803
  %key_dec1 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %3, i32 0, i32 1, !dbg !804
  %arrayidx = getelementptr [60 x i32], ptr %key_dec1, i64 0, i64 0, !dbg !803
  %4 = load i32, ptr %arrayidx, align 4, !dbg !803
  %5 = load ptr, ptr %in.addr, align 8, !dbg !805
  %call = call i32 @get_unaligned_le32(ptr noundef %5) #6, !dbg !806
  %xor = xor i32 %4, %call, !dbg !807
  %arrayidx2 = getelementptr [4 x i32], ptr %st0, i64 0, i64 0, !dbg !808
  store i32 %xor, ptr %arrayidx2, align 16, !dbg !809
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !810
  %key_dec3 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %6, i32 0, i32 1, !dbg !811
  %arrayidx4 = getelementptr [60 x i32], ptr %key_dec3, i64 0, i64 1, !dbg !810
  %7 = load i32, ptr %arrayidx4, align 4, !dbg !810
  %8 = load ptr, ptr %in.addr, align 8, !dbg !812
  %add.ptr5 = getelementptr i8, ptr %8, i64 4, !dbg !813
  %call6 = call i32 @get_unaligned_le32(ptr noundef %add.ptr5) #6, !dbg !814
  %xor7 = xor i32 %7, %call6, !dbg !815
  %arrayidx8 = getelementptr [4 x i32], ptr %st0, i64 0, i64 1, !dbg !816
  store i32 %xor7, ptr %arrayidx8, align 4, !dbg !817
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !818
  %key_dec9 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %9, i32 0, i32 1, !dbg !819
  %arrayidx10 = getelementptr [60 x i32], ptr %key_dec9, i64 0, i64 2, !dbg !818
  %10 = load i32, ptr %arrayidx10, align 4, !dbg !818
  %11 = load ptr, ptr %in.addr, align 8, !dbg !820
  %add.ptr11 = getelementptr i8, ptr %11, i64 8, !dbg !821
  %call12 = call i32 @get_unaligned_le32(ptr noundef %add.ptr11) #6, !dbg !822
  %xor13 = xor i32 %10, %call12, !dbg !823
  %arrayidx14 = getelementptr [4 x i32], ptr %st0, i64 0, i64 2, !dbg !824
  store i32 %xor13, ptr %arrayidx14, align 8, !dbg !825
  %12 = load ptr, ptr %ctx.addr, align 8, !dbg !826
  %key_dec15 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %12, i32 0, i32 1, !dbg !827
  %arrayidx16 = getelementptr [60 x i32], ptr %key_dec15, i64 0, i64 3, !dbg !826
  %13 = load i32, ptr %arrayidx16, align 4, !dbg !826
  %14 = load ptr, ptr %in.addr, align 8, !dbg !828
  %add.ptr17 = getelementptr i8, ptr %14, i64 12, !dbg !829
  %call18 = call i32 @get_unaligned_le32(ptr noundef %add.ptr17) #6, !dbg !830
  %xor19 = xor i32 %13, %call18, !dbg !831
  %arrayidx20 = getelementptr [4 x i32], ptr %st0, i64 0, i64 3, !dbg !832
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !833
  %15 = load volatile i8, ptr @aes_inv_sbox, align 64, !dbg !834
  %conv = zext i8 %15 to i32, !dbg !834
  %16 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 64), align 64, !dbg !835
  %conv21 = zext i8 %16 to i32, !dbg !835
  %xor22 = xor i32 %conv, %conv21, !dbg !836
  %17 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 129), align 1, !dbg !837
  %conv23 = zext i8 %17 to i32, !dbg !837
  %xor24 = xor i32 %xor22, %conv23, !dbg !838
  %18 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 200), align 8, !dbg !839
  %conv25 = zext i8 %18 to i32, !dbg !839
  %xor26 = xor i32 %xor24, %conv25, !dbg !840
  %arrayidx27 = getelementptr [4 x i32], ptr %st0, i64 0, i64 0, !dbg !841
  %19 = load i32, ptr %arrayidx27, align 16, !dbg !842
  %xor28 = xor i32 %19, %xor26, !dbg !842
  store i32 %xor28, ptr %arrayidx27, align 16, !dbg !842
  %20 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 16), align 16, !dbg !843
  %conv29 = zext i8 %20 to i32, !dbg !843
  %21 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 83), align 1, !dbg !844
  %conv30 = zext i8 %21 to i32, !dbg !844
  %xor31 = xor i32 %conv29, %conv30, !dbg !845
  %22 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 150), align 2, !dbg !846
  %conv32 = zext i8 %22 to i32, !dbg !846
  %xor33 = xor i32 %xor31, %conv32, !dbg !847
  %23 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 212), align 4, !dbg !848
  %conv34 = zext i8 %23 to i32, !dbg !848
  %xor35 = xor i32 %xor33, %conv34, !dbg !849
  %arrayidx36 = getelementptr [4 x i32], ptr %st0, i64 0, i64 1, !dbg !850
  %24 = load i32, ptr %arrayidx36, align 4, !dbg !851
  %xor37 = xor i32 %24, %xor35, !dbg !851
  store i32 %xor37, ptr %arrayidx36, align 4, !dbg !851
  %25 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 32), align 32, !dbg !852
  %conv38 = zext i8 %25 to i32, !dbg !852
  %26 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 96), align 32, !dbg !853
  %conv39 = zext i8 %26 to i32, !dbg !853
  %xor40 = xor i32 %conv38, %conv39, !dbg !854
  %27 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 160), align 32, !dbg !855
  %conv41 = zext i8 %27 to i32, !dbg !855
  %xor42 = xor i32 %xor40, %conv41, !dbg !856
  %28 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 236), align 4, !dbg !857
  %conv43 = zext i8 %28 to i32, !dbg !857
  %xor44 = xor i32 %xor42, %conv43, !dbg !858
  %arrayidx45 = getelementptr [4 x i32], ptr %st0, i64 0, i64 2, !dbg !859
  %29 = load i32, ptr %arrayidx45, align 8, !dbg !860
  %xor46 = xor i32 %29, %xor44, !dbg !860
  store i32 %xor46, ptr %arrayidx45, align 8, !dbg !860
  %30 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 48), align 16, !dbg !861
  %conv47 = zext i8 %30 to i32, !dbg !861
  %31 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 112), align 16, !dbg !862
  %conv48 = zext i8 %31 to i32, !dbg !862
  %xor49 = xor i32 %conv47, %conv48, !dbg !863
  %32 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 187), align 1, !dbg !864
  %conv50 = zext i8 %32 to i32, !dbg !864
  %xor51 = xor i32 %xor49, %conv50, !dbg !865
  %33 = load volatile i8, ptr getelementptr inbounds ([256 x i8], ptr @aes_inv_sbox, i64 0, i64 247), align 1, !dbg !866
  %conv52 = zext i8 %33 to i32, !dbg !866
  %xor53 = xor i32 %xor51, %conv52, !dbg !867
  %arrayidx54 = getelementptr [4 x i32], ptr %st0, i64 0, i64 3, !dbg !868
  %34 = load i32, ptr %arrayidx54, align 4, !dbg !869
  %xor55 = xor i32 %34, %xor53, !dbg !869
  store i32 %xor55, ptr %arrayidx54, align 4, !dbg !869
  store i32 0, ptr %round, align 4, !dbg !870
  br label %for.cond, !dbg !872

for.cond:                                         ; preds = %for.inc, %entry
  %arraydecay56 = getelementptr inbounds [4 x i32], ptr %st0, i64 0, i64 0, !dbg !873
  %call57 = call i32 @inv_subshift(ptr noundef %arraydecay56, i32 noundef 0) #6, !dbg !876
  %call58 = call i32 @inv_mix_columns(i32 noundef %call57) #6, !dbg !877
  %35 = load ptr, ptr %rkp, align 8, !dbg !878
  %arrayidx59 = getelementptr i32, ptr %35, i64 0, !dbg !878
  %36 = load i32, ptr %arrayidx59, align 4, !dbg !878
  %xor60 = xor i32 %call58, %36, !dbg !879
  %arrayidx61 = getelementptr [4 x i32], ptr %st1, i64 0, i64 0, !dbg !880
  store i32 %xor60, ptr %arrayidx61, align 16, !dbg !881
  %arraydecay62 = getelementptr inbounds [4 x i32], ptr %st0, i64 0, i64 0, !dbg !882
  %call63 = call i32 @inv_subshift(ptr noundef %arraydecay62, i32 noundef 1) #6, !dbg !883
  %call64 = call i32 @inv_mix_columns(i32 noundef %call63) #6, !dbg !884
  %37 = load ptr, ptr %rkp, align 8, !dbg !885
  %arrayidx65 = getelementptr i32, ptr %37, i64 1, !dbg !885
  %38 = load i32, ptr %arrayidx65, align 4, !dbg !885
  %xor66 = xor i32 %call64, %38, !dbg !886
  %arrayidx67 = getelementptr [4 x i32], ptr %st1, i64 0, i64 1, !dbg !887
  store i32 %xor66, ptr %arrayidx67, align 4, !dbg !888
  %arraydecay68 = getelementptr inbounds [4 x i32], ptr %st0, i64 0, i64 0, !dbg !889
  %call69 = call i32 @inv_subshift(ptr noundef %arraydecay68, i32 noundef 2) #6, !dbg !890
  %call70 = call i32 @inv_mix_columns(i32 noundef %call69) #6, !dbg !891
  %39 = load ptr, ptr %rkp, align 8, !dbg !892
  %arrayidx71 = getelementptr i32, ptr %39, i64 2, !dbg !892
  %40 = load i32, ptr %arrayidx71, align 4, !dbg !892
  %xor72 = xor i32 %call70, %40, !dbg !893
  %arrayidx73 = getelementptr [4 x i32], ptr %st1, i64 0, i64 2, !dbg !894
  store i32 %xor72, ptr %arrayidx73, align 8, !dbg !895
  %arraydecay74 = getelementptr inbounds [4 x i32], ptr %st0, i64 0, i64 0, !dbg !896
  %call75 = call i32 @inv_subshift(ptr noundef %arraydecay74, i32 noundef 3) #6, !dbg !897
  %call76 = call i32 @inv_mix_columns(i32 noundef %call75) #6, !dbg !898
  %41 = load ptr, ptr %rkp, align 8, !dbg !899
  %arrayidx77 = getelementptr i32, ptr %41, i64 3, !dbg !899
  %42 = load i32, ptr %arrayidx77, align 4, !dbg !899
  %xor78 = xor i32 %call76, %42, !dbg !900
  %arrayidx79 = getelementptr [4 x i32], ptr %st1, i64 0, i64 3, !dbg !901
  store i32 %xor78, ptr %arrayidx79, align 4, !dbg !902
  %43 = load i32, ptr %round, align 4, !dbg !903
  %44 = load i32, ptr %rounds, align 4, !dbg !905
  %sub = sub i32 %44, 2, !dbg !906
  %cmp = icmp eq i32 %43, %sub, !dbg !907
  br i1 %cmp, label %if.then, label %if.end, !dbg !908

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !909

if.end:                                           ; preds = %for.cond
  %arraydecay81 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !910
  %call82 = call i32 @inv_subshift(ptr noundef %arraydecay81, i32 noundef 0) #6, !dbg !911
  %call83 = call i32 @inv_mix_columns(i32 noundef %call82) #6, !dbg !912
  %45 = load ptr, ptr %rkp, align 8, !dbg !913
  %arrayidx84 = getelementptr i32, ptr %45, i64 4, !dbg !913
  %46 = load i32, ptr %arrayidx84, align 4, !dbg !913
  %xor85 = xor i32 %call83, %46, !dbg !914
  %arrayidx86 = getelementptr [4 x i32], ptr %st0, i64 0, i64 0, !dbg !915
  store i32 %xor85, ptr %arrayidx86, align 16, !dbg !916
  %arraydecay87 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !917
  %call88 = call i32 @inv_subshift(ptr noundef %arraydecay87, i32 noundef 1) #6, !dbg !918
  %call89 = call i32 @inv_mix_columns(i32 noundef %call88) #6, !dbg !919
  %47 = load ptr, ptr %rkp, align 8, !dbg !920
  %arrayidx90 = getelementptr i32, ptr %47, i64 5, !dbg !920
  %48 = load i32, ptr %arrayidx90, align 4, !dbg !920
  %xor91 = xor i32 %call89, %48, !dbg !921
  %arrayidx92 = getelementptr [4 x i32], ptr %st0, i64 0, i64 1, !dbg !922
  store i32 %xor91, ptr %arrayidx92, align 4, !dbg !923
  %arraydecay93 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !924
  %call94 = call i32 @inv_subshift(ptr noundef %arraydecay93, i32 noundef 2) #6, !dbg !925
  %call95 = call i32 @inv_mix_columns(i32 noundef %call94) #6, !dbg !926
  %49 = load ptr, ptr %rkp, align 8, !dbg !927
  %arrayidx96 = getelementptr i32, ptr %49, i64 6, !dbg !927
  %50 = load i32, ptr %arrayidx96, align 4, !dbg !927
  %xor97 = xor i32 %call95, %50, !dbg !928
  %arrayidx98 = getelementptr [4 x i32], ptr %st0, i64 0, i64 2, !dbg !929
  store i32 %xor97, ptr %arrayidx98, align 8, !dbg !930
  %arraydecay99 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !931
  %call100 = call i32 @inv_subshift(ptr noundef %arraydecay99, i32 noundef 3) #6, !dbg !932
  %call101 = call i32 @inv_mix_columns(i32 noundef %call100) #6, !dbg !933
  %51 = load ptr, ptr %rkp, align 8, !dbg !934
  %arrayidx102 = getelementptr i32, ptr %51, i64 7, !dbg !934
  %52 = load i32, ptr %arrayidx102, align 4, !dbg !934
  %xor103 = xor i32 %call101, %52, !dbg !935
  %arrayidx104 = getelementptr [4 x i32], ptr %st0, i64 0, i64 3, !dbg !936
  store i32 %xor103, ptr %arrayidx104, align 4, !dbg !937
  br label %for.inc, !dbg !938

for.inc:                                          ; preds = %if.end
  %53 = load i32, ptr %round, align 4, !dbg !939
  %add105 = add i32 %53, 2, !dbg !939
  store i32 %add105, ptr %round, align 4, !dbg !939
  %54 = load ptr, ptr %rkp, align 8, !dbg !940
  %add.ptr106 = getelementptr i32, ptr %54, i64 8, !dbg !940
  store ptr %add.ptr106, ptr %rkp, align 8, !dbg !940
  br label %for.cond, !dbg !941, !llvm.loop !942

for.end:                                          ; preds = %if.then
  %arraydecay107 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !945
  %call108 = call i32 @inv_subshift(ptr noundef %arraydecay107, i32 noundef 0) #6, !dbg !946
  %55 = load ptr, ptr %rkp, align 8, !dbg !947
  %arrayidx109 = getelementptr i32, ptr %55, i64 4, !dbg !947
  %56 = load i32, ptr %arrayidx109, align 4, !dbg !947
  %xor110 = xor i32 %call108, %56, !dbg !948
  %57 = load ptr, ptr %out.addr, align 8, !dbg !949
  call void @put_unaligned_le32(i32 noundef %xor110, ptr noundef %57) #6, !dbg !950
  %arraydecay111 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !951
  %call112 = call i32 @inv_subshift(ptr noundef %arraydecay111, i32 noundef 1) #6, !dbg !952
  %58 = load ptr, ptr %rkp, align 8, !dbg !953
  %arrayidx113 = getelementptr i32, ptr %58, i64 5, !dbg !953
  %59 = load i32, ptr %arrayidx113, align 4, !dbg !953
  %xor114 = xor i32 %call112, %59, !dbg !954
  %60 = load ptr, ptr %out.addr, align 8, !dbg !955
  %add.ptr115 = getelementptr i8, ptr %60, i64 4, !dbg !956
  call void @put_unaligned_le32(i32 noundef %xor114, ptr noundef %add.ptr115) #6, !dbg !957
  %arraydecay116 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !958
  %call117 = call i32 @inv_subshift(ptr noundef %arraydecay116, i32 noundef 2) #6, !dbg !959
  %61 = load ptr, ptr %rkp, align 8, !dbg !960
  %arrayidx118 = getelementptr i32, ptr %61, i64 6, !dbg !960
  %62 = load i32, ptr %arrayidx118, align 4, !dbg !960
  %xor119 = xor i32 %call117, %62, !dbg !961
  %63 = load ptr, ptr %out.addr, align 8, !dbg !962
  %add.ptr120 = getelementptr i8, ptr %63, i64 8, !dbg !963
  call void @put_unaligned_le32(i32 noundef %xor119, ptr noundef %add.ptr120) #6, !dbg !964
  %arraydecay121 = getelementptr inbounds [4 x i32], ptr %st1, i64 0, i64 0, !dbg !965
  %call122 = call i32 @inv_subshift(ptr noundef %arraydecay121, i32 noundef 3) #6, !dbg !966
  %64 = load ptr, ptr %rkp, align 8, !dbg !967
  %arrayidx123 = getelementptr i32, ptr %64, i64 7, !dbg !967
  %65 = load i32, ptr %arrayidx123, align 4, !dbg !967
  %xor124 = xor i32 %call122, %65, !dbg !968
  %66 = load ptr, ptr %out.addr, align 8, !dbg !969
  %add.ptr125 = getelementptr i8, ptr %66, i64 12, !dbg !970
  call void @put_unaligned_le32(i32 noundef %xor124, ptr noundef %add.ptr125) #6, !dbg !971
  call void @llvm.lifetime.end.p0(i64 4, ptr %round) #5, !dbg !972
  call void @llvm.lifetime.end.p0(i64 16, ptr %st1) #5, !dbg !972
  call void @llvm.lifetime.end.p0(i64 16, ptr %st0) #5, !dbg !972
  call void @llvm.lifetime.end.p0(i64 4, ptr %rounds) #5, !dbg !972
  call void @llvm.lifetime.end.p0(i64 8, ptr %rkp) #5, !dbg !972
  ret void, !dbg !972
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inv_subshift(ptr noundef %in, i32 noundef %pos) #4 align 16 !dbg !973 {
entry:
  %in.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !975, metadata !DIExpression()), !dbg !977
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !976, metadata !DIExpression()), !dbg !978
  %0 = load ptr, ptr %in.addr, align 8, !dbg !979
  %1 = load i32, ptr %pos.addr, align 4, !dbg !980
  %idxprom = sext i32 %1 to i64, !dbg !979
  %arrayidx = getelementptr i32, ptr %0, i64 %idxprom, !dbg !979
  %2 = load i32, ptr %arrayidx, align 4, !dbg !979
  %and = and i32 %2, 255, !dbg !981
  %idxprom1 = zext i32 %and to i64, !dbg !982
  %arrayidx2 = getelementptr [256 x i8], ptr @aes_inv_sbox, i64 0, i64 %idxprom1, !dbg !982
  %3 = load volatile i8, ptr %arrayidx2, align 1, !dbg !982
  %conv = zext i8 %3 to i32, !dbg !983
  %4 = load ptr, ptr %in.addr, align 8, !dbg !984
  %5 = load i32, ptr %pos.addr, align 4, !dbg !985
  %add = add i32 %5, 3, !dbg !986
  %rem = srem i32 %add, 4, !dbg !987
  %idxprom3 = sext i32 %rem to i64, !dbg !984
  %arrayidx4 = getelementptr i32, ptr %4, i64 %idxprom3, !dbg !984
  %6 = load i32, ptr %arrayidx4, align 4, !dbg !984
  %shr = lshr i32 %6, 8, !dbg !988
  %and5 = and i32 %shr, 255, !dbg !989
  %idxprom6 = zext i32 %and5 to i64, !dbg !990
  %arrayidx7 = getelementptr [256 x i8], ptr @aes_inv_sbox, i64 0, i64 %idxprom6, !dbg !990
  %7 = load volatile i8, ptr %arrayidx7, align 1, !dbg !990
  %conv8 = zext i8 %7 to i32, !dbg !990
  %shl = shl i32 %conv8, 8, !dbg !991
  %xor = xor i32 %conv, %shl, !dbg !992
  %8 = load ptr, ptr %in.addr, align 8, !dbg !993
  %9 = load i32, ptr %pos.addr, align 4, !dbg !994
  %add9 = add i32 %9, 2, !dbg !995
  %rem10 = srem i32 %add9, 4, !dbg !996
  %idxprom11 = sext i32 %rem10 to i64, !dbg !993
  %arrayidx12 = getelementptr i32, ptr %8, i64 %idxprom11, !dbg !993
  %10 = load i32, ptr %arrayidx12, align 4, !dbg !993
  %shr13 = lshr i32 %10, 16, !dbg !997
  %and14 = and i32 %shr13, 255, !dbg !998
  %idxprom15 = zext i32 %and14 to i64, !dbg !999
  %arrayidx16 = getelementptr [256 x i8], ptr @aes_inv_sbox, i64 0, i64 %idxprom15, !dbg !999
  %11 = load volatile i8, ptr %arrayidx16, align 1, !dbg !999
  %conv17 = zext i8 %11 to i32, !dbg !999
  %shl18 = shl i32 %conv17, 16, !dbg !1000
  %xor19 = xor i32 %xor, %shl18, !dbg !1001
  %12 = load ptr, ptr %in.addr, align 8, !dbg !1002
  %13 = load i32, ptr %pos.addr, align 4, !dbg !1003
  %add20 = add i32 %13, 1, !dbg !1004
  %rem21 = srem i32 %add20, 4, !dbg !1005
  %idxprom22 = sext i32 %rem21 to i64, !dbg !1002
  %arrayidx23 = getelementptr i32, ptr %12, i64 %idxprom22, !dbg !1002
  %14 = load i32, ptr %arrayidx23, align 4, !dbg !1002
  %shr24 = lshr i32 %14, 24, !dbg !1006
  %and25 = and i32 %shr24, 255, !dbg !1007
  %idxprom26 = zext i32 %and25 to i64, !dbg !1008
  %arrayidx27 = getelementptr [256 x i8], ptr @aes_inv_sbox, i64 0, i64 %idxprom26, !dbg !1008
  %15 = load volatile i8, ptr %arrayidx27, align 1, !dbg !1008
  %conv28 = zext i8 %15 to i32, !dbg !1008
  %shl29 = shl i32 %conv28, 24, !dbg !1009
  %xor30 = xor i32 %xor19, %shl29, !dbg !1010
  ret i32 %xor30, !dbg !1011
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mul_by_x2(i32 noundef %w) #0 align 16 !dbg !1012 {
entry:
  %w.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 %w, ptr %w.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1014, metadata !DIExpression()), !dbg !1018
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #5, !dbg !1019
  call void @llvm.dbg.declare(metadata ptr %x, metadata !1015, metadata !DIExpression()), !dbg !1020
  %0 = load i32, ptr %w.addr, align 4, !dbg !1021
  %and = and i32 %0, 1061109567, !dbg !1022
  store i32 %and, ptr %x, align 4, !dbg !1020
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #5, !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %y, metadata !1016, metadata !DIExpression()), !dbg !1024
  %1 = load i32, ptr %w.addr, align 4, !dbg !1025
  %and1 = and i32 %1, -2139062144, !dbg !1026
  store i32 %and1, ptr %y, align 4, !dbg !1024
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #5, !dbg !1027
  call void @llvm.dbg.declare(metadata ptr %z, metadata !1017, metadata !DIExpression()), !dbg !1028
  %2 = load i32, ptr %w.addr, align 4, !dbg !1029
  %and2 = and i32 %2, 1077952576, !dbg !1030
  store i32 %and2, ptr %z, align 4, !dbg !1028
  %3 = load i32, ptr %x, align 4, !dbg !1031
  %shl = shl i32 %3, 2, !dbg !1032
  %4 = load i32, ptr %y, align 4, !dbg !1033
  %shr = lshr i32 %4, 7, !dbg !1034
  %mul = mul i32 %shr, 54, !dbg !1035
  %xor = xor i32 %shl, %mul, !dbg !1036
  %5 = load i32, ptr %z, align 4, !dbg !1037
  %shr3 = lshr i32 %5, 6, !dbg !1038
  %mul4 = mul i32 %shr3, 27, !dbg !1039
  %xor5 = xor i32 %xor, %mul4, !dbg !1040
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #5, !dbg !1041
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #5, !dbg !1041
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #5, !dbg !1041
  ret i32 %xor5, !dbg !1042
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aes_sbox", scope: !2, file: !3, line: 15, type: !75, isLocal: true, isDefinition: true, align: 512)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/.aes.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/libaes\22 -D KBUILD_BASENAME=\22aes\22 -D KBUILD_MODNAME=\22libaes\22 -D __KBUILD_MODNAME=kmod_libaes -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/aes.ll lib/crypto/aes.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !40, imports: !83, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/aes.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce8412136a4ec418c9cf3688ca24d67b")
!4 = !{!5, !6, !9, !11, !28}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !7, line: 27, baseType: !8)
!7 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !10, line: 38, baseType: !6)
!10 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !15, file: !14, line: 32, size: 32, elements: !26)
!14 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!15 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !14, file: !14, line: 30, type: !16, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !22)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !20}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !6)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!22 = !{!23, !24}
!23 = !DILocalVariable(name: "p", arg: 1, scope: !15, file: !14, line: 30, type: !20)
!24 = !DILocalVariable(name: "__pptr", scope: !25, file: !14, line: 32, type: !11)
!25 = distinct !DILexicalBlock(scope: !15, file: !14, line: 32, column: 9)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !13, file: !14, line: 32, baseType: !9, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !30, file: !14, line: 47, size: 32, elements: !38)
!30 = distinct !DISubprogram(name: "put_unaligned_le32", scope: !14, file: !14, line: 45, type: !31, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !18, !5}
!33 = !{!34, !35, !36}
!34 = !DILocalVariable(name: "val", arg: 1, scope: !30, file: !14, line: 45, type: !18)
!35 = !DILocalVariable(name: "p", arg: 2, scope: !30, file: !14, line: 45, type: !5)
!36 = !DILocalVariable(name: "__pptr", scope: !37, file: !14, line: 47, type: !28)
!37 = distinct !DILexicalBlock(scope: !30, file: !14, line: 47, column: 2)
!38 = !{!39}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !29, file: !14, line: 47, baseType: !9, size: 32)
!40 = !{!41, !43, !45, !47, !49, !51, !58, !63, !68, !0, !73}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_aes_sbox197", scope: !2, file: !3, line: 88, type: !5, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_crypto_aes_inv_sbox198", scope: !2, file: !3, line: 89, type: !5, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_aes_expandkey199", scope: !2, file: !3, line: 250, type: !5, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_aes_encrypt200", scope: !2, file: !3, line: 301, type: !5, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_aes_decrypt201", scope: !2, file: !3, line: 352, type: !5, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description202", scope: !2, file: !3, line: 354, type: !53, isLocal: true, isDefinition: true, align: 8)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 312, elements: !56)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !{!57}
!57 = !DISubrange(count: 39)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author203", scope: !2, file: !3, line: 355, type: !60, isLocal: true, isDefinition: true, align: 8)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 456, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 57)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file204", scope: !2, file: !3, line: 356, type: !65, isLocal: true, isDefinition: true, align: 8)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 240, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 30)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license205", scope: !2, file: !3, line: 356, type: !70, isLocal: true, isDefinition: true, align: 8)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 176, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 22)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "aes_inv_sbox", scope: !2, file: !3, line: 50, type: !75, isLocal: true, isDefinition: true, align: 512)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 2048, elements: !81)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !7, line: 21, baseType: !80)
!80 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!81 = !{!82}
!82 = !DISubrange(count: 256)
!83 = !{!84, !85}
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, name: "crypto_aes_sbox", scope: !2, entity: !1, file: !3, line: 85)
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, name: "crypto_aes_inv_sbox", scope: !2, entity: !74, file: !3, line: 86)
!86 = !{i32 7, !"Dwarf Version", i32 5}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 8, !"cf-protection-branch", i32 1}
!90 = !{i32 4, !"function_return_thunk_extern", i32 1}
!91 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!92 = !{i32 1, !"Code Model", i32 2}
!93 = !{i32 1, !"override-stack-alignment", i32 8}
!94 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!95 = distinct !DISubprogram(name: "aes_expandkey", scope: !3, file: !3, line: 185, type: !96, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !99, !109, !8}
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_aes_ctx", file: !101, line: 25, size: 3872, elements: !102)
!101 = !DIFile(filename: "./include/crypto/aes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49ff6d6068780d74021ffd1a0ce13066")
!102 = !{!103, !107, !108}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "key_enc", scope: !100, file: !101, line: 26, baseType: !104, size: 1920)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1920, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 60)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "key_dec", scope: !100, file: !101, line: 27, baseType: !104, size: 1920, offset: 1920)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !100, file: !101, line: 28, baseType: !18, size: 32, offset: 3840)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !125}
!112 = !DILocalVariable(name: "ctx", arg: 1, scope: !95, file: !3, line: 185, type: !99)
!113 = !DILocalVariable(name: "in_key", arg: 2, scope: !95, file: !3, line: 185, type: !109)
!114 = !DILocalVariable(name: "key_len", arg: 3, scope: !95, file: !3, line: 186, type: !8)
!115 = !DILocalVariable(name: "kwords", scope: !95, file: !3, line: 188, type: !18)
!116 = !DILocalVariable(name: "rc", scope: !95, file: !3, line: 189, type: !18)
!117 = !DILocalVariable(name: "i", scope: !95, file: !3, line: 189, type: !18)
!118 = !DILocalVariable(name: "j", scope: !95, file: !3, line: 189, type: !18)
!119 = !DILocalVariable(name: "err", scope: !95, file: !3, line: 190, type: !98)
!120 = !DILocalVariable(name: "rki", scope: !121, file: !3, line: 202, type: !124)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 201, column: 54)
!122 = distinct !DILexicalBlock(scope: !123, file: !3, line: 201, column: 2)
!123 = distinct !DILexicalBlock(scope: !95, file: !3, line: 201, column: 2)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!125 = !DILocalVariable(name: "rko", scope: !121, file: !3, line: 203, type: !124)
!126 = !DILocation(line: 185, column: 42, scope: !95)
!127 = !DILocation(line: 185, column: 57, scope: !95)
!128 = !DILocation(line: 186, column: 18, scope: !95)
!129 = !DILocation(line: 188, column: 2, scope: !95)
!130 = !DILocation(line: 188, column: 6, scope: !95)
!131 = !DILocation(line: 188, column: 15, scope: !95)
!132 = !DILocation(line: 188, column: 23, scope: !95)
!133 = !DILocation(line: 189, column: 2, scope: !95)
!134 = !DILocation(line: 189, column: 6, scope: !95)
!135 = !DILocation(line: 189, column: 10, scope: !95)
!136 = !DILocation(line: 189, column: 13, scope: !95)
!137 = !DILocation(line: 190, column: 2, scope: !95)
!138 = !DILocation(line: 190, column: 6, scope: !95)
!139 = !DILocation(line: 192, column: 25, scope: !95)
!140 = !DILocation(line: 192, column: 8, scope: !95)
!141 = !DILocation(line: 192, column: 6, scope: !95)
!142 = !DILocation(line: 193, column: 6, scope: !143)
!143 = distinct !DILexicalBlock(scope: !95, file: !3, line: 193, column: 6)
!144 = !DILocation(line: 193, column: 6, scope: !95)
!145 = !DILocation(line: 194, column: 10, scope: !143)
!146 = !DILocation(line: 194, column: 3, scope: !143)
!147 = !DILocation(line: 196, column: 20, scope: !95)
!148 = !DILocation(line: 196, column: 2, scope: !95)
!149 = !DILocation(line: 196, column: 7, scope: !95)
!150 = !DILocation(line: 196, column: 18, scope: !95)
!151 = !DILocation(line: 198, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !95, file: !3, line: 198, column: 2)
!153 = !DILocation(line: 198, column: 7, scope: !152)
!154 = !DILocation(line: 198, column: 14, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !3, line: 198, column: 2)
!156 = !DILocation(line: 198, column: 18, scope: !155)
!157 = !DILocation(line: 198, column: 16, scope: !155)
!158 = !DILocation(line: 198, column: 2, scope: !152)
!159 = !DILocation(line: 199, column: 40, scope: !155)
!160 = !DILocation(line: 199, column: 49, scope: !155)
!161 = !DILocation(line: 199, column: 51, scope: !155)
!162 = !DILocation(line: 199, column: 47, scope: !155)
!163 = !DILocation(line: 199, column: 21, scope: !155)
!164 = !DILocation(line: 199, column: 3, scope: !155)
!165 = !DILocation(line: 199, column: 8, scope: !155)
!166 = !DILocation(line: 199, column: 16, scope: !155)
!167 = !DILocation(line: 199, column: 19, scope: !155)
!168 = !DILocation(line: 198, column: 27, scope: !155)
!169 = !DILocation(line: 198, column: 2, scope: !155)
!170 = distinct !{!170, !158, !171, !172, !173}
!171 = !DILocation(line: 199, column: 64, scope: !152)
!172 = !{!"llvm.loop.mustprogress"}
!173 = !{!"llvm.loop.unroll.disable"}
!174 = !DILocation(line: 201, column: 9, scope: !123)
!175 = !DILocation(line: 201, column: 17, scope: !123)
!176 = !DILocation(line: 201, column: 7, scope: !123)
!177 = !DILocation(line: 201, column: 22, scope: !122)
!178 = !DILocation(line: 201, column: 24, scope: !122)
!179 = !DILocation(line: 201, column: 2, scope: !123)
!180 = !DILocation(line: 202, column: 3, scope: !121)
!181 = !DILocation(line: 202, column: 8, scope: !121)
!182 = !DILocation(line: 202, column: 14, scope: !121)
!183 = !DILocation(line: 202, column: 19, scope: !121)
!184 = !DILocation(line: 202, column: 30, scope: !121)
!185 = !DILocation(line: 202, column: 34, scope: !121)
!186 = !DILocation(line: 202, column: 32, scope: !121)
!187 = !DILocation(line: 202, column: 27, scope: !121)
!188 = !DILocation(line: 203, column: 3, scope: !121)
!189 = !DILocation(line: 203, column: 8, scope: !121)
!190 = !DILocation(line: 203, column: 14, scope: !121)
!191 = !DILocation(line: 203, column: 20, scope: !121)
!192 = !DILocation(line: 203, column: 18, scope: !121)
!193 = !DILocation(line: 205, column: 23, scope: !121)
!194 = !DILocation(line: 205, column: 27, scope: !121)
!195 = !DILocation(line: 205, column: 34, scope: !121)
!196 = !DILocation(line: 205, column: 18, scope: !121)
!197 = !DILocation(line: 205, column: 12, scope: !121)
!198 = !DILocation(line: 205, column: 46, scope: !121)
!199 = !DILocation(line: 205, column: 44, scope: !121)
!200 = !DILocation(line: 205, column: 51, scope: !121)
!201 = !DILocation(line: 205, column: 49, scope: !121)
!202 = !DILocation(line: 205, column: 3, scope: !121)
!203 = !DILocation(line: 205, column: 10, scope: !121)
!204 = !DILocation(line: 206, column: 12, scope: !121)
!205 = !DILocation(line: 206, column: 21, scope: !121)
!206 = !DILocation(line: 206, column: 19, scope: !121)
!207 = !DILocation(line: 206, column: 3, scope: !121)
!208 = !DILocation(line: 206, column: 10, scope: !121)
!209 = !DILocation(line: 207, column: 12, scope: !121)
!210 = !DILocation(line: 207, column: 21, scope: !121)
!211 = !DILocation(line: 207, column: 19, scope: !121)
!212 = !DILocation(line: 207, column: 3, scope: !121)
!213 = !DILocation(line: 207, column: 10, scope: !121)
!214 = !DILocation(line: 208, column: 12, scope: !121)
!215 = !DILocation(line: 208, column: 21, scope: !121)
!216 = !DILocation(line: 208, column: 19, scope: !121)
!217 = !DILocation(line: 208, column: 3, scope: !121)
!218 = !DILocation(line: 208, column: 10, scope: !121)
!219 = !DILocation(line: 210, column: 7, scope: !220)
!220 = distinct !DILexicalBlock(scope: !121, file: !3, line: 210, column: 7)
!221 = !DILocation(line: 210, column: 15, scope: !220)
!222 = !DILocation(line: 210, column: 7, scope: !121)
!223 = !DILocation(line: 211, column: 8, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 211, column: 8)
!225 = distinct !DILexicalBlock(scope: !220, file: !3, line: 210, column: 35)
!226 = !DILocation(line: 211, column: 10, scope: !224)
!227 = !DILocation(line: 211, column: 8, scope: !225)
!228 = !DILocation(line: 212, column: 5, scope: !224)
!229 = !DILocation(line: 213, column: 13, scope: !225)
!230 = !DILocation(line: 213, column: 22, scope: !225)
!231 = !DILocation(line: 213, column: 20, scope: !225)
!232 = !DILocation(line: 213, column: 4, scope: !225)
!233 = !DILocation(line: 213, column: 11, scope: !225)
!234 = !DILocation(line: 214, column: 13, scope: !225)
!235 = !DILocation(line: 214, column: 22, scope: !225)
!236 = !DILocation(line: 214, column: 20, scope: !225)
!237 = !DILocation(line: 214, column: 4, scope: !225)
!238 = !DILocation(line: 214, column: 11, scope: !225)
!239 = !DILocation(line: 215, column: 3, scope: !225)
!240 = !DILocation(line: 215, column: 14, scope: !241)
!241 = distinct !DILexicalBlock(scope: !220, file: !3, line: 215, column: 14)
!242 = !DILocation(line: 215, column: 22, scope: !241)
!243 = !DILocation(line: 215, column: 14, scope: !220)
!244 = !DILocation(line: 216, column: 8, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 216, column: 8)
!246 = distinct !DILexicalBlock(scope: !241, file: !3, line: 215, column: 42)
!247 = !DILocation(line: 216, column: 10, scope: !245)
!248 = !DILocation(line: 216, column: 8, scope: !246)
!249 = !DILocation(line: 217, column: 5, scope: !245)
!250 = !DILocation(line: 218, column: 18, scope: !246)
!251 = !DILocation(line: 218, column: 13, scope: !246)
!252 = !DILocation(line: 218, column: 28, scope: !246)
!253 = !DILocation(line: 218, column: 26, scope: !246)
!254 = !DILocation(line: 218, column: 4, scope: !246)
!255 = !DILocation(line: 218, column: 11, scope: !246)
!256 = !DILocation(line: 219, column: 13, scope: !246)
!257 = !DILocation(line: 219, column: 22, scope: !246)
!258 = !DILocation(line: 219, column: 20, scope: !246)
!259 = !DILocation(line: 219, column: 4, scope: !246)
!260 = !DILocation(line: 219, column: 11, scope: !246)
!261 = !DILocation(line: 220, column: 13, scope: !246)
!262 = !DILocation(line: 220, column: 22, scope: !246)
!263 = !DILocation(line: 220, column: 20, scope: !246)
!264 = !DILocation(line: 220, column: 4, scope: !246)
!265 = !DILocation(line: 220, column: 11, scope: !246)
!266 = !DILocation(line: 221, column: 13, scope: !246)
!267 = !DILocation(line: 221, column: 22, scope: !246)
!268 = !DILocation(line: 221, column: 20, scope: !246)
!269 = !DILocation(line: 221, column: 4, scope: !246)
!270 = !DILocation(line: 221, column: 11, scope: !246)
!271 = !DILocation(line: 222, column: 3, scope: !246)
!272 = !DILocation(line: 223, column: 2, scope: !122)
!273 = !DILocation(line: 223, column: 2, scope: !121)
!274 = !DILocation(line: 201, column: 31, scope: !122)
!275 = !DILocation(line: 201, column: 49, scope: !122)
!276 = !DILocation(line: 201, column: 40, scope: !122)
!277 = !DILocation(line: 201, column: 38, scope: !122)
!278 = !DILocation(line: 201, column: 2, scope: !122)
!279 = distinct !{!279, !179, !280, !172, !173}
!280 = !DILocation(line: 223, column: 2, scope: !123)
!281 = !DILocation(line: 231, column: 20, scope: !95)
!282 = !DILocation(line: 231, column: 25, scope: !95)
!283 = !DILocation(line: 231, column: 33, scope: !95)
!284 = !DILocation(line: 231, column: 41, scope: !95)
!285 = !DILocation(line: 231, column: 2, scope: !95)
!286 = !DILocation(line: 231, column: 7, scope: !95)
!287 = !DILocation(line: 231, column: 18, scope: !95)
!288 = !DILocation(line: 232, column: 20, scope: !95)
!289 = !DILocation(line: 232, column: 25, scope: !95)
!290 = !DILocation(line: 232, column: 33, scope: !95)
!291 = !DILocation(line: 232, column: 41, scope: !95)
!292 = !DILocation(line: 232, column: 2, scope: !95)
!293 = !DILocation(line: 232, column: 7, scope: !95)
!294 = !DILocation(line: 232, column: 18, scope: !95)
!295 = !DILocation(line: 233, column: 20, scope: !95)
!296 = !DILocation(line: 233, column: 25, scope: !95)
!297 = !DILocation(line: 233, column: 33, scope: !95)
!298 = !DILocation(line: 233, column: 41, scope: !95)
!299 = !DILocation(line: 233, column: 2, scope: !95)
!300 = !DILocation(line: 233, column: 7, scope: !95)
!301 = !DILocation(line: 233, column: 18, scope: !95)
!302 = !DILocation(line: 234, column: 20, scope: !95)
!303 = !DILocation(line: 234, column: 25, scope: !95)
!304 = !DILocation(line: 234, column: 33, scope: !95)
!305 = !DILocation(line: 234, column: 41, scope: !95)
!306 = !DILocation(line: 234, column: 2, scope: !95)
!307 = !DILocation(line: 234, column: 7, scope: !95)
!308 = !DILocation(line: 234, column: 18, scope: !95)
!309 = !DILocation(line: 236, column: 9, scope: !310)
!310 = distinct !DILexicalBlock(scope: !95, file: !3, line: 236, column: 2)
!311 = !DILocation(line: 236, column: 18, scope: !310)
!312 = !DILocation(line: 236, column: 26, scope: !310)
!313 = !DILocation(line: 236, column: 16, scope: !310)
!314 = !DILocation(line: 236, column: 7, scope: !310)
!315 = !DILocation(line: 236, column: 32, scope: !316)
!316 = distinct !DILexicalBlock(scope: !310, file: !3, line: 236, column: 2)
!317 = !DILocation(line: 236, column: 34, scope: !316)
!318 = !DILocation(line: 236, column: 2, scope: !310)
!319 = !DILocation(line: 237, column: 41, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !3, line: 236, column: 55)
!321 = !DILocation(line: 237, column: 46, scope: !320)
!322 = !DILocation(line: 237, column: 54, scope: !320)
!323 = !DILocation(line: 237, column: 25, scope: !320)
!324 = !DILocation(line: 237, column: 3, scope: !320)
!325 = !DILocation(line: 237, column: 8, scope: !320)
!326 = !DILocation(line: 237, column: 16, scope: !320)
!327 = !DILocation(line: 237, column: 23, scope: !320)
!328 = !DILocation(line: 238, column: 41, scope: !320)
!329 = !DILocation(line: 238, column: 46, scope: !320)
!330 = !DILocation(line: 238, column: 54, scope: !320)
!331 = !DILocation(line: 238, column: 56, scope: !320)
!332 = !DILocation(line: 238, column: 25, scope: !320)
!333 = !DILocation(line: 238, column: 3, scope: !320)
!334 = !DILocation(line: 238, column: 8, scope: !320)
!335 = !DILocation(line: 238, column: 16, scope: !320)
!336 = !DILocation(line: 238, column: 18, scope: !320)
!337 = !DILocation(line: 238, column: 23, scope: !320)
!338 = !DILocation(line: 239, column: 41, scope: !320)
!339 = !DILocation(line: 239, column: 46, scope: !320)
!340 = !DILocation(line: 239, column: 54, scope: !320)
!341 = !DILocation(line: 239, column: 56, scope: !320)
!342 = !DILocation(line: 239, column: 25, scope: !320)
!343 = !DILocation(line: 239, column: 3, scope: !320)
!344 = !DILocation(line: 239, column: 8, scope: !320)
!345 = !DILocation(line: 239, column: 16, scope: !320)
!346 = !DILocation(line: 239, column: 18, scope: !320)
!347 = !DILocation(line: 239, column: 23, scope: !320)
!348 = !DILocation(line: 240, column: 41, scope: !320)
!349 = !DILocation(line: 240, column: 46, scope: !320)
!350 = !DILocation(line: 240, column: 54, scope: !320)
!351 = !DILocation(line: 240, column: 56, scope: !320)
!352 = !DILocation(line: 240, column: 25, scope: !320)
!353 = !DILocation(line: 240, column: 3, scope: !320)
!354 = !DILocation(line: 240, column: 8, scope: !320)
!355 = !DILocation(line: 240, column: 16, scope: !320)
!356 = !DILocation(line: 240, column: 18, scope: !320)
!357 = !DILocation(line: 240, column: 23, scope: !320)
!358 = !DILocation(line: 241, column: 2, scope: !320)
!359 = !DILocation(line: 236, column: 41, scope: !316)
!360 = !DILocation(line: 236, column: 49, scope: !316)
!361 = !DILocation(line: 236, column: 2, scope: !316)
!362 = distinct !{!362, !318, !363, !172, !173}
!363 = !DILocation(line: 241, column: 2, scope: !310)
!364 = !DILocation(line: 243, column: 24, scope: !95)
!365 = !DILocation(line: 243, column: 29, scope: !95)
!366 = !DILocation(line: 243, column: 2, scope: !95)
!367 = !DILocation(line: 243, column: 7, scope: !95)
!368 = !DILocation(line: 243, column: 15, scope: !95)
!369 = !DILocation(line: 243, column: 22, scope: !95)
!370 = !DILocation(line: 244, column: 24, scope: !95)
!371 = !DILocation(line: 244, column: 29, scope: !95)
!372 = !DILocation(line: 244, column: 2, scope: !95)
!373 = !DILocation(line: 244, column: 7, scope: !95)
!374 = !DILocation(line: 244, column: 15, scope: !95)
!375 = !DILocation(line: 244, column: 17, scope: !95)
!376 = !DILocation(line: 244, column: 22, scope: !95)
!377 = !DILocation(line: 245, column: 24, scope: !95)
!378 = !DILocation(line: 245, column: 29, scope: !95)
!379 = !DILocation(line: 245, column: 2, scope: !95)
!380 = !DILocation(line: 245, column: 7, scope: !95)
!381 = !DILocation(line: 245, column: 15, scope: !95)
!382 = !DILocation(line: 245, column: 17, scope: !95)
!383 = !DILocation(line: 245, column: 22, scope: !95)
!384 = !DILocation(line: 246, column: 24, scope: !95)
!385 = !DILocation(line: 246, column: 29, scope: !95)
!386 = !DILocation(line: 246, column: 2, scope: !95)
!387 = !DILocation(line: 246, column: 7, scope: !95)
!388 = !DILocation(line: 246, column: 15, scope: !95)
!389 = !DILocation(line: 246, column: 17, scope: !95)
!390 = !DILocation(line: 246, column: 22, scope: !95)
!391 = !DILocation(line: 248, column: 2, scope: !95)
!392 = !DILocation(line: 249, column: 1, scope: !95)
!393 = distinct !DISubprogram(name: "aes_check_keylen", scope: !101, file: !101, line: 37, type: !394, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{!98, !8}
!396 = !{!397}
!397 = !DILocalVariable(name: "keylen", arg: 1, scope: !393, file: !101, line: 37, type: !8)
!398 = !DILocation(line: 37, column: 49, scope: !393)
!399 = !DILocation(line: 39, column: 10, scope: !393)
!400 = !DILocation(line: 39, column: 2, scope: !393)
!401 = !DILocation(line: 43, column: 3, scope: !402)
!402 = distinct !DILexicalBlock(scope: !393, file: !101, line: 39, column: 18)
!403 = !DILocation(line: 45, column: 3, scope: !402)
!404 = !DILocation(line: 48, column: 2, scope: !393)
!405 = !DILocation(line: 49, column: 1, scope: !393)
!406 = !DILocation(line: 30, column: 50, scope: !15)
!407 = !DILocation(line: 32, column: 9, scope: !25)
!408 = !DILocation(line: 32, column: 9, scope: !15)
!409 = !DILocation(line: 32, column: 2, scope: !15)
!410 = distinct !DISubprogram(name: "ror32", scope: !411, file: !411, line: 135, type: !412, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !414)
!411 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!412 = !DISubroutineType(types: !413)
!413 = !{!6, !6, !8}
!414 = !{!415, !416}
!415 = !DILocalVariable(name: "word", arg: 1, scope: !410, file: !411, line: 135, type: !6)
!416 = !DILocalVariable(name: "shift", arg: 2, scope: !410, file: !411, line: 135, type: !8)
!417 = !DILocation(line: 135, column: 33, scope: !410)
!418 = !DILocation(line: 135, column: 52, scope: !410)
!419 = !DILocation(line: 137, column: 10, scope: !410)
!420 = !DILocation(line: 137, column: 19, scope: !410)
!421 = !DILocation(line: 137, column: 25, scope: !410)
!422 = !DILocation(line: 137, column: 15, scope: !410)
!423 = !DILocation(line: 137, column: 35, scope: !410)
!424 = !DILocation(line: 137, column: 46, scope: !410)
!425 = !DILocation(line: 137, column: 45, scope: !410)
!426 = !DILocation(line: 137, column: 53, scope: !410)
!427 = !DILocation(line: 137, column: 40, scope: !410)
!428 = !DILocation(line: 137, column: 32, scope: !410)
!429 = !DILocation(line: 137, column: 2, scope: !410)
!430 = distinct !DISubprogram(name: "subw", scope: !3, file: !3, line: 163, type: !431, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{!18, !18}
!433 = !{!434}
!434 = !DILocalVariable(name: "in", arg: 1, scope: !430, file: !3, line: 163, type: !18)
!435 = !DILocation(line: 163, column: 21, scope: !430)
!436 = !DILocation(line: 165, column: 19, scope: !430)
!437 = !DILocation(line: 165, column: 22, scope: !430)
!438 = !DILocation(line: 165, column: 10, scope: !430)
!439 = !DILocation(line: 165, column: 9, scope: !430)
!440 = !DILocation(line: 166, column: 20, scope: !430)
!441 = !DILocation(line: 166, column: 23, scope: !430)
!442 = !DILocation(line: 166, column: 30, scope: !430)
!443 = !DILocation(line: 166, column: 10, scope: !430)
!444 = !DILocation(line: 166, column: 38, scope: !430)
!445 = !DILocation(line: 165, column: 31, scope: !430)
!446 = !DILocation(line: 167, column: 20, scope: !430)
!447 = !DILocation(line: 167, column: 23, scope: !430)
!448 = !DILocation(line: 167, column: 30, scope: !430)
!449 = !DILocation(line: 167, column: 10, scope: !430)
!450 = !DILocation(line: 167, column: 38, scope: !430)
!451 = !DILocation(line: 166, column: 45, scope: !430)
!452 = !DILocation(line: 168, column: 20, scope: !430)
!453 = !DILocation(line: 168, column: 23, scope: !430)
!454 = !DILocation(line: 168, column: 30, scope: !430)
!455 = !DILocation(line: 168, column: 10, scope: !430)
!456 = !DILocation(line: 168, column: 38, scope: !430)
!457 = !DILocation(line: 167, column: 45, scope: !430)
!458 = !DILocation(line: 165, column: 2, scope: !430)
!459 = distinct !DISubprogram(name: "mul_by_x", scope: !3, file: !3, line: 91, type: !431, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !460)
!460 = !{!461, !462, !463}
!461 = !DILocalVariable(name: "w", arg: 1, scope: !459, file: !3, line: 91, type: !18)
!462 = !DILocalVariable(name: "x", scope: !459, file: !3, line: 93, type: !18)
!463 = !DILocalVariable(name: "y", scope: !459, file: !3, line: 94, type: !18)
!464 = !DILocation(line: 91, column: 25, scope: !459)
!465 = !DILocation(line: 93, column: 2, scope: !459)
!466 = !DILocation(line: 93, column: 6, scope: !459)
!467 = !DILocation(line: 93, column: 10, scope: !459)
!468 = !DILocation(line: 93, column: 12, scope: !459)
!469 = !DILocation(line: 94, column: 2, scope: !459)
!470 = !DILocation(line: 94, column: 6, scope: !459)
!471 = !DILocation(line: 94, column: 10, scope: !459)
!472 = !DILocation(line: 94, column: 12, scope: !459)
!473 = !DILocation(line: 97, column: 10, scope: !459)
!474 = !DILocation(line: 97, column: 12, scope: !459)
!475 = !DILocation(line: 97, column: 21, scope: !459)
!476 = !DILocation(line: 97, column: 23, scope: !459)
!477 = !DILocation(line: 97, column: 29, scope: !459)
!478 = !DILocation(line: 97, column: 18, scope: !459)
!479 = !DILocation(line: 98, column: 1, scope: !459)
!480 = !DILocation(line: 97, column: 2, scope: !459)
!481 = distinct !DISubprogram(name: "inv_mix_columns", scope: !3, file: !3, line: 125, type: !431, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !482)
!482 = !{!483, !484}
!483 = !DILocalVariable(name: "x", arg: 1, scope: !481, file: !3, line: 125, type: !18)
!484 = !DILocalVariable(name: "y", scope: !481, file: !3, line: 142, type: !18)
!485 = !DILocation(line: 125, column: 32, scope: !481)
!486 = !DILocation(line: 142, column: 2, scope: !481)
!487 = !DILocation(line: 142, column: 6, scope: !481)
!488 = !DILocation(line: 142, column: 20, scope: !481)
!489 = !DILocation(line: 142, column: 10, scope: !481)
!490 = !DILocation(line: 144, column: 21, scope: !481)
!491 = !DILocation(line: 144, column: 25, scope: !481)
!492 = !DILocation(line: 144, column: 23, scope: !481)
!493 = !DILocation(line: 144, column: 35, scope: !481)
!494 = !DILocation(line: 144, column: 29, scope: !481)
!495 = !DILocation(line: 144, column: 27, scope: !481)
!496 = !DILocation(line: 144, column: 9, scope: !481)
!497 = !DILocation(line: 145, column: 1, scope: !481)
!498 = !DILocation(line: 144, column: 2, scope: !481)
!499 = distinct !DISubprogram(name: "aes_encrypt", scope: !3, file: !3, line: 258, type: !500, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !505)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !502, !504, !109}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!505 = !{!506, !507, !508, !509, !512, !513, !517, !518}
!506 = !DILocalVariable(name: "ctx", arg: 1, scope: !499, file: !3, line: 258, type: !502)
!507 = !DILocalVariable(name: "out", arg: 2, scope: !499, file: !3, line: 258, type: !504)
!508 = !DILocalVariable(name: "in", arg: 3, scope: !499, file: !3, line: 258, type: !109)
!509 = !DILocalVariable(name: "rkp", scope: !499, file: !3, line: 260, type: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!512 = !DILocalVariable(name: "rounds", scope: !499, file: !3, line: 261, type: !98)
!513 = !DILocalVariable(name: "st0", scope: !499, file: !3, line: 262, type: !514)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 4)
!517 = !DILocalVariable(name: "st1", scope: !499, file: !3, line: 262, type: !514)
!518 = !DILocalVariable(name: "round", scope: !499, file: !3, line: 263, type: !98)
!519 = !DILocation(line: 258, column: 47, scope: !499)
!520 = !DILocation(line: 258, column: 56, scope: !499)
!521 = !DILocation(line: 258, column: 71, scope: !499)
!522 = !DILocation(line: 260, column: 2, scope: !499)
!523 = !DILocation(line: 260, column: 13, scope: !499)
!524 = !DILocation(line: 260, column: 19, scope: !499)
!525 = !DILocation(line: 260, column: 24, scope: !499)
!526 = !DILocation(line: 260, column: 32, scope: !499)
!527 = !DILocation(line: 261, column: 2, scope: !499)
!528 = !DILocation(line: 261, column: 6, scope: !499)
!529 = !DILocation(line: 261, column: 19, scope: !499)
!530 = !DILocation(line: 261, column: 24, scope: !499)
!531 = !DILocation(line: 261, column: 35, scope: !499)
!532 = !DILocation(line: 261, column: 17, scope: !499)
!533 = !DILocation(line: 262, column: 2, scope: !499)
!534 = !DILocation(line: 262, column: 6, scope: !499)
!535 = !DILocation(line: 262, column: 14, scope: !499)
!536 = !DILocation(line: 263, column: 2, scope: !499)
!537 = !DILocation(line: 263, column: 6, scope: !499)
!538 = !DILocation(line: 265, column: 11, scope: !499)
!539 = !DILocation(line: 265, column: 16, scope: !499)
!540 = !DILocation(line: 265, column: 48, scope: !499)
!541 = !DILocation(line: 265, column: 29, scope: !499)
!542 = !DILocation(line: 265, column: 27, scope: !499)
!543 = !DILocation(line: 265, column: 2, scope: !499)
!544 = !DILocation(line: 265, column: 9, scope: !499)
!545 = !DILocation(line: 266, column: 11, scope: !499)
!546 = !DILocation(line: 266, column: 16, scope: !499)
!547 = !DILocation(line: 266, column: 48, scope: !499)
!548 = !DILocation(line: 266, column: 51, scope: !499)
!549 = !DILocation(line: 266, column: 29, scope: !499)
!550 = !DILocation(line: 266, column: 27, scope: !499)
!551 = !DILocation(line: 266, column: 2, scope: !499)
!552 = !DILocation(line: 266, column: 9, scope: !499)
!553 = !DILocation(line: 267, column: 11, scope: !499)
!554 = !DILocation(line: 267, column: 16, scope: !499)
!555 = !DILocation(line: 267, column: 48, scope: !499)
!556 = !DILocation(line: 267, column: 51, scope: !499)
!557 = !DILocation(line: 267, column: 29, scope: !499)
!558 = !DILocation(line: 267, column: 27, scope: !499)
!559 = !DILocation(line: 267, column: 2, scope: !499)
!560 = !DILocation(line: 267, column: 9, scope: !499)
!561 = !DILocation(line: 268, column: 11, scope: !499)
!562 = !DILocation(line: 268, column: 16, scope: !499)
!563 = !DILocation(line: 268, column: 48, scope: !499)
!564 = !DILocation(line: 268, column: 51, scope: !499)
!565 = !DILocation(line: 268, column: 29, scope: !499)
!566 = !DILocation(line: 268, column: 27, scope: !499)
!567 = !DILocation(line: 268, column: 2, scope: !499)
!568 = !DILocation(line: 268, column: 9, scope: !499)
!569 = !DILocation(line: 276, column: 12, scope: !499)
!570 = !DILocation(line: 276, column: 27, scope: !499)
!571 = !DILocation(line: 276, column: 25, scope: !499)
!572 = !DILocation(line: 276, column: 43, scope: !499)
!573 = !DILocation(line: 276, column: 41, scope: !499)
!574 = !DILocation(line: 276, column: 59, scope: !499)
!575 = !DILocation(line: 276, column: 57, scope: !499)
!576 = !DILocation(line: 276, column: 2, scope: !499)
!577 = !DILocation(line: 276, column: 9, scope: !499)
!578 = !DILocation(line: 277, column: 12, scope: !499)
!579 = !DILocation(line: 277, column: 27, scope: !499)
!580 = !DILocation(line: 277, column: 25, scope: !499)
!581 = !DILocation(line: 277, column: 43, scope: !499)
!582 = !DILocation(line: 277, column: 41, scope: !499)
!583 = !DILocation(line: 277, column: 59, scope: !499)
!584 = !DILocation(line: 277, column: 57, scope: !499)
!585 = !DILocation(line: 277, column: 2, scope: !499)
!586 = !DILocation(line: 277, column: 9, scope: !499)
!587 = !DILocation(line: 278, column: 12, scope: !499)
!588 = !DILocation(line: 278, column: 27, scope: !499)
!589 = !DILocation(line: 278, column: 25, scope: !499)
!590 = !DILocation(line: 278, column: 43, scope: !499)
!591 = !DILocation(line: 278, column: 41, scope: !499)
!592 = !DILocation(line: 278, column: 59, scope: !499)
!593 = !DILocation(line: 278, column: 57, scope: !499)
!594 = !DILocation(line: 278, column: 2, scope: !499)
!595 = !DILocation(line: 278, column: 9, scope: !499)
!596 = !DILocation(line: 279, column: 12, scope: !499)
!597 = !DILocation(line: 279, column: 27, scope: !499)
!598 = !DILocation(line: 279, column: 25, scope: !499)
!599 = !DILocation(line: 279, column: 43, scope: !499)
!600 = !DILocation(line: 279, column: 41, scope: !499)
!601 = !DILocation(line: 279, column: 59, scope: !499)
!602 = !DILocation(line: 279, column: 57, scope: !499)
!603 = !DILocation(line: 279, column: 2, scope: !499)
!604 = !DILocation(line: 279, column: 9, scope: !499)
!605 = !DILocation(line: 281, column: 13, scope: !606)
!606 = distinct !DILexicalBlock(scope: !499, file: !3, line: 281, column: 2)
!607 = !DILocation(line: 281, column: 7, scope: !606)
!608 = !DILocation(line: 282, column: 33, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !3, line: 281, column: 41)
!610 = distinct !DILexicalBlock(scope: !606, file: !3, line: 281, column: 2)
!611 = !DILocation(line: 282, column: 24, scope: !609)
!612 = !DILocation(line: 282, column: 12, scope: !609)
!613 = !DILocation(line: 282, column: 44, scope: !609)
!614 = !DILocation(line: 282, column: 42, scope: !609)
!615 = !DILocation(line: 282, column: 3, scope: !609)
!616 = !DILocation(line: 282, column: 10, scope: !609)
!617 = !DILocation(line: 283, column: 33, scope: !609)
!618 = !DILocation(line: 283, column: 24, scope: !609)
!619 = !DILocation(line: 283, column: 12, scope: !609)
!620 = !DILocation(line: 283, column: 44, scope: !609)
!621 = !DILocation(line: 283, column: 42, scope: !609)
!622 = !DILocation(line: 283, column: 3, scope: !609)
!623 = !DILocation(line: 283, column: 10, scope: !609)
!624 = !DILocation(line: 284, column: 33, scope: !609)
!625 = !DILocation(line: 284, column: 24, scope: !609)
!626 = !DILocation(line: 284, column: 12, scope: !609)
!627 = !DILocation(line: 284, column: 44, scope: !609)
!628 = !DILocation(line: 284, column: 42, scope: !609)
!629 = !DILocation(line: 284, column: 3, scope: !609)
!630 = !DILocation(line: 284, column: 10, scope: !609)
!631 = !DILocation(line: 285, column: 33, scope: !609)
!632 = !DILocation(line: 285, column: 24, scope: !609)
!633 = !DILocation(line: 285, column: 12, scope: !609)
!634 = !DILocation(line: 285, column: 44, scope: !609)
!635 = !DILocation(line: 285, column: 42, scope: !609)
!636 = !DILocation(line: 285, column: 3, scope: !609)
!637 = !DILocation(line: 285, column: 10, scope: !609)
!638 = !DILocation(line: 287, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !609, file: !3, line: 287, column: 7)
!640 = !DILocation(line: 287, column: 16, scope: !639)
!641 = !DILocation(line: 287, column: 23, scope: !639)
!642 = !DILocation(line: 287, column: 13, scope: !639)
!643 = !DILocation(line: 287, column: 7, scope: !609)
!644 = !DILocation(line: 288, column: 4, scope: !639)
!645 = !DILocation(line: 290, column: 33, scope: !609)
!646 = !DILocation(line: 290, column: 24, scope: !609)
!647 = !DILocation(line: 290, column: 12, scope: !609)
!648 = !DILocation(line: 290, column: 44, scope: !609)
!649 = !DILocation(line: 290, column: 42, scope: !609)
!650 = !DILocation(line: 290, column: 3, scope: !609)
!651 = !DILocation(line: 290, column: 10, scope: !609)
!652 = !DILocation(line: 291, column: 33, scope: !609)
!653 = !DILocation(line: 291, column: 24, scope: !609)
!654 = !DILocation(line: 291, column: 12, scope: !609)
!655 = !DILocation(line: 291, column: 44, scope: !609)
!656 = !DILocation(line: 291, column: 42, scope: !609)
!657 = !DILocation(line: 291, column: 3, scope: !609)
!658 = !DILocation(line: 291, column: 10, scope: !609)
!659 = !DILocation(line: 292, column: 33, scope: !609)
!660 = !DILocation(line: 292, column: 24, scope: !609)
!661 = !DILocation(line: 292, column: 12, scope: !609)
!662 = !DILocation(line: 292, column: 44, scope: !609)
!663 = !DILocation(line: 292, column: 42, scope: !609)
!664 = !DILocation(line: 292, column: 3, scope: !609)
!665 = !DILocation(line: 292, column: 10, scope: !609)
!666 = !DILocation(line: 293, column: 33, scope: !609)
!667 = !DILocation(line: 293, column: 24, scope: !609)
!668 = !DILocation(line: 293, column: 12, scope: !609)
!669 = !DILocation(line: 293, column: 44, scope: !609)
!670 = !DILocation(line: 293, column: 42, scope: !609)
!671 = !DILocation(line: 293, column: 3, scope: !609)
!672 = !DILocation(line: 293, column: 10, scope: !609)
!673 = !DILocation(line: 294, column: 2, scope: !609)
!674 = !DILocation(line: 281, column: 25, scope: !610)
!675 = !DILocation(line: 281, column: 35, scope: !610)
!676 = !DILocation(line: 281, column: 2, scope: !610)
!677 = distinct !{!677, !678, !679, !173}
!678 = !DILocation(line: 281, column: 2, scope: !606)
!679 = !DILocation(line: 294, column: 2, scope: !606)
!680 = !DILocation(line: 296, column: 30, scope: !499)
!681 = !DILocation(line: 296, column: 21, scope: !499)
!682 = !DILocation(line: 296, column: 40, scope: !499)
!683 = !DILocation(line: 296, column: 38, scope: !499)
!684 = !DILocation(line: 296, column: 48, scope: !499)
!685 = !DILocation(line: 296, column: 2, scope: !499)
!686 = !DILocation(line: 297, column: 30, scope: !499)
!687 = !DILocation(line: 297, column: 21, scope: !499)
!688 = !DILocation(line: 297, column: 40, scope: !499)
!689 = !DILocation(line: 297, column: 38, scope: !499)
!690 = !DILocation(line: 297, column: 48, scope: !499)
!691 = !DILocation(line: 297, column: 52, scope: !499)
!692 = !DILocation(line: 297, column: 2, scope: !499)
!693 = !DILocation(line: 298, column: 30, scope: !499)
!694 = !DILocation(line: 298, column: 21, scope: !499)
!695 = !DILocation(line: 298, column: 40, scope: !499)
!696 = !DILocation(line: 298, column: 38, scope: !499)
!697 = !DILocation(line: 298, column: 48, scope: !499)
!698 = !DILocation(line: 298, column: 52, scope: !499)
!699 = !DILocation(line: 298, column: 2, scope: !499)
!700 = !DILocation(line: 299, column: 30, scope: !499)
!701 = !DILocation(line: 299, column: 21, scope: !499)
!702 = !DILocation(line: 299, column: 40, scope: !499)
!703 = !DILocation(line: 299, column: 38, scope: !499)
!704 = !DILocation(line: 299, column: 48, scope: !499)
!705 = !DILocation(line: 299, column: 52, scope: !499)
!706 = !DILocation(line: 299, column: 2, scope: !499)
!707 = !DILocation(line: 300, column: 1, scope: !499)
!708 = distinct !DISubprogram(name: "mix_columns", scope: !3, file: !3, line: 110, type: !431, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !709)
!709 = !{!710, !711}
!710 = !DILocalVariable(name: "x", arg: 1, scope: !708, file: !3, line: 110, type: !18)
!711 = !DILocalVariable(name: "y", scope: !708, file: !3, line: 120, type: !18)
!712 = !DILocation(line: 110, column: 28, scope: !708)
!713 = !DILocation(line: 120, column: 2, scope: !708)
!714 = !DILocation(line: 120, column: 6, scope: !708)
!715 = !DILocation(line: 120, column: 19, scope: !708)
!716 = !DILocation(line: 120, column: 10, scope: !708)
!717 = !DILocation(line: 120, column: 30, scope: !708)
!718 = !DILocation(line: 120, column: 24, scope: !708)
!719 = !DILocation(line: 120, column: 22, scope: !708)
!720 = !DILocation(line: 122, column: 9, scope: !708)
!721 = !DILocation(line: 122, column: 19, scope: !708)
!722 = !DILocation(line: 122, column: 23, scope: !708)
!723 = !DILocation(line: 122, column: 21, scope: !708)
!724 = !DILocation(line: 122, column: 13, scope: !708)
!725 = !DILocation(line: 122, column: 11, scope: !708)
!726 = !DILocation(line: 123, column: 1, scope: !708)
!727 = !DILocation(line: 122, column: 2, scope: !708)
!728 = distinct !DISubprogram(name: "subshift", scope: !3, file: !3, line: 147, type: !729, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !731)
!729 = !DISubroutineType(types: !730)
!730 = !{!18, !124, !98}
!731 = !{!732, !733}
!732 = !DILocalVariable(name: "in", arg: 1, scope: !728, file: !3, line: 147, type: !124)
!733 = !DILocalVariable(name: "pos", arg: 2, scope: !728, file: !3, line: 147, type: !98)
!734 = !DILocation(line: 147, column: 41, scope: !728)
!735 = !DILocation(line: 147, column: 51, scope: !728)
!736 = !DILocation(line: 149, column: 19, scope: !728)
!737 = !DILocation(line: 149, column: 22, scope: !728)
!738 = !DILocation(line: 149, column: 27, scope: !728)
!739 = !DILocation(line: 149, column: 10, scope: !728)
!740 = !DILocation(line: 149, column: 9, scope: !728)
!741 = !DILocation(line: 150, column: 20, scope: !728)
!742 = !DILocation(line: 150, column: 24, scope: !728)
!743 = !DILocation(line: 150, column: 28, scope: !728)
!744 = !DILocation(line: 150, column: 33, scope: !728)
!745 = !DILocation(line: 150, column: 38, scope: !728)
!746 = !DILocation(line: 150, column: 45, scope: !728)
!747 = !DILocation(line: 150, column: 10, scope: !728)
!748 = !DILocation(line: 150, column: 53, scope: !728)
!749 = !DILocation(line: 149, column: 36, scope: !728)
!750 = !DILocation(line: 151, column: 20, scope: !728)
!751 = !DILocation(line: 151, column: 24, scope: !728)
!752 = !DILocation(line: 151, column: 28, scope: !728)
!753 = !DILocation(line: 151, column: 33, scope: !728)
!754 = !DILocation(line: 151, column: 38, scope: !728)
!755 = !DILocation(line: 151, column: 45, scope: !728)
!756 = !DILocation(line: 151, column: 10, scope: !728)
!757 = !DILocation(line: 151, column: 53, scope: !728)
!758 = !DILocation(line: 150, column: 60, scope: !728)
!759 = !DILocation(line: 152, column: 20, scope: !728)
!760 = !DILocation(line: 152, column: 24, scope: !728)
!761 = !DILocation(line: 152, column: 28, scope: !728)
!762 = !DILocation(line: 152, column: 33, scope: !728)
!763 = !DILocation(line: 152, column: 38, scope: !728)
!764 = !DILocation(line: 152, column: 45, scope: !728)
!765 = !DILocation(line: 152, column: 10, scope: !728)
!766 = !DILocation(line: 152, column: 53, scope: !728)
!767 = !DILocation(line: 151, column: 60, scope: !728)
!768 = !DILocation(line: 149, column: 2, scope: !728)
!769 = !DILocation(line: 45, column: 43, scope: !30)
!770 = !DILocation(line: 45, column: 54, scope: !30)
!771 = !DILocation(line: 47, column: 2, scope: !30)
!772 = !DILocation(line: 47, column: 2, scope: !37)
!773 = !DILocation(line: 48, column: 1, scope: !30)
!774 = distinct !DISubprogram(name: "aes_decrypt", scope: !3, file: !3, line: 309, type: !500, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !775)
!775 = !{!776, !777, !778, !779, !780, !781, !782, !783}
!776 = !DILocalVariable(name: "ctx", arg: 1, scope: !774, file: !3, line: 309, type: !502)
!777 = !DILocalVariable(name: "out", arg: 2, scope: !774, file: !3, line: 309, type: !504)
!778 = !DILocalVariable(name: "in", arg: 3, scope: !774, file: !3, line: 309, type: !109)
!779 = !DILocalVariable(name: "rkp", scope: !774, file: !3, line: 311, type: !510)
!780 = !DILocalVariable(name: "rounds", scope: !774, file: !3, line: 312, type: !98)
!781 = !DILocalVariable(name: "st0", scope: !774, file: !3, line: 313, type: !514)
!782 = !DILocalVariable(name: "st1", scope: !774, file: !3, line: 313, type: !514)
!783 = !DILocalVariable(name: "round", scope: !774, file: !3, line: 314, type: !98)
!784 = !DILocation(line: 309, column: 47, scope: !774)
!785 = !DILocation(line: 309, column: 56, scope: !774)
!786 = !DILocation(line: 309, column: 71, scope: !774)
!787 = !DILocation(line: 311, column: 2, scope: !774)
!788 = !DILocation(line: 311, column: 13, scope: !774)
!789 = !DILocation(line: 311, column: 19, scope: !774)
!790 = !DILocation(line: 311, column: 24, scope: !774)
!791 = !DILocation(line: 311, column: 32, scope: !774)
!792 = !DILocation(line: 312, column: 2, scope: !774)
!793 = !DILocation(line: 312, column: 6, scope: !774)
!794 = !DILocation(line: 312, column: 19, scope: !774)
!795 = !DILocation(line: 312, column: 24, scope: !774)
!796 = !DILocation(line: 312, column: 35, scope: !774)
!797 = !DILocation(line: 312, column: 17, scope: !774)
!798 = !DILocation(line: 313, column: 2, scope: !774)
!799 = !DILocation(line: 313, column: 6, scope: !774)
!800 = !DILocation(line: 313, column: 14, scope: !774)
!801 = !DILocation(line: 314, column: 2, scope: !774)
!802 = !DILocation(line: 314, column: 6, scope: !774)
!803 = !DILocation(line: 316, column: 11, scope: !774)
!804 = !DILocation(line: 316, column: 16, scope: !774)
!805 = !DILocation(line: 316, column: 48, scope: !774)
!806 = !DILocation(line: 316, column: 29, scope: !774)
!807 = !DILocation(line: 316, column: 27, scope: !774)
!808 = !DILocation(line: 316, column: 2, scope: !774)
!809 = !DILocation(line: 316, column: 9, scope: !774)
!810 = !DILocation(line: 317, column: 11, scope: !774)
!811 = !DILocation(line: 317, column: 16, scope: !774)
!812 = !DILocation(line: 317, column: 48, scope: !774)
!813 = !DILocation(line: 317, column: 51, scope: !774)
!814 = !DILocation(line: 317, column: 29, scope: !774)
!815 = !DILocation(line: 317, column: 27, scope: !774)
!816 = !DILocation(line: 317, column: 2, scope: !774)
!817 = !DILocation(line: 317, column: 9, scope: !774)
!818 = !DILocation(line: 318, column: 11, scope: !774)
!819 = !DILocation(line: 318, column: 16, scope: !774)
!820 = !DILocation(line: 318, column: 48, scope: !774)
!821 = !DILocation(line: 318, column: 51, scope: !774)
!822 = !DILocation(line: 318, column: 29, scope: !774)
!823 = !DILocation(line: 318, column: 27, scope: !774)
!824 = !DILocation(line: 318, column: 2, scope: !774)
!825 = !DILocation(line: 318, column: 9, scope: !774)
!826 = !DILocation(line: 319, column: 11, scope: !774)
!827 = !DILocation(line: 319, column: 16, scope: !774)
!828 = !DILocation(line: 319, column: 48, scope: !774)
!829 = !DILocation(line: 319, column: 51, scope: !774)
!830 = !DILocation(line: 319, column: 29, scope: !774)
!831 = !DILocation(line: 319, column: 27, scope: !774)
!832 = !DILocation(line: 319, column: 2, scope: !774)
!833 = !DILocation(line: 319, column: 9, scope: !774)
!834 = !DILocation(line: 327, column: 12, scope: !774)
!835 = !DILocation(line: 327, column: 31, scope: !774)
!836 = !DILocation(line: 327, column: 29, scope: !774)
!837 = !DILocation(line: 327, column: 51, scope: !774)
!838 = !DILocation(line: 327, column: 49, scope: !774)
!839 = !DILocation(line: 327, column: 71, scope: !774)
!840 = !DILocation(line: 327, column: 69, scope: !774)
!841 = !DILocation(line: 327, column: 2, scope: !774)
!842 = !DILocation(line: 327, column: 9, scope: !774)
!843 = !DILocation(line: 328, column: 12, scope: !774)
!844 = !DILocation(line: 328, column: 31, scope: !774)
!845 = !DILocation(line: 328, column: 29, scope: !774)
!846 = !DILocation(line: 328, column: 51, scope: !774)
!847 = !DILocation(line: 328, column: 49, scope: !774)
!848 = !DILocation(line: 328, column: 71, scope: !774)
!849 = !DILocation(line: 328, column: 69, scope: !774)
!850 = !DILocation(line: 328, column: 2, scope: !774)
!851 = !DILocation(line: 328, column: 9, scope: !774)
!852 = !DILocation(line: 329, column: 12, scope: !774)
!853 = !DILocation(line: 329, column: 31, scope: !774)
!854 = !DILocation(line: 329, column: 29, scope: !774)
!855 = !DILocation(line: 329, column: 51, scope: !774)
!856 = !DILocation(line: 329, column: 49, scope: !774)
!857 = !DILocation(line: 329, column: 71, scope: !774)
!858 = !DILocation(line: 329, column: 69, scope: !774)
!859 = !DILocation(line: 329, column: 2, scope: !774)
!860 = !DILocation(line: 329, column: 9, scope: !774)
!861 = !DILocation(line: 330, column: 12, scope: !774)
!862 = !DILocation(line: 330, column: 31, scope: !774)
!863 = !DILocation(line: 330, column: 29, scope: !774)
!864 = !DILocation(line: 330, column: 51, scope: !774)
!865 = !DILocation(line: 330, column: 49, scope: !774)
!866 = !DILocation(line: 330, column: 71, scope: !774)
!867 = !DILocation(line: 330, column: 69, scope: !774)
!868 = !DILocation(line: 330, column: 2, scope: !774)
!869 = !DILocation(line: 330, column: 9, scope: !774)
!870 = !DILocation(line: 332, column: 13, scope: !871)
!871 = distinct !DILexicalBlock(scope: !774, file: !3, line: 332, column: 2)
!872 = !DILocation(line: 332, column: 7, scope: !871)
!873 = !DILocation(line: 333, column: 41, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 332, column: 41)
!875 = distinct !DILexicalBlock(scope: !871, file: !3, line: 332, column: 2)
!876 = !DILocation(line: 333, column: 28, scope: !874)
!877 = !DILocation(line: 333, column: 12, scope: !874)
!878 = !DILocation(line: 333, column: 52, scope: !874)
!879 = !DILocation(line: 333, column: 50, scope: !874)
!880 = !DILocation(line: 333, column: 3, scope: !874)
!881 = !DILocation(line: 333, column: 10, scope: !874)
!882 = !DILocation(line: 334, column: 41, scope: !874)
!883 = !DILocation(line: 334, column: 28, scope: !874)
!884 = !DILocation(line: 334, column: 12, scope: !874)
!885 = !DILocation(line: 334, column: 52, scope: !874)
!886 = !DILocation(line: 334, column: 50, scope: !874)
!887 = !DILocation(line: 334, column: 3, scope: !874)
!888 = !DILocation(line: 334, column: 10, scope: !874)
!889 = !DILocation(line: 335, column: 41, scope: !874)
!890 = !DILocation(line: 335, column: 28, scope: !874)
!891 = !DILocation(line: 335, column: 12, scope: !874)
!892 = !DILocation(line: 335, column: 52, scope: !874)
!893 = !DILocation(line: 335, column: 50, scope: !874)
!894 = !DILocation(line: 335, column: 3, scope: !874)
!895 = !DILocation(line: 335, column: 10, scope: !874)
!896 = !DILocation(line: 336, column: 41, scope: !874)
!897 = !DILocation(line: 336, column: 28, scope: !874)
!898 = !DILocation(line: 336, column: 12, scope: !874)
!899 = !DILocation(line: 336, column: 52, scope: !874)
!900 = !DILocation(line: 336, column: 50, scope: !874)
!901 = !DILocation(line: 336, column: 3, scope: !874)
!902 = !DILocation(line: 336, column: 10, scope: !874)
!903 = !DILocation(line: 338, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !874, file: !3, line: 338, column: 7)
!905 = !DILocation(line: 338, column: 16, scope: !904)
!906 = !DILocation(line: 338, column: 23, scope: !904)
!907 = !DILocation(line: 338, column: 13, scope: !904)
!908 = !DILocation(line: 338, column: 7, scope: !874)
!909 = !DILocation(line: 339, column: 4, scope: !904)
!910 = !DILocation(line: 341, column: 41, scope: !874)
!911 = !DILocation(line: 341, column: 28, scope: !874)
!912 = !DILocation(line: 341, column: 12, scope: !874)
!913 = !DILocation(line: 341, column: 52, scope: !874)
!914 = !DILocation(line: 341, column: 50, scope: !874)
!915 = !DILocation(line: 341, column: 3, scope: !874)
!916 = !DILocation(line: 341, column: 10, scope: !874)
!917 = !DILocation(line: 342, column: 41, scope: !874)
!918 = !DILocation(line: 342, column: 28, scope: !874)
!919 = !DILocation(line: 342, column: 12, scope: !874)
!920 = !DILocation(line: 342, column: 52, scope: !874)
!921 = !DILocation(line: 342, column: 50, scope: !874)
!922 = !DILocation(line: 342, column: 3, scope: !874)
!923 = !DILocation(line: 342, column: 10, scope: !874)
!924 = !DILocation(line: 343, column: 41, scope: !874)
!925 = !DILocation(line: 343, column: 28, scope: !874)
!926 = !DILocation(line: 343, column: 12, scope: !874)
!927 = !DILocation(line: 343, column: 52, scope: !874)
!928 = !DILocation(line: 343, column: 50, scope: !874)
!929 = !DILocation(line: 343, column: 3, scope: !874)
!930 = !DILocation(line: 343, column: 10, scope: !874)
!931 = !DILocation(line: 344, column: 41, scope: !874)
!932 = !DILocation(line: 344, column: 28, scope: !874)
!933 = !DILocation(line: 344, column: 12, scope: !874)
!934 = !DILocation(line: 344, column: 52, scope: !874)
!935 = !DILocation(line: 344, column: 50, scope: !874)
!936 = !DILocation(line: 344, column: 3, scope: !874)
!937 = !DILocation(line: 344, column: 10, scope: !874)
!938 = !DILocation(line: 345, column: 2, scope: !874)
!939 = !DILocation(line: 332, column: 25, scope: !875)
!940 = !DILocation(line: 332, column: 35, scope: !875)
!941 = !DILocation(line: 332, column: 2, scope: !875)
!942 = distinct !{!942, !943, !944, !173}
!943 = !DILocation(line: 332, column: 2, scope: !871)
!944 = !DILocation(line: 345, column: 2, scope: !871)
!945 = !DILocation(line: 347, column: 34, scope: !774)
!946 = !DILocation(line: 347, column: 21, scope: !774)
!947 = !DILocation(line: 347, column: 44, scope: !774)
!948 = !DILocation(line: 347, column: 42, scope: !774)
!949 = !DILocation(line: 347, column: 52, scope: !774)
!950 = !DILocation(line: 347, column: 2, scope: !774)
!951 = !DILocation(line: 348, column: 34, scope: !774)
!952 = !DILocation(line: 348, column: 21, scope: !774)
!953 = !DILocation(line: 348, column: 44, scope: !774)
!954 = !DILocation(line: 348, column: 42, scope: !774)
!955 = !DILocation(line: 348, column: 52, scope: !774)
!956 = !DILocation(line: 348, column: 56, scope: !774)
!957 = !DILocation(line: 348, column: 2, scope: !774)
!958 = !DILocation(line: 349, column: 34, scope: !774)
!959 = !DILocation(line: 349, column: 21, scope: !774)
!960 = !DILocation(line: 349, column: 44, scope: !774)
!961 = !DILocation(line: 349, column: 42, scope: !774)
!962 = !DILocation(line: 349, column: 52, scope: !774)
!963 = !DILocation(line: 349, column: 56, scope: !774)
!964 = !DILocation(line: 349, column: 2, scope: !774)
!965 = !DILocation(line: 350, column: 34, scope: !774)
!966 = !DILocation(line: 350, column: 21, scope: !774)
!967 = !DILocation(line: 350, column: 44, scope: !774)
!968 = !DILocation(line: 350, column: 42, scope: !774)
!969 = !DILocation(line: 350, column: 52, scope: !774)
!970 = !DILocation(line: 350, column: 56, scope: !774)
!971 = !DILocation(line: 350, column: 2, scope: !774)
!972 = !DILocation(line: 351, column: 1, scope: !774)
!973 = distinct !DISubprogram(name: "inv_subshift", scope: !3, file: !3, line: 155, type: !729, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !974)
!974 = !{!975, !976}
!975 = !DILocalVariable(name: "in", arg: 1, scope: !973, file: !3, line: 155, type: !124)
!976 = !DILocalVariable(name: "pos", arg: 2, scope: !973, file: !3, line: 155, type: !98)
!977 = !DILocation(line: 155, column: 45, scope: !973)
!978 = !DILocation(line: 155, column: 55, scope: !973)
!979 = !DILocation(line: 157, column: 23, scope: !973)
!980 = !DILocation(line: 157, column: 26, scope: !973)
!981 = !DILocation(line: 157, column: 31, scope: !973)
!982 = !DILocation(line: 157, column: 10, scope: !973)
!983 = !DILocation(line: 157, column: 9, scope: !973)
!984 = !DILocation(line: 158, column: 24, scope: !973)
!985 = !DILocation(line: 158, column: 28, scope: !973)
!986 = !DILocation(line: 158, column: 32, scope: !973)
!987 = !DILocation(line: 158, column: 37, scope: !973)
!988 = !DILocation(line: 158, column: 42, scope: !973)
!989 = !DILocation(line: 158, column: 49, scope: !973)
!990 = !DILocation(line: 158, column: 10, scope: !973)
!991 = !DILocation(line: 158, column: 57, scope: !973)
!992 = !DILocation(line: 157, column: 40, scope: !973)
!993 = !DILocation(line: 159, column: 24, scope: !973)
!994 = !DILocation(line: 159, column: 28, scope: !973)
!995 = !DILocation(line: 159, column: 32, scope: !973)
!996 = !DILocation(line: 159, column: 37, scope: !973)
!997 = !DILocation(line: 159, column: 42, scope: !973)
!998 = !DILocation(line: 159, column: 49, scope: !973)
!999 = !DILocation(line: 159, column: 10, scope: !973)
!1000 = !DILocation(line: 159, column: 57, scope: !973)
!1001 = !DILocation(line: 158, column: 64, scope: !973)
!1002 = !DILocation(line: 160, column: 24, scope: !973)
!1003 = !DILocation(line: 160, column: 28, scope: !973)
!1004 = !DILocation(line: 160, column: 32, scope: !973)
!1005 = !DILocation(line: 160, column: 37, scope: !973)
!1006 = !DILocation(line: 160, column: 42, scope: !973)
!1007 = !DILocation(line: 160, column: 49, scope: !973)
!1008 = !DILocation(line: 160, column: 10, scope: !973)
!1009 = !DILocation(line: 160, column: 57, scope: !973)
!1010 = !DILocation(line: 159, column: 64, scope: !973)
!1011 = !DILocation(line: 157, column: 2, scope: !973)
!1012 = distinct !DISubprogram(name: "mul_by_x2", scope: !3, file: !3, line: 100, type: !431, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1013)
!1013 = !{!1014, !1015, !1016, !1017}
!1014 = !DILocalVariable(name: "w", arg: 1, scope: !1012, file: !3, line: 100, type: !18)
!1015 = !DILocalVariable(name: "x", scope: !1012, file: !3, line: 102, type: !18)
!1016 = !DILocalVariable(name: "y", scope: !1012, file: !3, line: 103, type: !18)
!1017 = !DILocalVariable(name: "z", scope: !1012, file: !3, line: 104, type: !18)
!1018 = !DILocation(line: 100, column: 26, scope: !1012)
!1019 = !DILocation(line: 102, column: 2, scope: !1012)
!1020 = !DILocation(line: 102, column: 6, scope: !1012)
!1021 = !DILocation(line: 102, column: 10, scope: !1012)
!1022 = !DILocation(line: 102, column: 12, scope: !1012)
!1023 = !DILocation(line: 103, column: 2, scope: !1012)
!1024 = !DILocation(line: 103, column: 6, scope: !1012)
!1025 = !DILocation(line: 103, column: 10, scope: !1012)
!1026 = !DILocation(line: 103, column: 12, scope: !1012)
!1027 = !DILocation(line: 104, column: 2, scope: !1012)
!1028 = !DILocation(line: 104, column: 6, scope: !1012)
!1029 = !DILocation(line: 104, column: 10, scope: !1012)
!1030 = !DILocation(line: 104, column: 12, scope: !1012)
!1031 = !DILocation(line: 107, column: 10, scope: !1012)
!1032 = !DILocation(line: 107, column: 12, scope: !1012)
!1033 = !DILocation(line: 107, column: 21, scope: !1012)
!1034 = !DILocation(line: 107, column: 23, scope: !1012)
!1035 = !DILocation(line: 107, column: 29, scope: !1012)
!1036 = !DILocation(line: 107, column: 18, scope: !1012)
!1037 = !DILocation(line: 107, column: 39, scope: !1012)
!1038 = !DILocation(line: 107, column: 41, scope: !1012)
!1039 = !DILocation(line: 107, column: 47, scope: !1012)
!1040 = !DILocation(line: 107, column: 36, scope: !1012)
!1041 = !DILocation(line: 108, column: 1, scope: !1012)
!1042 = !DILocation(line: 107, column: 2, scope: !1012)
