use chrono::Utc;
use mongodb::bson::{doc, oid::ObjectId};
use serde::{Deserialize, Serialize};
use serde_json::Value;

#[derive(Serialize, Deserialize)]
pub struct DatasourceConnectionSettings {
    pub syncCatalog: Value,
    pub scheduleType: String,
    pub namespaceDefinition: String,
    pub namespaceFormat: Option<String>,
    pub nonBreakingSchemaUpdatesBehavior: String,
    pub prefix: Option<String>,
    pub name: String,
    pub sourceId: String,
    pub destinationId: String,
    pub status: String,
}

#[derive(Serialize, Deserialize)]
pub struct DataSources {
    pub _id: ObjectId,
    pub orgId: ObjectId,
    pub teamId: ObjectId,
    pub modelId: Option<ObjectId>,
    pub name: String,
    pub originalName: String,
    pub gcsFilename: String,
    pub sourceType: String,
    pub sourceId: String,
    pub destinationId: String,
    pub workspaceId: String,
    pub connectionId: String,
    pub chunkStrategy: Option<String>,
    pub chunkCharacter: Option<String>,
    pub connectionSettings: Option<DatasourceConnectionSettings>,
    pub lastSyncedDate: Option<chrono::DateTime<Utc>>,
    pub discoveredSchema: Option<Value>,
}
#[derive(Serialize, Deserialize)]
pub enum ChunkingStrategy {
    SEMANTIC_CHUNKING,
    CHARACTER_CHUNKING,
    CODE_SPLIT,
    UNKNOWN,
}
impl From<String> for ChunkingStrategy {
    fn from(value: String) -> Self {
        match value.as_str() {
            "semanticChunking" => ChunkingStrategy::SEMANTIC_CHUNKING,
            "characterChunking" => ChunkingStrategy::CHARACTER_CHUNKING,
            "codeSplit" => ChunkingStrategy::CODE_SPLIT,
            _ => ChunkingStrategy::UNKNOWN,
        }
    }
}

#[derive(Serialize, Deserialize)]
pub struct Model {
    pub _id: ObjectId,
    pub orgId: ObjectId,
    pub teamId: ObjectId,
    pub credentialId: ObjectId,
    pub name: String,
    pub model: String,
    pub embeddingLength: i32,
}
