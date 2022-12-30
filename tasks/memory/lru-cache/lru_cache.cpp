#include "lru_cache.h"

LruCache::LruCache(size_t max_size) {
    max_size_ = max_size;
}

void LruCache::Set(const std::string& key, const std::string& value) {
    if (map_.contains(key)) {
        list_.erase(map_[key]);
        list_.push_back(std::make_pair(key, value));
        map_[key] = --list_.end();
    } else {
        list_.push_back(std::make_pair(key, value));
        map_.insert(std::make_pair(key, --list_.end()));
        if (map_.size() > max_size_) {
            map_.erase(list_.begin()->first);
            list_.erase(list_.begin());
        }
    }
}

bool LruCache::Get(const std::string& key, std::string* value) {
    if (map_.contains(key)) {
        list_.push_back(*(map_[key]));
        list_.erase(map_[key]);
        map_[key] = --list_.end();
        *value = map_[key]->second;
        return true;
    }
    return false;
}
